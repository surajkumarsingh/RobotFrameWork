*** Settings ***
Library  SeleniumLibrary

Resource  ../Resources/LoginKeywords.robot


*** Variables ***

${browser}  chrome

${siteUrl}  http://demo.guru99.com/test/newtours/

${userName}  tutorial

${password}  tutorial

*** Test Cases ***
Login Test
    Setup chromedriver
    Open my Browser    ${siteUrl}   ${browser}
    Enter Username  ${userName}
    Enter Password  ${password}
click on submit
    Click SignIn
    Close my browser
