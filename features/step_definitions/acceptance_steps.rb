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
