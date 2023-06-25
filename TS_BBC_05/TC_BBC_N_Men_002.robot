*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_05.robot

*** Variables ***
${War_in_Ukraine}  //*[@id="orb-modules"]/header/div[2]/div/div[1]/nav/ul/li[2]
${title}  //*[@id="nw-c-Thewarexplained__title"]



*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

News_Menu_2
    TC_BBC_N_Men_002

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_N_Men_002
    Set Selenium Speed  0.5
    Maximize Browser Window
    Click Element  ${Do_not_consent}
    Click Element  ${NoTakeMeToSettings}
    Page Should Contain  How can I change my BBC cookie settings?
    Go back
    Click Element  ${War_in_Ukraine}
    Page Should Contain Element  ${title}