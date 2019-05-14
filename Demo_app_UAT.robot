*** Settings ***
Test Teardown     close browser
Library           SeleniumLibrary
Resource          Resources.txt    # Resources

*** Test Cases ***
001 - Successful Login
    [Tags]    Login
    Open login page
    Enter Username    abc
    Enter Password    abc
    Click login button
    Login should be successful

002 - Invalid password
    [Tags]    Login
    Open login page
    Enter Username    demo
    Enter Password    demoo
    Click login button
    Login should fail

003 - Register new user
    [Tags]  User Registration
    Open Registration page
    Enter Username  xyz
    Enter password  xyz
    Enter firstname  xyz
    Enter familyname  xyz
    Enter Phone  12343423
    Click Register button
    close browser
    Open login page
    Enter Username    xyz
    Enter Password    xyz
    Click login button
    Login should be successful
