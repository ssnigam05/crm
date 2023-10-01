*** Settings ***
Library                 SeleniumLibrary


*** Keywords ***
Enter the email id of a new customer
    input text          id=EmailAddress     s@gmail.com

Enter the first name of a new customer
    input text          id=FirstName        s

Enter the last name of a new customer
    input text          id=LastName         nig

Enter the city of a new customer
    input text          id=City             Dallas

Select State or region of new customer
    select from list by value    id=StateOrRegion       TX