*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Select Sign in button
    click link          xpath://*[@id="SignIn"]

Verify Sign In Successful
    page should contain    Login
