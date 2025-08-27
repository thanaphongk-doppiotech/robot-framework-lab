*** Keywords ***
Scroll to total price
    common.Wait page contain element then scroll  ${loc_total_price}

Get total price
    [Arguments]     ${locator}

    ${full_price_text}      common.Get Text  ${locator}
    ${parts}     String.Split String    string=${full_price_text}    separator=: 
    ${price}    String.Strip String    ${parts}[1]

    RETURN  ${price}