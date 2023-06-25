*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_03.robot

*** Variables ***

${password}  //*[@id="password-input"]


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

Sign_in_4
    TC_BBC_sig_004

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_sig_004
    Set Selenium Speed  0.5
    Maximize Browser Window
    Input Text  //*[@id="password-input"]  123456789MsY
    Click Element  //*[@id="submit-button"]
    Page Should Contain  Something's missing. Please check and try again.
    Page Should Contain  Sorry, those details don't match. Check you've typed them correctly.