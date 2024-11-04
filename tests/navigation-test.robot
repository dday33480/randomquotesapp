*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${driver}    headlesschrome

*** Keywords ***
Go to website
    Open Browser    https://citations-aleatoires.onrender.com/    ${driver}
    Sleep    5

Navigate on website to generate quote
    Scroll Element Into View    id:btn-animation
    Click Element    //*[@id="btn-animation"]
    Sleep    8
    Scroll Element Into View    css: .btn.col-xl-2
    Click Element    css: .btn.col-xl-2
    Sleep    5
    Element Should Be Visible    //*[@id="quote"]
    Location Should Contain    /results
    Sleep    5

Navigate back to details page
    Scroll Element Into View    class: btn-return
    Wait Until Element Is Visible    class: btn-return    20s
    Click Element    //*[@class="btn-return"]
    Sleep    5
    Location Should Contain    /detail
    Wait Until Element Is Visible    class: cat-selection    20s
    Scroll Element Into View    id:random-choice
    Click Element    id:random-choice
    Location Should Contain    /results
    Sleep    5

Naviagate back to home page
    Scroll Element Into View    class:btn-home
    Wait Until Element Is Visible    class: btn-home    20s
    Click Element    //*[@class="btn-home"]
    Location Should Be    https://citations-aleatoires.onrender.com/
    Sleep    5

Verify different categories available
    Scroll Element Into View    id:btn-animation
    Click Element    //*[@id="btn-animation"]
    Sleep    5
    Location Should Contain    /detail
    Click Element    link: Politique
    Location Should Contain    /results
    Location Should Contain    =Politique
    Element Should Not Contain    //*[@id="quote"]    None
    Scroll Element Into View    class:btn-return
    Sleep    5   
    Click Element    //*[@class="btn-return"]
    Click Element    link: Inspirationnel
    Location Should Contain    /results
    Location Should Contain    =Inspirationnel
    Element Should Not Contain    //*[@id="quote"]    None
    Scroll Element Into View    class:btn-return
    Sleep    5   
    Click Element    //*[@class="btn-return"]
    Click Element    link: Humour
    Location Should Contain    /results
    Location Should Contain    =Humour
    Element Should Not Contain    //*[@id="quote"]    None
    Scroll Element Into View    class:btn-return
    Sleep    5   
    Click Element    //*[@class="btn-return"]
    Click Element    link: Film
    Location Should Contain    /results
    Location Should Contain    =Film
    Element Should Not Contain    //*[@id="quote"]    None
    Scroll Element Into View    class:btn-return
    Sleep    5   
    Click Element    //*[@class="btn-return"]
    Scroll Element Into View    link: Aléatoire
    Wait Until Element Is Visible    link: Aléatoire
    Click Element    link: Aléatoire
    Location Should Contain    /results
    Element Should Not Contain    //*[@id="quote"]    None
    Scroll Element Into View    class:btn-home
    Sleep    5   
    Click Element    //*[@class="btn-home"]
    Sleep    5
    
    Close Browser

*** Test Cases ***
Test website naviagation
    Go to website
    Navigate on website to generate quote
    Navigate back to details page
    Naviagate back to home page
    Verify different categories available