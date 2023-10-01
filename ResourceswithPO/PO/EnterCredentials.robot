*** Settings ***
Library                 SeleniumLibrary


*** Keywords ***
Enter the credentials
    input text          id=email-id         admin@robotframeworktutorial.com
    input text          id=password         qwe

Select submit button home page
    click button        id=submit-id

Verify successful sign in
    page should contain    Our Happy Customers