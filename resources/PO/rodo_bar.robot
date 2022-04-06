*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${RODO_NOTE}    Your experience matters to us.
${RODO_OK_BUTTON}    //button[@aria-label="That's OK"]

*** Keywords ***
Rodo Accept
    wait until page contains     ${RODO_NOTE}
    wait until element is visible    ${RODO_OK_BUTTON}
    click button    ${RODO_OK_BUTTON}
    wait until element is not visible    ${RODO_OK_BUTTON}

