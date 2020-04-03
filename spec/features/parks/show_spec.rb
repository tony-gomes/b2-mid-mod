require 'rails_helper'

RSpec.describe 'As a user' do
  before(:each) do
    @park_1 = Park.create(name: "Total Chaos",
                          admission_price: 25.00)

    @park_2 = Park.create(name: "Total Chaos Too",
                          admission_price: 25.00)

    @ride_1 = @park_2.rides.create(name: "Skull Crusher",
                          thrill_rating: 3)

    @ride_2 = @park_2.rides.create(name: "Paradise Falls",
                          thrill_rating: 9)

    @ride_3 = @park_2.rides.create(name: "Head Basket",
                          thrill_rating: 7)
  end

  describe 'When I visit a park show page I see name & admission_price for that park' do
    context 'And I see names of all rides that are at that theme park in alphabetical order' do
      it 'And I see the average thrill rating of this amusement park’s rides' do

        visit "/parks/#{@park_1.id}"

        within ".park-main-block" do
          expect(page).to have_content(@park_1.name)
          expect(page).to have_content(@park_1.admission_price)
          expect(page).to have_content("Rides:")
          expect(page).to have_content("Average Thrill Rating of Rides:")
        end

        visit "/parks/#{@park_2.id}"

        within ".park-main-block" do
          expect(page).to have_content(@park_2.name)
          expect(page).to have_content(@park_2.admission_price)
          expect(page).to have_content("Rides:")

          within ".park-rides-block" do
          expect(page).to have_content(@ride_1.name)
          expect(page).to have_content(@ride_2.name)
          expect(page).to have_content(@ride_3.name)
          end

          expect(page).to have_content("Average Thrill Rating of Rides:")
        end
      end
    end
  end
end
