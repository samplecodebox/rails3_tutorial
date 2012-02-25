require 'spec_helper'

describe "shows/new.html.erb" do
  before(:each) do
    assign(:show, stub_model(Show,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new show form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shows_path, :method => "post" do
      assert_select "input#show_name", :name => "show[name]"
      assert_select "textarea#show_description", :name => "show[description]"
    end
  end
end
