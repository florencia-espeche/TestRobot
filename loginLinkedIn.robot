*** Settings ***
Library           Selenium2Library

*** Variables ***
${Username}       flor.espeche23@gmail.com
${Password}       umakaruna.23
${Browser}        Chrome
${SiteUrl}        https://es.linkedin.com/
${button}         id=login-submit


*** Test Cases ***
Login Should Verified
    Open Page
    Enter User Name
    Enter Password
    Click Sign in
    [Teardown]    Close Browser

*** Keywords ***
Open Page
    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Enter User Name
    Input Text  id=login-email    ${Username}

Enter Password
    Input Password	id=login-password    ${Password}

Click Sign in
    Selenium2Library.Wait Until Page Contains Element   ${button}
    Click Button  ${button}
