*** Settings ***
Resource        ${CURDIR}/../keywords/import.robot

*** Variables ***
${order_id_result}      'Testing: testing2\nORDER ID: 10401\nTOTAL: 29989.00\nDELIVERY INFO: geng kab\n123/456 L building\nPHONE: 0851005009'

*** Keywords ***
Get order ID unit
    #${payment_info_text}    common.Wait element and get text  ${locator}
    @{payment_info_list}	String.Split String		${order_id_result}  \n  #${payment_info_separator}  # Q? \n in Variables not work
    Log to console  ${payment_info_list}

    #${order_id} = '00000'

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

Unit order id is contain
    [Arguments]     ${order_id}

    common.Open website

    # login
    header_page.Click user button
    login_feature.Verify login successfully  ${doppio_user}  ${doppio_pwd}
    #

    header_page.Click user button

    #my_order_page.Go to Preparing tab
    #my_order_page.Verify my order is contains  ${order_id}
    #my_order_page.Click order id  ${order_id}

    my_order_feature.Verify order was created  ${order_id}

    Sleep   3

    common.Test Teardown

*** Test Cases ***
Verify get order ID keyword
    [Tags]      TC_001
    ${order_id}     Get order ID unit
    Log to console  \nresult = ${order_id}


Verify order ID contain
    [Tags]      TC_002
    Unit order id is contain  10401     # success
    #Unit order id is contain  111111    # failure