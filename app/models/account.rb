class Account < ActiveRecord::Base
  class << self
    def find_or_create(twitter_id)
      unless account = Account.find_by(:twitter_id => twitter_id)
        account = Account.create(:twitter_id => twitter_id)
      end
      account
    end
  end
end
