*** Settings ***

Library     SeleniumLibrary
Library     OperatingSystem
Variables    ../PageObjects/Login.py

*** Variables ***
${EXECDIR}      ../Drivers/chromedriver.exe

*** Keywords ***
Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}

Open my Browser
    [Arguments]   ${siteUrl}    ${browser}
    open browser  ${siteUrl}    ${browser}
    Maximize Browser Window

Enter Username
    [Arguments]  ${userName}
    input Text  ${txt_loginUserName}    ${userName}

Enter Password
    [Arguments]  ${password}
    input Text   ${txt_loginUserPassword}    ${password}

Click SignIn
    click button    ${signInBtn}

Close my Browser
    close all browsers






