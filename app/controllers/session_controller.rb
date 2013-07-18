class SessionController < ApplicationController
  respond_to :json

  def create
    @account = Account.find_or_create(params[:twitter_id])
    if @account
      @account.client_token = 'hogehoge'
      @account.save!
      render :controller => 'accounts', :action => 'create'
    end
  end

  def destroy
  end
end
