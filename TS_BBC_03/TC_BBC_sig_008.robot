*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_03.robot


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

Sign_in_8
    TC_BBC_sig_008

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_sig_008
    Set Selenium Speed  0.5
    Maximize Browser Window
    Click Element  //*[@id="signin-page"]/div[2]/div/div[1]/div[2]/form/p/a
    Click Element  //*[@id="container"]/div/div[2]/div/div/div[2]/ul/li[1]/a
    Click Element  //*[@id="submit-button"]
    Page Should Contain  Something's missing. Please check and try again.
