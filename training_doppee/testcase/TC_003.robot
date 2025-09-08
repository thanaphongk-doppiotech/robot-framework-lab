*** Settings ***
Resource        ${CURDIR}/../keywords/import.robot
Test Setup      common.Open website
Test Teardown   common.Test Teardown

*** Test Cases ***
TC_03 Verify desciption and price on product details page displays as same as on product card
    #
    search_page.Search product  ${lbl_phone}
    #
    search_page.Click search button
    #
    common.Wait page contain element then scroll        ${div_doppee_phone_detail}
    #
    # SeleniumLibrary.Wait Until Element Is Visible   ${div_doppee_phone_detail}
    #
    #${doppee_phone_info}     SeleniumLibrary.Get Text    ${div_doppee_phone_detail}
    ${doppee_phone_info}     search_page.Get product detail from product name       ${lbl_doppee_phone}
    #${doppee_phone_price}     SeleniumLibrary.Get Text    ${div_doppee_phone_price}
    ${doppee_phone_price}     search_page.Get product price from product name       ${lbl_doppee_phone}
    #
    common.Wait visible and click  ${div_doppee_phone}
    SeleniumLibrary.Wait Until Element Is Visible   ${loc_product_info}
    #
    # ${doppee_phone_info_to_replace}     SeleniumLibrary.Get Text    ${loc_product_info}
    # ${doppee_phone_info_to_compare}     String.Replace String       ${doppee_phone_info_to_replace}     ${prefix_description}       ${EMPTY}
    ${doppee_phone_info_to_compare}     product_info_page.Get product details   ${loc_product_info}
    #${doppee_phone_price_to_compare}     SeleniumLibrary.Get Text    ${loc_product_price}
    ${doppee_phone_price_to_compare}    product_info_page.Get product price  ${loc_product_price}
    #
    BuiltIn.Log     \ndoppee_phone_info=${doppee_phone_info} >>> doppee_phone_info_to_compare=${doppee_phone_info_to_compare}
    BuiltIn.Log     \doppee_phone_price=${doppee_phone_price} >>> doppee_phone_price_to_compare=${doppee_phone_price_to_compare}
    BuiltIn.Should Be Equal As Strings      ${doppee_phone_info}    ${doppee_phone_info_to_compare}
    BuiltIn.Should Be Equal As Strings      ${doppee_phone_price}   ${doppee_phone_price_to_compare}
    #

    Log to console      PASS JA
    #
    BuiltIn.Sleep       3