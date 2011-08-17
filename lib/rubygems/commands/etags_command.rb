require 'rubygems/command'

class Gem::Commands::EtagsCommand < Gem::Command
  def initialize
    super 'etags', 'Generate etags for gems'
  end

  def execute
    Gem::Specification.each do |spec|
      Dir.chdir(spec.full_gem_path) do
        unless File.exist?('TAGS')
          say "Generating etags for #{spec.full_name}"
          system('ctags', '-eR', *spec.require_paths)
        end
      end
    end
  end
end
