*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_05.robot

*** Variables ***

${Home}  //*[@id="orb-modules"]/header/div[2]/div/div[1]/nav/ul/li[1]


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

News_Menu_1
    TC_BBC_N_Men_001

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_N_Men_001
    Set Selenium Speed  0.5
    Maximize Browser Window
    sleep  2
    Click Element  ${Do_not_consent}
    Click Element  ${NoTakeMeToSettings}
    Page Should Contain  How can I change my BBC cookie settings?
    Go back
    Click Element  ${Home}
    Page Should Contain  Must see
    Page Should Contain Button  ${button}




























