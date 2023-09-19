#######################################
#             ลักษณะโครงการ            #
#######################################
#ยังอัปโหลดไฟล์ไม่ได้
***Settings***
Library     SeleniumLibrary
Library    XML
Test Teardown   Close Browser
***Variables***
${url}    https://softthaiapp.com/PTT-CRSR/
${Menu_Admin}   xpath=/html/body/div/div[1]/div[2]/div/ul/li[5]/a
${project_nature}     xpath=/html/body/div/div[1]/main/div[2]/div/div[2]/div/div/div/div/div[3]/div
${ADD}      xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[2]/div[2]/div[2]/div/div[2]/div[1]/div/div/div[2]/div[1]/div/div
${Name}        Test Data 1234
${Edit}     xpath=//*[@id="editOnTableStandard_244"]

***Keywords***
Open website
    Open Browser    ${url}      edge
    Maximize Browser Window
    Sleep    2
Log In Admin
    Input Text      id=sUsername         admin
    Input Text      id=sSecureCode       1234
    Click Element   id=btnLogin
    Sleep    10
#--------------------------------------
Add Basic Data
    Click Element   ${Menu_Admin}   
    Sleep    2
    Click Element       ${project_nature}
    Sleep    2
    Scroll Element Into View    xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[2]/div[2]/div[2]/div/div[3]/div
    Sleep    2
    Click Element   ${ADD}  
    Sleep    2
    Input Text      id=sNameMenu        ${Name}
    Sleep    2
Button Save Data
    Click Element   id=saveBasic
    Sleep    3
    Click Element   xpath=/html/body/div[2]/div[3]/div/div[2]/div[2]/button[1]
    Sleep    5
#--------------------------------------
Edit Basic Data
    Click Element   ${Menu_Admin}   
    Sleep    2
    Click Element       ${project_nature}
    Sleep    2
    Scroll Element Into View    xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[2]/div[2]/div[2]/div/div[3]/div
    Sleep    2
    Click Element   ${Edit}     
    Sleep    2
    press keys      id=sNameMenu        CTRL+a+BACKSPACE
    Sleep    2
    Input Text      id=sNameMenu        ${Name}
    Sleep    10
#--------------------------------------
Log Out Admin
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[1]/header/div/div/div/div[2]/div/div[3]/button[2]
    Sleep    2
    Click Element   xpath=/html/body/div[2]/div[3]/div/div[2]/div[2]/button[1]
    Sleep    10

Delete Basic Data
    Click Element   ${Menu_Admin}   
    Sleep    2
    Click Element       ${project_nature}
    Sleep    2
    Scroll Element Into View    xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[2]/div[2]/div[2]/div/div[3]/div
    Sleep    2
    Click Element      xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[2]/div[2]/div[2]/div/div[2]/div[2]/div/div/div/div[3]/div[1]/span/input
    Sleep    2
    Click Element      id=BtnDelete_SelectRow
    Sleep    2
    Click Element      xpath=/html/body/div[2]/div[3]/div/div[2]/div[2]/button[1]
    Sleep    10
***Test Cases***
TC1_Input informations
    [Tags]      TC1
    Open website
    Log In Admin
    Delete Basic Data
#--------------------------------------
    Add Basic Data
    Button Save Data
#--------------------------------------
    Edit Basic Data
    Button Save Data
#--------------------------------------
    Log Out Admin

#** หากไม่ต้องการรันฟังก์ชันไหนให้ทำการคอมเมนต์ฟังก์ชันในส่วนของ Test case ไว้