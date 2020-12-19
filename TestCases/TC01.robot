*** Settings ***
Library      SeleniumLibrary


*** Test Cases ***
LoginTest
    create webdriver    chrome     executable_path=".\Drivers\chromederiver.exe"
    open browser    https:// demo.nopcommerce.com   chrome
    click link     xpath://a[class@='ico-login']
    input text    id:Email      pavanoltraning@gmail.com
    input text    id:Password    Test@123
    click element    xpath://input[@class='button-1 login-button']
    close browser




