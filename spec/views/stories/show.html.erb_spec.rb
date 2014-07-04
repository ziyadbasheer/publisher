require 'rails_helper'

RSpec.describe "stories/show", :type => :view do
  before(:each) do
    @story = assign(:story, Story.create!(
      :title => "Title",
      :body => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
