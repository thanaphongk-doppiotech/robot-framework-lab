*** Settings ***
Library		SeleniumLibrary
Library		String
Library     DebugLibrary
Library     Collections

# Pages
Resource    ./common.robot
Resource    ./pages/login_page.robot
Resource    ./pages/left_menu_page.robot
Resource    ./pages/product_detail_page.robot
Resource    ./pages/cart_page.robot
Resource    ./pages/category_list_page.robot
Resource    ./pages/product_list_page.robot

# Feature
Resource    ./features/login_feature.robot
Resource    ./features/categories_feature.robot
Resource    ./features/product_list_feature.robot

# Locator
Variables   ../resources/locators/login_locator.yaml
Variables   ../resources/locators/web_content_locator.yaml
Variables   ../resources/locators/product_detail_locator.yaml
Variables   ../resources/locators/cart_locator.yaml

# Setting
Variables   ../resources/settings/setting.yaml

# Test data
Variables   ../resources/testdata/testdata.yaml

