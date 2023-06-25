*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_05.robot

*** Variables ***

${UK}  //*[@id="orb-modules"]/header/div[2]/div/div[1]/nav/ul/li[7]


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

News_Menu_7
    TC_BBC_N_Men_007

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_N_Men_007

    Set Selenium Speed  0.5
    Maximize Browser Window
    Sleep  2
    Click Element  ${Do_not_consent}
    Click Element  ${NoTakeMeToSettings}
    Page Should Contain  How can I change my BBC cookie settings?
    Go back
    Reload Page
    Click Element  ${UK}
    Page Should Contain  Features and analysis