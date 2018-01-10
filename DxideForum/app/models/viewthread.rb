class Viewthread < ActiveRecord::Base
  belongs_to :User
  has_many :comments, dependent: :destroy

  

  def created_by
    User.article_owner_email id
  end
end
