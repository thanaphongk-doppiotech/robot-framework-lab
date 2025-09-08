*** Keywords ***
Get order ID
    [Arguments]     ${locator}

    ${payment_info_text}    common.Wait element and get text  ${locator}
    @{payment_info_list}	String.Split String		${payment_info_text}  \n  #${payment_info_separator}  # using '\n' in Variables not work
    Log to console  ${payment_info_list}

    FOR     ${payment_info}     IN      @{payment_info_list}
        Log to console      \n >>>> payment_info = ${payment_info}              
        ${is_order_id}  Run Keyword And Return Status       Should Contain  ${payment_info}  ${key_order_id}
        Log to console      \n >>>> is_order_id = ${is_order_id}

        Continue for loop if    not ${is_order_id}
        Log to console      \n >>>> Here are order ID

        ${order_id}    String.Fetch From Right      ${payment_info}  ${key_order_id}

        Log to console      \n >>>> order_id = ${order_id}
        
        Exit for loop
    END

    RETURN      ${order_id}  #'0000'

