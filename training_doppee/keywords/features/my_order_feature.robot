*** Keywords ***
Verify order in Pending Payment tab
    [Arguments]     ${order_id}
    my_order_page.Go to Pending Payment tab
    my_order_page.Verify my order is contains  ${order_id}
    my_order_page.Click order id  ${order_id}

Verify order in Preparing tab
    [Arguments]     ${order_id}
    my_order_page.Go to Preparing tab
    my_order_page.Verify my order is contains  ${order_id}
    my_order_page.Click order id  ${order_id}

Verify order was created
    [Arguments]     ${order_id}
    ${is_order_created}    BuiltIn.Run Keyword And Return Status   my_order_feature.Verify order in Pending Payment tab    ${order_id}
    BuiltIn.Run Keyword If      not ${is_order_created}     my_order_feature.Verify order in Preparing tab   ${order_id}
    