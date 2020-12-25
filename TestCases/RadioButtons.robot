*** Settings ***
Documentation    Suite description
Library       SeleniumLibrary
Test Setup    Setup Test
Test Teardown   Teardown Test

*** Variables ***
${url}          http://www.practiceselenium.com/practice-form.html
${browser}      chrome
${title}        practice-form

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    [Tags]    DEBUG
    [Documentation]    This is to Test Radio Buttons
    ${i}    set test variable    ${0}
    log to console    Testing Now Radio Button for Sex Type
    FOR   ${i}    IN RANGE    ${2}
       click button   id:sex-${i}
       sleep     ${2}
    END
    log to console    Testing Now Radio Button for Years of Chai Drinking
    FOR   ${i}    IN RANGE    ${7}
       click button   id:exp-${i}
       sleep     ${2}
    END

*** Keywords ***
Setup Test
    Open browser    ${url}     ${browser}
    Maximize Browser Window
    title should be    ${title}

Teardown Test
    close browser
