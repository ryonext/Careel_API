class TimelineController < ApplicationController
  def index
    account = Account.find(params[:id])#change to secret token
    @return = account.news
  end
end
