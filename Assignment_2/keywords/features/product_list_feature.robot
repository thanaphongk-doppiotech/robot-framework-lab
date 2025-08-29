*** Keywords ***

Verify artist of picture
    [Arguments]     ${expect_artist}    ${picture_name}
    ${artist_name}    product_list_page.Get artist of picture  ${picture_name}
    product_list_page.Compare artist  ${expect_artist}  ${artist_name}