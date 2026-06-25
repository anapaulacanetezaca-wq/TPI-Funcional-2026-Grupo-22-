(* ========================================================
   FUNCIÓN: transicion
   NATURALEZA: Pura
   ESTRATEGIA: Pattern matching
   IMPACTO: No destructiva
   ======================================================== *)
let transicion color_actual cambiar_a =
  match (color_actual, cambiar_a) with
  | ("en-rojo", "verde") -> (color_actual, "cambiar-a-verde")
  | ("en-verde", "amarillo") -> (color_actual, "cambiar-a-amarillo")
  | ("en-amarillo", "rojo") -> (color_actual, "cambiar-a-rojo")
  | _ -> (color_actual, "accion-por-defecto")
;;

(* ========================================================
   FUNCIÓN: timer
   NATURALEZA: Pura
   ESTRATEGIA: Condicional
   IMPACTO: No destructiva
   ======================================================== *)
let timer timestamp =
  let posicion_en_ciclo = timestamp mod 225 in
  if posicion_en_ciclo < 90 then "en-rojo"
  else if posicion_en_ciclo < 93 then "rojo-intermitente"
  else if posicion_en_ciclo < 213 then "en-verde"
  else if posicion_en_ciclo < 216 then "verde-intermitente"
  else if posicion_en_ciclo < 222 then "en-amarillo"
  else "amarillo-intermitente"
;;
