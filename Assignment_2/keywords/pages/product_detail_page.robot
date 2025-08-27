*** Keywords ***
Scroll to add to cart button
    common.Wait page contain element then scroll  ${loc_add_to_cart}

Get product price
    [Arguments]     ${locator}

    ${full_price_text}    common.Get Text  ${locator}
    ${parts}    String.Split String    string=${full_price_text}    separator=: 
    ${price}    String.Strip String    ${parts}[1]

    RETURN  ${price}

Click add to cart button
    common.Wait visible and click  ${loc_add_to_cart}