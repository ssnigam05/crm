*** Settings ***
Library                 SeleniumLibrary

*** Keywords ***
Select Sign in button
    click link          xpath://*[@id="SignIn"]
    page should contain    Login

Enter the credentials
    input text          id=email-id         admin@robotframeworktutorial.com
    input text          id=password         qwe
    click button        id=submit-id
    page should contain    Our Happy Customers

Select new customer button
    click link                  id=new-customer
    wait until page contains    Add Customer

Enter the details of a new customer
    input text          id=EmailAddress     s@gmail.com
    input text          id=FirstName        s
    input text          id=LastName         nig
    input text          id=City             Dallas
    select from list by value    id=StateOrRegion       TX

Select Gender
    select radio button  gender        male

Accept addition to promotion list
    select checkbox      xpath=//*[@id="loginform"]/div/div/div/div/form/div[7]/input

Select the submit button
    click button        xpath=//*[@id="loginform"]/div/div/div/div/form/button
    wait until page contains    Success! New customer added.
    sleep               3s

