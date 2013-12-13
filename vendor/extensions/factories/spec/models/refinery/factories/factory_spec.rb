require 'spec_helper'

module Refinery
  module Factories
    describe Factory do
      describe "validations" do
        subject do
          FactoryGirl.create(:factory,
          :name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:name) { should == "Refinery CMS" }
      end
    end
  end
end
