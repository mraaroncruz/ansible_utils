require 'test_helper'
require 'ansible_utils/cli'

class TestNew < Minitest::Unit::TestCase

  def setup
    @dest = File.expand_path('../tmp/foo', __FILE__)
  end

  def teardown
    FileUtils.rm_rf(@dest)
  end

  def test_that_playbook_is_generated
    AnsibleUtils::Cli.start(['new', @dest])
    assert File.directory? @dest
    assert File.exist? "#{@dest}/production"
  end
end
