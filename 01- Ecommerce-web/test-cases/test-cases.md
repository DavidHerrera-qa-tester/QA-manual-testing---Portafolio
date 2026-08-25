## Login Test Cases
### TC-001 — Login with valid credentials

| Field | Value |
|---|---|
| Test Case ID | TC-001 |
| Module | Login |
| Title | Login with valid credentials |
| Priority | High |
| Type | Functional / Positive |
| Preconditions | User is on the SauceDemo login page |
| Test Data | Valid SauceDemo test credentials |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the SauceDemo login page | Login page is displayed |
| 2 | Enter a valid username | Username is accepted |
| 3 | Enter a valid password | Password is accepted |
| 4 | Click the Login button | User is redirected to the Products page |

#### Expected Result

The user should successfully log in and be redirected to the Products page.

#### Actual Result

User was redirected to Products page.

##

### TC-002 - Login whith invalide password

| Field | value |
|---|---|
| Test Case ID | TC-002 |
| Module | login |
| Title | Login whith valid username and invalid password |
| Priority | High |
| Type | Functional / Negative |
| Preconditions | User is on the SauceDemo login page |
| Status | PASS |

#### Test Steps

| step | Action | Expected Result |
|---|---|---|
| 1 | Open the SauceDemo login page | Login page is displayed
| 2 | Enter the valid username `standard_user` | Username is accepted 
| 3 | Enter the invalid password  `WrongPassword123` |password is accept
| 4 | Click the Login button | Login attemp is rejected and an error me

#### Expected Result

The application should reject the login attempt, display an appropriate error message, and keep the user on the login page.

#### Actual Result

The user was rejected, and SauceDemo displays an error message while keeping the user on the login page.

##

### TC-003 — Login with invalid username

| Field | Value |
|---|---|
| Test Case ID | TC-003 |
| Module | Login |
| Title | Login with invalid username |
| Priority | High |
| Type | Functional / Negative |
| Preconditions | User is on the SauceDemo login page |
| Test Data | Username: invalid_user_123 / Valid password |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the SauceDemo login page | Login page is displayed |
| 2 | Enter the invalid username `invalid_user_123` | Username is accepted as input |
| 3 | Enter the valid password | Password is accepted |
| 4 | Click the Login button | Login attempt is rejected and an error message is displayed |

#### Expected Result

The application should reject the login attempt and display an appropriate error message. The user should remain on the login page.

#### Actual Result

The user was rejected, and SauceDemo displays an error message while keeping the user on the login page.

##

### TC-004 — Login with empty username

| Field | Value |
|---|---|
| Test Case ID | TC-004 |
| Module | Login |
| Title | Login with empty username |
| Priority | High |
| Type | Validation / Negative |
| Preconditions | User is on the SauceDemo login page |
| Test Data | Username: blank / Valid password |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the SauceDemo login page | Login page is displayed |
| 2 | Leave the username field empty | Username field remains blank |
| 3 | Enter the valid password | Password is accepted |
| 4 | Click the Login button | Login attempt is rejected and an error message is displayed |

#### Expected Result

The application should reject the login attempt and display an appropriate error message. The user should remain on the login page.

#### Actual Result

The user was rejected, and SauceDemo displays an error message while keeping the user on the login page.

##

### TC-005 — Login with empty password

| Field | Value |
|---|---|
| Test Case ID | TC-005 |
| Module | Login |
| Title | Login with empty password |
| Priority | High |
| Type | Validation / Negative |
| Preconditions | User is on the SauceDemo login page |
| Test Data | Username: standard_user / blank |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the SauceDemo login page | Login page is displayed |
| 2 | Enter the valid user standard_user | Username is accepted |
| 3 | Leave the empty password | Password field remains blank |
| 4 | Click the Login button | Login attempt is rejected and an error message is displayed |

#### Expected Result

The SauceDemo page must keep the user on the login page until they enter a password.

It must display the corresponding error message.

#### Actual Result

The user was rejected, and SauceDemo displays an error message while keeping the user on the login page.

##

### TC-006 Title | Login with empty username and password

| Field | Value |
|---|---|
| Test Case ID | TC-006 |
| Module | Login |
| Title | Password field remains blank |
| Priority | High |
| Type | validation / Negative| 
| Preconditions | User is on the SauceDemo login page |
| Test Data | username: blank / password: blank |
| Status | PASS |

#### Test Steps 

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the SauceDemo Login page | Login page is displayed |
| 2 | leave the empty username | username field remains blank | 
| 3 | leave the empty password | password field remains blank | 
| 4 | click on Login button | Login attempt is rejected and an error message is displayed |

#### Expected Result

The SauceDemo page must keep the user on the login page until they enter a username and password.

It must display the corresponding error message.
#### Actual Result

The user was rejected, and SauceDemo displays an error message while keeping the user on the login page.

##

### TC-007 — Password field masks entered characters

| Field | Value |
|---|---|
| Test Case ID | TC-007 |
| Module | Login |
| Title | Password field masks entered characters |
| Priority | Medium |
| Type | UI / Security / Positive |
| Preconditions | User is on the SauceDemo login page |
| Test Data | Valid test password |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the SauceDemo login page | Login page is displayed |
| 2 | Click the password field | Password field is active |
| 3 | Enter a password | Entered characters are masked |
| 4 | Review the password field | The actual password characters are not displayed in plain text |

#### Expected Result

The password field should mask the entered characters.

#### Actual Result

The password field masks the entered characters.


### TC-008 — Logout successfully

| Field | Value |
|---|---|
| Test Case ID | TC-008 |
| Module | Login |
| Title | Logout successfully |
| Priority | High |
| Type | Functional / Positive |
| Preconditions | User is logged in |
| Test Data | Valid user credentials |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Log in with valid credentials | User is redirected to Products |
| 2 | Open the navigation menu | Navigation menu is displayed |
| 3 | Click Logout | User is logged out |
| 4 | Review the current page | Login page is displayed |

#### Expected Result

The user should be successfully logged out and returned to the login page.

#### Actual Result

The user logged out correctly and was redirected to the login page.

##

# Product Test Cases

### TC-009 — Display product list

| Field | Value |
|---|---|
| Test Case ID | TC-009 |
| Module | Products |
| Title | Display product list |
| Priority | High |
| Type | Functional / UI |
| Preconditions | User is logged in |
| Test Data | Valid user |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Log in with valid credentials | Products page is displayed |
| 2 | Review the product section | Available products are displayed |
| 3 | Review product cards | Product information is visible |

#### Expected Result

The Products page should display the available products correctly.

#### Actual Result

The page displays the products correctly.


### TC-010 — Display product name

| Field | Value |
|---|---|
| Test Case ID | TC-010 |
| Module | Products |
| Title | Verify product name is displayed |
| Priority | Medium |
| Type | UI / Functional |
| Preconditions | User is on the Products page |
| Test Data | Available product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the Products page | Products are displayed |
| 2 | Select a product card | Product information is visible |
| 3 | Review the product name | Product name is clearly displayed |

#### Expected Result

Each product should display a clear product name.

#### Actual Result

Each product clearly displayed its respective product name.


### TC-011 — Display product price

| Field | Value |
|---|---|
| Test Case ID | TC-011 |
| Module | Products |
| Title | Verify product price is displayed |
| Priority | Medium |
| Type | UI / Functional |
| Preconditions | User is on the Products page |
| Test Data | Available product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the Products page | Products are displayed |
| 2 | Select a product card | Product information is visible |
| 3 | Review the price | Product price is displayed correctly |

#### Expected Result

Each product should display its price clearly.

#### Actual Result

Each product displays its corresponding price

##

### TC-012 — Display product image

| Field | Value |
|---|---|
| Test Case ID | TC-012 |
| Module | Products |
| Title | Verify product image is displayed |
| Priority | Medium |
| Type | UI |
| Preconditions | User is on the Products page |
| Test Data | Available product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the Products page | Products are displayed |
| 2 | Review product cards | Product images are displayed |
| 3 | Check image rendering | Images are visible and correctly positioned |

#### Expected Result

Product images should load correctly without broken-image indicators.

#### Actual Result

All products displayed their product images correctly, without any broken elements or errors.

##

### TC-013 — Open product details

| Field | Value |
|---|---|
| Test Case ID | TC-013 |
| Module | Products |
| Title | Open product details |
| Priority | Medium |
| Type | Functional |
| Preconditions | User is on the Products page |
| Test Data | Available product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the Products page | Products are displayed |
| 2 | Click a product name or image | Product detail page is displayed |
| 3 | Review the details | Product information is displayed |

#### Expected Result

The selected product's detail page should open successfully.

#### Actual Result

The product detail page opens correctly.

##

### TC-014 — Return from product details

| Field | Value |
|---|---|
| Test Case ID | TC-014 |
| Module | Products |
| Title | Return from product details to product list |
| Priority | Medium |
| Type | Navigation |
| Preconditions | User is viewing a product detail |
| Test Data | Available product |
| Status | NOT EXECUTED |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open a product detail page | Product details are displayed |
| 2 | Click the Back to Products button | User returns to Products |
| 3 | Review the page | Product list is displayed |

#### Expected Result

The user should return to the Products page.

#### Actual Result

El usuario regresó con éxito a la página del producto.

##

### TC-015 — Sort products by price low to high

| Field | Value |
|---|---|
| Test Case ID | TC-015 |
| Module | Products |
| Title | Sort products by price low to high |
| Priority | Medium |
| Type | Functional |
| Preconditions | User is on the Products page |
| Test Data | Sort option: Price low to high |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the Products page | Products are displayed |
| 2 | Open the sorting control | Sorting options are displayed |
| 3 | Select Price low to high | Products are reordered |
| 4 | Review product prices | Products are ordered from lowest to highest price |

#### Expected Result

Products should be displayed from the lowest price to the highest price.

#### Actual Result

The products are displayed from lowest to highest price.

##

### TC-016 — Sort products by price high to low

| Field | Value |
|---|---|
| Test Case ID | TC-016 |
| Module | Products |
| Title | Sort products by price high to low |
| Priority | Medium |
| Type | Functional |
| Preconditions | User is on the Products page |
| Test Data | Sort option: Price high to low |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the Products page | Products are displayed |
| 2 | Open the sorting control | Sorting options are displayed |
| 3 | Select Price high to low | Products are reordered |
| 4 | Review product prices | Products are ordered from highest to lowest price |

#### Expected Result

Products should be displayed from the highest price to the lowest price.

#### Actual Result

The products are displayed from highest to lowest price.

##

# Shopping Cart Test Cases

### TC-017 — Add one product to cart

| Field | Value |
|---|---|
| Test Case ID | TC-017 |
| Module | Cart |
| Title | Add one product to cart |
| Priority | High |
| Type | Functional / Positive |
| Preconditions | User is on the Products page |
| Test Data | Any available product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the Products page | Products are displayed |
| 2 | Select Add to cart for a product | Product is added to cart |
| 3 | Review the cart indicator | Cart count increases to 1 |

#### Expected Result

The selected product should be added to the shopping cart.

#### Actual Result

The selected product has been added to the shopping cart.

##

### TC-018 — Add multiple products to cart

| Field | Value |
|---|---|
| Test Case ID | TC-018 |
| Module | Cart |
| Title | Add multiple products to cart |
| Priority | High |
| Type | Functional |
| Preconditions | User is on the Products page |
| Test Data | Two or more available products |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Select Add to cart for the first product | First product is added |
| 2 | Select Add to cart for the second product | Second product is added |
| 3 | Review the cart indicator | Cart count reflects the number of products |

#### Expected Result

All selected products should be added to the cart.

#### Actual Result

All selected products have been successfully added to the shopping cart.

##

### TC-019 — Verify cart item counter

| Field | Value |
|---|---|
| Test Case ID | TC-019 |
| Module | Cart |
| Title | Verify cart item counter |
| Priority | Medium |
| Type | Functional / UI |
| Preconditions | User is on the Products page |
| Test Data | One product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Add one product to the cart | Product is added |
| 2 | Review the cart icon | Cart indicator displays 1 |

#### Expected Result

The cart counter should accurately reflect the number of products added.

#### Actual Result

The cart counter shows the correct quantities of products added to the cart.

##

### TC-020 — Open shopping cart

| Field | Value |
|---|---|
| Test Case ID | TC-020 |
| Module | Cart |
| Title | Open shopping cart |
| Priority | High |
| Type | Navigation / Functional |
| Preconditions | User has at least one product in the cart |
| Test Data | One product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Add a product to the cart | Product is added |
| 2 | Click the cart icon | Cart page opens |
| 3 | Review cart contents | Added product is displayed |

#### Expected Result

The shopping cart should open and display the selected product.

#### Actual Result

The shopping cart opens and displays the added products.

##

### TC-021 — Verify product in cart

| Field | Value |
|---|---|
| Test Case ID | TC-021 |
| Module | Cart |
| Title | Verify added product information |
| Priority | High |
| Type | Functional |
| Preconditions | Product has been added to cart |
| Test Data | Selected product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Add a product to the cart | Product is added |
| 2 | Open the cart | Cart page is displayed |
| 3 | Compare product information | Product matches the selected product |

#### Expected Result

The product displayed in the cart should match the product selected on the Products page.

#### Actual Result

The shopping cart opens and displays the added products corresponding to the selection.

##

### TC-022 — Verify product price in cart

| Field | Value |
|---|---|
| Test Case ID | TC-022 |
| Module | Cart |
| Title | Verify product price in cart |
| Priority | High |
| Type | Functional |
| Preconditions | Product has been added to cart |
| Test Data | Selected product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Add a product to the cart | Product is added |
| 2 | Open the cart | Cart page is displayed |
| 3 | Compare product price | Cart price matches the product price |

#### Expected Result

The product price displayed in the cart should match the price shown on the Products page.

#### Actual Result

The price shown in the cart is the same as the one shown on the homepage.

##


### TC-023 — Remove product from cart

| Field | Value |
|---|---|
| Test Case ID | TC-023 |
| Module | Cart |
| Title | Remove product from cart |
| Priority | High |
| Type | Functional |
| Preconditions | Cart contains a product |
| Test Data | One product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Add a product to the cart | Product is added |
| 2 | Open the cart | Product is displayed |
| 3 | Click Remove | Product is removed |
| 4 | Review the cart | Removed product is no longer displayed |

#### Expected Result

The selected product should be removed from the shopping cart.

#### Actual Result

The selected product has been removed from the shopping cart.

##

### TC-024 — Verify empty cart

| Field | Value |
|---|---|
| Test Case ID | TC-024 |
| Module | Cart |
| Title | Verify cart after removing all products |
| Priority | Medium |
| Type | Functional |
| Preconditions | Cart contains at least one product |
| Test Data | One product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the cart | Product is displayed |
| 2 | Remove the product | Product is removed |
| 3 | Review the cart | Cart contains no products |

#### Expected Result

The cart should be empty after all products are removed.

#### Actual Result

The cart is completely empty after removing all products.

##

# Checkout Test Cases

### TC-025 — Start checkout

| Field | Value |
|---|---|
| Test Case ID | TC-025 |
| Module | Checkout |
| Title | Start checkout process |
| Priority | High |
| Type | Functional |
| Preconditions | Cart contains at least one product |
| Test Data | One product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Add a product to the cart | Product is added |
| 2 | Open the cart | Cart is displayed |
| 3 | Click Checkout | Checkout information page is displayed |

#### Expected Result

The user should be redirected to the checkout information page.

#### Actual Result

The user was successfully redirected to the payment information page.

##

### TC-026 — Checkout with valid information

| Field | Value |
|---|---|
| Test Case ID | TC-026 |
| Module | Checkout |
| Title | Complete checkout with valid information |
| Priority | Critical |
| Type | Functional / Positive |
| Preconditions | Cart contains a product |
| Test Data | First Name: Test / Last Name: User / Postal Code: 110111 |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open checkout | Checkout form is displayed |
| 2 | Enter first name | First name is accepted |
| 3 | Enter last name | Last name is accepted |
| 4 | Enter postal code | Postal code is accepted |
| 5 | Click Continue | Checkout overview is displayed |

#### Expected Result

The user should proceed successfully to the checkout overview.

#### Actual Result

The user successfully accesses the purchase summary.

##

### TC-027 — Checkout with empty first name

| Field | Value |
|---|---|
| Test Case ID | TC-027 |
| Module | Checkout |
| Title | Checkout with empty first name |
| Priority | High |
| Type | Validation / Negative |
| Preconditions | User is on the checkout information page |
| Test Data | First Name: blank / Last Name: User / Postal Code: 110111 |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open checkout | Checkout form is displayed |
| 2 | Leave first name empty | First name remains blank |
| 3 | Enter last name and postal code | Data is accepted |
| 4 | Click Continue | Validation error is displayed |

#### Expected Result

The checkout process should not continue and an appropriate validation message should be displayed.

#### Actual Result

The payment process does not continue, and an appropriate validation message is displayed.

##

### TC-028 — Checkout with empty last name

| Field | Value |
|---|---|
| Test Case ID | TC-028 |
| Module | Checkout |
| Title | Checkout with empty last name |
| Priority | High |
| Type | Validation / Negative |
| Preconditions | User is on the checkout information page |
| Test Data | First Name: Test / Last Name: blank / Postal Code: 110111 |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open checkout | Checkout form is displayed |
| 2 | Enter first name | First name is accepted |
| 3 | Leave last name empty | Last name remains blank |
| 4 | Enter postal code and click Continue | Validation error is displayed |

#### Expected Result

The checkout process should not continue and an appropriate validation message should be displayed.

#### Actual Result

The payment process does not proceed, and an appropriate validation message is displayed.

##

### TC-029 — Checkout with empty postal code

| Field | Value |
|---|---|
| Test Case ID | TC-029 |
| Module | Checkout |
| Title | Checkout with empty postal code |
| Priority | High |
| Type | Validation / Negative |
| Preconditions | User is on the checkout information page |
| Test Data | First Name: Test / Last Name: User / Postal Code: blank |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open checkout | Checkout form is displayed |
| 2 | Enter first name | First name is accepted |
| 3 | Enter last name | Last name is accepted |
| 4 | Leave postal code empty and click Continue | Validation error is displayed |

#### Expected Result

The checkout process should not continue and an appropriate validation message should be displayed.

#### Actual Result

The payment process does not proceed, and an appropriate validation message is displayed.

##

### TC-030 — Checkout with all required fields empty

| Field | Value |
|---|---|
| Test Case ID | TC-030 |
| Module | Checkout |
| Title | Checkout with all required fields empty |
| Priority | High |
| Type | Validation / Negative |
| Preconditions | User is on the checkout information page |
| Test Data | First Name: blank / Last Name: blank / Postal Code: blank |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open checkout | Checkout form is displayed |
| 2 | Leave all fields empty | All fields remain blank |
| 3 | Click Continue | Checkout is rejected and validation error is displayed |

#### Expected Result

The checkout process should not continue and an appropriate validation message should be displayed.

#### Actual Result

The payment process does not proceed, and an appropriate validation message is displayed.

##

### TC-031 — Verify checkout overview

| Field | Value |
|---|---|
| Test Case ID | TC-031 |
| Module | Checkout |
| Title | Verify checkout overview |
| Priority | High |
| Type | Functional |
| Preconditions | Valid checkout information has been submitted |
| Test Data | Valid checkout data |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Complete checkout information | Data is accepted |
| 2 | Click Continue | Checkout overview is displayed |
| 3 | Review order information | Products and order information are displayed |

#### Expected Result

The checkout overview should display the correct order information before completion.

The purchase process summary showed the correct order information before finalizing it.

##

### TC-032 — Verify subtotal

| Field | Value |
|---|---|
| Test Case ID | TC-032 |
| Module | Checkout |
| Title | Verify order subtotal |
| Priority | High |
| Type | Functional / Calculation |
| Preconditions | Checkout overview is displayed |
| Test Data | One or more products |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Add product(s) to cart | Product(s) are added |
| 2 | Proceed to checkout overview | Overview is displayed |
| 3 | Calculate the expected subtotal | Expected subtotal is calculated |
| 4 | Compare with displayed subtotal | Displayed subtotal matches expected subtotal |

#### Expected Result

The displayed subtotal should equal the sum of the product prices.

#### Actual Result

The subtotal shown is equal to the sum of the product prices.

##


### TC-033 — Verify tax

| Field | Value |
|---|---|
| Test Case ID | TC-033 |
| Module | Checkout |
| Title | Verify displayed tax |
| Priority | Medium |
| Type | Functional / Calculation |
| Preconditions | Checkout overview is displayed |
| Test Data | One or more products |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Proceed to checkout overview | Order summary is displayed |
| 2 | Review subtotal and tax | Both values are displayed |
| 3 | Verify the displayed tax | Tax is calculated according to the application's rules |

#### Expected Result

The displayed tax should be calculated correctly according to the application's configured calculation.

#### Actual Result

The displayed tax was calculated correctly in accordance with the calculation configured in the application.

##

### TC-034 — Verify order total

| Field | Value |
|---|---|
| Test Case ID | TC-034 |
| Module | Checkout |
| Title | Verify order total |
| Priority | Critical |
| Type | Functional / Calculation |
| Preconditions | Checkout overview is displayed |
| Test Data | One or more products |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Proceed to checkout overview | Order summary is displayed |
| 2 | Review subtotal and tax | Values are displayed |
| 3 | Calculate expected total | Expected total is calculated |
| 4 | Compare displayed total | Displayed total matches expected total |

#### Expected Result

The displayed order total should equal the subtotal plus the displayed tax.

#### Actual Result

The displayed order total is equal to the subtotal plus the displayed tax.

##

# Navigation and Responsive Test Cases

### TC-035 — Verify desktop navigation

| Field | Value |
|---|---|
| Test Case ID | TC-035 |
| Module | Navigation |
| Title | Verify navigation on desktop |
| Priority | Medium |
| Type | UI / Navigation |
| Preconditions | User is logged in |
| Test Data | Desktop browser |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Log in | Products page is displayed |
| 2 | Open the navigation menu | Navigation options are displayed |
| 3 | Review available options | Options are visible and usable |

#### Expected Result

Navigation elements should be visible, accessible, and functional on desktop.

#### Actual Result

The navigation elements are visible, accessible, and functional on desktop computers.

##

### TC-036 — Verify mobile viewport layout

| Field | Value |
|---|---|
| Test Case ID | TC-036 |
| Module | Responsive |
| Title | Verify application layout on mobile viewport |
| Priority | Medium |
| Type | Responsive / UI |
| Preconditions | Application is open in Chrome DevTools |
| Test Data | Mobile viewport |
| Status | FAIL |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the application | Application is displayed |
| 2 | Open Chrome DevTools | DevTools are displayed |
| 3 | Enable device toolbar | Mobile viewport is enabled |
| 4 | Review the application layout | Content remains usable and readable |

#### Expected Result

The application should remain usable and readable within the selected mobile viewport.

#### Actual Result

Product images do not maintain a constant aspect ratio on mobile devices; the relationship between width and height is lost, causing them to appear differently on each mobile device.

#### Evidence

TC-036.png


### TC-037 — Verify navigation menu

| Field | Value |
|---|---|
| Test Case ID | TC-037 |
| Module | Navigation |
| Title | Verify navigation menu |
| Priority | Medium |
| Type | Functional / UI |
| Preconditions | User is logged in |
| Test Data | Valid user |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Log in | Products page is displayed |
| 2 | Open the menu | Navigation menu opens |
| 3 | Review menu options | Available options are displayed |

#### Expected Result

The navigation menu should open and display its available options correctly.

#### Actual Result

The navigation menu opens and correctly displays its available options.

##

### TC-038 — Verify cart button navigation

| Field | Value |
|---|---|
| Test Case ID | TC-038 |
| Module | Navigation / Cart |
| Title | Navigate to cart using cart button |
| Priority | High |
| Type | Functional / Navigation |
| Preconditions | User is logged in |
| Test Data | At least one product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Add a product to cart | Product is added |
| 2 | Click the cart icon | Cart page opens |
| 3 | Review page | Cart contents are displayed |

#### Expected Result

The cart button should navigate the user to the shopping cart.

#### Actual Result

The cart button takes the user to the shopping cart.

##

### TC-039 — Navigate between Products and Cart

| Field | Value |
|---|---|
| Test Case ID | TC-039 |
| Module | Navigation |
| Title | Navigate between Products and Cart |
| Priority | Medium |
| Type | Navigation |
| Preconditions | User is logged in |
| Test Data | One product |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open Products page | Products are displayed |
| 2 | Add a product | Product is added |
| 3 | Open Cart | Cart page is displayed |
| 4 | Return to Products | Products page is displayed |

#### Expected Result

The user should be able to navigate between Products and Cart without unexpected errors.

#### Actual Result

The user can navigate between Products and the cart without errors.

##

### TC-040 — Verify mobile viewport for horizontal overflow

| Field | Value |
|---|---|
| Test Case ID | TC-040 |
| Module | Responsive |
| Title | Verify absence of unexpected horizontal overflow |
| Priority | Medium |
| Type | Responsive / UI |
| Preconditions | Application is open in a mobile viewport |
| Test Data | Mobile viewport |
| Status | PASS |

#### Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Open the application in a mobile viewport | Application is displayed |
| 2 | Review the page horizontally | Content fits within the viewport |
| 3 | Check for unexpected horizontal scrolling | No unexpected horizontal overflow is present |

#### Expected Result

The application should not display unexpected horizontal overflow that interferes with usability.

#### Actual Result

The application does not exhibit unexpected horizontal overflow that interferes with usability.



