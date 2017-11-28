class User < ActiveRecord::Base
  include Clearance::User
  has_many :viewthreads

  def self.article_owner_email(viewthread_id)
    User.joins(:viewthreads)
        .select(:email)
        .where('viewthread.id = ?', viewthread_id)
        .first
        .email
  end
end
