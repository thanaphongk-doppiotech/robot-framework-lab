*** Keywords ***
Browse and click category
    [Arguments]     ${category_name}
    browse_category_page.Click browse categories
    browse_category_page.Scroll to item  ${category_name}
    browse_category_page.Click item on content  ${category_name}

Verify artist of picture
    [Arguments]     ${expect_artist}    ${picture_name}
    ${artist_name}    browse_category_page.Get artist of picture  ${picture_name}
    browse_category_page.Compare artist  ${expect_artist}  ${artist_name}