*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  Variables_08.robot

*** Variables ***

${search}  //*[@id="orbit-search-button"]
${Text}  //*[@id="search-input"]
${button1}  //*[@id="main-content"]/form/div/div/div/button
${Link}  //*[@id="main-content"]/div[3]/div/div/ul/li[1]/div/div/div[1]/div[1]/a
${button2}  //*[@id="view-comments"]/div/div/div[1]/span/div/button

*** Test Cases ***

Pre-conditions
    open browser    ${url}  ${browser}

Comment_1
    TC_BBC_Comnt_001

Post-condicitions
    close browser


*** Keywords ***

TC_BBC_Comnt_001
    Set Selenium Speed  0.5
    Maximize Browser Window
    Click Element  ${Do_not_consent}
    Click Element  ${NoTakeMeToSettings}
    Page Should Contain  How can I change my BBC cookie settings?
    Go Back
    Reload Page
    Click Element  ${search}
    Input Text  ${Text}  Gianluca Vialli: Former Chelsea, Juventus, Sampdoria and Italy striker dies aged 58 Comment: I really liked this news.
    Page Should Contain Button  //*[@id="main-content"]/form/div/div/div/button
    Click Element  ${button1}
    Click Element  ${Link} 
    Click Element  ${button2}
    Page Should Contain Button  //*[@id="view-comments"]/div/div/div[1]/span/div/button









