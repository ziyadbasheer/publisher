require 'rails_helper'

RSpec.describe "stories/new", :type => :view do
  before(:each) do
    assign(:story, Story.new(
      :title => "MyString",
      :body => "MyText",
      :user => nil
    ))
  end

  it "renders new story form" do
    render

    assert_select "form[action=?][method=?]", stories_path, "post" do

      assert_select "input#story_title[name=?]", "story[title]"

      assert_select "textarea#story_body[name=?]", "story[body]"

      assert_select "input#story_user_id[name=?]", "story[user_id]"
    end
  end
end
