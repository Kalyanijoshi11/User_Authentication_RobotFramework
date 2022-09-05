[Documentation]    This is file where all Keywords are defined.
*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${url}    https://www.demoblaze.com/index.html
${browser}    chrome
${orguname}    northenwavestech@gmail.com
${orgpass}    admin
${logid}    login2
${text1}    Log in 

*** Keywords ***
OpenWebsite
    [Documentation]    Method for Open Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    id:nava    timeout=5

CloseWebsite
    [Documentation]    Method for Close browser.
    Close Browser

LoginItem
    [Documentation]    Method for Login click.
    Click Element    id:${logid} 
    Wait Until Element Is Visible    id:logInModalLabel
    Page Should Contain    ${text1} 

InputUsername
    [Documentation]    Method for entering User Name.
    [Arguments]    ${uname}
    Input Text    id:loginusername    ${uname}

input_P
    [Documentation]    Method for entering Password.
    [Arguments]    ${pass}
    Input Text    id:loginpassword    ${pass}   

ClickLogin
    [Documentation]    Method for Login button click.
    Click Button    Log in

ClickLogout
    [Documentation]    Method for clicking Log Out.
    Click Link    id:logout2

Messege Should be Visible
    [Arguments]    ${uname}
    Run Keyword If  """${uname}""" != """${orguname}"""    Alert Should Be Present    User does not exist.
    ...  ELSE     Alert Should Be Present    Wrong password.      

Successful login Messege
    [Arguments]    ${uname}
    Page Should Contain    Welcome ${uname}

