    When /^我来到(.+)$/ do |page_name|
      visit path_to(page_name)
    end
    
    When /^我在输入框<(.+)>中输入<(.*)>$/ do |field, value|
      fill_in(field, :with => value)
    end
    
    When /^我按下<(.+)>按钮$/ do |button|
      click_button(button)
    end
    
    Then /我应该看到<(.+)>的提示信息/ do |msg|
      response.body.should =~ Regexp.new(msg)
    end
