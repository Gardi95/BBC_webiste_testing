*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_03.robot


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

Sign_in_9
    TC_BBC_sig_009

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_sig_009
    Set Selenium Speed  0.5
    Maximize Browser Window
    Click Element  //*[@id="signin-page"]/div[2]/div/div[1]/div[2]/form/p/a
    Page Should Contain  Register with the BBC
    Click Element  //*[@id="container"]/div/div[2]/div/div/div[2]/ul/li[2]/a
    Page Should Contain  Register with the BBC
    Click Element  //*[@id="container"]/div/div[2]/div/div/div[2]/a
    Page Should Contain  Sorry, unless you can remember it you'll have to register for a new account. On the plus side, it only takes a minute.