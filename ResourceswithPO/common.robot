*** Settings ***
Library                 SeleniumLibrary

*** Keywords ***

Initialize Selenium
    set selenium speed    0.2s
    set selenium timeout  10s

Begin web test
    log                 Starting the test case!
    open browser        about:blank    chrome

    go to               https://automationplayground.com/crm/
    page should contain    Customers Are Priority One

Resize the window
    set window position     x=341       y=169
    set window size         width=800  height=500

End web test
    close browser