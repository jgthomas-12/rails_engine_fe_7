require "rails_helper"

RSpec.describe "merchant index" do
  describe "as a visitor" do
    describe "when I visit the merchants index page" do

      # As a visitor,
      # When I visit '/merchants'
      # I should see a list of merchants by name
      # and when I click the merchant's name
      # I should be on page '/merchants/:id'
      # And I should see a list of items that merchant sells.

      it "displays a list of merchants by name" do
        # visit "/merchants"
        visit merchants_path

        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_content("Klein, Rempel and Jones")
      end
    end
  end
end