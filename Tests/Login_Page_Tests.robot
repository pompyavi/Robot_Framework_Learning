*** Settings ***
Documentation    This is a regression test suite for Saucedemo application
Library    SeleniumLibrary
Resource    Base_Test.robot
Resource    ../Pages/Login_Page.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome


*** Test Cases ***
Login Test with valid credentials
    [Documentation]    This test is to verify that a user login with valid credentials.
    [Tags]    Smoke
    Enter Username    standard_user
    Enter Password    secret_sauce
    Do Login    
    Element Text Should Be    xpath://span[text()="Products"]    PRODUCTS

Login Test with locked credentials
    [Documentation]    This test is to verify that a user whose credential is locked cannot sign in.
    [Tags]    Smoke
    Enter Username    locked_out_user
    Enter Password    secret_sauce
    Do Login
    Element Should Contain    xpath://h3[contains(text(), 'locked')]    Sorry, this user has been locked out

*** Keywords ***

