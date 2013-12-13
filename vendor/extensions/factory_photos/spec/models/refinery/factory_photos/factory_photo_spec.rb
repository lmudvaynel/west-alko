require 'spec_helper'

module Refinery
  module FactoryPhotos
    describe FactoryPhoto do
      describe "validations" do
        subject do
          FactoryGirl.create(:factory_photo)
        end

        it { should be_valid }
        its(:errors) { should be_empty }
      end
    end
  end
end
