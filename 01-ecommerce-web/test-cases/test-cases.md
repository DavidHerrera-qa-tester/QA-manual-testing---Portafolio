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

#### Evidence

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

#### Evidence

To be added during test execution.

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

#### Evidence

To be added during test execution.

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

### TC-006 Login With Username And Password empty

| Field | Value |
|---|---|
| Test Case ID | TC-006 |
| Module | Login |
| Title | Password field remains blank |
| Priority | High |
| Type | validation / Negative| 
| Preconditions | User is on the SauceDemo login page |
| Test Data | username: blank / blank |
| Status | na |

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

