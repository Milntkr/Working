#------------------------------------------
#    Sub Admin Update Progress round 2
#------------------------------------------
#       กรณีผู้ใช้งานมีหลายกลุ่มผู้ใช้งาน
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
    Open Browser    ${url}      Chrome
    Maximize Browser Window
    Sleep    2
Log In
#   Ex. Sub Admin : 610151 - นัทชา ตั้งศรีตระกูล = สคญ.
    Input Text      id=sUsername         admin
    Input Text      id=sSecureCode       1234
    Click Element   id=btnLogin
    Sleep    8
    Click Element    xpath=//*[@id="root"]/div[1]/div[2]/div/ul/li[5]/a
    Sleep    5
Select Group Users
    Click Element   id=sGroup
    Sleep    2
    Click Element   id=sGroup-option-0
    Sleep    2
    #สามารถใส่เลขได้ตามกลุ่มที่เลือก (เริ่มจาก 0 - จำนวนกลุ่มที่มีอยู่)
    Click Element   id=id-group
    Sleep    5
    Click Element    xpath=//*[@id="root"]/div[1]/div[2]/div/ul/li[4]/a
    Sleep    3
    
Log Out
    Click Element   xpath=//*[@id="root"]/div[1]/header/div/div/div[2]/div/div[3]/button[2]
    Sleep    2
    Click Element   xpath=/html/body/div[2]/div[3]/div/div[2]/div[2]/button[1]
    Sleep    10
    
***Test Cases***
TC1_Input information
    [Tags]      TC1
    Open website
    Log In
    # Select Group Users
    Log Out


