*** Settings ***
Library                 SeleniumLibrary


*** Keywords ***
Enter the credentials
    input text          id=email-id         ${username}
    input text          id=password         ${password}

Select submit button home page
    click button        id=submit-id

Verify successful sign in
    page should contain    Our Happy Customers