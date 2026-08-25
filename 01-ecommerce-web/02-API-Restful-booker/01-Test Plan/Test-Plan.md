# API Test Cases — 

## 1. Información general

**API bajo prueba:** Restful-Booker  
**Base URL:** `https://restful-booker.herokuapp.com`  
**Herramienta:** Postman  
**Colección:** `proyecto-02 API`  
**Fecha de ejecución de referencia:** 24 de agosto de 2026


---


# 3. Test Cases

## TC-API-001 — Get existing booking

**Type:** Positive  
**Priority:** High

### Objective
Verificar que la API permita consultar correctamente una reserva existente mediante su ID.

### Preconditions
La API está disponible y existe una reserva con ID `2`.

### Request
```http
GET /booking/2
```

### Test Data
```text
Booking ID: 2
```

### Steps
1. Enviar una petición `GET` a `/booking/2`.
2. Observar el código de respuesta.
3. Validar la estructura básica del response body.

### Expected Result
- HTTP `200 OK`.
- La respuesta contiene información de la reserva.
- Deben existir los campos `firstname`, `lastname`, `totalprice`, `depositpaid` y `bookingdates`.

### Actual Result
- HTTP `200 OK`.
- La respuesta contiene una reserva con:
  - `firstname`: `Eric`
  - `lastname`: `Smith`
  - `totalprice`: `887`
  - `depositpaid`: `false`
  - `checkin`: `2024-02-13`
  - `checkout`: `2024-05-21`

### Assertions
1. Status code = `200`.
2. El response contiene datos de booking.
3. El response contiene la estructura/campos esperados.

### Status
**PASS**

### Defect
N/A

---

## TC-API-002 — Get non-existing booking

**Type:** Negative  
**Priority:** High

### Objective
Verificar que la API maneje correctamente la consulta de una reserva que no existe.

### Preconditions
La API está disponible. El ID utilizado no corresponde a una reserva existente.

### Request
```http
GET /booking/99999
```

### Test Data
```text
Booking ID: 99999
```

### Steps
1. Enviar una petición `GET` a `/booking/99999`.
2. Observar el código HTTP.
3. Revisar el response body.

### Expected Result
- HTTP `404 Not Found`.
- La respuesta indica que la reserva no fue encontrada.

### Actual Result
- HTTP `404 Not Found`.
- Body observado: `Not Found`.

### Assertions
1. Status code = `404`.

### Status
**PASS**

### Defect
N/A

---

## TC-API-003 — Create new booking

**Type:** Positive  
**Priority:** High

### Objective
Verificar que la API cree correctamente una nueva reserva y devuelva un identificador para el recurso creado.

### Preconditions
La API está disponible.

### Request
```http
POST /booking
```

### Request Body
```json
{
  "firstname": "Juan",
  "lastname": "Perez",
  "totalprice": 500,
  "depositpaid": true,
  "bookingdates": {
    "checkin": "2026-09-01",
    "checkout": "2026-09-05"
  }
}
```

### Steps
1. Enviar la petición `POST /booking`.
2. Revisar el status code.
3. Verificar que exista `bookingid`.
4. Verificar que exista el objeto `booking`.
5. Guardar el `bookingid` para utilizarlo en requests posteriores.

### Expected Result
- La API acepta la solicitud.
- HTTP `200 OK` según el comportamiento observado/documentado en este ejercicio.
- La respuesta contiene `bookingid`.
- La respuesta contiene el objeto `booking`.

### Actual Result
- HTTP `200 OK`.
- `bookingid` generado: `2173` en la ejecución evidenciada.
- El response contiene el objeto `booking`.

### Assertions
1. Status code = `200`.
2. `bookingid` exists.
3. `booking` object exists.
4. El `bookingid` se guarda para requests posteriores.

### Status
**PASS**

### Defect
N/A

---

## TC-API-004 — Get booking by ID

**Type:** Positive / Integration flow  
**Priority:** High

### Objective
Verificar que la reserva creada mediante TC-API-003 pueda recuperarse utilizando el ID generado.

### Preconditions
TC-API-003 ejecutado y `bookingId` disponible como variable de Postman.

### Request
```http
GET /booking/{{bookingId}}
```

### Test Data
```text
bookingId: valor generado por TC-API-003
```

### Steps
1. Ejecutar previamente TC-API-003.
2. Obtener el `bookingId` generado.
3. Enviar `GET /booking/{{bookingId}}`.
4. Validar la respuesta.

### Expected Result
- HTTP `200 OK`.
- La respuesta corresponde a la reserva creada.
- Los datos principales coinciden con la reserva creada.

### Actual Result
- HTTP `200 OK`.
- El response devuelve la reserva creada con los datos de Juan Perez.

### Assertions
1. Status code = `200`.
2. Se valida que la reserva recuperada corresponde a la creada.

### Status
**PASS**

### Defect
N/A

---

## TC-API-005 — Update a reservation

**Type:** Positive  
**Priority:** High

### Objective
Verificar que una reserva existente pueda actualizarse correctamente mediante `PUT`.

### Preconditions
Existe una reserva válida y se dispone de `bookingId`.

### Request
```http
PUT /booking/{{bookingId}}
```

### Request Body
```json
{
  "firstname": "Juan",
  "lastname": "Perez",
  "totalprice": 600,
  "depositpaid": false,
  "bookingdates": {
    "checkin": "2026-10-01",
    "checkout": "2026-10-05"
  }
}
```

### Steps
1. Seleccionar una reserva existente.
2. Enviar `PUT /booking/{{bookingId}}` con los nuevos valores.
3. Verificar el status code.
4. Comparar los datos devueltos con los valores enviados.

### Expected Result
- HTTP `200 OK`.
- La reserva queda actualizada con los nuevos datos.

### Actual Result
- HTTP `200 OK`.
- La respuesta refleja:
  - `totalprice`: `600`
  - `depositpaid`: `false`
  - `checkin`: `2026-10-01`
  - `checkout`: `2026-10-05`

### Assertions
1. Status code = `200`.
2. Los campos actualizados coinciden con los valores esperados.

### Status
**PASS**

### Defect
N/A

---

## TC-API-006 — Delete a reservation

**Type:** Positive / CRUD  
**Priority:** High

### Objective
Verificar que una reserva existente pueda eliminarse correctamente.

### Preconditions
Existe una reserva válida y se dispone de `bookingId`.

### Request
```http
DELETE /booking/{{bookingId}}
```

### Steps
1. Seleccionar una reserva existente.
2. Enviar la petición `DELETE`.
3. Observar el código HTTP y el body.

### Expected Result
- La API procesa correctamente la eliminación.
- El código esperado para esta ejecución es `201 Created`.

### Actual Result
- HTTP `201 Created`.
- Body observado: `Created`.

### Assertions
1. Status code = `201`.

### Status
**PASS**

### Defect
N/A

---

## TC-API-007 — Create booking with missing firstname

**Type:** Negative / Validation  
**Priority:** High

### Objective
Verificar que la API rechace una solicitud de creación cuando falta el campo obligatorio `firstname`.

### Preconditions
La API está disponible.

### Request
```http
POST /booking
```

### Test Data
El campo `firstname` se omite del JSON.

Ejemplo de body:
```json
{
  "lastname": "Perez",
  "totalprice": 500,
  "depositpaid": true,
  "bookingdates": {
    "checkin": "2026-09-01",
    "checkout": "2026-09-05"
  }
}
```

### Steps
1. Enviar `POST /booking`.
2. Omitir `firstname`.
3. Observar la respuesta.

### Expected Result
- HTTP `400 Bad Request`.
- La API debe manejar el error de validación de forma controlada.

### Actual Result
- HTTP `500 Internal Server Error`.
- Body observado: `Internal Server Error`.

### Assertions
1. Status code esperado = `400`.

### Status
**FAIL**

### Defect
**BUG-001 — Missing required firstname returns 500 Internal Server Error**

---

## TC-API-008 — Create booking with incorrect data type

**Type:** Negative / Validation  
**Priority:** Medium

### Objective
Verificar que la API rechace una solicitud cuando un campo recibe un tipo de dato incorrecto.

### Preconditions
La API está disponible.

### Request
```http
POST /booking
```

### Test Data
`totalprice` se envía como texto en lugar de número.

### Steps
1. Enviar la petición con `totalprice` utilizando un tipo de dato incorrecto.
2. Observar el status code y response body.

### Expected Result
- HTTP `400 Bad Request`.
- La API debe rechazar el tipo de dato inválido.

### Actual Result
- HTTP `400 Bad Request`.
- Body observado: `Bad Request`.

### Assertions
1. Status code = `400`.

### Status
**PASS**

### Defect
N/A

---

## TC-API-009 — Create booking with invalid date

**Type:** Negative / Data validation  
**Priority:** High

### Objective
Verificar que la API rechace fechas inválidas o mal formadas.

### Preconditions
La API está disponible.

### Request
```http
POST /booking
```

### Test Data
Se utiliza una fecha inválida en `bookingdates`.

### Steps
1. Enviar la solicitud con una fecha inválida.
2. Observar el status code.
3. Inspeccionar el response body.

### Expected Result
- HTTP `400 Bad Request`.
- La API debe rechazar la fecha inválida.

### Actual Result
- HTTP `200 OK`.
- La respuesta procesa la solicitud y genera valores de fecha inválidos, observándose `NaN-undefined-NaN`.

### Assertions
1. Status code esperado = `400`.

### Status
**FAIL**

### Defect
**BUG-002 — Invalid date is accepted and produces invalid date values**

---

## TC-API-010 — Create booking with check-in after check-out

**Type:** Negative / Business validation  
**Priority:** High

### Objective
Verificar que la API rechace una reserva cuyo `checkin` ocurre después de `checkout`.

### Preconditions
La API está disponible.

### Request
```http
POST /booking
```

### Test Data
La fecha de check-in se establece después de la fecha de check-out.

### Steps
1. Enviar una reserva con `checkin > checkout`.
2. Observar el status code.
3. Revisar si la reserva es aceptada.

### Expected Result
- HTTP `400 Bad Request`.
- La API debe rechazar la combinación de fechas inválida.

### Actual Result
- HTTP `200 OK`.
- La API acepta la solicitud.

### Assertions
1. Status code esperado = `400`.

### Status
**FAIL**

### Defect
**BUG-003 — API accepts check-in date after check-out date**

---

## TC-API-011 — Create booking with special characters in name

**Type:** Negative / Boundary validation  
**Priority:** Medium

### Objective
Verificar el comportamiento de la API cuando el nombre contiene caracteres especiales.

### Preconditions
La API está disponible.

### Request
```http
POST /booking
```

### Test Data
El nombre contiene caracteres especiales.

### Steps
1. Enviar una reserva cuyo nombre contiene caracteres especiales.
2. Observar el status code.
3. Revisar el valor devuelto.

### Expected Result
**Según la regla planteada para este test:** HTTP `400 Bad Request`.

### Actual Result
- HTTP `200 OK`.
- La API acepta y conserva los caracteres especiales.

### Assertions
1. Status code esperado = `400`.

### Status
**FAIL — Requiere validación del requisito**

### Defect
**Pendiente de clasificación**

---

## TC-API-012 — Create booking with zero or negative price

**Type:** Negative / Boundary validation  
**Priority:** High

### Objective
Verificar que la API rechace precios con valores `0` o negativos.

### Preconditions
La API está disponible.

### Request
```http
POST /booking
```

### Test Data
`totalprice` con valor `0` o negativo.

### Steps
1. Enviar una reserva con precio inválido.
2. Observar el status code.
3. Revisar el response body.

### Expected Result
- HTTP `400 Bad Request`.
- La API debe manejar el dato inválido como un error de validación.

### Actual Result
- HTTP `500 Internal Server Error`.
- Body observado: `Internal Server Error`.

### Assertions
1. Status code esperado = `400`.

### Status
**FAIL**

### Defect
**BUG-004 — Zero or negative price causes 500 Internal Server Error**

---

## TC-API-013 — Create booking with 200-character name

**Type:** Boundary / Positive validation  
**Priority:** Medium

### Objective
Verificar el comportamiento de la API ante un nombre con una longitud de 200 caracteres.

### Preconditions
La API está disponible.

### Request
```http
POST /booking
```

### Test Data
`firstname` con 200 caracteres.

### Steps
1. Enviar la reserva con un nombre de 200 caracteres.
2. Observar el status code.
3. Validar el resultado del test configurado en Postman.

### Expected Result
- La API debe comportarse de acuerdo con el límite funcional definido para el campo.
- En esta ejecución el criterio configurado fue validar una respuesta exitosa.

### Actual Result
- HTTP `200 OK`.
- La assertion configurada para el status code pasa.

### Assertions
1. Status code = `200`.

### Status
**PASS**

### Defect
N/A

---

# 4. Resumen de ejecución

## Resultados observados

| Resultado | Cantidad |
|---|---:|
| PASS | 9 |
| FAIL | 4 |
| Pendiente de requisito | 1 caso dentro de los FAIL |
| Total de casos | 13 |

> Nota: TC-API-011 se contabiliza como FAIL frente al Expected Result actualmente configurado, pero su clasificación como bug queda pendiente de confirmar el requisito sobre caracteres especiales.

## Cobertura por método

| Método | Cantidad |
|---|---:|
| GET | 3 |
| POST | 9 |
| PUT | 1 |
| DELETE | 1 |

---

# 5. Defectos detectados

| Bug ID | Test Case | Defecto | Severity propuesta |
|---|---|---|---|
| BUG-001 | TC-API-007 | Campo requerido ausente provoca HTTP 500 | High |
| BUG-002 | TC-API-009 | Fecha inválida aceptada y transformada en valores inválidos | High |
| BUG-003 | TC-API-010 | Check-in posterior a checkout aceptado | High |
| BUG-004 | TC-API-012 | Precio 0/negativo provoca HTTP 500 | High |

**TC-API-011:** clasificación pendiente de requisito.
