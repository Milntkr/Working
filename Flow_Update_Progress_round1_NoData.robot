#------------------------------------------
#    Sub Admin Update Progress round 1
#------------------------------------------
***Settings***
Library     SeleniumLibrary
Library    XML
Test Teardown   Close Browser
#ยังไม่สามารถรันได้ ยังไม่มีข้อมูล
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
Update Progress
    Click Element    xpath=//*[@id="root"]/div[1]/div[2]/div/ul/li[4]/a
    Sleep    3
    Click Element    xpath=//*[@id="BtnUpdate_MyProject_1"]
    #ลำดับของ Project
    Sleep    3
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div[1]/div/div[1]
    Sleep    2
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div[1]
    Sleep    2
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div[3]/div/div/div/div[1]
    Sleep    2
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div[4]/div/div/div/div[1]
    Sleep    2
Click Button Submit
    Click Element   id=save-project
    Sleep    2
    Click Element   xpath=/html/body/div[4]/div[3]/div/div[2]/div[2]/button[1]
    Sleep    2
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
    Update Progress
    Click Button Submit
    Log Out


