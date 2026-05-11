[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/YAbnZxhS)
# Ejercitación: Transiciones y Animaciones CSS

**Profesor:** Ing. Fabio D. Argañaraz

## Propósito de la actividad

En esta práctica vas a entrenar habilidades clave de Front-End:

- interpretar una referencia visual y convertirla en estilos CSS;
- aplicar `transition`, `transform`, `animation` y `@keyframes`;
- mejorar interacción y percepción visual sin modificar la estructura principal del HTML.

La meta es que tu resultado se parezca al comportamiento mostrado en `Resultado.gif`.

## Material de trabajo

- Referencia visual final: `Resultado.gif`
- Base de la actividad: `index.html` y `css/style_base.css`
- Archivo principal de trabajo: `css/style_base.css`

## Estructura del proyecto

```txt
Ejercitacion-Transiciones-Animaciones/
├── index.html
├── css/
│   └── style_base.css
├── img/
│   └── logo.svg
└── README.md
```

## Consigna general

Debés completar los sectores marcados con comentarios en `css/style_base.css` para replicar los efectos del GIF de referencia.

No se pide cambiar la estructura del `index.html` salvo que sea estrictamente necesario por un error de tipeo o formato.

## Guía paso a paso

### 1) Menú principal (subrayado animado)

En los enlaces del menú (`nav ul li a`) ya existe un pseudo-elemento `::before`.

Tu tarea es:

- definir el tamaño inicial del subrayado (estado oculto o mínimo);
- configurar transición para que el cambio sea suave;
- en `:hover::before`, indicar el tamaño final para que el subrayado se "dibuje".

Objetivo visual: al pasar el mouse sobre cada opción del menú, aparece una línea decorativa animada debajo del texto.

### 2) Barra social lateral (hover interactivo)

En `.social ul li a` y su estado `:hover`:

- agregar una transición;
- aplicar una transformación (`transform`) y/o ajuste de `padding` en hover.

Objetivo visual: los botones sociales reaccionan al mouse con un movimiento o expansión suave, similar al GIF.

### 3) Spinner central (animación continua)

El spinner ya tiene forma y bordes de colores. Falta:

- agregar la propiedad `animation` en `.spinner`;
- crear el bloque `@keyframes` para que rote de `0deg` a `360deg`.

Objetivo visual: el loader debe girar de forma continua, uniforme e infinita.

## Pistas didácticas (sin resolverte el ejercicio)

- Si querés animar cambios al pasar el mouse, combiná `:hover` + `transition`.
- Si querés desplazar, escalar o rotar elementos, usá `transform`.
- Si querés una animación autónoma (sin interacción), usá `animation` + `@keyframes`.
- Evitá transiciones exageradas: priorizá fluidez y legibilidad.

## Criterios de logro

Se espera que el trabajo cumpla con estos puntos:

- menú con subrayado animado en hover;
- barra social con efecto suave en hover;
- spinner rotando en bucle;
- comportamiento visual cercano al `Resultado.gif`;
- código CSS ordenado y consistente con la base entregada.

## Recomendaciones de trabajo

- implementá un bloque a la vez y probá en navegador después de cada cambio;
- usá el inspector del navegador para validar pseudo-elementos y estados `:hover`;
- compará tu avance frecuentemente contra el GIF de referencia;
- priorizá entender cada propiedad antes de copiar soluciones externas.

## Recursos sugeridos

- [MDN - transition](https://developer.mozilla.org/es/docs/Web/CSS/transition)
- [MDN - transform](https://developer.mozilla.org/es/docs/Web/CSS/transform)
- [MDN - animation](https://developer.mozilla.org/es/docs/Web/CSS/animation)
- [MDN - @keyframes](https://developer.mozilla.org/es/docs/Web/CSS/@keyframes)
- [Animista](https://animista.net/)

## Entrega

Entregá el proyecto con tus cambios en `css/style_base.css` y verificá antes:

- que no haya errores de sintaxis CSS;
- que todos los efectos solicitados funcionen;
- que el resultado visual final respete la referencia.

## Validación automática (GitHub Classroom)

Esta ejercitación incluye:

- workflow de autograding en `.github/workflows/classroom.yml`;
- script de chequeo en `scripts/classroom-check.sh`;
- workflow de creación de issues en `.github/workflows/setup-issues.yml` (idempotente, no duplica títulos);
- workflow de CI en `.github/workflows/ci.yml` con los mismos criterios de verificación.

Los tests automáticos brindan feedback rápido, pero la revisión docente final sigue siendo obligatoria.

---

*Programación II - Ejercitación de Transiciones y Animaciones CSS*
