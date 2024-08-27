*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${HEADLESS}    false

*** Keywords ***
Go to website
    Open Browser    https://citations-aleatoires.onrender.com/    ${BROWSER}
    Sleep    5

Navigate on website to generate quote
    Click Element    //*[@id="btn-animation"]
    Sleep    5
    Click Element    link: Générer citation
    Sleep    5
    Element Should Be Visible    //*[@class="btn-return"]
    Location Should Contain    /results
    Sleep    3

Navigate back to details page
    Scroll Element Into View    class:btn-return
    Sleep    2   
    Click Element    //*[@class="btn-return"]
    Sleep    3
    Location Should Contain    /detail
    Click Element    link: Générer citation
    Location Should Contain    /results
    Sleep    3

Naviagate back to home page
    Scroll Element Into View    class:btn-home
    Click Element    //*[@class="btn-home"]
    Location Should Be    https://citations-aleatoires.onrender.com/
    Sleep    3

Verify different categories available
    Click Element    //*[@id="btn-animation"]
    Sleep    3
    Location Should Contain    /detail
    Click Element    link: Politique
    Location Should Contain    /results
    Location Should Contain    =Politique
    Element Should Not Contain    //*[@id="quote"]    None
    Scroll Element Into View    class:btn-return
    Sleep    2   
    Click Element    //*[@class="btn-return"]
    Click Element    link: Inspirationnel
    Location Should Contain    /results
    Location Should Contain    =Inspirationnel
    Element Should Not Contain    //*[@id="quote"]    None
    Scroll Element Into View    class:btn-return
    Sleep    2   
    Click Element    //*[@class="btn-return"]
    Click Element    link: Humour
    Location Should Contain    /results
    Location Should Contain    =Humour
    Element Should Not Contain    //*[@id="quote"]    None
    Scroll Element Into View    class:btn-return
    Sleep    2   
    Click Element    //*[@class="btn-return"]
    Click Element    link: Film
    Location Should Contain    /results
    Location Should Contain    =Film
    Element Should Not Contain    //*[@id="quote"]    None
    Scroll Element Into View    class:btn-return
    Sleep    2   
    Click Element    //*[@class="btn-return"]
    Click Element    link: Générer citation
    Location Should Contain    /results
    Element Should Not Contain    //*[@id="quote"]    None
    Scroll Element Into View    class:btn-home
    Sleep    2   
    Click Element    //*[@class="btn-home"]
    

*** Test Cases ***
Test website naviagation
    Go to website
    Navigate on website to generate quote
    Navigate back to details page
    Naviagate back to home page
    Verify different categories available
    


