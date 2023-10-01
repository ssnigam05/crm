*** Settings ***
Library                 SeleniumLibrary


*** Keywords ***
Select the submit button
    click button        xpath=//*[@id="loginform"]/div/div/div/div/form/button

Verify new customer addition succesful
    wait until page contains    Success! New customer added.
    sleep               3s