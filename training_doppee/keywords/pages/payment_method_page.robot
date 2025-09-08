*** Keywords ***
Select payment by credit card
    Wait visible and click  ${loc_qr_code}

Click next
    Wait visible and click  ${btn_payment_next}