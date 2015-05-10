require 'spec_helper'

def CheckContent(checkpage, content)
   visit checkpage
   return expect(page).to have_content(content)
end

def CheckTitle(checkpage, title)
   visit checkpage
   return expect(page).to have_title(title)
end

describe "StaticPages" do

   describe "Home page" do
     homepage = '/static_pages/home'
     it 'should have the title "Home"' do
       CheckTitle(homepage, 'Home')
     end
    it "should have the content 'Twitter'" do
      CheckContent(homepage,'Twitter')
    end
  end
  
  describe "Contact page" do
     contactpage = '/static_pages/contact'
     it 'should have the title "Contact"' do
       CheckTitle(contactpage,'Contact')
     end
     it 'should have the content "Contact"' do
       CheckContent(contactpage,'Contact') 
     end
  end
  
   describe "Help page" do
     helppage = '/static_pages/help'
     it "should have the content 'Help'" do
       CheckContent(helppage,'Help')
     end
     it "should have title 'Help'" do
       CheckTitle(helppage,'Help')
     end
   end
   
   describe "About page" do
     aboutpage = '/static_pages/about'
     it "should have the content 'About Us'" do
       CheckContent(aboutpage,'About Us')
     end
     it "should have the Title 'About'" do
       CheckTitle(aboutpage,'About')
     end
   end
end
