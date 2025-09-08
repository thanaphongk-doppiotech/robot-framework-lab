*** Keywords ***
Input name
    [Arguments]      ${text}
    common.Safe input text  ${loc_deli_info_name}  ${text}

Input surname
    [Arguments]      ${text}
    common.Safe input text  ${loc_deli_info_surname}  ${text}

Input address
    [Arguments]      ${text}
    common.Safe input text  ${loc_deli_info_address}  ${text}

Input phone number
    [Arguments]      ${text}
    common.Safe input text  ${loc_deli_info_phone}  ${text}

Input email
    [Arguments]      ${text}
    common.Safe input text  ${loc_deli_info_email}  ${text}

Click pay button
    common.Wait visible and click  ${btn_pay}