*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***


*** Test Cases ***
Go to website and generate quote
    Open Browser    http://127.0.0.1:8000/    chrome
    Sleep    2
    Click Button    //*[@class="btn"]
    Sleep    5
    Click Button    //*[@class="btn"]
    Sleep    5
    Element Text Should Be    //*[@class="btn"]    Regénérer
    Element Should Be Visible    //*[@class="btn-return"]
    Location Should Contain    /results
    Sleep    3

