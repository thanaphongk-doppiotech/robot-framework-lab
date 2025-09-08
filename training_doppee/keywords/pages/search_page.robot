*** Keywords ***
Search product
    [Arguments]     ${text}
    # input test
    common.Wait visible and input  ${txt_search}  ${text}

Scroll to product
    [Arguments]     ${product}
    ${product_locator}    String.Replace string       ${div_text_equal}       ${replace_text}     ${product}
    common.Wait page contain element then scroll        ${product_locator}

Click search button
    # click searh button
    common.Wait visible and click  ${btn_search}

Click product
    [Arguments]     ${locator}
    common.Wait visible and click  ${locator}

Get product detail from product name
    [Arguments]     ${product_name}
    ${product_locator}    String.Replace string       ${div_product_detail}       ${replace_text}     ${product_name}
    ${product_details_text}     SeleniumLibrary.Get Text    ${product_locator}
    RETURN      ${product_details_text}

Get product price from product name
    [Arguments]     ${product_name}
    ${product_locator}    String.Replace string       ${div_price}       ${replace_text}     ${product_name}
    ${product_details_text}     SeleniumLibrary.Get Text    ${product_locator}
    RETURN      ${product_details_text}

