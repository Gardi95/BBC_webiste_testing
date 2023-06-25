*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_05.robot

*** Variables ***

${World_News_TV}  //*[@id="orb-modules"]/header/div[2]/div/div[1]/nav/ul/li[14]


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

News_Menu_14
    TC_BBC_N_Men_014

Post-condicitions
    close browser


*** Keywords ***


TC_BBC_N_Men_014

    Set Selenium Speed  0.5
    Maximize Browser Window
    Click Element  ${Do_not_consent}
    Click Element  ${NoTakeMeToSettings}
    Page Should Contain  How can I change my BBC cookie settings?
    Go back
    Reload Page
    Click Element  ${World_News_TV}
    Page Should Contain  Featured programmes


