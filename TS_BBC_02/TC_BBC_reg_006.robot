*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_02.robot

*** Test Cases ***
Pre-conditions
    open browser    ${url}  ${browser}

Registre_6
    TC_BBC_reg_006

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_reg_006
    Set Selenium Speed  0.3
    Maximize Browser Window
    Page Should Not Contain Button  //*[@id="container"]/div/div[2]/div/div/div[2]/div[2]/fieldset/div[1]/a[1]
    Click Element  //*[@id="container"]/div/div[2]/div/div/div[2]/div[2]/fieldset/div[1]/a[2]
    Page Should Contain Button  //*[@id="submit-button"]
    Input Text  //*[@id="day-input"]  24
    Input Text  //*[@id="month-input"]  06
    Input Text  //*[@id="year-input"]  1995
    Click Element  //*[@id="submit-button"]
    Input Text  //*[@id="user-identifier-input"]  mahamadgardi95@gmail.com
    Click Element  //*[@id="location-select"]
    Click Element  //*[@id="location-select"]/option[57]
    Page Should Contain Button  //*[@id="submit-button"]
    Page Should Contain List  //*[@id="location-select"]
    Click Element  //*[@id="submit-button"]
    Page Should Contain  Something's missing. Please check and try again.


