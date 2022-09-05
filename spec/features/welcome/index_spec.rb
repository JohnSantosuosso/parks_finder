require 'rails_helper'

RSpec.describe 'index page' do
  it 'selects  a state and submits the form and is able to view information on the parks' do
    visit "/"

    select "Tennessee", from: 'state'

    click_on "Find Parks"

    expect(page).to have_content("Total Parks: 15")

    expect(page).to have_content("Andrew Johnson National Historic Site")
    expect(page).to have_content("Andrew Johnson's complex presidency (1865-69) illustrates the Constitution at work following the Civil War. As the President and Congress disagreed on Reconstruction methods, the Constitution served as their guide on balance of powers, vetoes, and impeachment. In the end, it evolved as a living document with pivotal amendments on freedom, citizenship, and voting rights - topics still vital today.")
    expect(page).to have_content("GPS The GPS setting for Andrew Johnson NHS may be listed as 121 Monument Ave, which is the park HQ in the National Cemetery. To arrive at the Visitor Center, use 101 North College Street, Greeneville, TN. Plane The closest airport is the Tri-Cities Regional Airport, 43 miles NE of Greeneville. From the airport, take I-81 South to exit 36 and follow the signs to Greeneville. Car From I-81S take exit 36 to Rt. 172 south to Greeneville. From I-81N take exit 23 to Rt. 11E north to Greeneville.")
    expect(page).to have_content("9:00AM - 4:00PM")
  end
end
  
