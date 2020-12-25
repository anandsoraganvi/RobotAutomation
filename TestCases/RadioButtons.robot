*** Settings ***
Documentation    Suite description
Library       SeleniumLibrary
Test Setup    Setup Test
Test Teardown   Teardown Test

*** Variables ***
${url}          http://www.practiceselenium.com/practice-form.html
${browser}      chrome
${title}        practice-form
@{tea_types}    BlackTea     RedTea     oolongtea

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    [Tags]    DEBUG
    [Documentation]    This is to Test Radio Buttons
    ${i}    set test variable    ${0}
    log to console    Testing Now Radio Button for Sex Type
    FOR   ${i}    IN RANGE    ${2}
       click button   id:sex-${i}
       sleep     ${1}
    END
    log to console    Testing Now Radio Button for Years of Chai Drinking
    FOR   ${i}    IN RANGE    ${7}
       click button   id:exp-${i}
       sleep     ${1}
    END
    #Another way of selecting Radio buttons by select radio button    $name     $value
    select radio button     sex     Male
    select radio button     exp     1
    select radio button     exp     2

    #working with checkboxes
    #way1: with id
    FOR   ${i}    IN RANGE    ${3}
       click button   id:tea${i+1}
       sleep     ${1}
    END
    #way2: with specfic keyword select checkbox
    FOR   ${i}    IN RANGE    ${3}
       unselect checkbox     ${tea_types[${i}]}
       sleep     ${1}
       select checkbox     ${tea_types[${i}]}
    END


*** Keywords ***
Setup Test
    Open browser    ${url}     ${browser}
    Maximize Browser Window
    title should be    ${title}

Teardown Test
    close browser
