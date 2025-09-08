*** Keywords ***
Input username
    [Arguments]     ${username}
    common.Wait visible and input  ${input_username}  ${username}

Input password
    [Arguments]     ${password}
    common.Wait visible and input  ${input_password}  ${password}

Submit login
    common.Wait visible and click  ${btn_login}

Verify login successfully
    SeleniumLibrary.Wait Until Element Is Visible   ${dialog_title_popup}   ${default_timeout}
    ${login_result}     SeleniumLibrary.Get Text    ${dialog_msg_popup}
    BuiltIn.Log to console      login result: ${msg_login_success}==${login_result}
    RETURN  ${msg_login_success}==${login_result}

Close result dialog
    common.Wait visible and click  ${btn_ok}
