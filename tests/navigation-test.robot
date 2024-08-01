*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${HEADLESS}    false

*** Keywords ***
Go to website
    Open Browser    http://127.0.0.1:8000/    ${BROWSER}
    Sleep    2

Navigate on website to generate quote
    Click Button    //*[@class="btn"]
    Sleep    5
    Click Button    //*[@class="btn"]
    Sleep    5
    Element Should Be Visible    //*[@class="btn-return"]
    Location Should Contain    /results
    Sleep    3

Navigate back to details page
    Scroll Element Into View    class:btn-return
    Sleep    2   
    Click Button    //*[@class="btn-return"]
    Sleep    3
    Location Should Contain    /detail
    Click Button    //*[@class="btn"]
    Location Should Contain    /results
    Sleep    3

Naviagate back to home page
    Click Button    //*[@class="btn-home"]
    Sleep    3

*** Test Cases ***
Test website naviagation
    Go to website
    Navigate on website to generate quote
    Navigate back to details page
    Naviagate back to home page
    


