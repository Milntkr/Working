#######################################
#              Add User               #
#######################################
#Admin Add User : ${text} = รหัสพนักงาน
***Settings***
Library     SeleniumLibrary
Library    XML
Test Teardown   Close Browser
***Variables***
${url}    https://softthaiapp.com/PTT-CRSR/
${text}   580108
${id_User}  id=sEmployeeID 
***Keywords***
Open website
    Open Browser    ${url}      edge
    Maximize Browser Window
    Sleep    2
Log In Admin
    Input Text      id=sUsername         admin
    Input Text      id=sSecureCode       1234
    Click Element   id=btnLogin
    Sleep    2
Add Users
    Click Element   xpath=/html/body/div[1]/div[1]/div[2]/div/ul/li[5]/a
    Sleep    2
    Click Element   xpath=//*[@id="layout"]/div/div[3]/div/div
    Sleep    1
    Click Element   xpath=//*[@id="layout"]/div/div[3]/div/div[2]/div/div/a[3]
    Sleep    1
    Click Element   xpath=//*[@id="btnAddOnTable"]
    Sleep    1
Detil Users
    Click Element   xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[2]/div/div[1]/div[1]/div/div[1]/div/div
    Sleep    1
    Click Element   id=nRole-option-1
    Sleep    2
    Click Element   xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[2]/div/div[1]/div[1]/div/div[2]/div/div/div
    Sleep    1
    Click Element   id=nUserGroup-option-1
    Sleep    2
    Input Text  ${id_User}    ${text}  
    Sleep    3
    Click Element   id=sEmployeeID-option-0
    Sleep    2
    Click Element   id=btnSave
    Sleep    2
    Click Element   xpath=/html/body/div[2]/div[3]/div/div[2]/div[2]/button[1]
    Sleep    5
Log Out Admin
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[1]/header/div/div/div/div[2]/div/div[3]/button[2]
    Sleep    2
    Click Element   xpath=/html/body/div[2]/div[3]/div/div[2]/div[2]/button[1]
    Sleep    10
***Test Cases***
TC1_Input informations
    [Tags]      TC1
    Open website
    Log In Admin
    Add Users
    Detil Users
    Log Out Admin

