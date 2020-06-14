*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot    

*** Variables ***
${Browser}    chrome
${SiteUrl}    http://newtours.demoaut.com

*** Test Cases ***
Gherkin Login
    Given browser is opened to login page
    When user "tutorial" logs in with password "tutorial" 
    Then welcome page should be open

*** Keywords ***
browser is opened to login page
    Open my Browser    ${SiteUrl}    ${Browser}

user "${user}" logs in with password "${pwd}"
    Enter UserName    ${user}
    enter Password    ${pwd}
    Click SignIn
    
welcome page should be open
    Sleep    3 seconds    
    Verify Succesfull Login
    
close the given browser
    close my browsers      