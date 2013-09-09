require 'ansible_utils'
require 'thor'

module AnsibleUtils
  class Cli < Thor
    include Thor::Actions

    def self.source_root
      File.dirname(__FILE__)
    end

    desc "new", "Create a new playbook"
    def new destination=Dir.pwd
      directory 'templates/new', destination
    end

    desc "task NAME", "Add a new role to current playbook"
    def role name
      directory "templates/new/roles/common", "roles/#{name}"
    end
  end
end

