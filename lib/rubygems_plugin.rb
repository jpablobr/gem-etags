require 'rubygems/command_manager'

Gem::CommandManager.instance.register_command :etags

Gem.post_install do |installer|
  Dir.chdir(installer.spec.full_gem_path) do
    system('ctags', '-eR', *installer.spec.require_paths)
  end
end
