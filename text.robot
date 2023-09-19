***Settings***
Library     SeleniumLibrary
Library    XML
Test Teardown   Close Browser
***Variables***
${url}    https://softthaiapp.com/PTT-CRSR/

***Keywords***
Open website
    Open Browser    ${url}      edge
    Maximize Browser Window
    Sleep    2
Log In
    Input Text      id=sUsername         530079
    Input Text      id=sSecureCode       1234
    Click Element   id=btnLogin
    Sleep    5
Log Out
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[1]/header/div/div/div/div[2]/div/div[3]/button[2]
    Sleep    2
    Click Element   xpath=/html/body/div[2]/div[3]/div/div[2]/div[2]/button[1]
    Sleep    10
***Test Cases***
TC1_Input information
    [Tags]      TC1
    Open website
    Log In
    Log Out