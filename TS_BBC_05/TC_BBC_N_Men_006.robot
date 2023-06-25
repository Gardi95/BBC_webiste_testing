*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_05.robot

*** Variables ***

${World}  //*[@id="orb-modules"]/header/div[2]/div/div[1]/nav/ul/li[6]


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

News_Menu_6
    TC_BBC_N_Men_006

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_N_Men_006
    Set Selenium Speed  0.5
    Maximize Browser Window
    sleep  2
    Click Element  ${Do_not_consent}
    Click Element  ${NoTakeMeToSettings}
    Page Should Contain  How can I change my BBC cookie settings?
    Go back
    Click Element  ${World}
    Page Should Contain  Watch/Listen

