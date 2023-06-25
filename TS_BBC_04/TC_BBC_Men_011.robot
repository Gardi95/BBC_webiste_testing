*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_04.robot


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

Menu_11
    TC_BBC_Men_011

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_Men_011
    Set Selenium Speed  0.5
    Maximize Browser Window
    Click Element  //html/body/div[12]/div[2]/div[1]/div[2]/div[2]/button[2]
    Click Element  //*[@id="bbccookies-settings"]/a
    Page Should Contain  How can I change my BBC cookie settings?
    Go back
    Click Element  //*[@id="orbit-more-button"]
    Click Element  //*[@id="orbit-more-drawer"]/div/ul[2]/li[11]/a
    Page Should Contain  Listen Live
