*** Settings ***
Documentation    Suite description
Library           SeleniumLibrary
Library           DebugLibrary
Test Setup        Setup Test
Test Teardown     Teardown Test

*** Variables ***
${url}                  http://www.practiceselenium.com/practice-form.html
${browser}              chrome
${title}                practice-form
@{continents}           USA    Europe  Asia    Australia     South America      North America        Antartica
@{selenium_commands}    Browser Commands    Navigation Commands     Switch Commands     Wait Commands    WebElement Commands

*** Test Cases ***
Handeling DropDowns and Lists
    [Tags]    DEBUG
    [Documentation]    This is to Test Radio Buttons
    ${i}    set test variable    ${0}
    log to console    Testing Now Radio Button for Sex Type
    scroll element into view      id:submit
    ${Length}    get length   ${continents}
    FOR   ${i}    IN RANGE    ${Length}
       select from list by label     continents    ${continents[${i}]}
       Sleep     1
    END
    FOR   ${i}    IN RANGE    ${Length}
        ${j}     convert to string    ${i}
       select from list by index     continents    ${j}
       Sleep     1
    END
    #select from list by value     continents    Asia
    #Lists
    ${Length}    get length   ${selenium_commands}
    FOR   ${i}    IN RANGE    ${Length}
       select from list by label    selenium_commands      ${selenium_commands[${i}]}
       Sleep    1
    END
    #Unselection
    FOR   ${i}    IN RANGE    ${Length}
       Unselect from list by label    selenium_commands      ${selenium_commands[${i}]}
       Sleep    1
    END


*** Keywords ***
Setup Test
    Open browser    ${url}     ${browser}
    Maximize Browser Window
    title should be    ${title}

Teardown Test
    close browser
