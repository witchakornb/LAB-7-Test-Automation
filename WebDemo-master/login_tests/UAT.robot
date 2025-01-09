*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}          localhost:7272
${BROWSER}         Chrome
${DELAY}           0
${FORM URL}        http://${SERVER}/Form.html
${COMPLETED FORM URL}    http://${SERVER}/Complete.html
${CHROME_PATH}     ${EXECDIR}${/}chrome-win64${/}chrome.exe
${CHROMEDRIVER}    ${EXECDIR}${/}chrome-win64${/}chromedriver.exe

*** Keywords ***
Open Browser To Form Page
    [Documentation]    Opens the browser and navigates to the form page.
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${options.binary_location}    Set Variable    ${CHROME_PATH}
    ${service}=    Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service(executable_path=r'${CHROMEDRIVER}')    sys, selenium.webdriver.chrome.service
    Create WebDriver    Chrome    options=${options}    service=${service}
    Set Selenium Speed    ${DELAY}
    Go To    ${FORM URL}
    Form Page Should Be Open

Form Page Should Be Open
    [Documentation]    Validates that the form page is loaded.
    Title Should Be    Customer Inquiry

Completed Page Should Be Open
    [Documentation]    Validates that the completed form page is displayed after submission.
    Location Should Be    ${COMPLETED FORM URL}
    Title Should Be       Completed
