** Settings **
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

** Variables **
${Browser}    chrome
${SiteUrl}    http://www.newtours.demoaut.com

*** Test Cases ***
RegistrationTest
    Open my Browser    ${SiteUrl}    ${Browser}
    Click Register Link
    Enter FirstName    David
    Enter LastName    John
    Enter Phone    1234567890
    Enter Email    davidJohn@gmail.com
    Enter Address1    Indonesia
    Enter Address2    Jakarta
    Enter City    Jakarta
    Enter State    Brampton
    Enter Postal Code    460133
    Select Country    UNITED STATES
    Enter User Name    john123
    Enter Password    johnhahaha
    Enter Confirmed Password    johnhahaha
    Click Submit
    Verify Succesful Registration
    close my browser