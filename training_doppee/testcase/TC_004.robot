*** Settings ***
Resource        ${CURDIR}/../keywords/import.robot
Test Setup      common.Open website
Test Teardown   common.Test Teardown

*** Test Cases ***
TC_04 Verify user can order product successfully
    # login
    header_page.Click user button
    # 
    login_feature.Verify login successfully  ${doppio_user}  ${doppio_pwd}
    #

    # search product phone
    search_page.Search product  ${lbl_phone}
    search_page.Click search button
    # scroll and click
    search_page.Scroll to product       ${lbl_aoppee_phone}
    search_page.Click product  ${loc_aoppee_phone}
    # add product
    product_info_page.Add product to card
    product_info_page.Dispose dialog
    #

    # click cart button
    header_page.Click cart button

    # fill in and click pay
    delivery_feature.Fill all data and click pay  ${lbl_name}  ${lbl_surname}  ${lbl_address}  ${lbl_phonenumber}  ${lbl_email}

    # select payment as credit card
    payment_method_page.Select payment by credit card
    payment_method_page.Click next

    # enter payment info
    payment_info_feature.Enter payment info and click next  ${lbl_payment_card_pan}  ${lbl_payment_exp_date}  ${lbl_payment_cv_code}  ${lbl_payment_card_owner}

    #debug

    # verify success
    ${payment_result}   common.Wait element and get text  ${payment_dialog_msg}
    BuiltIn.Should Be Equal As Strings      ${payment_dialog_success_msg}   ${payment_result}

    # click button
    payment_info_page.Dispose dialog

    #debug

    # get order id
    ${order_id_result}      payment_result_page.Get order ID    ${div_payment_info}
    BuiltIn.Log      target order ID = ${order_id_result}
    
    #debug

    # click profile user
    header_page.Click user button

    # verify order should be created with same ORDER ID on "Payment Success" page
    my_order_feature.Verify order was created  ${order_id_result}

    #debug

    BuiltIn.Sleep       3

    