*** Settings ***
#second Commit
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}=    http://127.0.0.1:4723/wd/hub
${ANDROID_PLAT_NAME}=    Android
${ANDROID_PLAT_VER}=    5.1.1
${DEVICE_NAME}=    127.0.0.1:62001
${PACKET_NAME}=    jp.naver.line.android
${ACTIVITY_NAME}=    jp.naver.line.android.activity.SplashActivity

*** Keywords ***
Open the application
    [Documentation]    setup the variabel for open the app
    open application    ${APPIUM_SERVER}    platformName=${ANDROID_PLAT_NAME}    platformVersion=${ANDROID_PLAT_VER}    deviceName=${DEVICE_NAME}    automationName=Appium    appPackage=${PACKET_NAME}    appActivity=${ACTIVITY_NAME}
