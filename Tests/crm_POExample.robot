*** Settings ***
Documentation    This is a document with organized crm.robot file
Resource    ../ResourceswithPO/automationwebsite.robot
Resource    ../ResourceswithPO/common.robot
Resource    ../ResourceswithPO/PO/SelectSignIn.robot
Test Setup    Initialize Selenium
Test Teardown    End web test

# Execution command to run the robot script
# robot -d ResultsMoreReadable tests/crm_MoreReadable.robot

# Execution command to run a specific test case
# robot -d results -N "Test case 2" -t "Test Case 2" tests/crm.robot

# Execution command to run a test case with a specific tag
# robot -d results -N "Test case 3" -i "CurrentTestCase" tests

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