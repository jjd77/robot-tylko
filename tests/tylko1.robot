*** Settings ***
Resource    C:/development/robot-scripts/tylko/resources/common.robot
Resource    C:/development/robot-scripts/tylko/resources/tylko-actions.robot

Test Setup  tylko-actions.Open Login Page
Test Teardown    common.Close The Browser

*** Variables ***
${COUNTRY}    Poland
${VALID_LOGIN}  dub.is.rising@gmail.com
${VALID_PASSWORD}    Password12345

*** Test Cases ***
Valid Login Invalid Password
    [Documentation]    Tests verifies if user can log in with valid login and invalid password
    [tags]    Smoke
    tylko-actions.Enter Login   ${VALID_LOGIN}
    tylko-actions.Enter Password    ThisIsInvalidPassword123
    tylko-actions.Click Submit Button
    tylko-actions.Verify That Login Was Unsuccesful

Incorrect Login
    [Documentation]    Tests verifies if system validates format of login (as e-mail address)
    [tags]    Smoke
    tylko-actions.Enter Login   thisisnotandemail.com
    tylko-actions.Click Submit Button
    tylko-actions.This value should be a valid email error message

Blank Login
    [Documentation]    Tests verifies if system validates if the login field is blank
    [tags]    Smoke
    tylko-actions.Enter Password    ThisIsInvalidPassword123
    tylko-actions.Click Submit Button
    tylko-actions.This value is required error message

Blank Password
    [Documentation]    Tests verifies if system validates if the password field is blank
    [tags]    Smoke
    tylko-actions.Enter Login   ${VALID_LOGIN}
    tylko-actions.Click Submit Button
    tylko-actions.This value is required error message

Valid login and valid password
    [Documentation]    Tests verifies that when user provides proper login and password then the system will log him in
    [tags]    Smoke
    tylko-actions.Enter Login   ${VALID_LOGIN}
    tylko-actions.enter password    ${VALID_PASSWORD}
    tylko-actions.Click Submit Button
    tylko-actions.User is logged in

Add item to the cart
    [Documentation]    Tests verifies that when user provides proper login and password then the system will log him in
    [tags]    Smoke
    tylko-actions.Enter Login   ${VALID_LOGIN}
    tylko-actions.enter password    ${VALID_PASSWORD}
    tylko-actions.Click Submit Button
    tylko-actions.User is logged in
    tylko-actions.go to material samples menu








