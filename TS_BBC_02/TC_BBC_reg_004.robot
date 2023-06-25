*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_02.robot

*** Variables ***
${Date}  //*[@id="day-input"]
${Month}  //*[@id="month-input"]
${year}  //*[@id="year-input"]

*** Test Cases ***
Pre-conditions
    open browser    ${url}  ${browser}

Registre_4
    TC_BBC_reg_004

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_reg_004
    Set Selenium Speed  0.3
    Maximize Browser Window
    Page Should Not Contain Button  //*[@id="container"]/div/div[2]/div/div/div[2]/div[2]/fieldset/div[1]/a[1]
    Page Should Contain Link  //*[@id="container"]/div/div[2]/div/div/div[2]/div[2]/fieldset/div[1]/a[1]
    Click Element  //*[@id="container"]/div/div[2]/div/div/div[2]/div[2]/fieldset/div[1]/a[2]
    Input Text  ${Date}  14
    Input Text  ${Month}  01
    Input Text  ${year}  2018
    Page Should Not Contain Link  //*[@id="dateOfBirthField"]/div[4]/button
    Page Should Contain Button  //*[@id="submit-button"]
    Click Element  //*[@id="submit-button"]
    Page Should Contain Element  ${messageInvalidDate_birth}
