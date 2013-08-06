require 'spec_helper'

describe "Timeline" do
  describe "GET /timeline" do
    context "Follower registered its item." do
      subject do 
        my = FactoryGirl.create(:my_account)
        his = FactoryGirl.create(:friend)
        his.items << FactoryGirl.create(:sample_item)
        get "/timeline", {:id => my.id} # todo client_token
        response
      end
      its(:status){should be 200}

      it "should return others recent possession" do
        expected = {
          total_count: 1,
          result: [
            {
              name: "him",
              item: "sample_item",
              type: "register",
              created_at: DateTime.new(2013,7,1),
            },
          ],
        }
        JSON.parse(response.body).should eq expected
      end
    end
  end
end
