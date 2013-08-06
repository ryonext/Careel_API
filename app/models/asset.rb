class Asset < ActiveRecord::Base
  belongs_to :account
  belongs_to :item
end
