# Evidence — Proyecto 02 API Testing

## Purpose
Screenshots provide traceability for executed tests and reported defects.

## Recommended Test Case Evidence
- `TC-API-001.png`
- `TC-API-002.png`
- `TC-API-003.png`
- `TC-API-004.png`
- `TC-API-005.png`
- `TC-API-006.png`
- `TC-API-007.png`
- `TC-API-008.png`
- `TC-API-009.png`
- `TC-API-010.png`
- `TC-API-011.png`
- `TC-API-012.png`
- `TC-API-013.png`

## Confirmed Defect Evidence
- `BUG-001.png` — missing firstname / 500 response.
- `BUG-002.png` — invalid date / 200 response and invalid returned date.
- `BUG-003.png` — check-in after checkout accepted with 200.
- `BUG-004.png` — zero/negative price / 500 response.

## What a screenshot should show
For a normal test:
1. Method and endpoint.
2. Relevant request data/body.
3. Response status.
4. Relevant response body.
5. Test Results / assertions.

For a bug:
1. Method and endpoint.
2. Invalid input.
3. Actual status.
4. Actual response body.
5. Failed assertion, where available.

## Naming rule
Use the Test Case or Bug ID exactly, e.g. `TC-API-009.png` or `BUG-002.png`.
