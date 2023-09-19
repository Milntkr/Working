#######################################
#                SDGs                 #
#######################################
#ยังอัปโหลดไฟล์ไม่ได้
***Settings***
Library     SeleniumLibrary
Library    XML
Test Teardown   Close Browser
***Variables***
${url}    https://softthaiapp.com/PTT-CRSR/
${Menu_Admin}   xpath=/html/body/div/div[1]/div[2]/div/ul/li[5]/a
${SDG}      xpath=/html/body/div[1]/div[1]/main/div[2]/div/div[2]/div/div/div/div/div[1]/div
${btnSslectFile}    xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[2]/div/div[1]/div[3]/div[2]/div/div[1]/span/span/button
${imgFile}      C:\Users\Softthai\Downloads\tutorial-robot-main\testcase\Img_Test\test1.jpg
${btnUploadPhoto}     xpath=/html/body/div[2]/div[3]
${Name_SDG}     Test SDGS (Auto)
#ชื่อของ SDGs
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
Add Basic Data
    Click Element   ${Menu_Admin}   
    Sleep    2
    Click Element   ${SDG}
    Sleep    2
    Scroll Element Into View    xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[2]/div[2]/div[2]/div/div[3]/div
    Sleep    2
    Click Element    id=addOnTableStandard
    Sleep    2
    Input Text      id= sNameMenu       ${Name_SDG}
    Sleep    2
    # Choose File 	 locator=webelement 	 file_path=filepath
Upload file
    # Wait Until Page Contains Element   ${btnSslectFile}   10s
    click element       ${btnSslectFile}
    # click element       ${btnUploadPhoto}
    Choose File     ${btnUploadPhoto}        ${EXECDIR}${imgFile}  
    Sleep    20
Edit Basic Data
    Click Element   ${Menu_Admin}   
    Sleep    2
    Click Element   ${SDG}
    Sleep    2
    Scroll Element Into View    xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[2]/div[2]/div[2]/div/div[3]/div
    Sleep    2
    Click Element   id=editOnTableStandard_1
    #เลข ID ลำดับรายการ
    Sleep    2
    Input Text      id= sNameMenu       ${Name_SDG}
    Sleep    2


# //*[@id="root"]/div[1]/main/div[2]/div/div[2]/div/div[1]/div[3]/div[2]/div/div[1]/span/span/button/svg

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
    Add Basic Data
    Upload file
    # Log Out Admin

#** หากไม่ต้องการรันฟังก์ชันไหนให้ทำการคอมเมนต์ฟังก์ชันในส่วนของ Test case ไว้