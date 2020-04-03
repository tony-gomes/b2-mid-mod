require 'rails_helper'

RSpec.describe 'As a user' do
  before(:each) do
    @mechanic_1 = Mechanic.create(name: "Sam Smith",
                                  years_experience: 7)

    @mechanic_2 = Mechanic.create(name: "Art Funk",
                                  years_experience: 12)

    @mechanic_3 = Mechanic.create(name: "Al Fixed",
                                  years_experience: 17)
  end

  context 'When I visit a mechanics index page' do
    context 'I see a header saying All Mechanics' do
      it "And I see a list of all mechanics names & years experience" do

        visit "/mechanics"

        within "#mechanic-#{@mechanic_1.id}" do
          expect(page).to have_content(@mechanic_1.name)
          expect(page).to have_content(@mechanic_1.years_experience)
        end

        within "#mechanic-#{@mechanic_2.id}" do
          expect(page).to have_content(@mechanic_2.name)
          expect(page).to have_content(@mechanic_2.years_experience)
        end

        within "#mechanic-#{@mechanic_3.id}" do
          expect(page).to have_content(@mechanic_3.name)
          expect(page).to have_content(@mechanic_3.years_experience)
        end
      end
    end
  end
end
