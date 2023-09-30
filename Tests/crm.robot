*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary

# Execution command to run the robot script
# robot -d results tests/crm.robot

# Execution command to run a specific test case
# robot -d results -N "Test case 2" -t "Test Case 2" tests/crm.robot

# Execution command to run a test case with a specific tag
# robot -d results -N "Test case 3" -i "CurrentTestCase" tests

*** Variables ***


*** Test Cases ***
Test case 1: Should be able to add new customer
    [Documentation]     This is some basic info about the test
    [Tags]              1006    Smoke   Contacts

    #Initialize Selenium
    set selenium speed    0.2s
    set selenium timeout  10s

    #open the browser
    log                 Starting the test case!
    open browser        https://automationplayground.com/crm/       chrome

    page should contain    Customers Are Priority One

    #Resize the window
    set window position     x=341       y=169
    set window size         width=800  height=500

    click link          xpath://*[@id="SignIn"]
    page should contain    Login

    input text          id=email-id         admin@robotframeworktutorial.com
    input text          id=password         qwe
    click button        id=submit-id
    page should contain    Our Happy Customers

    click link                  id=new-customer
    wait until page contains    Add Customer

    input text          id=EmailAddress     s@gmail.com
    input text          id=FirstName        s
    input text          id=LastName         nig
    input text          id=City             Dallas
    select from list by value    id=StateOrRegion       TX

    select radio button  gender        male
    select checkbox      xpath=//*[@id="loginform"]/div/div/div/div/form/div[7]/input

    click button        xpath=//*[@id="loginform"]/div/div/div/div/form/button

    wait until page contains    Success! New customer added.

    sleep               3s
    close browser

Test Case 2
    log             This is test case 2 log from suite Tests

Test Case 3
    [Tags]          CurrentTestCase
    log             Executing a test case with a specific tag

*** Keywords ***
