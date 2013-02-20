require 'yaml'

# Dirs that need to remain the same between deploys (shared dirs)
set :shared_children,   %w(assets protected/runtime protected/cache)

# Files that need to remain the same between deploys
set :shared_files,      %w()

# Asset folders (that need to be timestamped)
set :asset_children,    %w(assets)

# PHP binary to execute
set :php_bin,           "php"

# yii environment on local
set :yii_env_local, "dev"

# yii environment
set :yii_env,       "prod"


namespace :deploy do
  desc "Overwrite the start task because yii doesn't need it."
  task :start do ; end

  desc "Overwrite the restart task because yii doesn't need it."
  task :restart do ; end

  desc "Overwrite the stop task because yii doesn't need it."
  task :stop do ; end

  desc "Customize migrate task because yii doesn't need it."
  task :migrate do
    yii.orm.migrate
  end

  desc "Symlink static directories and static files that need to remain between deployments."
  task :share_childs do
    if shared_children
      shared_children.each do |link|
        run "mkdir -p #{shared_path}/#{link}"
        run "if [ -d #{release_path}/#{link} ] ; then rm -rf #{release_path}/#{link}; fi"
        run "ln -nfs #{shared_path}/#{link} #{release_path}/#{link}"
      end
    end
    if shared_files
      shared_files.each do |link|
        link_dir = File.dirname("#{shared_path}/#{link}")
        run "mkdir -p #{link_dir}"
        run "touch #{shared_path}/#{link}"
        run "ln -nfs #{shared_path}/#{link} #{release_path}/#{link}"
      end
    end
  end

  desc "Customize the finalize_update task to work with yii."
  task :finalize_update, :except => { :no_release => true } do
    run "chmod -R g+w #{latest_release}" if fetch(:group_writable, true)

    # Share common files & folders
    share_childs

    if fetch(:normalize_asset_timestamps, true)
      stamp = Time.now.utc.strftime("%Y%m%d%H%M.%S")
      asset_paths = asset_children.map { |p| "#{latest_release}/#{p}" }.join(" ")
      run "find #{asset_paths} -exec touch -t #{stamp} {} ';'; true", :env => { "TZ" => "UTC" }
    end
  end

  task :setup, :except => { :no_release => true } do
    dirs = [deploy_to, releases_path, shared_path]
    dirs += shared_children.map { |d| File.join(shared_path, d) }
    run "#{try_sudo} mkdir -p #{dirs.join(' ')} && #{try_sudo} chmod g+w #{dirs.join(' ')}"
    run "#{try_sudo} chmod a+rwx #{shared_children.map { |d| File.join(shared_path, d) }.join(' ')}"
  end

  desc "Need to overwrite the deploy:cold task so it doesn't try to run the migrations."
  task :cold do
    update
    start
  end

end