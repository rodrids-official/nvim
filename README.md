# NEOVIM - Atajos por Defecto

Todos los comandos y atajos de teclado que vienen por defecto en Neovim sin necesidad de configuración adicional.

---

## 🎯 MODOS DE NEOVIM

Neovim opera en diferentes modos:

- **Normal Mode**: Modo por defecto (navegación y comandos)
- **Insert Mode**: Insertar texto
- **Visual Mode**: Seleccionar texto
- **Command Mode**: Ejecutar comandos Ex
- **Replace Mode**: Reemplazar texto

### Cambiar entre modos

```
Esc                 Volver a Normal Mode desde cualquier modo
i                   Entrar en Insert Mode antes del cursor
a                   Entrar en Insert Mode después del cursor
v                   Entrar en Visual Mode (carácter)
V                   Entrar en Visual Line Mode (línea completa)
Ctrl-v              Entrar en Visual Block Mode (bloque)
R                   Entrar en Replace Mode
:                   Entrar en Command Mode
```

---

## 📂 NAVEGACIÓN Y MOVIMIENTO

### Movimiento Básico (hjkl)

```
h                   Mover cursor a la izquierda
j                   Mover cursor abajo
k                   Mover cursor arriba
l                   Mover cursor a la derecha

Alternativas (también funcionan):
Flechas             ← ↓ ↑ → (funcionan pero no recomendado)
Ctrl-h              Izquierda (también Backspace)
Ctrl-j              Abajo (también Enter en algunos contextos)
Ctrl-n              Abajo
Ctrl-p              Arriba
Espacio             Derecha
```

### Movimiento por Palabras

```
w                   Ir al inicio de la siguiente palabra
W                   Ir al inicio de la siguiente PALABRA (ignora puntuación)
e                   Ir al final de la siguiente palabra
E                   Ir al final de la siguiente PALABRA
b                   Ir al inicio de la palabra anterior
B                   Ir al inicio de la PALABRA anterior
ge                  Ir al final de la palabra anterior
gE                  Ir al final de la PALABRA anterior
```

### Movimiento en la Línea

```
0                   Ir al primer carácter de la línea (columna 0)
^                   Ir al primer carácter no blanco de la línea
$                   Ir al final de la línea
g_                  Ir al último carácter no blanco de la línea
|                   Ir a la columna 1 (igual que 0)
N|                  Ir a la columna N
g0                  Ir al primer carácter de la línea visual
g^                  Ir al primer no blanco de la línea visual
g$                  Ir al final de la línea visual
gm                  Ir a la mitad de la línea
gM                  Ir a la mitad de la línea (50% del ancho)
```

### Movimiento por Líneas

```
gg                  Ir a la primera línea del archivo
G                   Ir a la última línea del archivo
NG o :N             Ir a la línea número N
50%                 Ir al 50% del archivo
```

### Movimiento por Párrafos y Bloques

```
{                   Ir al párrafo anterior (línea en blanco)
}                   Ir al párrafo siguiente (línea en blanco)
(                   Ir a la sentencia anterior
)                   Ir a la sentencia siguiente
[[                  Ir a la sección anterior
]]                  Ir a la sección siguiente
[]                  Ir al final de la sección anterior
][                  Ir al final de la sección siguiente
```

### Movimiento por Caracteres Específicos

```
f{char}             Ir a la siguiente ocurrencia de {char} en la línea
F{char}             Ir a la ocurrencia anterior de {char} en la línea
t{char}             Ir hasta antes de la siguiente ocurrencia de {char}
T{char}             Ir hasta antes de la ocurrencia anterior de {char}
;                   Repetir último movimiento f, F, t, o T
,                   Repetir último movimiento f, F, t, o T en dirección opuesta
```

### Movimiento por Paréntesis y Bloques

```
%                   Ir al paréntesis/corchete/llave correspondiente
[(                  Ir al '(' sin cerrar anterior
[{                  Ir al '{' sin cerrar anterior
])                  Ir al ')' sin cerrar siguiente
]}                  Ir al '}' sin cerrar siguiente
[#                  Ir al '#if' o '#else' sin cerrar anterior
]#                  Ir al '#else' o '#endif' sin cerrar siguiente
[*                  Ir al inicio del comentario /* anterior
]*                  Ir al final del comentario */ siguiente
```

### Scroll y Vista de Pantalla

```
Ctrl-e              Scroll una línea hacia abajo (cursor no se mueve)
Ctrl-y              Scroll una línea hacia arriba (cursor no se mueve)
Ctrl-d              Scroll medio página hacia abajo
Ctrl-u              Scroll medio página hacia arriba
Ctrl-f              Scroll una página completa hacia abajo
Ctrl-b              Scroll una página completa hacia arriba
zz o z.             Centrar línea actual en la pantalla
zt o z<Enter>       Poner línea actual arriba de la pantalla
zb o z-             Poner línea actual abajo de la pantalla
zh                  Scroll horizontal a la izquierda
zl                  Scroll horizontal a la derecha
zH                  Scroll horizontal media pantalla a la izquierda
zL                  Scroll horizontal media pantalla a la derecha
H                   Ir a la línea superior de la pantalla
M                   Ir a la línea del medio de la pantalla
L                   Ir a la línea inferior de la pantalla
```

### Información de Posición

```
Ctrl-g              Mostrar información del archivo y posición del cursor
g Ctrl-g            Mostrar posición detallada: columna, línea, carácter
ga                  Mostrar valor ASCII del carácter bajo el cursor
g8                  Mostrar secuencia de bytes UTF-8 del carácter bajo cursor
```

---

## 🔍 BÚSQUEDA

### Búsqueda de Texto

```
/patrón             Buscar 'patrón' hacia adelante
?patrón             Buscar 'patrón' hacia atrás
/<Enter>            Repetir última búsqueda hacia adelante
?<Enter>            Repetir última búsqueda hacia atrás
n                   Ir a la siguiente coincidencia
N                   Ir a la coincidencia anterior (dirección opuesta)
*                   Buscar palabra completa bajo el cursor (hacia adelante)
#                   Buscar palabra completa bajo el cursor (hacia atrás)
g*                  Buscar palabra bajo el cursor (parcial, hacia adelante)
g#                  Buscar palabra bajo el cursor (parcial, hacia atrás)
```

### Búsqueda de Definiciones

```
gd                  Ir a la definición local de la variable bajo el cursor
gD                  Ir a la definición global de la variable bajo el cursor
```

### Búsqueda con Offset

Después del patrón de búsqueda puedes añadir:

```
/patrón/+N          Buscar y colocar cursor N líneas abajo
/patrón/-N          Buscar y colocar cursor N líneas arriba
/patrón/e           Buscar y colocar cursor al final de la coincidencia
/patrón/e+N         Buscar y colocar cursor N caracteres después del final
/patrón/s           Buscar y colocar cursor al inicio de la coincidencia
/patrón/s+N         Buscar y colocar cursor N caracteres después del inicio
```

---

## ✏️ INSERCIÓN Y EDICIÓN DE TEXTO

### Entrar en Insert Mode

```
i                   Insertar antes del cursor
I                   Insertar al inicio de la línea (primer no blanco)
gI                  Insertar en la columna 1
a                   Insertar después del cursor (append)
A                   Insertar al final de la línea
o                   Abrir nueva línea debajo y entrar en Insert Mode
O                   Abrir nueva línea encima y entrar en Insert Mode
gi                  Insertar en la última posición donde se editó
```

### Insertar Caracteres Especiales (en Insert Mode)

```
Ctrl-v {número}     Insertar carácter por su código decimal
Ctrl-v x{hex}       Insertar carácter por su código hexadecimal
Ctrl-v u{hex}       Insertar carácter Unicode
Ctrl-k {char1}{char2}  Insertar dígrafo
Ctrl-v <Tab>        Insertar tabulación literal
Ctrl-v <Enter>      Insertar nueva línea literal
```

### Insertar Contenido de Registros (en Insert Mode)

```
Ctrl-r "            Insertar contenido del registro sin nombre
Ctrl-r 0            Insertar último texto copiado (yank)
Ctrl-r a            Insertar contenido del registro 'a'
Ctrl-r %            Insertar nombre del archivo actual
Ctrl-r /            Insertar último patrón de búsqueda
Ctrl-r :            Insertar último comando ejecutado
```

### Insertar desde Líneas Adyacentes (en Insert Mode)

```
Ctrl-y              Insertar carácter de la línea de arriba
Ctrl-e              Insertar carácter de la línea de abajo
```

### Autocompletado (en Insert Mode)

```
Ctrl-n              Siguiente palabra en autocompletado
Ctrl-p              Palabra anterior en autocompletado
Ctrl-x Ctrl-n       Autocompletar palabras del buffer actual
Ctrl-x Ctrl-i       Autocompletar palabras de includes
Ctrl-x Ctrl-f       Autocompletar nombres de archivo
Ctrl-x Ctrl-l       Autocompletar líneas completas
Ctrl-x Ctrl-k       Autocompletar desde diccionario
Ctrl-x Ctrl-t       Autocompletar desde thesaurus
Ctrl-x Ctrl-o       Omni completion (autocompletado contextual)
Ctrl-x Ctrl-u       Autocompletar con función de usuario
Ctrl-x Ctrl-s       Autocompletar corrección ortográfica
```

---

## 🗑️ BORRAR Y ELIMINAR

### Borrar Caracteres

```
x                   Borrar carácter bajo el cursor
X                   Borrar carácter antes del cursor
<Delete>            Borrar carácter bajo el cursor (igual que x)
Nx                  Borrar N caracteres desde el cursor
```

### Borrar con Movimientos

```
d{movimiento}       Borrar hasta donde llega el movimiento
dd                  Borrar línea completa
D                   Borrar desde cursor hasta final de línea (igual que d$)
dw                  Borrar palabra (desde cursor hasta inicio siguiente palabra)
de                  Borrar hasta el final de la palabra
db                  Borrar palabra hacia atrás
daw                 Borrar una palabra (a word, incluyendo espacios)
diw                 Borrar palabra interna (inner word, sin espacios)
d0                  Borrar desde inicio de línea hasta cursor
d^                  Borrar desde primer no blanco hasta cursor
d$                  Borrar desde cursor hasta final de línea
dG                  Borrar desde línea actual hasta final del archivo
dgg                 Borrar desde línea actual hasta inicio del archivo
d2j                 Borrar línea actual y 2 líneas abajo
d}                  Borrar hasta el final del párrafo
d{                  Borrar hasta el inicio del párrafo
```

### Borrar Dentro de Delimitadores (Text Objects)

```
di"                 Borrar dentro de comillas dobles
di'                 Borrar dentro de comillas simples
di`                 Borrar dentro de backticks
di(  o  dib         Borrar dentro de paréntesis ()
di[                 Borrar dentro de corchetes []
di{  o  diB         Borrar dentro de llaves {}
di<                 Borrar dentro de < >
dit                 Borrar dentro de tags HTML <tag></tag>
da"                 Borrar incluyendo comillas dobles
da(  o  dab         Borrar incluyendo paréntesis ()
da[                 Borrar incluyendo corchetes []
da{  o  daB         Borrar incluyendo llaves {}
dat                 Borrar incluyendo tags HTML
```

### Borrar en Insert Mode

```
Ctrl-h              Borrar carácter antes del cursor (Backspace)
<Backspace>         Borrar carácter antes del cursor
<Delete>            Borrar carácter bajo el cursor
Ctrl-w              Borrar palabra antes del cursor
Ctrl-u              Borrar todo desde inicio de línea hasta cursor
```

### Unir Líneas (Join)

```
J                   Unir línea actual con la siguiente (con espacio)
gJ                  Unir línea actual con la siguiente (sin espacio)
NJ                  Unir N líneas
```

---

## 📋 COPIAR (YANK) Y PEGAR

### Copiar (Yank)

```
y{movimiento}       Copiar hasta donde llega el movimiento
yy                  Copiar línea completa
Y                   Copiar línea completa (mapeado a yy por defecto)
yw                  Copiar palabra
ye                  Copiar hasta el final de la palabra
yaw                 Copiar una palabra (incluyendo espacios)
yiw                 Copiar palabra interna (sin espacios)
y$                  Copiar desde cursor hasta final de línea
y0                  Copiar desde inicio de línea hasta cursor
yG                  Copiar desde línea actual hasta final del archivo
ygg                 Copiar desde línea actual hasta inicio del archivo
y}                  Copiar hasta el final del párrafo
yi"                 Copiar dentro de comillas dobles
yi(                 Copiar dentro de paréntesis
```

### Pegar (Put)

```
p                   Pegar después del cursor o debajo de la línea
P                   Pegar antes del cursor o encima de la línea
gp                  Pegar y mover cursor después del texto pegado
gP                  Pegar antes y mover cursor después del texto pegado
]p                  Pegar y ajustar indentación a la línea actual
[p                  Pegar antes y ajustar indentación a la línea actual
```

### Registros

```
"{registro}         Usar registro específico para próxima operación
"ayy                Copiar línea al registro 'a'
"ap                 Pegar contenido del registro 'a'
"0p                 Pegar último texto copiado (no borrado)
"1p                 Pegar último texto borrado
"+y                 Copiar al portapapeles del sistema
"+p                 Pegar desde portapapeles del sistema
"*y                 Copiar a la selección del sistema (X11)
"*p                 Pegar desde la selección del sistema
:reg                Mostrar contenido de todos los registros
:reg abc            Mostrar contenido de registros a, b, c
```

---

## 🔄 CAMBIAR Y REEMPLAZAR

### Cambiar (Change = Borrar + Insert Mode)

```
c{movimiento}       Cambiar hasta donde llega el movimiento
cc                  Cambiar línea completa
C                   Cambiar desde cursor hasta final de línea (igual que c$)
cw                  Cambiar palabra
ce                  Cambiar hasta el final de la palabra
ciw                 Cambiar palabra interna
caw                 Cambiar una palabra completa
ci"                 Cambiar dentro de comillas
ci(                 Cambiar dentro de paréntesis
ci{                 Cambiar dentro de llaves
cit                 Cambiar dentro de tags HTML
c$                  Cambiar hasta final de línea
c0                  Cambiar desde inicio de línea
```

### Reemplazar (Replace)

```
r{char}             Reemplazar un carácter bajo cursor con {char}
R                   Entrar en Replace Mode (sobrescribir)
gr{char}            Reemplazar virtual (no afecta layout)
gR                  Entrar en Virtual Replace Mode
```

### Sustituir (Substitute)

```
s                   Sustituir carácter bajo cursor (borrar y entrar Insert)
S                   Sustituir línea completa (igual que cc)
Ns                  Sustituir N caracteres
```

### Cambios de Mayúsculas/Minúsculas

```
~                   Invertir mayúscula/minúscula del carácter bajo cursor
N~                  Invertir mayús/minús de N caracteres
g~{movimiento}      Invertir mayús/minús del movimiento
g~~                 Invertir mayús/minús de la línea completa
gu{movimiento}      Convertir a minúsculas el movimiento
guu                 Convertir línea completa a minúsculas
gU{movimiento}      Convertir a MAYÚSCULAS el movimiento
gUU                 Convertir línea completa a MAYÚSCULAS
guiw                Convertir palabra a minúsculas
gUiw                Convertir palabra a MAYÚSCULAS
```

---

## 📐 INDENTACIÓN Y FORMATO

### Indentar

```
>>                  Indentar línea actual a la derecha
<<                  Indentar línea actual a la izquierda
N>>                 Indentar N líneas a la derecha
N<<                 Indentar N líneas a la izquierda
>{movimiento}       Indentar líneas del movimiento a la derecha
<{movimiento}       Indentar líneas del movimiento a la izquierda
>%                  Indentar bloque hasta el matching bracket
=%                  Auto-indentar bloque hasta el matching bracket
```

### Auto-indentación

```
==                  Auto-indentar línea actual
N==                 Auto-indentar N líneas
={movimiento}       Auto-indentar líneas del movimiento
gg=G                Auto-indentar todo el archivo
=ap                 Auto-indentar párrafo actual
=i{                 Auto-indentar dentro de bloque {}
```

### Indentar en Insert Mode

```
Ctrl-t              Indentar línea actual a la derecha
Ctrl-d              Indentar línea actual a la izquierda
0 Ctrl-d            Eliminar toda la indentación de la línea
^ Ctrl-d            Eliminar indentación, restaurar en próxima línea
```

### Formateo de Texto

```
gq{movimiento}      Formatear líneas del movimiento según textwidth
gqq                 Formatear línea actual
gqap                Formatear párrafo actual
gwip                Formatear párrafo y mantener posición del cursor
:ce [ancho]         Centrar líneas (center)
:le [indent]        Alinear a la izquierda (left)
:ri [ancho]         Alinear a la derecha (right)
```

---

## 👁️ MODO VISUAL (SELECCIÓN)

### Entrar en Visual Mode

```
v                   Visual Mode por carácter
V                   Visual Line Mode (líneas completas)
Ctrl-q              Visual Block Mode (bloque rectangular)
gv                  Re-seleccionar la última selección visual
```

### Navegación en Visual Mode

```
o                   Mover cursor al otro extremo de la selección
O                   Mover cursor al otro extremo (solo en Block Mode)
aw                  Seleccionar una palabra
iw                  Seleccionar palabra interna
as                  Seleccionar una sentencia
is                  Seleccionar sentencia interna
ap                  Seleccionar un párrafo
ip                  Seleccionar párrafo interno
ab o a(             Seleccionar un bloque ()
ib o i(             Seleccionar bloque interno ()
aB o a{             Seleccionar un bloque {}
iB o i{             Seleccionar bloque interno {}
at                  Seleccionar un tag block <tag></tag>
it                  Seleccionar tag interno
a" / a' / a`        Seleccionar incluyendo comillas
i" / i' / i`        Seleccionar dentro de comillas
```

### Operaciones en Visual Mode

```
d                   Borrar selección
y                   Copiar selección
c                   Cambiar selección (borrar y entrar Insert)
r{char}             Reemplazar todos los caracteres seleccionados con {char}
u                   Convertir selección a minúsculas
U                   Convertir selección a MAYÚSCULAS
~                   Invertir mayús/minús de selección
>                   Indentar selección a la derecha
<                   Indentar selección a la izquierda
=                   Auto-indentar selección
!{cmd}              Filtrar selección a través de comando externo
```

### Visual Block Mode (Ctrl-v)

```
I                   Insertar al inicio de todas las líneas del bloque
A                   Insertar al final de todas las líneas del bloque
c                   Cambiar bloque
r{char}             Reemplazar todos los caracteres del bloque con {char}
$                   Extender selección hasta final de cada línea
```

---

## 🔁 DESHACER Y REHACER

### Undo/Redo

```
u                   Deshacer último cambio (undo)
Ctrl-r              Rehacer cambio deshecho (redo)
U                   Deshacer todos los cambios en la línea actual
```

### Repetir

```
.                   Repetir último cambio realizado
@:                  Repetir último comando Ex
n.                  Repetir búsqueda y aplicar último cambio
```

### Historial de Cambios

```
:earlier 10m        Volver al estado de hace 10 minutos
:earlier 5          Deshacer 5 cambios
:later 10m          Ir al estado de dentro de 10 minutos
:later 5            Rehacer 5 cambios
:undolist           Mostrar árbol de cambios
```

---

## 💾 GESTIÓN DE ARCHIVOS

### Abrir y Guardar Archivos

```
:e archivo.txt      Editar archivo
:e!                 Recargar archivo actual descartando cambios
:e .                Abrir explorador de archivos en directorio actual
:e #                Editar archivo alternativo
:enew               Crear nuevo buffer sin nombre
:w                  Guardar archivo
:w archivo.txt      Guardar como nuevo archivo
:w!                 Forzar guardar (sobreescribir archivo solo-lectura)
:wa                 Guardar todos los buffers abiertos
:sav archivo.txt    Guardar como y continuar editando nuevo archivo
```

### Guardar y Salir

```
:q                  Salir (falla si hay cambios sin guardar)
:q!                 Salir sin guardar cambios
:wq                 Guardar y salir
:wq!                Forzar guardar y salir
:x                  Guardar (solo si hay cambios) y salir
ZZ                  Guardar y salir (igual que :x)
ZQ                  Salir sin guardar (igual que :q!)
:qa                 Salir de todos los buffers
:qa!                Salir de todos sin guardar
:wqa                Guardar todos y salir
```

### Leer e Insertar Archivos

```
:r archivo.txt      Insertar contenido de archivo debajo del cursor
:r !comando         Insertar salida de comando debajo del cursor
:0r archivo.txt     Insertar contenido al inicio del buffer
:$r archivo.txt     Insertar contenido al final del buffer
```

### Información de Archivos

```
Ctrl-g              Mostrar información del archivo (nombre, línea, %)
:f  o  :file        Mostrar información del archivo actual
:f nuevo.txt        Cambiar nombre del buffer actual
:pwd                Mostrar directorio actual de trabajo
:cd ruta            Cambiar directorio de trabajo
:cd -               Volver al directorio anterior
:cd ~               Ir al directorio home
```

---

## 🗂️ BUFFERS

### Gestión de Buffers

```
:ls                 Listar todos los buffers
:buffers            Listar todos los buffers (igual que :ls)
:files              Listar todos los buffers (igual que :ls)
:b N                Ir al buffer número N
:b archivo          Ir al buffer que contiene 'archivo' en su nombre
:bn                 Ir al siguiente buffer
:bp                 Ir al buffer anterior
:bf                 Ir al primer buffer
:bl                 Ir al último buffer
:ball               Abrir todos los buffers en ventanas
Ctrl-^              Alternar entre buffer actual y buffer alternativo
:bd                 Cerrar buffer actual (buffer delete)
:bd N               Cerrar buffer número N
:bd archivo         Cerrar buffer por nombre
:bw                 Borrar buffer y su información (buffer wipe)
:%bd                Cerrar todos los buffers
```

### Estados de Buffers

Símbolos en `:ls`:
- `%` = buffer actual
- `#` = buffer alternativo
- `a` = activo (buffer cargado y visible)
- `h` = oculto (buffer cargado pero no visible)
- `+` = modificado
- `-` = no modificable
- `=` = solo lectura

---

## 🪟 VENTANAS (WINDOWS)

### Dividir Ventanas

```
:split              Split horizontal
:sp                 Split horizontal (abreviado)
:sp archivo         Split horizontal y abrir archivo
:vsplit             Split vertical
:vs                 Split vertical (abreviado)
:vs archivo         Split vertical y abrir archivo
Ctrl-w s            Split horizontal
Ctrl-w v            Split vertical
Ctrl-w n            Crear nueva ventana horizontal con buffer vacío
:new                Nueva ventana horizontal con buffer vacío
:vnew               Nueva ventana vertical con buffer vacío
```

### Navegar Entre Ventanas

```
Ctrl-w h            Ir a ventana de la izquierda
Ctrl-w j            Ir a ventana de abajo
Ctrl-w k            Ir a ventana de arriba
Ctrl-w l            Ir a ventana de la derecha
Ctrl-w w            Ciclar a la siguiente ventana
Ctrl-w W            Ciclar a la ventana anterior
Ctrl-w t            Ir a la ventana superior izquierda (top)
Ctrl-w b            Ir a la ventana inferior derecha (bottom)
Ctrl-w p            Ir a la ventana previa (previous)
```

### Mover Ventanas

```
Ctrl-w H            Mover ventana actual al extremo izquierdo
Ctrl-w J            Mover ventana actual al extremo inferior
Ctrl-w K            Mover ventana actual al extremo superior
Ctrl-w L            Mover ventana actual al extremo derecho
Ctrl-w r            Rotar ventanas hacia abajo/derecha
Ctrl-w R            Rotar ventanas hacia arriba/izquierda
Ctrl-w x            Intercambiar ventana actual con la siguiente
```

### Redimensionar Ventanas

```
Ctrl-w =            Igualar tamaño de todas las ventanas
Ctrl-w +            Aumentar altura de ventana actual
Ctrl-w -            Disminuir altura de ventana actual
Ctrl-w >            Aumentar ancho de ventana actual
Ctrl-w <            Disminuir ancho de ventana actual
Ctrl-w _            Maximizar altura de ventana actual
Ctrl-w |            Maximizar ancho de ventana actual
:res +N             Aumentar altura N líneas
:res -N             Disminuir altura N líneas
:res N              Establecer altura en N líneas
:vertical res +N    Aumentar ancho N columnas
:vertical res -N    Disminuir ancho N columnas
:vertical res N     Establecer ancho en N columnas
```

### Cerrar Ventanas

```
Ctrl-w q            Cerrar ventana actual (quit)
Ctrl-w c            Cerrar ventana actual (close)
:q                  Cerrar ventana actual
:close              Cerrar ventana actual
Ctrl-w o            Cerrar todas las ventanas excepto la actual (only)
:only               Cerrar todas las ventanas excepto la actual
```

---

## 📑 TABS (PESTAÑAS)

### Gestión de Tabs

```
:tabnew             Crear nueva pestaña vacía
:tabe               Crear nueva pestaña vacía (tabedit)
:tabe archivo       Abrir archivo en nueva pestaña
:tabnew archivo     Abrir archivo en nueva pestaña
:tab split          Abrir buffer actual en nueva pestaña
:tab ball           Abrir todos los buffers en tabs
:tabs               Listar todas las pestañas
```

### Navegar Entre Tabs

```
gt                  Ir a la siguiente pestaña
gT                  Ir a la pestaña anterior
Ngt                 Ir a la pestaña número N
:tabn               Ir a la siguiente pestaña (tabnext)
:tabp               Ir a la pestaña anterior (tabprevious)
:tabfirst           Ir a la primera pestaña
:tabrewind          Ir a la primera pestaña
:tablast            Ir a la última pestaña
```

### Mover Tabs

```
:tabm N             Mover pestaña actual a posición N
:tabm +N            Mover pestaña N posiciones a la derecha
:tabm -N            Mover pestaña N posiciones a la izquierda
:tabm 0             Mover pestaña al inicio
:tabm               Mover pestaña al final
```

### Cerrar Tabs

```
:tabc               Cerrar pestaña actual (tabclose)
:tabo               Cerrar todas las pestañas excepto actual (tabonly)
:tabclose N         Cerrar pestaña número N
```

---

## 🔍 BUSCAR Y REEMPLAZAR

### Comando Substitute (Reemplazar)

```
:s/viejo/nuevo/         Reemplazar primera ocurrencia en línea actual
:s/viejo/nuevo/g        Reemplazar todas las ocurrencias en línea actual
:s/viejo/nuevo/gc       Reemplazar con confirmación en línea actual
:s/viejo/nuevo/gi       Reemplazar ignorando mayús/minús en línea
:%s/viejo/nuevo/g       Reemplazar en todo el archivo
:%s/viejo/nuevo/gc      Reemplazar en todo el archivo con confirmación
:%s/viejo/nuevo/gn      Contar coincidencias sin reemplazar
:10,20s/viejo/nuevo/g   Reemplazar en líneas 10 a 20
:.,$s/viejo/nuevo/g     Reemplazar desde línea actual hasta el final
:.,+5s/viejo/nuevo/g    Reemplazar en línea actual y 5 siguientes
:'<,'>s/viejo/nuevo/g   Reemplazar en selección visual
:g/patrón/s/viejo/nuevo/g  Reemplazar en líneas que coincidan con patrón
```

### Flags del Substitute

- `g` = global (todas las ocurrencias en la línea)
- `c` = confirmar cada sustitución
- `i` = ignorar mayúsculas/minúsculas
- `I` = no ignorar mayúsculas/minúsculas
- `n` = contar coincidencias sin reemplazar
- `e` = no mostrar error si no hay coincidencias
- `&` = usar flags de la sustitución anterior

### Repetir Sustitución

```
&                   Repetir última sustitución en línea actual
g&                  Repetir última sustitución en todo el archivo
:s                  Repetir última sustitución en línea actual
:&                  Repetir última sustitución en línea actual
:%&g                Repetir última sustitución en todo el archivo
```

### Patrones Especiales en Reemplazos

```
\0  o  &            Texto completo que coincidió
\1, \2, ...         Grupos capturados con \( \)
\u                  Convertir siguiente carácter a MAYÚSCULA
\U                  Convertir todo hasta \E a MAYÚSCULAS
\l                  Convertir siguiente carácter a minúscula
\L                  Convertir todo hasta \E a minúsculas
\E                  Fin de conversión \U o \L
~                   Usar cadena de reemplazo anterior
\r                  Insertar nueva línea
\t                  Insertar tabulación
\n                  Buscar nueva línea
```

---

## 🎬 MACROS

### Grabar y Ejecutar Macros

```
q{letra}            Empezar a grabar macro en registro {letra}
q                   Detener grabación de macro
@{letra}            Ejecutar macro del registro {letra}
@@                  Repetir última macro ejecutada
N@{letra}           Ejecutar macro N veces
:@{letra}           Ejecutar macro como comando Ex
:@@                 Repetir última macro Ex
```

### Editar Macros

```
:let @a='...'       Definir macro en registro 'a' manualmente
"ap                 Pegar macro del registro 'a' para editarla
"ay$                Copiar línea editada de vuelta al registro 'a'
:reg a              Ver contenido del registro 'a'
```

---

## 🔢 INCREMENTAR Y DECREMENTAR

```
Ctrl-a              Incrementar número bajo el cursor
Ctrl-x              Decrementar número bajo el cursor
N Ctrl-a            Incrementar número N veces
N Ctrl-x            Decrementar número N veces
g Ctrl-a            (Visual) Incrementar números en secuencia
g Ctrl-x            (Visual) Decrementar números en secuencia
```

Formatos de números reconocidos:
- Decimal: `42`
- Hexadecimal: `0x2A`
- Octal: `052` (si 'nrformats' incluye 'octal')
- Binario: `0b101010` (si 'nrformats' incluye 'bin')

---

## 📄 TERMINAL INTEGRADO

### Abrir Terminal

```
:terminal           Abrir terminal en ventana actual
:term               Abrir terminal (abreviado)
:split | term       Terminal en split horizontal
:vsplit | term      Terminal en split vertical
:tabnew | term      Terminal en nueva pestaña
```

### Controlar Terminal

```
Ctrl-\ Ctrl-n       Salir del modo Terminal a Normal mode
i  o  a             Volver al modo Terminal desde Normal
:tnoremap           Crear mapeos para modo Terminal
```

### Enviar Comandos al Terminal

Desde Normal mode en el buffer del terminal:

```
"{registro}p        Pegar contenido del registro en el terminal
```

---

## 🔧 COMANDOS EX (COMMAND MODE)

### Rangos en Comandos

```
:N                  Línea número N
:.                  Línea actual
:$                  Última línea del archivo
:%                  Todo el archivo (equivalente a :1,$)
:'<,'>              Selección visual
:10,20              Líneas 10 a 20
:.,.+5              Línea actual y 5 siguientes
:.,+10              Desde línea actual hasta 10 líneas adelante
:.,$                Desde línea actual hasta el final
:-5,.               Desde 5 líneas antes hasta línea actual
:/patron/           Línea donde aparece 'patron'
:?patron?           Línea donde aparece 'patron' (hacia atrás)
:'a,'b              Desde marca 'a' hasta marca 'b'
```

### Comandos sobre Rangos

```
:d                  Borrar líneas del rango
:y                  Copiar líneas del rango
:t N  o  :co N      Copiar líneas después de línea N
:m N                Mover líneas después de línea N
:>                  Indentar líneas a la derecha
:<                  Indentar líneas a la izquierda
:norm comando       Ejecutar comando Normal en cada línea del rango
```

### Edición de Línea de Comandos

```
Ctrl-b              Ir al inicio de la línea de comandos
Ctrl-e              Ir al final de la línea de comandos
Ctrl-h              Borrar carácter anterior (Backspace)
Ctrl-w              Borrar palabra anterior
Ctrl-u              Borrar toda la línea de comandos
Ctrl-r "            Insertar contenido del registro
Ctrl-r Ctrl-w       Insertar palabra bajo el cursor
Ctrl-r Ctrl-a       Insertar PALABRA bajo el cursor
↑  o  Ctrl-p        Comando anterior en historial
↓  o  Ctrl-n        Comando siguiente en historial
Ctrl-f              Abrir ventana de historial de comandos
q:                  Abrir ventana de historial de comandos
```

### Historial

```
:history            Mostrar historial de comandos
:his                Mostrar historial de comandos (abreviado)
:history /          Mostrar historial de búsquedas
@:                  Repetir último comando Ex
```

### Autocompletado en Command Mode

```
Tab                 Autocompletar comando/archivo
Ctrl-d              Listar todas las opciones de autocompletado
Ctrl-a              Insertar todas las coincidencias
Ctrl-n              Siguiente coincidencia
Ctrl-p              Coincidencia anterior
Ctrl-l              Completar la parte común de las coincidencias
```

---

## 🎨 OPCIONES Y CONFIGURACIÓN

### Ver y Establecer Opciones

```
:set                Mostrar opciones no predeterminadas
:set all            Mostrar todas las opciones
:set opcion?        Ver valor de opción
:set opcion         Activar opción booleana
:set noopcion       Desactivar opción booleana
:set opcion!        Invertir opción booleana
:set opcion&        Restaurar opción a valor por defecto
:set opcion=valor   Establecer valor de opción
:set opcion+=valor  Añadir valor a opción
:set opcion-=valor  Quitar valor de opción
:setlocal opcion    Establecer opción solo para buffer actual
:setglobal opcion   Establecer opción globalmente
```

### Opciones Esenciales (algunas ya mencionadas)

```
:set number         Mostrar números de línea
:set nonumber       Ocultar números de línea
:set relativenumber Números de línea relativos
:set ignorecase     Ignorar mayús/minús en búsquedas
:set smartcase      Case-sensitive si hay mayúsculas
:set hlsearch       Resaltar coincidencias de búsqueda
:set incsearch      Búsqueda incremental
:set nowrap         No ajustar líneas largas
:set list           Mostrar caracteres invisibles
:set expandtab      Usar espacios en vez de tabs
:set tabstop=4      Ancho de tabulación
:set shiftwidth=4   Ancho de indentación
:set autoindent     Mantener indentación
:set mouse=a        Habilitar ratón
:set clipboard=unnamedplus  Usar portapapeles del sistema
```

---

## 🆘 AYUDA

```
:help               Abrir ayuda general
:h comando          Ayuda sobre comando específico
:h opcion           Ayuda sobre opción (ej: :h 'number')
:h CTRL-W           Ayuda sobre tecla especial
:h i_CTRL-R         Ayuda sobre tecla en Insert mode
:h v_d              Ayuda sobre comando en Visual mode
:h :substitute      Ayuda sobre comando Ex
:h patrón           Buscar en la ayuda
Ctrl-]              Seguir enlace en ayuda
Ctrl-t              Volver atrás en ayuda
:helpgrep patrón    Buscar patrón en todos los archivos de ayuda
:cn                 Siguiente resultado de helpgrep
:cp                 Resultado anterior de helpgrep
```

---

## 🔌 COMANDOS VARIOS

### Sistema y Shell

```
:!comando           Ejecutar comando de shell
:!!                 Repetir último comando de shell
:r !comando         Insertar salida de comando en buffer
:w !comando         Enviar buffer como entrada a comando
:[rango]!comando    Filtrar líneas a través de comando
:shell              Abrir shell temporal
```

### Información y Diagnóstico

```
:version            Mostrar versión de Neovim y configuración
:messages           Mostrar historial de mensajes
:echo expresión     Evaluar y mostrar expresión
:echom expresión    Mostrar mensaje guardado en historial
```

### Miscelánea

```
.                   Repetir último cambio
;                   Repetir último movimiento f, t, F, T
,                   Repetir último movimiento f, t, F, T (reversa)
K                   Buscar palabra bajo cursor con 'keywordprg' (man)
gf                  Ir a archivo cuyo nombre está bajo el cursor
gx                  Abrir URL bajo el cursor
Ctrl-a              Incrementar número
Ctrl-x              Decrementar número
Ctrl-c              Interrumpir operación en curso
Ctrl-z              Suspender Neovim (fg para volver)
Ctrl-l              Redibujar pantalla
```

---

## 📊 QUICKFIX Y LOCATION LIST

```
:make               Ejecutar make y cargar errores
:grep patrón        Ejecutar grep y cargar resultados
:copen              Abrir ventana quickfix
:cclose             Cerrar ventana quickfix
:cc N               Ir al error número N
:cnext  o  :cn      Ir al siguiente error
:cprevious  o  :cp  Ir al error anterior
:cfirst             Ir al primer error
:clast              Ir al último error
:clist              Listar todos los errores
:colder             Ir a lista de errores anterior
:cnewer             Ir a lista de errores más reciente
:lopen              Abrir location list
:lclose             Cerrar location list
:ll N               Ir a ubicación N
:lnext  o  :ln      Siguiente ubicación
:lprevious  o  :lp  Ubicación anterior
```

---

## 💡 TRUCOS Y CONSEJOS

### Combinaciones Útiles

```
ciw                 Cambiar palabra bajo cursor (muy usado)
ci"                 Cambiar dentro de comillas
di{                 Borrar dentro de llaves
yap                 Copiar párrafo
dap                 Borrar párrafo
=ap                 Auto-indentar párrafo
ggyG                Copiar todo el archivo
ggdG                Borrar todo el archivo
:%y+                Copiar todo al portapapeles
ggVG                Seleccionar todo el archivo
*cgn                Buscar palabra y cambiar siguiente (repetir con .)
```

### Números antes de Comandos

Casi todos los comandos aceptan un número antes:

```
5j                  Bajar 5 líneas
3dd                 Borrar 3 líneas
4yy                 Copiar 4 líneas
2w                  Avanzar 2 palabras
10>>                Indentar 10 líneas
```

---

Este documento contiene todos los atajos y comandos por defecto de Neovim, sin necesidad de configuración adicional ni plugins.
