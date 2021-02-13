*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary

*** Test Cases ***
Delete Old Emails
    [Tags]    Gmail
    open browser    https://mail.google.com/mail/u/0/#inbox/    firefox
    Maximize Browser Window
    input text    id:identifierId      ana.soraganvi@gmail.com
    click element    xpath://body/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/button[1]/div[2]
    Debug
    click element    xpath://input[@class='VfPpkd-RLmnJb']
    close browser

*** Keywords ***
