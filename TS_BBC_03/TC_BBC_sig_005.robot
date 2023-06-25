*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_03.robot

*** Variables ***

${Email}  //*[@id="user-identifier-input"]



*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

Sign_in_5
    TC_BBC_sig_005

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_sig_005
    Set Selenium Speed  0.5
    Maximize Browser Window
    Input Text  ${Email}  mahamadgardi95@gmail.com
    Click Element  //*[@id="submit-button"]
    Page Should Contain  Something's missing. Please check and try again.
    Page Should Contain  Sorry, those details don't match. Check you've typed them correctly.