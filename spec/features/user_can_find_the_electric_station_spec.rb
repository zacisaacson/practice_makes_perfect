require 'rails_helper'

feature "user can find nearest electric charging station" do
  scenario "user submits location and station" do

    visit '/'

    select "Turing", from: :location

    click_on 'Find Nearest Station'

    expect(current_path).to eq(search_path)

    expect(page).to have_content

  end
end







# As a user
# When I visit "/"
# And I select "Turing" from the start location drop down (Note: Use the existing search form)
# And I click "Find Nearest Station"
# Then I should be on page "/search"
# Then I should see the closest electric fuel station to me.
# For that station I should see
# - Name
# - Address
# - Fuel Type
# - Access Times
# I should also see:
# - the distance of the nearest station (should be 0.1 miles)
# - the travel time from Turing to that fuel station (should be 1min)
# - The HTML direction instructions to get to that fuel station
#   "Head <b>southeast</b> on <b>17th St</b> toward <b>Larimer St</b>"
