*** Keywords ***
Input username
    [Arguments]     ${username}
    common.Wait visible and input  ${loc_ip_uname}  ${username}

Input password
    [Arguments]     ${password}
    common.Wait visible and input  ${loc_ip_pass}  ${password}

Submit login
    common.Wait visible and click  ${loc_btn_login}