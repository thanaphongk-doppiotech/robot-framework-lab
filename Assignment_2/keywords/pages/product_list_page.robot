*** Keywords ***

Scroll to artist of picture
    [Arguments]     ${picture_name}

    ${loc_picture}      String.Replace string       string=${product_list.loc_artist_of_picture}       search_for=${replace_text}     replace_with=${picture_name}    
    common.Wait page contain element then scroll  ${loc_picture}

Get artist of picture
    [Arguments]     ${picture_name}

    ${loc_picture}      String.Replace string       string=${product_list.loc_artist_of_picture}       search_for=${replace_text}     replace_with=${picture_name}    
    ${artist}   SeleniumLibrary.Get text    ${loc_picture}

    RETURN  ${artist}

Compare artist
    [Arguments]     ${expect_artist}    ${artist}
    BuiltIn.Should Be Equal As Strings      ${expect_artist}    ${artist}