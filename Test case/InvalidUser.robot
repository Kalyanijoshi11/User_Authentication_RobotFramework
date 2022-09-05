[Documentation]    This is the main file for invalid user.

*** Settings ***

Library    SeleniumLibrary
Resource    ../Resourse/commen.resource
Library    DataDriver    Test Data/LoginData.xlsx

Test Setup     OpenWebsite
Test Teardown    CloseWebsite
Test Template    Invalid Login

*** Test Cases ***    username    password 
TC_001_Varify_Invalid User    ${uname}    ${pass}
  
*** Keywords ***
Invalid Login
    [Documentation]    This is for invalid input fields.
    [Arguments]    ${uname}    ${pass}
    Set Selenium Speed    1
    LoginItem
    InputUsername    ${uname}
    input_p    ${pass}  
    ClickLogin
    Messege Should be Visible    ${uname}