Given "there are some instruments in the database" do
  @instruments = create_list(:instrument, 3)
end

When "I visit the instruments index" do
  visit "/instruments.json"
end

Then "I recieve all the instruments as JSON" do
  expect(page.body).to be_json_eql(
    @instruments.to_json
  ).excluding("description")
end

Given "there is one instrument in the database" do
  @instrument = create(:instrument)
end

When "I visit that instrument's page" do
  visit "instruments/#{@instrument.id}.json"
end

Then "I recieve that instrument's details as JSON" do
  expect(page.body).to be_json_eql(
    @instrument.to_json
  )
end
