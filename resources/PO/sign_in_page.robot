*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Check that Sign in page is open
    title should be    Sign up or log in to your Tylko account

Enter Login
    [arguments]    ${login}
    input text    id_login_username    ${login}

Enter Password
    [arguments]    ${password}
    input password    id_login_password    ${password}

Click Submit Button
    click button    login_submit_button

Login unsuccessful message
    wait until page contains    Login unsuccessful.
    capture page screenshot

This value should be a valid email error message
    wait until page contains    This value should be a valid email.

This value is required error message
    wait until page contains    This value is required.

