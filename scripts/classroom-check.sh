#!/usr/bin/env bash
# Verificaciones automáticas - Ejercitación Transiciones y Animaciones.
set -u

HTML="index.html"
CSS="css/style_base.css"

fail() {
  echo "$1" >&2
  exit 1
}

ok() {
  echo CORRECTO
}

case "${1:-}" in
  base-structure)
    [[ -f "$HTML" ]] || fail "No se encontró index.html en la raíz."
    [[ -d "css" ]] || fail "No se encontró la carpeta css/."
    [[ -d "img" ]] || fail "No se encontró la carpeta img/."
    [[ -f "$CSS" ]] || fail "No se encontró css/style_base.css."
    ok
    ;;
  css-linked)
    [[ -f "$HTML" ]] || fail "No existe index.html."
    grep -qiE '<link[^>]*href=["'\''](\./)?css/style_base\.css["'\'']' "$HTML" \
      || fail "index.html no enlaza correctamente css/style_base.css."
    ok
    ;;
  menu-underline-transition)
    [[ -f "$CSS" ]] || fail "No existe css/style_base.css."
    grep -qiE 'nav[[:space:]]+ul[[:space:]]+li[[:space:]]+a:before|nav[[:space:]]+ul[[:space:]]+li[[:space:]]+a::before' "$CSS" \
      || fail "No se encontró el pseudo-elemento ::before del menú."
    grep -qiE 'width[[:space:]]*:[[:space:]]*0(%|px)?' "$CSS" \
      || fail "No se detectó ancho inicial del subrayado (width: 0 o similar)."
    grep -qiE 'nav[[:space:]]+ul[[:space:]]+li[[:space:]]+a:hover::before' "$CSS" \
      || fail "No se encontró el selector hover del subrayado."
    grep -qiE 'width[[:space:]]*:[[:space:]]*100%' "$CSS" \
      || fail "No se detectó ancho final del subrayado en hover (width: 100%)."
    grep -qiE 'transition[[:space:]]*:' "$CSS" \
      || fail "No se encontró la propiedad transition para el subrayado."
    ok
    ;;
  social-hover-effect)
    [[ -f "$CSS" ]] || fail "No existe css/style_base.css."
    grep -qiE '\.social[[:space:]]+ul[[:space:]]+li[[:space:]]+a[[:space:]]*\{' "$CSS" \
      || fail "No se encontró el bloque .social ul li a."
    grep -qiE '\.social[[:space:]]+ul[[:space:]]+li[[:space:]]+a:hover[[:space:]]*\{' "$CSS" \
      || fail "No se encontró el bloque .social ul li a:hover."
    grep -qiE 'transition[[:space:]]*:' "$CSS" \
      || fail "No se detectó transition en los enlaces sociales."
    grep -qiE 'transform[[:space:]]*:[[:space:]]*(scale|translate|rotate)' "$CSS" \
      || fail "No se detectó transform (scale/translate/rotate) en hover social."
    ok
    ;;
  spinner-animation)
    [[ -f "$CSS" ]] || fail "No existe css/style_base.css."
    grep -qiE '\.spinner[[:space:]]*\{' "$CSS" \
      || fail "No se encontró el bloque .spinner."
    grep -qiE 'animation[[:space:]]*:[[:space:]]*[a-zA-Z0-9_-]+[[:space:]]+[0-9.]+s[[:space:]]+.*infinite' "$CSS" \
      || fail "No se detectó una animación infinita configurada en .spinner."
    grep -qiE '@keyframes[[:space:]]+[a-zA-Z0-9_-]+' "$CSS" \
      || fail "No se encontró un bloque @keyframes."
    grep -qiE '0%[[:space:]]*\{[^}]*rotate\(0deg\)' "$CSS" \
      || fail "No se detectó rotate(0deg) en 0%."
    grep -qiE '100%[[:space:]]*\{[^}]*rotate\(360deg\)' "$CSS" \
      || fail "No se detectó rotate(360deg) en 100%."
    ok
    ;;
  *)
    echo "Prueba automática no reconocida. Avísale al docente." >&2
    exit 2
    ;;
esac
