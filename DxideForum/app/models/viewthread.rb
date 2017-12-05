class Viewthread < ActiveRecord::Base
  belongs_to :User
  has_many :comments, dependent: :destroy

  validates :title, presence: true,
                    length: { minimum: 5 }

  def created_by
    User.article_owner_email id
  end
end
