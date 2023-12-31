# ====================================================================================================
*** Settings ***
Documentation    Contains test scenarios for login page.
Resource    ../Resources/imports.resource
Suite Setup    General Suite Setup
Test Setup    Login Setup
Suite Teardown    End Testing
# ====================================================================================================



# ====================================================================================================
*** Variables ***
# ====================================================================================================



# ====================================================================================================
*** Test Cases ***
TC-01-001 Empty All Fields
    [Tags]    Negative
    [Documentation]     *Scenario:* Empty username and password fields in login page and submit.\n\n
    ...                 *Expected:* Show error message that indicates fields cannot be empty.
    Submit Login
    Verify Error: Empty Username Field
    Close Error Message in Login Page
    
TC-01-002 Empty Username Fields
    [Tags]    Negative
    [Documentation]     *Scenario:* Empty username field in login page and submit.\n\n
    ...                 *Expected:* Show error message that indicates username field cannot be empty.
    Input Valid Password
    Submit Login
    Verify Error: Empty Username Field
    Close Error Message in Login Page
    
TC-01-003 Empty Email Fields
    [Tags]    Negative
    [Documentation]     *Scenario:* Empty password field in login page and submit.\n\n
    ...                 *Expected:* Show error message that indicates password field cannot be empty.
    Input Standard Username
    Clear Password Field
    Submit Login
    Verify Error: Empty Password Field
    Close Error Message in Login Page

TC-01-004 Invalid Credentials
    [Tags]    Negative
    [Documentation]     *Scenario:* Login using multiple invalid usernames with an invalid password.\n\n
    ...                 *Expected:* Show error message that indicates username and password is not matched.
    @{invalid_usernames}    Create Invalid Usernames
    FOR    ${username}    IN    @{invalid_usernames}
        Input Other Username    ${username}
        Input Invalid Password
        Submit Login
        Verify Error: Invalid Credentials
        Close Error Message in Login Page
    END

TC-01-007 Login as Locked Out User
    [Tags]    Negative
    [Documentation]     *Scenario:* Login using locked out user account.\n\n
    ...                 *Expected:* Show error message that indicates user is locked out.
    Input Locked Out Username
    Input Valid Password
    Submit Login
    Verify Error: Locked Out Account
    Close Error Message in Login Page

TC-01-008 Login as Problem User
    [Tags]    Positive
    [Documentation]     *Scenario:* Login using problem user account.\n\n
    ...                 *Expected:* After redirected to item list, all image is showing dog picture instead of
    ...                             relevant images.
    Input Problem User Username
    Input Valid Password
    Submit Login
    Verify Success: Logged In
    Verify Error: All Images are Dog Picture

TC-01-009 Login as Error User
    [Tags]    Positive
    [Documentation]     *Scenario:* Login using error user's username and password.\n\n
    ...                 *Expected:* User is redirected to Item List page (App Page) and all images shown are
    ...                             relevant with its product name.
    Input Error Username
    Input Valid Password
    Submit Login
    Verify Success: Logged In
    Verify Success: All Images are Relevant

TC-01-010 Login as Visual User
    [Tags]    Positive
    [Documentation]     *Scenario:* Login using visual user's usernames and password.\n\n
    ...                 *Expected:* User is redirected to Item List page (App Page) and some element's position
    ...                             are off.
    Input Visual User Username
    Input Valid Password
    Submit Login
    Verify Success: Logged In
    Verify Error: Backpack Image is Dog Image Instead
    Verify Error: Shopping Cart is Misplaced
    Verify Error: Burger Menu is Rotating

TC-01-011 Login as Performance Glitch User
    [Tags]    Positive
    [Documentation]     *Scenario:* Login using performance glitch user's usernames and password.\n\n
    ...                 *Expected:* User is redirected to Item List page (App Page) longer than usual user.
    Input Performance Glitch User Username
    Input Valid Password
    Submit Login
    Verify Success: Logged In

TC-01-006 Login Successfully
    [Tags]    Positive
    [Documentation]     *Scenario:* Login using valid usernames and password.\n\n
    ...                 *Expected:* User is redirected to Item List page (App Page).
    Input Standard Username
    Input Valid Password
    Submit Login
    Verify Success: Logged In
    Verify Success: All Images are Relevant
# ====================================================================================================



# ====================================================================================================
*** Keywords ***
# ====================================================================================================
