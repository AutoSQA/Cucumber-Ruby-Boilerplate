Feature: Verify Google search result

  @ID-1 @prod
  Scenario:  The user uses Google to search
    Given I go to Google         
     When I search "autosqa"
     Then I should see a hyperlink to "http://autosqa.com/"