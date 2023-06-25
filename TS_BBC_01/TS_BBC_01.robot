*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_01.robot

*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

BBC_logo
    TC_BBC_BBC logo_001

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_BBC logo_001
    Set Selenium Speed  0.5
    Click Element  //html/body/div[12]/div[2]/div[1]/div[2]/div[2]/button[2]
    Click Element  //*[@id="bbccookies-settings"]/a
    Page Should Contain  How can I change my BBC cookie settings?
    Click Element  //*[@id="homepage-link"]
    Page Should Contain Image  ${Image}
    Page Should Contain Link  ${Link}
    Page Should Not Contain Button  ${Button}
    Page Should Contain Element  //*[@id="page"]/section[2]/h2


