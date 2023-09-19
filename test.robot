*** Settings ***
Library     SeleniumLibrary
Library    XML
Test Teardown   Close Browser
*** Variables ***
${browser}  chrome
${url}  http://the-internet.herokuapp.com/login
${input_user}       xpath=//*[@id="username"]
${input_pass}       xpath=//*[@id="password"]
${btn_login}        xpath=//*[@id="login"]/button
${username_fail}    tomholland
${password_fail}    Password!
${success}      tomsmith
${pa_success}       SuperSecretPassword!

*** Test Cases ***
Login facebook - Success
    Open Browser    ${url}   chrome
    Sleep  2s
    Input Text   ${input_user}   ${success}
    Input Text  ${input_pass}   ${pa_success}
    Sleep  5
    Click Element  ${btn_login}
    

# login filed - Password incorrect 
#     Open Browser    ${url}   chrome
#     Input Text   ${input_user}  ${username_success} 
#     Input Text  ${input_pass}   ${password_fail}
#     Click Element  ${btn_login}
