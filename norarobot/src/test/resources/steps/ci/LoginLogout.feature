@LoginLogout
Feature: LoginLogout (Scenario that 1st sample.) 

	Scenario Outline:  Scenario that 1st sample.
	
    Given I check that user '<user>' is not empty.
    Given I check that password '<password>' is not empty.
    
    Given 'JHIPSTERSAMPLEAPP_HOME' is opened.
    Then The JHIPSTERSAMPLEAPP home page is displayed
      
    When I log in to JHIPSTERSAMPLEAPP as '<user>' '<password>'
    Then The JHIPSTERSAMPLEAPP portal is displayed
      
    When I log out of JHIPSTERSAMPLEAPP
    Then The JHIPSTERSAMPLEAPP logout page is displayed

    And I go back to 'JHIPSTERSAMPLEAPP_HOME'
		
	Examples:
	  #DATA
	  |id|user|password|
    #END