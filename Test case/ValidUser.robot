 [Documentation]    This is the main file to validate Successful Login
*** Settings ***
Library    SeleniumLibrary

Resource    ../Resourse/commen.resource

Test Setup    OpenWebsite
Test Teardown    CloseWebsite

*** Test Cases ***  
TC_002_Varify_Succefull login    
    valid_log    ${orguname}    ${orgpass}    

*** Keywords ***
valid_log
    [Documentation]    This is the test case for valid login.
    [Arguments]    ${uname}    ${pass}
    Set Selenium Speed    1
    LoginItem
    InputUsername    ${uname}
    input_P    ${pass}
    ClickLogin
    Successful login Messege    ${uname}
    ClickLogout  