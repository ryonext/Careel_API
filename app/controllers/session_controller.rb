class SessionController < ApplicationController
  respond_to :json

  def create
    @account = Account.find_or_create(params[:twitter_id])
    if @account
      @account.client_token = 'hogehoge'
      @account.save!
    end
    respond_with @account
  end

  def destroy
  end
end
