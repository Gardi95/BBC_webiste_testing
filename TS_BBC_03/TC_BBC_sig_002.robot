*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_03.robot

*** Variables ***

${Email}  //*[@id="user-identifier-input"]
${password}  //*[@id="password-input"]


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

Sign_in_2
    TC_BBC_sig_002

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_sig_002
    Set Selenium Speed  0.5
    Maximize Browser Window
    Input Text  ${Email}  mahamadgardi9564@gmail.com
    Input Text  ${password}  123456789MsY
    Click Element  //*[@id="submit-button"]
    Page Should Contain Element  ${username}
