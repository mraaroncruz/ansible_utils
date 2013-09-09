require 'test_helper'
require 'ansible_utils/cli'

class TestRole < Minitest::Unit::TestCase

  def setup
    @role_name = "nginx"
    @tmp = File.expand_path('../tmp', __FILE__)
    @pwd = File.expand_path('..', __FILE__)
    @role_dir = "#{@tmp}/roles"
    @nginx_dir = "#{@role_dir}/#{@role_name}"
    FileUtils.cd @tmp
  end

  def teardown
    FileUtils.rm_rf(@role_dir)
    FileUtils.cd @pwd
  end

  def test_that_role_is_generated
    AnsibleUtils::Cli.start(['role', @role_name])
    assert File.directory? @nginx_dir
    assert File.exist? "#{@nginx_dir}/tasks/main.yml"
  end
end

