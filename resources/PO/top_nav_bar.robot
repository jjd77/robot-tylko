*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LANGUAGE_MESSAGE_IN_MENU}    Choose your region to see prices in your currency and get up-to-date shipping times.


*** Keywords ***
Set Up Language
    click element    //*[@id='region-trigger']
    wait until page contains    ${LANGUAGE_MESSAGE_IN_MENU}
    wait until element is visible    //div[@id="region-lang"]//a[contains(text(), "Poland")]
    click element    //div[@id="region-lang"]//a[contains(text(), ${COUNTRY})]

Sign In Link Click
#    wait until element is visible    //div[@class="px-16  mobile-hidden "]//*[@id='link-account']
    click element   //a[contains(text(),'Sign in')]/ancestor::div[contains(@class, 'mobile-hidden')]

Material Samples menu Click
    click element    //div[contains(@class, 'mobile-hidden')] /a[contains(text(),'Material Samples')]
