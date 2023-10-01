*** Settings ***
Documentation    This is a document with organized crm.robot file
Resource    ../ResourceswithPO/automationwebsite.robot
Resource    ../ResourceswithPO/common.robot
Resource    ../ResourceswithPO/PO/SelectSignIn.robot
Test Setup    Initialize Selenium
Test Teardown    End web test

# Execution command to run the robot script
# robot -d ResultPO Tests/crm_POExample.robot



*** Variables ***


*** Test Cases ***
Test case 1: Should be able to resize the window and select sign in
    [Documentation]     This is some basic info about the test
    [Tags]              1006    Smoke   Contacts

    common.Begin web test
    common.Resize the window
    automationwebsite.Select Sign in button

Test case 2: Should be able to add new customer
    [Documentation]     This is some basic info about the test
    [Tags]              1006    Smoke   Contacts

    common.Begin web test
    common.Resize the window
    automationwebsite.Select Sign in button
    automationwebsite.Enter the credentials
    automationwebsite.Select new customer button
    automationwebsite.Enter the details of a new customer
    automationwebsite.Select Gender
    automationwebsite.Accept addition to promotion list
    automationwebsite.Select the submit button