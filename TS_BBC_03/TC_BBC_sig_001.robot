*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_03.robot

*** Variables ***

${Email}  //*[@id="user-identifier-input"]
${password}  //*[@id="password-input"]


*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

Sign_in_1
    TC_BBC_sig_001

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_sig_001
    Set Selenium Speed  0.5
    Maximize Browser Window
    Input Text  ${Email}  mahamadgardi95@gmail.com
    Input Text  ${password}  123456789MsY
    Click Element  //*[@id="submit-button"]
    Click Element  //*[@id="return-to-ptrt"] 
    Click Element  //html/body/div[12]/div[2]/div[1]/div[2]/div[2]/button[2]
    Click Element  //*[@id="idcta-link"]
    Click Element  //*[@id="bbccookies-settings"]
    Page Should Contain  How can I change my BBC cookie settings?
    Click Element  //*[@id="homepage-link"]
    Page Should Contain Link  ${Link}