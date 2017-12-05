class Viewthread < ActiveRecord::Base
  belongs_to :User
  has_many :comments

  def created_by
    User.article_owner_email id
  end
end
