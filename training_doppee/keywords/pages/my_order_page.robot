*** Keywords ***

Verify my order is contains
    [Arguments]     ${order_id}
    ${my_order_id}    String.Replace string       string=${loc_td_order_id}       search_for=${replace_text}     replace_with=${order_id}
    common.Wait page contain element then scroll  ${my_order_id}

Click order id
    [Arguments]     ${order_id}
    ${my_order_id}    String.Replace string       string=${loc_td_order_id}       search_for=${replace_text}     replace_with=${order_id}
    Wait visible and click  ${my_order_id}

Go to Pending Payment tab
    common.Wait visible and click  ${loc_tab_pending_payment}

Go to Preparing tab
    common.Wait visible and click   ${loc_tab_preparing}

#...