*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${RODO_NOTE}    Your experience matters to us.

*** Keywords ***
Rodo Accept
    wait until page contains     ${RODO_NOTE}
#    wait until element is visible    //a[contains(text(),'That's ok')]
    click button    That’s OK
    wait until element is not visible    //button[@aria-label="That's OK"]

