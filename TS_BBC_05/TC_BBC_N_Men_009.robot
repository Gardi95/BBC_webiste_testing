*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_05.robot

*** Variables ***

${Tech}  //*[@id="orb-modules"]/header/div[2]/div/div[1]/nav/ul/li[9]


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

News_Menu_9
    TC_BBC_N_Men_009

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_N_Men_009
    Set Selenium Speed  0.5
    Maximize Browser Window
    Click Element  ${Do_not_consent}
    Click Element  ${NoTakeMeToSettings}
    Page Should Contain  How can I change my BBC cookie settings?
    Go back
    Click Element  ${Tech}
    Page Should Contain  Tech