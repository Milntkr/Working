#radio
    # Click Element    xpath=/html/body/div[1]/div/div/main/div[3]/article/div/div[3]/form/input[1]
    # Sleep    10

#Calendar
    # Click Element    xpath=/html/body/div[1]/main/div[3]/div[2]/div[8]/div[2]/div[2]/div/div[2]/div[2]/div/div[1]/div/div/div/div/div[1]/div/div/button
    # Sleep    1
    # Click Element    xpath=/html/body/div[1]/main/div[3]/div[2]/div[8]/div[2]/div[2]/div/div[2]/div[2]/div/div[1]/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/div[2]/div/div[2]/div[2]/div/div
    # Sleep    1
    # Click Element    xpath=/html/body/div[1]/main/div[3]/div[2]/div[8]/div[2]/div[2]/div/div[2]/div[2]/div/div[1]/div/div/div/div/div[2]/div/div[2]/div/div/div[1]/div/div[2]/div/div[3]/div[3]/div/div
    # Sleep    1
    # Click Element    xpath=/html/body/div[1]/main/div[3]/div[2]/div[8]/div[2]/div[2]/div/div[2]/div[2]/div/div[1]/div/div/div/div/div[2]/div/div[1]/div/div[1]/div/div[2]/div/div[5]/div[3]
    # Sleep    10

#(check box)
    # Click Element    xpath=/html/body/div[2]/div/div[2]/div/div[1]/article/div/span/p[3]/input[1]   
    # Sleep    10

#(Select2)
    # Click Element    xpath=//*[@id="body-inner"]/div[2]/p/span/span[1]/span     
    # Sleep    1
    # Click Element    xpath=/html/body/span/span/span/ul/li[1]/ul/li[1]
    # Sleep    10

#Uplode File
${input_image}    id=formFile
${img}    C:/Users/Softthai/Downloads/1.png

    Open Browser    ${url}      edge
    Maximize Browser Window
    Sleep    2
    Input Text    ${input_image}    ${img}
    Sleep    10

#Check box slide
    Click Element    xpath=//*[@id="flexSwitchCheckDefault"]
    Sleep    10

#Uplode file (แบบไม่แสดงชื่อ)
ขนาดของรูปภาพไม่เกินที่ระบุใน web 
    Choose File    ${input_image}     ${img}
    Sleep    10
