*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary

# Execution command
# robot -d results tests/crm.robot

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]     This is some basic info about the test
    [Tags]              1006    Smoke   Contacts
    log                 Starting the test case!
    open browser        https://automationplayground.com/crm/       chrome
    sleep               3s
    close browser

*** Keywords ***