*** Settings ***
Library    AppiumLibrary
Resource    ../Resource/Common/CommonKeyword.robot
Resource    ../Resource/PageObject/SplashScreen.robot
Resource    ../Resource/PageObject/LoginScreen.robot

*** Test Cases ***
Verify the item display on the login screen.
    [Documentation]    check the item displays on login screen.
    [Tags]    login
    Open the application
    sleep    30s
    Open the login screen
    sleep    15s
    The item on Login screen display correctly

