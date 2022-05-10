*** Settings ***
Documentation        this suite will handle valid credential
...     test - TC_OH_2
Resource    ../Resource/CommonFactionality.resource
Test Setup  Launch Browser
Test Teardown  Close Browser
Test Template   Invalid Credential Template
*** Test Cases ***
Tc1  john   john123  Invalid credentials
Tc2  peter  peter123   Invalid credentials




*** Keywords ***
Invalid Credential Template
   [Arguments]  ${username}  ${password}  ${expected_error}
   Input Text    id=txtUsername    ${username}
   Input Password    id=txtPassword    ${password}
   Click Element    id=btnLogin
   Element Text Should Be    id=spanMessage    expected=${expected_error}
