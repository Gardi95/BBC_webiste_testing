*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_03.robot


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

Sign_in_10
    TC_BBC_sig_010

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_sig_010
    Set Selenium Speed  0.5
    Maximize Browser Window
    Click Element  //*[@id="signin-page"]/div[2]/div/div[1]/div[2]/form/p/a
    Page Should Contain  Register with the BBC
    Click Element  //*[@id="container"]/div/div[2]/div/div/div[2]/ul/li[3]/a
    Page Should Contain  Help signing in
    Click Element  //*[@id="bbccookies-settings"]/a
    Page Should Contain  How can I change my BBC cookie settings?
    Click Element  //*[@id="homepage-link"]
    Click Element  //html/body/div[12]/div[2]/div[1]/div[2]/div[2]/button[2]
    Page Should Contain  Welcome to BBC.com
