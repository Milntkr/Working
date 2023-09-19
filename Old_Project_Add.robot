##################################
#          Register Flow         #  โปรเจคเดิมเพิ่มพื้นที่
##################################
#โครงการเดิม เพิ่มพื้นที่
#User : 530079 |Pass : 1234 
***Settings***
Library     SeleniumLibrary
Library    XML
Test Teardown   Close Browser

***Variables***
${url}    https://softthaiapp.com/PTT-CRSR/
${detile}    test Automate Test (Menu Add My Project)
${id_text}    id=sProjectOrigin
${id_object}    id=sObjective
${id_Target}    id=sTarget
${id_BusinessConnection}    id=sBusinessConnection
${b_upload}    name=oFileDocument
${file}    C:/Users/Softthai/Downloads/1.png
${id_user}  id=oStakeholderName 
${text_id}  นภา
${discription}  เป็นพื้นที่ชะลอน้ำที่มีขนาดเล็กกว่า ก่อสร้างในระดับลุ่มน้ำ

***Keywords***
Open website
    Open Browser    ${url}      edge
    Maximize Browser Window
    Sleep    2
Input information
    Input Text      id=sUsername         530079
    Input Text      id=sSecureCode       1234
    Click Element   id=btnLogin
    Sleep    10
Add My Projects
    Click Element    xpath=/html/body/div/div[1]/div[2]/div/ul/li[4]/a
    Sleep    2
    Click Element    xpath=//*[@id="BtnAdd_MyProject"]
    Sleep    2
Add Detail Area
    Click Element   id=IsNewProject
    Sleep    1
    Input Text       id=sProjectName      โครงการแก้มลิง
    Sleep    1
    #Name Project
Detail Area Project
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[1]/div[1]/div
    Sleep    2
    Click Element    id=sAreaType-option-1
    Sleep    2
    #ลักษณะพื้นที่
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[2]/div
    Sleep    1
    Click Element    id=sProvice-option-35
    Sleep    1
    #จังหวัด
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[3]/div
    Sleep    1
    Click Element    id=sDistrict-option-3
    Sleep    1
    #อำเภอ
    Click Element 	 xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[5]/div
    Sleep    1
    Click Element 	 id=oGeographyType-option-2
    Sleep    1
    #ลักษณะทางภูมิศาสตร์
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[11]/div[2]/div[1]/div[2]/div/div/div
    Sleep    1
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[11]/div[2]/div[1]/div[2]/div
    Sleep    1
    Input Text      ${id_user}  ${text_id}
    Sleep    1
    Click Element   id=oStakeholderName-option-0
    sleep    1
    #Stakeholder ผู้มีส่วนได้ส่วนเสีย
    Click Element 	xpath=//*[@id="add-project-update"]
    Sleep    1
Potential Assessment Results
#ผลการประเมินศักยภาพชุมชน
    Input Text      id=sScorebefore_4   5
    Sleep    1
    Input Text      id=sScorebefore_5   5
    Sleep    1
    Input Text      id=sScorebefore_6   5
    Sleep    1
    Input Text      id=sScorebefore_7   5
    Sleep    1
    Input Text      id=sScorebefore_8   5
    Sleep    1
    Input Text      id=sScorebefore_9   5
    Sleep    1
    Input Text      id=sScorebefore_10   5
    Sleep    1
planned budget
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[12]/div[8]/div/div/div
    Sleep    1
    Click Element   id=sCommunityType-option-1
    Sleep    1
    #ประเภทชุมชน
    Input Text      id=sExplainMore     ${discription} 
    Sleep    1
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[12]/div[13]/div
    Click Element   id=sGroupMainJob-option-1
    Sleep    1
    #กลุ่มอาชีพหลัก
    Click Element   xpath=//*[@id="add-project-area"]
    Sleep    2
    Click Element   xpath=//*[@id="save-project"]
    Sleep    10
    Click Element   xpath=/html/body/div[3]/div[3]/div/div[2]/div[2]/button[1]
    Sleep    10
log out
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[1]/header/div/div/div/div[2]/div/div[3]/button[2]
    Sleep    2
    Click Element   xpath=/html/body/div[2]/div[3]/div/div[2]/div[2]/button[1]
    Sleep    10

***Test Cases***
TC1_Input information
    [Tags]      TC1
    Open website
    Input information
    Add My Projects
    Add Detail Area
    Detail Area Project
    Potential Assessment Results
    planned budget
    log out



  