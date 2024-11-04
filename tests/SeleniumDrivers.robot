*** Settings ***

*** Keywords ***
Update Chrome Webdriver
    [Documentation]    Update Chrome Web Driver
    ${driver}=    Evaluate    webdriver_manager.chrome.ChromeDriverManager().install()    modules=webdriver_manager.chrome
    [Return]    ${driver}