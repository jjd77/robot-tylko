*** Settings ***
Resource    C:/development/robot-scripts/tylko/resources/common.robot
Resource    C:/development/robot-scripts/tylko/resources/tylko-actions.robot

Test Setup  tylko-actions.Open Login Page and close pop-ups
Test Teardown    common.Close The Browser

*** Variables ***
#@{USER1}  dub.is.rising@gmail.com  Password12345

*** Test Cases ***
Adding item to a cart as logged user
    [Documentation]    This test verifies if logged user can add an item to the cart
    [Tags]  smoke
    tylko-actions.Log in as User1     dub.is.rising@gmail.com     Password12345








