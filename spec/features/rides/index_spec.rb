require 'rails_helper'

RSpec.describe 'As a user' do
  before(:each) do
    @ride_1 = Ride.create(name: "Skull Crusher",
                          thrill_rating: 3)

    @ride_2 = Ride.create(name: "Paradise Falls",
                          thrill_rating: 9)

    @ride_3 = Ride.create(name: "Head Basket",
                          thrill_rating: 7)
  end

  context 'When I visit a rides index page' do
    context 'I see a header saying All Rides' do
      it "And I see a list of all rides names & thrill rating" do

        visit "/rides"

        within ".rides-main-block" do
          expect(page).to have_content("Skull Crusher")
          expect(page).to have_content("3")

          expect(page).to have_content("Paradise Falls")
          expect(page).to have_content("9")

          expect(page).to have_content("Head Basket")
          expect(page).to have_content("7")
        end
      end
    end
  end
end
