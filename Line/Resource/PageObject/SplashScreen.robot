*** Settings ***
Library    AppiumLibrary

*** Variables ***
${Login_Button}    id=jp.naver.line.android.registration:id/login
${SignUp_Button}    id=jp.naver.line.android.registration:id/sign_up


*** Keywords ***
Open the login screen
    [Documentation]    tap on login button
    click element    ${Login_Button}

