*** Settings ***
Library      SeleniumLibrary


*** Test Cases ***
LoginTest
    #create webdriver    chrome     executable_path="C:/Users/anaso/PycharmProjects/RobotAutomation/Drivers/chromedriver.exe"
    open browser    https://demo.nopcommerce.com/    chrome
    Maximize Browser Window
    click link     xpath://a[contains(text(),'Log in')]
    input text    id:Email      pavanoltraning@gmail.com
    input text    id:Password    Test@123
    click element    xpath://input[@class='button-1 login-button']
    close browser






