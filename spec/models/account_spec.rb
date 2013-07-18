require 'spec_helper'

describe Account do
  describe 'find_or_create' do
    context 'Account is not registered' do
      it 'create Account' do
        proc{Account.find_or_create(404)}.should change(Account, :count).by(1)
      end
    end
  end
end
