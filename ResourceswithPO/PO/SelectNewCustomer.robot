*** Settings ***
Library                 SeleniumLibrary


*** Keywords ***
Select new customer button
    click link                  id=new-customer

Verify successful new customer button selection
    wait until page contains    Add Customer