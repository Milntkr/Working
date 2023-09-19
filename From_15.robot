#######################################
#           ลักษณะการรวมกลุ่ม           #
#######################################
#ยังอัปโหลดไฟล์ไม่ได้
***Settings***
Library     SeleniumLibrary
Library    XML
Test Teardown   Close Browser
***Variables***
${url}    https://softthaiapp.com/PTT-CRSR/
${Menu_Admin}   xpath=/html/body/div/div[1]/div[2]/div/ul/li[5]/a
${From}     xpath=/html/body/div/div[1]/main/div[2]/div/div[2]/div[1]/div/div/div/div[15]/div
${Name}        Test Data
${save}     xpath=/html/body/div[3]/div[3]/div/div[2]/div[2]/button[1]
${Edit}     xpath=//*[@id="editOnTableStandard_21"]

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
Button Save Data
    Click Element   id=saveBasic
    Sleep    3
    Click Element      ${save} 
#--------------------------------------
Edit Basic Data
    Click Element   ${Menu_Admin}   
    Sleep    2
    Click Element       ${From}
    Sleep    2
    Scroll Element Into View    xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[2]/div[2]/div[2]/div/div[3]/div
    Sleep    2
    Click Element   ${Edit}     
    Sleep    2
    Input Text      id=sNameMenu       ${Name}
    Sleep    2
#--------------------------------------
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
#--------------------------------------
    Edit Basic Data
    Button Save Data
#--------------------------------------
    Log Out Admin

#** หากไม่ต้องการรันฟังก์ชันไหนให้ทำการคอมเมนต์ฟังก์ชันในส่วนของ Test case ไว้