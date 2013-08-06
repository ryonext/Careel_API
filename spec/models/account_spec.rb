require 'spec_helper'

describe Account do
  describe 'find_or_create' do
    context 'Account is not registered' do
      it 'create Account' do
        proc{Account.find_or_create(404)}.should change(Account, :count).by(1)
      end
    end

    context 'Account id is invalid' do
      [nil, ''].each do |id|
        it "should not create record with #{id}" do
          proc{Account.find_or_create(id)}.should_not change(Account, :count).by(1)
        end
        it 'should return nil' do
          Account.find_or_create(id).should be_nil
        end
      end
    end

    context "news" do
      let(:my_account){FactoryGirl.create(:my_account)}
      let(:friend){FactoryGirl.create(:friend)}
      before do
        friend.items << FactoryGirl.create(:sample_item)
      end
      subject{my_account.news}
      it{should be_present}
      its(:first){should be friend.assets.first}
    end
  end
end
