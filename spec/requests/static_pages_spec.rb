require 'spec_helper'

 describe "Static pages" do
  subject{page}
  
  it "should have the right links on the layout" do
    #visit root_path
    #click_link "Get an invite"
    #page.should
  end
  
  shared_examples_for "all static pages" do
    it { should have_selector('h1', :text=>heading)}
    it { should have_selector('title', :text=>full_title(page_title))}
  end
  
#  describe "Home Page" do
#    before{visit root_path}    
#    let(:heading) {'Fidbacks'}
#    let(:page_title) {''}
#    it_should_behave_like "all static pages"
#    it { should_not have_selector('title', :text=>"| Home")}
#  end
  
#  describe "Blog Page" do
#    before{visit blog_path}
#    let(:heading) {'Blog'}
#    let(:page_title) {'Blog'}
#    it_should_behave_like "all static pages"
#  end
end
 