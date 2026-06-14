# El corazón del Rey (Rey 3)

**Autora original:** Karine Bernal Lobo

Este libro fue descargado originalmente desde [wattpaddownload.com](https://wattpaddownload.com/212554798/el-coraz-n-del-rey-rey-3-versi-n-desactualizada).

La historia original en [Wattpad](https://www.wattpad.com/858681662-el-coraz%C3%B3n-del-rey-rey-3-versi%C3%B3n-desactualizada) tiene una ortografía que duele a la vista. Esta versión corregida nació para evitar que le duelan los ojos a mi novia y ahorrarle el estrés de leer errores constantes.

Las correcciones ortográficas fueron realizadas automáticamente usando **DeepSeek** como autor de las correcciones.

## Herramienta: codepicker

Este flujo de trabajo utiliza [codepicker](https://github.com/rodnye/codepicker), una CLI bidireccional que convierte código en Markdown estructurado y viceversa, diseñada específicamente para trabajar con LLMs.

## Flujo de corrección

1. Extraer el contenido de los capítulos a corregir:

   ```bash
   codepicker "book/OEBPS/chapter_{1..10}.xhtml" -cD
   ```

2. Pegar la salida en DeepSeek y pedirle que corrija la ortografía, respondiendo en formato **Codepick**.

3. Aplicar las correcciones devueltas por DeepSeek:

   ```bash
   codepicker apply -c
   ```

4. Formatear los archivos XML resultantes:
   ```bash
   pnpm format
   ```

Repetir el proceso para cada bloque de capítulos. Una vez corregidos todos, el EPUB se empaqueta automáticamente mediante el GitHub workflow incluido.

> [!note]
> Este mismo flujo se puede complementar para cualquier tipo de edición/traducción de libros en formato EPUB. codepicker permite extraer cualquier conjunto de archivos, pedir modificaciones a un LLM y aplicarlas de vuelta de forma estructurada.
