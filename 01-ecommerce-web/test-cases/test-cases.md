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
| Status | pass |

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

### TC-002 - Login whith invalide password

| Field | value |
|---|---|
| Test Case ID | TC-002 |
| Module | login |
| Title | Login whith valid username and invalid password |
| Priority | High |
| Type | Functional / Negative |
| Preconditions | User is on the SauceDemo login page |
| Status | No executed |

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

Not executed.

#### Evidence

To be added during test execution.

