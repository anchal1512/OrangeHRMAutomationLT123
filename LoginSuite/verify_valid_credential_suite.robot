* Settings *
Documentation     this suite will handle valid credential
...     test - TC_OH_2

Resource   ../Resource/CommonFactionality.resource
Test Setup          Launch Browser
Test Teardown       Close Browser

Test Template  Valid Credential Template
Library  DataDriver     file=../test_data/Orange_data.xlsx   sheet_name=Valid Credential

*** Test Cases *
Tc1
*** Keywords ***
Valid Credential Template
   [Arguments]  ${username}  ${password}  ${expected_value}
   Input Text    id=txtUsername   ${username}
   Input Password    id=txtPassword    ${password}
   Click Element    id=btnLogin
   Page Should Contain    ${expected_value}