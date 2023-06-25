*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_02.robot

*** Variables ***
${Date}  //*[@id="day-input"]
${Month}  //*[@id="month-input"]
${year}  //*[@id="year-input"]
${Password}  //*[@id="password-input"]

*** Test Cases ***
Pre-conditions
    open browser    ${url}  ${browser}

Registre_5
    TC_BBC_reg_005

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_reg_005
    Set Selenium Speed  0.3
    Maximize Browser Window
    Page Should Not Contain Button  //*[@id="container"]/div/div[2]/div/div/div[2]/div[2]/fieldset/div[1]/a[1]
    Click Element  //*[@id="container"]/div/div[2]/div/div/div[2]/div[2]/fieldset/div[1]/a[2]
    Page Should Contain Button  //*[@id="submit-button"]
    Input Text  ${Date}  24
    Input Text  ${Month}  06
    Input Text  ${year}  1995
    Click Element  //*[@id="submit-button"]
    Input Text  ${Password}  123456789MsY
    Click Element  //*[@id="location-select"]
    Click Element  //*[@id="location-select"]/option[57]
    Page Should Contain Button  //*[@id="submit-button"]
    Page Should Contain List  //*[@id="location-select"]
    Click Element  //*[@id="submit-button"]
    Page Should Contain Element  ${Something'smissing}
