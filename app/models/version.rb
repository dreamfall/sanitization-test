class Version < ActiveRecord::Base
  belongs_to :issue

  after_create :set_current_version

  private

  def set_current_version
    issue.update_column(:current_version_id, id) unless issue.current_version
  end
end
