*** Settings ***
Documentation        this suite will handle valid credential
...     test - TC_OH_2
Resource    ../Resource/CommonFactionality.resource
Test Setup  Launch Browser
Test Teardown  Close Browser
*** Test Cases ***
Invalid Credential Test
    Input Text   id=txtUsername   Anchal
    Input Password    id=txtPassword    Anchal123
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage  expected=Invalid credentials



