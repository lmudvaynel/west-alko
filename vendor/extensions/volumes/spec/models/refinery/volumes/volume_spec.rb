require 'spec_helper'

module Refinery
  module Volumes
    describe Volume do
      describe "validations" do
        subject do
          FactoryGirl.create(:volume,
          :price => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:price) { should == "Refinery CMS" }
      end
    end
  end
end
