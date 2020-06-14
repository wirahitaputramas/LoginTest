*** Settings ***
Library    AppiumLibrary

*** Variables ***
${Login_Phone_Button}    id=jp.naver.line.android.registration:id/auth_with_phone_number
${Continue_Facebook_Button}    id=jp.naver.line.android.registration:id/auth_with_facebook

*** Keywords ***
The item on Login screen display correctly
    [Documentation]    verify all items display on login screen
    Page Should Contain Element    ${Login_Phone_Button}
    Page Should Contain Element    ${Continue_Facebook_Button}