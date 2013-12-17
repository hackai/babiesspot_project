class UserRss < ActiveRecord::Base
  belongs_to :user
  belongs_to :rss_feed
  # attr_accessible :title, :body
end
