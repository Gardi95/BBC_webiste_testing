*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_02.robot

*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

Registre_2
    TC_BBC_reg_002

Post-condicitions
    close browser

*** Keywords ***

TC_BBC_reg_002
    Set Selenium Speed  0.3
    Maximize Browser Window
    Page Should Contain Link  //*[@id="container"]/div/div[2]/div/div/div[2]/div[2]/fieldset/div[1]/a[1]
    Click Element  //*[@id="container"]/div/div[2]/div/div/div[2]/div[2]/fieldset/div[1]/a[1]
    Page Should Contain Link  //*[@id="return-to-ptrt"]
    Page Should Contain  Sorry, only 16s and over can register outside the UK
    Click Element  //*[@id="container"]/div/div[2]/div/div/div[2]/div[3]


