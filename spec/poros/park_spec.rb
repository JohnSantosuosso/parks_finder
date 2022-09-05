require 'rails_helper'

RSpec.describe Park do
  it 'initializes with a hash of data' do
    data = {
      fullName: "Andrew Johnson National Historic Site",
      description: "Andrew Johnson's complex presidency (1865-69) illustrates the Constitution at work",
      directionsInfo: "GPS The GPS setting for Andrew Johnson NHS may be listed as 121 Monument Ave",
      operatingHours: [{:exceptions=>[],
  :description=>
   "OPERATING HOURS VARY FROM SITE TO SITE. There are many historic sites, museums, and parks (federal, state, and local) along the Trail of Tears in Tennessee, North Carolina, Georgia, Alabama, Kentucky, Illinois, Arkansas, Missouri, or Oklahoma for you to visit. Please contact individual sites for more information by going to Plan Your Visit and selecting Places To Go or Passport Program, where sites are listed by state, and there is an interactive map to search for sites.",
  :standardHours=>{:wednesday=>"All Day", :monday=>"All Day", :thursday=>"All Day", :sunday=>"All Day", :tuesday=>"All Day", :friday=>"All Day", :saturday=>"All Day"},
  :name=>"Trail of Tears National Historic Trail"}]
    }

    park = Park.new(data)

    expect(park.name).to eq("Andrew Johnson National Historic Site")
    expect(park.description).to eq("Andrew Johnson's complex presidency (1865-69) illustrates the Constitution at work")
    expect(park.directions).to eq("GPS The GPS setting for Andrew Johnson NHS may be listed as 121 Monument Ave")

  end
end
