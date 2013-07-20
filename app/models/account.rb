class Account < ActiveRecord::Base
  class << self
    def find_or_create(twitter_id)
      unless account = Account.find_by(:twitter_id => twitter_id)
        account = Account.create_by_twitter_info(twitter_id)
      end
      account
    end

    def create_by_twitter_info(twitter_id)
      # todo get info from twitter
      twitter_info = get_info_from_twitter(twitter_id)
      account = Account.create(twitter_info)
    end

    def get_info_from_twitter(twitter_id)
      {
        :name => 'twitter_name', 
        :profile => 'twitter_profile',
        :twitter_id => twitter_id,
        :icon_path => 'http://www.example.com',
        :area => 'twitter_area',
        :oauth_token => 'twitter_oauth_token',
        :oauth_secret => 'twitter_oauth_secret',
      }
    end
  end
end
