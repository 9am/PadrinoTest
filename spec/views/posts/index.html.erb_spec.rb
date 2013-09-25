require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :title => "Title",
        :content => "Content",
        :cover_url => "Cover Url",
        :background_url => "Background Url",
        :swf_url => "Swf Url"
      ),
      stub_model(Post,
        :title => "Title",
        :content => "Content",
        :cover_url => "Cover Url",
        :background_url => "Background Url",
        :swf_url => "Swf Url"
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Cover Url".to_s, :count => 2
    assert_select "tr>td", :text => "Background Url".to_s, :count => 2
    assert_select "tr>td", :text => "Swf Url".to_s, :count => 2
  end
end
