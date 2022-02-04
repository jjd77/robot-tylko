*** Settings ***
Resource    C:/development/robot-scripts/tylko/resources/PO/rodo_bar.robot
Resource    C:/development/robot-scripts/tylko/resources/PO/top_nav_bar.robot
Resource    C:/development/robot-scripts/tylko/resources/PO/sign_in_page.robot
Resource    C:/development/robot-scripts/tylko/resources/common.robot

*** Variables ***



*** Keywords ***
Rodo
    rodo_bar.Rodo Accept

Language Set Up
    top_nav_bar.Set Up Language

User Click On Sign in Link
    top_nav_bar.Sign In Link Click
    sign_in_page.Check that Sign in page is open

Enter Login
    [arguments]    ${login}
    sign_in_page.Enter Login    ${login}

Enter Password
    [arguments]    ${password}
    sign_in_page.Enter Password    ${password}

Click Submit Button
    sign_in_page.Click Submit Button

Verify That Login Was Unsuccesful
    sign_in_page.Login unsuccessful message


Open Login Page
    common.Open Tylko Site
    tylko-actions.Rodo
    tylko-actions.User Click On Sign in Link

This value should be a valid email error message
    sign_in_page.This value should be a valid email error message

This value is required error message
    sign_in_page.This value is required error message

User is logged in
    wait until page contains    Login successful.
    page should contain    Account

Open Login Page and close pop-ups
    common.Open Tylko Site
    tylko-actions.Rodo

Log in as User1
    [arguments]  ${login}  ${password}
    tylko-actions.User Click On Sign in Link
    User is logged in
    Enter Login  ${login}
    Enter Password    ${password}
    Click Submit Button
    Verify That Login Was Unsuccesful

Go to Material Samples menu
    top_nav_bar.Material Samples menu Click
    wait until page contains    Explore our sample kits
    page should contain    Explore our sample kits