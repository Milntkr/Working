##################################
#          Register Flow         #
##################################
#Sub Admin Register Project **** add New Stakeholder ****
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
${id_BusinessConnection}    id=sBusinessConnection
${b_upload}    name=oFileDocument
${file}    C:/Users/Softthai/Downloads/1.png
# ${text_id}  นภา
${provenance}  โครงการแก้มลิง เป็นแนวคิดในพระราชดำริของพระบาทสมเด็จพระเจ้าอยู่หัว เพื่อแก้ปัญหาอุทกภัย โดยพระองค์ทรงตระหนักถึงความรุนแรงของอุทกภัยที่เกิดขึ้นในกรุงเทพมหานคร เมื่อปี พ.ศ.2538 จึงมีพระราชดำริ "โครงการแก้มลิง" ขึ้น เมื่อวันที่ ๑๔ พฤศจิกายน พ.ศ.๒๕๓๘ โดยให้จัดหาสถานที่เก็บกักน้ำตามจุดต่างๆ ในกรุงเทพมหานคร เพื่อรองรับน้ำฝนไว้ชั่วคราว เมื่อถึงเวลาที่คลองพอจะระบายน้ำได้จึงค่อยระบายน้ำจากส่วนที่กักเก็บไว้ออกไป จึงสามารถลดปัญหาน้ำท่วมได้ ทั้งนี้ นอกจากโครงการแก้มลิงจะมีขึ้นเพื่อช่วยระบายน้ำ ลดความรุนแรงของปัญหาน้ำท่วมในพื้นที่กรุงเทพมหานครและบริเวณใกล้เคียงแล้ว ยังเป็นการช่วยอนุรักษ์น้ำและสิ่งแวดล้อมอีกด้วย โดยน้ำที่ถูกกักเก็บไว้ เมื่อถูกระบายสู่คูคลอง จะไปบำบัดน้ำเน่าเสียให้เจือจางลง และในที่สุดน้ำเหล่านี้จะผลักดันน้ำเสียให้ระบายออกไปได้
${objective}   โครงการพระราชดำริของ พระบาทสมเด็จพระบรมชนกาธิเบศร มหาภูมิพลอดุลยเดชมหาราช บรมนาถบพิตร ที่ทรงมีพระราชดำริไว้แก้ปัญหาอุทกภัยในประเทศไทย และยังคงใช้เป็นแนวทางการแก้ปัญหาน้ำท่วมจวบจนปัจจุบัน ปัญหาน้ำท่วมในประเทศไทยเป็นปัญหาที่เรื้อรังมายาวนาน และตั้งแต่เกิดเหตุการณ์น้ำท่วมครั้งใหญ่ในเขตกรุงเทพมหานครและเขตปริมณฑลยาวนานกว่า 2 เดือน เมื่อปี พ.ศ. 2538 พระบาทสมเด็จพระบรมชนกาธิเบศร มหาภูมิพลอดุลยเดชมหาราช บรมนาถบพิตร จึงมีพระราชดำริจัดทำโครงการแก้มลิง เพื่อช่วยบรรเทาปัญหาอุทกภัย โดยอิงจากหลักการกินกล้วยของฝูงลิง
${business_connection}  โครงการแก้มลิงนับเป็นอีกหนึ่งโครงการพระราชดำริในพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลยเดช บรมนาถบพิตร รัชกาลที่ 9 ที่ช่วยให้ชาวไทยรอดพ้นจากปัญหาน้ำท่วม รวมไปถึงปัญหาขาดแคลนน้ำ แสดงถึงความห่วงใยที่พระองค์ทรงมีให้แก่พสกนิกรตลอดระยะเวลา 70 ปีที่ครองราชย์ และแม้วันนี้พระองค์จะเสด็จสู่สวรรคาลัย แต่พระมหากรุณาธิคุณอันยิ่งใหญ่จะสถิตอยู่ในใจคนไทยชั่วกาลนาน ไม่ต่างจากโครงการพระราชดำริต่าง ๆ ที่จะก่อเกิดประโยชน์แก่ลูกหลานเราสืบไป ด้วยสำนึกในพระมหากรุณาธิคุณอันหาที่สุดมิได้

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
    Input Text       id=sProjectName      โครงการแก้มลิง
 #Name Project
    Sleep    1
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[1]/div/div[2]/div/div/div/div/div/div[2]/div[1]/div/div[1]/div/div/div   
    Sleep    2
    Click Element    id=sProjectNature-option-0
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
Add SDGs
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[1]/div/div[2]/div/div/div/div/div/div[2]/div[1]/div/div[9]/div/div/div
    Sleep    1
    Click Element    id=sSDGs-option-3
    Sleep    5
Input CoSDGs
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[1]/div/div[2]/div/div/div/div/div/div[2]/div[3]/div/div[2]/div/div
    Sleep    1
    Click Element    id=sCoSDGs-option-1
    Sleep    1
    Click Element    xpath=//*[@id="add-project"]
    Sleep    1
    Click Element    xpath=//*[@id="radio-project"]/label[1]/span[1]/input
    Sleep    1
important indicators
    Input Text    ${id_text}    ${provenance}
    Sleep    2
    Input Text    ${id_object}    ${objective}
    Sleep    2
    Input Text     id=sTarget   เป็นพื้นที่ชะลอน้ำที่มีขนาดเล็กกว่า ก่อสร้างในระดับลุ่มน้ำ
    Sleep    2
    Input Text    ${id_BusinessConnection}    ${business_connection}
    Sleep    2
Document Test
    Choose File    ${b_upload}    ${file}
    Sleep    2
    Click Element    xpath=/html/body/div[1]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[1]/div/div[2]/div/div/div/div/div/div[2]/div[3]/div/div[11]/div[1]/div/label[1]
    Sleep    1
    Input Text       id=sBudget_2023    1000000
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
    Click Element    id=sProvice-option-44
    Sleep    1
    #จังหวัด
    Click Element    xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[3]/div
    Sleep    1
    Click Element    id=sDistrict-option-2
    Sleep    1
    #อำเภอ
    Click Element 	 xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[5]/div
    Sleep    1
    Click Element 	 id=oGeographyType-option-3
    Sleep    3
    #ลักษณะทางภูมิศาสตร์
Stakeholder
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div/div/div/div/div[11]/div[2]/div[1]/div[1]/div/label/span[1]
    Sleep    2
    
   
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
    Stakeholder
 



  