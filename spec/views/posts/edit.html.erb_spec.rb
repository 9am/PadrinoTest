require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :title => "MyString",
      :content => "MyString",
      :cover_url => "MyString",
      :background_url => "MyString",
      :swf_url => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", post_path(@post), "post" do
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "input#post_content[name=?]", "post[content]"
      assert_select "input#post_cover_url[name=?]", "post[cover_url]"
      assert_select "input#post_background_url[name=?]", "post[background_url]"
      assert_select "input#post_swf_url[name=?]", "post[swf_url]"
    end
  end
end
