*** Settings ***
Documentation    This is a document with organized crm.robot file
Resource    ../ResourcesUsingVariables/automationwebsite.robot
Resource    ../ResourcesUsingVariables/common.robot
Test Setup    Initialize Selenium
Test Teardown    End web test

# Execution command to run the robot script
# robot -d ResultUsingVariables Tests/crm_UsingVariables.robot

# Execution command to pass variable via the terminal
# robot -d ResultUsingVariables -v newCustomerEmailID:shy@gmail.com Tests/crm_UsingVariables.robot

*** Variables ***
${browser} =    chrome
${url} =    https://automationplayground.com/crm/
${username} =    admin@robotframeworktutorial.com
${password} =    qwe
${newCustomerEmailID} =   ssn@gmail.com
@{newCustomerFirstAndLastName} =    shy    nig
${newCustomerLastName} =     nig
${newCustomerCity} =     New York

*** Test Cases ***
Test case 1: Should be able to resize the window and select sign in
    [Documentation]     This is some basic info about the test
    [Tags]              1006    Smoke   SignIn

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