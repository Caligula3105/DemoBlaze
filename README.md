# Demoblaze API Testing

Este proyecto contiene pruebas automatizadas para la API de [Demoblaze](https://www.demoblaze.com) usando **Karate** y **Maven**. El objetivo es validar funcionalidades básicas como registro y login con distintos escenarios.

---

## Tecnologías utilizadas

- [Karate](https://github.com/karatelabs/karate) (framework de pruebas API y UI basado en Cucumber y Gatling)
- Maven (para gestión de dependencias y ejecución de tests)
- Java 21 (versión configurada para compilación y ejecución)
- JUnit 5 (integración de Karate con Maven)

---

## Estructura del proyecto

```plaintext
src
 └── test
      ├── java
      │    └── (clases Java, si aplican)
      └── resources
           └── demoblaze
                └── pruebasApiDemoBlaze
                     └── pruebasApiDemoBlaze.feature  (archivo con escenarios de prueba)

* Cómo ejecutar las pruebas

Sigue estos pasos para clonar el proyecto y ejecutar las pruebas con Maven:
Clonar el repositorio (reemplaza con tu URL real):
git clone https://github.com/tu_usuario/demoblaze-api-test.git
cd demoblaze-api-test


* Ejecutar las pruebas con Maven:

mvn test
Esto ejecutará todos los escenarios .feature que tienes en el proyecto usando Karate.

* Ver resultados:

Al finalizar, Maven mostrará en consola el resumen de pruebas.
Los reportes detallados se pueden encontrar en target/karate-reports/karate-summary.html
