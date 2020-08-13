*** Settings ***
Library  SeleniumLibrary


*** Variables ***

${browser}    chrome

${url}      http://www.practiceselenium.com/practice-form.html

${firstName}  name:firstname


*** Test Cases ***
#Testing Radio buttons and Check Box
#    Open browser    ${url}  ${browser}
#    maximize browser window
#    #every step will take 2 second
#    #set selenium speed  2seconds
#    title should be     practice-form
#    input text  ${firstName}    suraj
#
#    #Also this way we can store element
#    ${LastName}   set variable    name:lastname
#
#    input text  ${LastName}  kumar
#
#    element should be visible   ${LastName}
#    element should be enabled   ${LastName}
#
#
#
#    #selecting radio button  #Attribute(name)        value
#    select radio button     sex                      Female
#    select radio button     exp                        5
#
#    #selecting check box  #Attribute(name/id)
#    select checkbox       BlackTea
#    select checkbox       RedTea
#
#    #reselect not going unselect
#    unselect checkbox     RedTea
#    #Selecting from dropDowen list   #Attribute(Select tag:name/id)   #visible text
#    Select from list by label         continents                      South America
#    sleep   3
#    Select from list by index         continents                      3
#   # Select from list by value         continents                      South America
#
#  #list Box can select multiple values
#
#   Select from list by label         selenium_commands                      Wait Commands
#   sleep  2
#   Select from list by label         selenium_commands                      WebElement Commands
#   sleep  2
#   unSelect from list by label       selenium_commands                      Wait Commands
#   click button     id:submit
#
#    #static wait
#    sleep   5
#    close browser

#Handle Alerts
#    Open browser    https://testautomationpractice.blogspot.com  ${browser}
#    maximize browser window
#    click element       xpath://button[text()='Click Me']
#    handle alert        accept
#    sleep  3
#    click element       xpath://button[text()='Click Me']
#    handle alert        dismiss
#    sleep  3
#    click element       xpath://button[text()='Click Me']
#    handle alert        leave
#    #This will verify and accept the alert
#    #alert should be present     Press a button!
#    #alert should not be present     Press a button!


#Handle Frames
#    Open browser   https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html   ${browser}
#    maximize browser window
#                   #id name xpath
#    select frame   packageFrame
#    click link     Zip
#    unselect frame
#    sleep   3
#    select frame  classFrame
#    click link    Frames


#Handle tabbed Windows
#    open browser    http://demo.automationtesting.in/Windows.html   chrome
#    maximize browser window
#    click element   xpath://*[@id="Tabbed"]/a/button
#                    #title url name
#    select window   url=http://www.sakinalium.in/
#    sleep   3
#    element should be visible   xpath://span[contains(text(),'Live')]
#    click element   xpath://span[contains(text(),'Live')]
#    close all browsers


#Handle multi Browser window
#    open browser    https://www.google.com  chrome
#
#
#    sleep  3
#    open browser    https://www.facebook.com  chrome
#
#    switch browser  2
#    ${title}=    get title
#    log to console  ${title}
#
#    switch browser  1
#    ${title2}=    get title
#    log to console  ${title2}
#
#    sleep  2
#    close all browsers


#Navigation
#      open browser    https://www.google.com  chrome
#      #Get the URL
#      ${loc}=          get location
#      log to console    ${loc}
#
#      #navigate to url
#      go to           https://www.facebook.com
#      ${loc}=          get location
#      log to console    ${loc}
#
#      sleep     2
#      #navigate back
#      go back


#Mouse Actions
#    open Browser     https://swisnl.github.io/jQuery-contextMenu/demo.html  chrome
#     maximize browser window
#     open context menu  xpath://span[text()='right click me']
#     sleep  2
#
#     go to   https://testautomationpractice.blogspot.com
#     double click element    xpath://button[text()='Copy Text']
#
#     sleep  2
#     drag and drop  xpath://p[text()='Drag me to my target']    xpath://p[text()='Drop here']


JavaScript Excutor
    open Browser    https://www.softwaretestingmaterial.com/scroll-web-page-using-selenium-webdriver/    chrome
    #maximize browser window

    execute javascript  window.scrollTo(0,1500)

    sleep   3

    #scroll element into view    xpath://input[@value='Post Comment']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)         # end of page
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)        # start of page

   # execute javascript  window.scrollTo(0,document.body.scrollWidth)



