class Issue < ActiveRecord::Base
  attr_accessible :current_version_id, :name

  has_many :versions, dependent: :destroy, inverse_of: :issue
  belongs_to :current_version, class_name: 'Version'

  before_save :create_version

  private

  def create_version
    versions.build
  end
end
