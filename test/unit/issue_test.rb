require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  test "creates version" do
    issue = Issue.create(name: 'omg')
    assert_equal 1, issue.versions.count
  end

  test "sets current_version PASS" do
    issue = Issue.where(name: 'omg').create!
    issue.reload
    assert_equal Version.last.id, issue.current_version_id
  end

  test "sets current_version FAIL" do
    issue = Issue.where("`issues`.`name` = \"omg\"").create!
    issue.reload
    assert_equal Version.last.id, issue.current_version_id
  end
end
