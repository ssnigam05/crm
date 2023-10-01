*** Settings ***
Library                 SeleniumLibrary

*** Keywords ***
Enter the email id of a new customer
    input text          id=EmailAddress     ${newCustomerEmailID}

Enter the first name of a new customer
    input text          id=FirstName    ${newCustomerFirstAndLastName}[0]

Enter the last name of a new customer
    input text          id=LastName    ${newCustomerFirstAndLastName}[1]

Enter the city of a new customer
    input text          id=City             ${newCustomerCity}

Select State or region of new customer
    select from list by value    id=StateOrRegion       TX