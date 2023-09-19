##################################
#          Register Flow         #
##################################
#Sub Admin Register Project
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
${id_user}  id=oStakeholderName 
${text_id}  นภา
${provenance}  test Automate Test (Menu Add My Project)
${objective}  test Automate Test (Menu Add My Project)
${Data_Discript}    test Automate Test (Menu Add My Project)
${discription}  test Automate Test (Menu Add My Project)
${b_upload}    name=oFileDocument
${file}    C:/Users/Softthai/Downloads/tutorial-robot-main/testcase/Img_Test/test2.JPG

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
    Click Element    xpath=//*[@id="root"]/div[1]/div[2]/div/ul/li[4]/a
    Sleep    2
    Click Element    xpath=//*[@id="BtnAdd_MyProject"]
    Sleep    2
Add Detail Area
    Input Text       id=sProjectName      		โครงการเศรษฐกิจพอเพียง test Automate Test (Menu Add My Project)
 #Name Project
    Sleep    1
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[1]/div/div[2]/div/div/div/div/div/div[2]/div[1]/div/div[1]/div/div/div   
    Sleep    2
    Click Element    id=sProjectNature-option-1
    Sleep    2    
 #ลักษณะโครงการ        
Add agency
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[1]/div/div[2]/div/div/div/div/div/div[2]/div[1]/div/div[2]/div/div/div
    Sleep    2
    Click Element    id=sAgency-option-0
    Sleep    2
 #หน่วยงานที่รับผิดชอบหลัก
Input date
    Click Element    xpath=/html/body/div[1]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[1]/div/div[2]/div/div/div/div/div/div[2]/div[1]/div/div[5]/div/div/div
    Sleep    2
Input day
    Click Element    xpath=/html/body/div[3]/div[2]/div/div/div/div[2]/div/div/div[2]/div/div[1]/button[1]
    Sleep    2
    Click Element    xpath=//*[@id="IsCurrent"]
    Sleep    5
 #วันที่
Add SDGs
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[1]/div/div[2]/div/div/div/div/div/div[2]/div[1]/div/div[9]/div/div/div
    Sleep    1
    Click Element    id=sSDGs-option-2
    Sleep    5
 # SDGs หลัก
Input CoSDGs
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[1]/div/div[2]/div/div/div/div/div/div[2]/div[3]/div/div[2]/div/div
    Sleep    1
    Click Element    id=sCoSDGs-option-2
    Sleep    1
 # SDGs รอง
    Click Element    xpath=//*[@id="add-project"]
    Sleep    1
    Click Element    xpath=//*[@id="radio-project"]/label[1]/span[1]/input
    Sleep    1
important indicators
    Input Text    ${id_text}    ${provenance}
    Sleep    2
    Input Text    ${id_object}    ${objective}
    Sleep    2
    Input Text    ${id_Target}    ${Data_Discript}
    Sleep    2
    Input Text    ${id_BusinessConnection}    ${detile}
    Sleep    2
 #ที่มา วัถุประสงค์ เป้าหมาย ความเชื่อมโยงทางธุรกิจ
Document Test
    
    Choose File     ${b_upload}    ${file}

    Sleep    2               
    Click Element    xpath=/html/body/div[1]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[1]/div/div[2]/div/div/div/div/div/div[2]/div[3]/div/div[11]/div[1]/div/label[1]
    Sleep    1                
 #รูปแบบการใช้งบประมาณ ใช้เป็น xpath เนื่องจากไม่มีไอดี
    Input Text       id=sBudget_2023    50000000
    Sleep    2
 #งบประมาณปี2566
    Click Element    xpath=//*[@id="radio-project-budget"]/label[2]
    Sleep    2
Detail Area Project
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[1]/div[1]/div
    Sleep    2
    Click Element    id=sAreaType-option-1
    Sleep    2
    #ลักษณะพื้นที่
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[2]/div
    Sleep    1
    Click Element    id=sProvice-option-12
    Sleep    1
    #จังหวัด เปลี่ยนได้ตามเลข id(42,35)
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[3]/div
    Sleep    1
    Click Element    id=sDistrict-option-4
    Sleep    1
    #อำเภอ
    Click Element 	 xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[5]/div
    Sleep    1
    Click Element 	 id=oGeographyType-option-5
    Sleep    1
    #ลักษณะทางภูมิศาสตร์
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[11]/div[2]/div[1]/div[2]/div/div/div
    Sleep    1
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[11]/div[2]/div[1]/div[2]/div
    Sleep    1
    Input Text      ${id_user}  ${text_id}
    #ทำการค้นหาชื่อ
    Sleep    1
    Click Element   id=oStakeholderName-option-0
    sleep    1
    #เลือกผู้มีส่วนได้ส่วนเสีย
    #Stakeholder ผู้มีส่วนได้ส่วนเสีย
    Click Element 	xpath=//*[@id="add-project-update"]
    Sleep    1
Potential Assessment Results
 #ผลการประเมินศักยภาพชุมชนคะแนน 0.00 - 5.00
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
    Sleep    5
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
    Add agency
    Input date
    Input day
    Add SDGs
    Input CoSDGs
    important indicators
    Document Test
    Detail Area Project
    Potential Assessment Results
    planned budget
    log out



  