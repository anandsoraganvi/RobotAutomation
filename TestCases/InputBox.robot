*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary

*** Variables ***
${url}          https://demo.nopcommerce.com/
${browser}      chrome
${title}        nopCommerce demo store
${email}        pavanoltraning@gmail.com

*** Test Cases ***
Testing Input Box
    [Tags]    DEBUG
    Open browser    ${url}     ${browser}
    Maximize Browser Window
    title should be    ${title}
    click link     xpath://a[contains(text(),'Log in')]
    ${email_txt}    set variable    id:Email
    #text input area checking enabled and visibled or not
    element should be visible    ${email_txt}
    element should be enabled    ${email_txt}
    input text    ${email_txt}     ${email}
    clear element text      ${email_txt}
    close browser

