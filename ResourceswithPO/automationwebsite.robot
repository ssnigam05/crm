*** Settings ***
Resource    ../ResourceswithPO/PO/SelectSignIn.robot
Resource    ../ResourceswithPO/PO/EnterCredentials.robot
Resource    ../ResourceswithPO/PO/SelectNewCustomer.robot
Resource    ../ResourceswithPO/PO/NewCustomerDetails.robot
Resource    ../ResourceswithPO/PO/GenderSelection.robot
Resource    ../ResourceswithPO/PO/AdditionToPromotionList.robot
Resource    ../ResourceswithPO/PO/SelectSubmit.robot

*** Keywords ***
Select Sign In button
    SelectSignIn.Select Sign in button
    SelectSignIn.Verify Sign In Successful

Enter the credentials
    EnterCredentials.Enter the credentials
    EnterCredentials.Select submit button home page
    EnterCredentials.Verify successful sign in

Select new customer button
    SelectNewCustomer.Select new customer button
    SelectNewCustomer.Verify successful new customer button selection

Enter the details of a new customer
    NewCustomerDetails.Enter the email id of a new customer
    NewCustomerDetails.Enter the first name of a new customer
    NewCustomerDetails.Enter the last name of a new customer
    NewCustomerDetails.Enter the city of a new customer
    NewCustomerDetails.Select State or region of new customer

Select Gender
    GenderSelection.Select Gender Male

Accept addition to promotion list
    AdditionToPromotionList.Accept addition to promotion list

Select the submit button
    SelectSubmit.Select the submit button
    SelectSubmit.Verify new customer addition succesful