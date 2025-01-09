*** Settings ***
Resource    UAT.robot
Suite Teardown  Close Browser

*** Test Cases ***

1. Open Form
    [Documentation]    Opens the form page and verifies that the form is displayed.
    Open Browser To Form Page
    Form Page Should Be Open

2. Empty Destination
    [Documentation]    Opens the form, fills all fields except "Destination", and verifies the error message.
    Input Text    id=firstname         Somsong
    Input Text    id=lastname          Sandee
    Input Text    id=contactperson     Sodsai Sandee
    Input Text    id=relationship      Mother
    Input Text    id=email             somsong@kkumail.com
    Input Text    id=phone             081-111-1234
    Click Button    id=submitButton
    Page Should Contain    Please enter your destination.
    Close Browser

3. Open Form
    [Documentation]    Opens the form page and verifies that the form is displayed.
    Open Browser To Form Page
    Form Page Should Be Open

4. Empty Email
    [Documentation]    Opens the form, fills all fields except "Email", and verifies the error message.
    Input Text    id=firstname         Somsong
    Input Text    id=lastname          Sandee
    Input Text    id=destination       Europe
    Input Text    id=contactperson     Sodsai Sandee
    Input Text    id=relationship      Mother
    Input Text    id=phone             081-111-1234
    Click Button    id=submitButton
    Page Should Contain    Please enter a valid email address.
    Close Browser

5. Open Form
    [Documentation]    Opens the form page and verifies that the form is displayed.
    Open Browser To Form Page
    Form Page Should Be Open

6. Invalid Email
    [Documentation]    Opens the form, fills "Email" with invalid data, and verifies the error message.
    Input Text    id=firstname         Somsong
    Input Text    id=lastname          Sandee
    Input Text    id=destination       Europe
    Input Text    id=contactperson     Sodsai Sandee
    Input Text    id=relationship      Mother
    Input Text    id=email             somsong@
    Input Text    id=phone             081-111-1234
    Click Button    id=submitButton
    Page Should Contain    Please enter a valid email address.
    Close Browser

7. Open Form
    [Documentation]    Opens the form page and verifies that the form is displayed.
    Open Browser To Form Page
    Form Page Should Be Open

8. Empty Phone Number
    [Documentation]    Opens the form, fills all fields except "Phone Number", and verifies the error message.
    Input Text    id=firstname         Somsong
    Input Text    id=lastname          Sandee
    Input Text    id=destination       Europe
    Input Text    id=contactperson     Sodsai Sandee
    Input Text    id=relationship      Mother
    Input Text    id=email             somsong@kkumail.com
    Click Button    id=submitButton
    Page Should Contain    Please enter a phone number.
    Close Browser

9. Open Form
    [Documentation]    Opens the form page and verifies that the form is displayed.
    Open Browser To Form Page
    Form Page Should Be Open

10. Invalid Phone Number
    [Documentation]    Opens the form, fills "Phone Number" with invalid data, and verifies the error message.
    Input Text    id=firstname         Somsong
    Input Text    id=lastname          Sandee
    Input Text    id=destination       Europe
    Input Text    id=contactperson     Sodsai Sandee
    Input Text    id=relationship      Mother
    Input Text    id=email             somsong@kkumail.com
    Input Text    id=phone             191
    Click Button    id=submitButton
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678).
    Close Browser