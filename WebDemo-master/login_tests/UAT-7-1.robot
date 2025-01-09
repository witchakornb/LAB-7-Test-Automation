*** Settings ***
Resource    UAT.robot

*** Test Cases ***
1. Open Form
    [Documentation]    Opens the form page.
    Open Browser To Form Page

2. Record Success
    [Documentation]    Fills out the contact information form with valid data and submits it.
    Fill Contact Information Form
    Submit Form
    Completed Page Should Be Open

*** Keywords ***
Fill Contact Information Form
    [Documentation]    Inputs data into all required form fields on the contact information page.
    Input Text    id=firstname         Somsong
    Input Text    id=lastname          Sandee
    Input Text    id=destination       Europe
    Input Text    id=contactperson     Sodsai Sandee
    Input Text    id=relationship      Mother
    Input Text    id=email             somsong@kkumail.com
    Input Text    id=phone             081-111-1234

Submit Form
    [Documentation]    Submits the form by clicking the submit button.
    Click Button    id=submitButton
