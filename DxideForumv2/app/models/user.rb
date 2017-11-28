class User < ApplicationRecord
  include Clearance::User
  has_many :forums
  def self.article_owner_email(forum_id)
    User.joins(:forums)
        .select(:email)
        .where('forums.id = ?', forum_id)
        .first
        .email
  end
end
