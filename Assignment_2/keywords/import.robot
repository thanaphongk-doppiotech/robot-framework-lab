*** Settings ***
Library		SeleniumLibrary
Library		String
Library     DebugLibrary
Library     Collections

# Pages
Resource    ./common.robot
Resource    ./pages/login_page.robot
Resource    ./pages/browse_category_page.robot
Resource    ./pages/product_detail_page.robot
Resource    ./pages/cart_page.robot

# Feature
Resource    ./features/login_feature.robot
Resource    ./features/browse_category_feature.robot

# Locator
Variables   ../resources/locators/login_locator.yaml
Variables   ../resources/locators/browse_category_locator.yaml
Variables   ../resources/locators/product_detail_locator.yaml
Variables   ../resources/locators/cart_locator.yaml

# Setting
Variables   ../resources/settings/setting.yaml

# Test data
Variables   ../resources/testdata/testdata.yaml

