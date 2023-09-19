#------------------------------------------
#      VP Accept Update Progress
#------------------------------------------
#Scroll Barยังใช้ไม่ได้

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
    Input Text      id=sUsername         370098
    Input Text      id=sSecureCode       1234
    Click Element   id=btnLogin
    Sleep    2
Update Progress
    Click Element    xpath=/html/body/div/div[1]/div[2]/div/ul/li[4]/a
    Sleep    2
    Click Element    xpath=//*[@id="BtnUpdate_MyProject_2"]
    #ID = ลำดับของ Project
    Sleep    2
Accept Update Progress
    Click Element       xpath=//*[@id="root"]/div[1]/div[2]/div/ul/li[4]/a
    Sleep    2
    Click Element       id=BtnApprove_MyProject_2
    Sleep    2
    Scroll Element Into View    xpath=//*[@id="reject-project-view"]
    Sleep    2
Click Button Accept
    Click Element       id=reject-project-view
    Sleep    2
    Click Element       id=sComment     ปรับแก้ข้อมูล(Test)
    Sleep    2
    Click Element       id=reject-project
    Sleep   10
    Click Element       xpath=/html/body/div[3]/div[3]/div/div[2]/div[2]/button[1]
    Sleep    10
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
    Accept Update Progress
    Click Button Accept
    Log Out