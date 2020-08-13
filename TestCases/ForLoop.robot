*** Variables ***

*** Test Cases ***
Print Numbers
    : FOR  ${i}  IN    12
           #Exit For Loop If    ${i} == 9
           Log    ${i}
    :END


