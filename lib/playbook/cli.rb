require 'playbook'
require 'thor'

module Playbook
  class Cli < Thor
    include Thor::Actions

    def self.source_root
      File.dirname(__FILE__)
    end

    desc "new", "Create a new playbook"
    def new destination=Dir.pwd
      directory "templates/new", destination
    end

    desc "module NAME", "Create a new module"
    def module name
    end

    desc "task NAME", "Add a new task to playbook"
    def task name
    end
  end
end

