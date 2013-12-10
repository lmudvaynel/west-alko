# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Volumes" do
    describe "Admin" do
      describe "volumes" do
        refinery_login_with :refinery_user

        describe "volumes list" do
          before do
            FactoryGirl.create(:volume, :price => "UniqueTitleOne")
            FactoryGirl.create(:volume, :price => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.volumes_admin_volumes_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.volumes_admin_volumes_path

            click_link "Add New Volume"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Price", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Volumes::Volume.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Price can't be blank")
              Refinery::Volumes::Volume.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:volume, :price => "UniqueTitle") }

            it "should fail" do
              visit refinery.volumes_admin_volumes_path

              click_link "Add New Volume"

              fill_in "Price", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Volumes::Volume.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:volume, :price => "A price") }

          it "should succeed" do
            visit refinery.volumes_admin_volumes_path

            within ".actions" do
              click_link "Edit this volume"
            end

            fill_in "Price", :with => "A different price"
            click_button "Save"

            page.should have_content("'A different price' was successfully updated.")
            page.should have_no_content("A price")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:volume, :price => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.volumes_admin_volumes_path

            click_link "Remove this volume forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Volumes::Volume.count.should == 0
          end
        end

      end
    end
  end
end
