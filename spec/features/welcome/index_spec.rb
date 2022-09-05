require 'rails_helper'

RSpec.describe 'index page' do
  it 'selects  a state and submits the form and is able to view information on the parks' do
    visit "/"

    select "Tennessee", from: 'state'

    click_on "Find Parks"
  end
end
  
