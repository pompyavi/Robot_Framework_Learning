*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${username_field}    id:user-name
${password_field}    id:password
${login_button}    id:login-button

*** Keywords ***
Enter Username
    [Arguments]    ${value}
    Input Text    ${username_field}    ${value}

Enter Password
    [Arguments]    ${value}
    Input Password    ${password_field}    ${value}

Do Login
    Click Element    ${login_button}