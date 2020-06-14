*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/InvalidLoginKeywords.robot    

*** Variables ***
${Browser}    chrome
${SiteUrl}    http://newtours.demoaut.com
${user}    invalid
${pwd}    invalid

*** Test Cases ***
LoginTest
    Open my Browser    ${SiteUrl}    ${Browser}
    Enter UserName    ${user}
    enter Password    ${pwd}
    Click SignIn
    Sleep    3 seconds    
    Verify Succesfull Login
    close my browsers      