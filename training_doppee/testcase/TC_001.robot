*** Settings ***
Resource        ${CURDIR}/../keywords/import.robot
Test Setup      common.Open website
Test Teardown   common.Test Teardown

*** Test Cases ***
TC_01 Verify user can add product to card successfully
    search_feature.Search and click product     ${lbl_doppee_phone}
    #
    product_info_page.Add product to card
    #
    product_info_page.Verify add to cart successfully
    #
    BuiltIn.Sleep   3
