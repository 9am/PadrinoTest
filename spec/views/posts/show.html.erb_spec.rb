require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :title => "Title",
      :content => "Content",
      :cover_url => "Cover Url",
      :background_url => "Background Url",
      :swf_url => "Swf Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Content/)
    rendered.should match(/Cover Url/)
    rendered.should match(/Background Url/)
    rendered.should match(/Swf Url/)
  end
end
