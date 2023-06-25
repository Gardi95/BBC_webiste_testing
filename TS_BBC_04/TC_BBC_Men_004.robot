*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_04.robot


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

Menu_4
    TC_BBC_Men_004

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_Men_004
    Set Selenium Speed  0.5
    Maximize Browser Window
    Click Element  //html/body/div[12]/div[2]/div[1]/div[2]/div[2]/button[2]
    Sleep  2   
    Click Element  //*[@id="bbccookies-settings"]/a
    Page Should Contain Element  //*[@id="pageContents"]/div/div[2]/div/h1
    Go back
    Click Element  //*[@id="orb-header"]/div/nav[2]/ul/li[4]/a
    Page Should Contain  Most Watched
