*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library           OperatingSystem

*** Variables ***
${LOGIN URL}    https://www.google.com/
${BROWSER}      Chrome
${EXECDIR}      ..\Drivers\chromedriver.exe


*** Test Cases ***
Checking browser to login page
  setup chromedriver
  Open Browser To Login Page



*** Keywords ***
Open Browser To Login Page
  Open Browser  ${LOGIN URL}    ${BROWSER}
  maximize browser window

Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}