##########################################
#     Flow : Register  Admin Accept      #
##########################################
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
Log In Admin
    Input Text      id=sUsername         580108
    Input Text      id=sSecureCode       1234
    Click Element   id=btnLogin
    Sleep    5
Accept My Projects
    Click Element    xpath=/html/body/div/div[1]/div[2]/div/ul/li[4]/a
    Sleep    2
    Click Element    id=BtnApprove_MyProject_8
    Sleep    5
    #โปรเจค (สามารถเปลี่ยนได้) 
    Scroll Element Into View 	 xpath=//*[@id="approve-project-view"]
    Sleep    3
    Click Element   id=approve-project-view
    Sleep    5
    Click Element   id=approve-project
    Sleep    2
    Click Element   xpath=/html/body/div[3]/div[3]/div/div[2]/div[2]/button[1]
    Sleep    5
Log Out Admin
    Click Element   xpath=//*[@id="root"]/div[1]/div[1]/div/div[1]/header/div/div/div/div[2]/div/div[3]/button[2]
    Sleep    2
    Click Element   xpath=/html/body/div[2]/div[3]/div/div[2]/div[2]/button[1]
    Sleep    5

***Test Cases***
TC1_Input informations
    [Tags]      TC1
    Open website
    Log In Admin
    Accept My Projects
    Log Out Admin


