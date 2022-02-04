*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${MAIN_PAGE_TITLE}  Tylko: create the ideal shelves and wardrobes for your home
${BROWSER}  chrome

*** Keywords ***
Open Tylko Site
    open browser    http://tylko.com    ${BROWSER}
    maximize browser window
    set selenium timeout    15
    title should be    ${MAIN_PAGE_TITLE}

User logs in



Close The Browser
    close browser