*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

End Web Test
    Close Browser