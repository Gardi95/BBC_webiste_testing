*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_05.robot

*** Variables ***

${Clim}  //*[@id="orb-modules"]/header/div[2]/div/div[1]/nav/ul/li[4]


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

News_Menu_4
    TC_BBC_N_Men_004

Post-condicitions
    close browser


*** Keywords ***


TC_BBC_N_Men_004
    Set Selenium Speed  0.5
    Maximize Browser Window
    Click Element  ${Do_not_consent}
    Click Element  ${NoTakeMeToSettings}
    Page Should Contain  How can I change my BBC cookie settings?
    Go back
    Click Element  ${Clim}
    Page Should Contain  Latest Updates
