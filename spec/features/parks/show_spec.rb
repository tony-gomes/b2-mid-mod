require 'rails_helper'

RSpec.describe 'As a user' do
  before(:each) do
    @park_1 = Park.create(name: "Total Chaos",
                          admission_price: 25.00)

    @park_2 = Park.create(name: "Total Chaos",
                          admission_price: 25.00)
  end

  describe 'When I visit a park show page I see name & admission_price for that park' do
    context 'And I see names of all rides that are at that theme park in alphabetical order' do
      it 'And I see the average thrill rating of this amusement park’s rides' do

        visit "/parks/#{@park_1.id}"

        within ".main-park-block" do
          expect(page).to have_content(@park_1.name)
          expect(page).to have_content(@park_1.admission_price)
        end
      end
    end
  end
end
