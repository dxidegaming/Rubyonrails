class Forum < ApplicationRecord
  belongs_to :User

  def created_by
    User.article_owner_email id
  end
end
