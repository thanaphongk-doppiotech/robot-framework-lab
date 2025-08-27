*** Keywords ***
Click browse categories
    common.Wait visible and click  ${loc_menu_category}

Click item on content
    [Arguments]     ${category_name}

    ${category_item}    String.Replace string       string=${loc_item_category_replacable}       search_for=${replace_text}     replace_with=${category_name}    
    common.Wait visible and click  ${category_item}

Scroll to item
    [Arguments]     ${category_name}

    ${category_item}    String.Replace string       string=${loc_item_category_replacable}       search_for=${replace_text}     replace_with=${category_name}
    common.Wait page contain element then scroll  ${category_item}

Scroll to artist of picture
    [Arguments]     ${picture_name}

    ${loc_picture}      String.Replace string       string=${loc_artist_of_picture}       search_for=${replace_text}     replace_with=${picture_name}    
    common.Wait page contain element then scroll  ${loc_picture}

Get artist of picture
    [Arguments]     ${picture_name}

    ${loc_picture}      String.Replace string       string=${loc_artist_of_picture}       search_for=${replace_text}     replace_with=${picture_name}    
    ${artist}   SeleniumLibrary.Get text    ${loc_picture}

    RETURN  ${artist}

Compare artist
    [Arguments]     ${expect_artist}    ${artist}
    BuiltIn.Should Be Equal As Strings      ${expect_artist}    ${artist}