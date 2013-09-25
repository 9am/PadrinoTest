require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :title => "MyString",
      :content => "MyString",
      :cover_url => "MyString",
      :background_url => "MyString",
      :swf_url => "MyString"
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "input#post_content[name=?]", "post[content]"
      assert_select "input#post_cover_url[name=?]", "post[cover_url]"
      assert_select "input#post_background_url[name=?]", "post[background_url]"
      assert_select "input#post_swf_url[name=?]", "post[swf_url]"
    end
  end
end
