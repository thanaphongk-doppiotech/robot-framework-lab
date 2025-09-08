*** Keywords ***
Input card number
    [Arguments]     ${text}
    common.Safe input text  ${loc_card_pan}  ${text}

Input card exp
    [Arguments]     ${text}
    common.Safe input text  ${loc_card_exp}  ${text}

Input card cvc
    [Arguments]     ${text}
    common.Safe input text  ${loc_card_cvc}  ${text}

Input card owner
    [Arguments]     ${text}
    common.Safe input text  ${loc_card_owner}  ${text}

Click confirm 
    common.Wait visible and click  ${loc_cf_btn}

Dispose dialog
    common.Wait visible and click  ${loc_payment_result_btn}