*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_03.robot

*** Variables ***

${Email}  //*[@id="user-identifier-input"]



*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

Sign_in_7
    TC_BBC_sig_007

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_sig_007
    Set Selenium Speed  0.5
    Maximize Browser Window
    Click Element  //*[@id="signin-page"]/div[2]/div/div[1]/div[2]/form/p/a
    Page Should Contain  Register with the BBC
    Click Element  //*[@id="container"]/div/div[2]/div/div/div[2]/ul/li[1]/a
    Page Should Contain  Need help signing in?
    Input Text  ${Email}  mahamadgardi9564
    Click Element  //*[@id="submit-button"]
    Page Should Contain  What's your email address?