*** Keywords ***
Enter payment info and click next
    [Arguments]     ${pan}  ${exp}  ${cvc}  ${name}
    payment_info_page.Input card number  ${pan}
    payment_info_page.Input card exp  ${exp}
    payment_info_page.Input card cvc  ${cvc}  
    payment_info_page.Input card owner  ${name}

    payment_info_page.Click confirm 