*** Keywords ***
# Add product to card
#     [Arguments]     ${btn_locator}
#     common.Wait visible and click  ${btn_locator}

Add product to card
    common.Wait visible and click  ${btn_add_to_card}

Verify add to cart successfully
    # wait popup visible
    SeleniumLibrary.Wait Until Element Is Visible   ${popup_title_add_to_card_loc}
    # get msg
    ${result_msg}     SeleniumLibrary.Get Text    ${popup_msg_loc}
    BuiltIn.Should Be Equal As Strings      ${msg_add_to_cart_success}  ${result_msg}

Get product details
    [Arguments]     ${locator}
    ${info_to_replace}     SeleniumLibrary.Get Text    ${locator}
    ${product_detail}     String.Replace String       ${info_to_replace}     ${prefix_description}       ${EMPTY}
    RETURN      ${product_detail}


Get product price
    [Arguments]     ${locator}
    ${product_price}     SeleniumLibrary.Get Text    ${locator}
    RETURN      ${product_price}

Dispose dialog
    common.Wait visible and click  ${btn_add_to_cart_ok}