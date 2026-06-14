#!/bin/bash

OUTPUT_DIR="./dist"
mkdir -p "$OUTPUT_DIR"

if [ -n "$1" ]; then
    EPUB_NAME="el-corazon-del-rey-$1.epub"
else
    EPUB_NAME="el-corazon-del-rey-$(date +'%Y%m%d-%H%M%S').epub"
fi

echo "Creando: $OUTPUT_DIR/$EPUB_NAME"

if [ ! -d "./book" ]; then
    echo "Error: No existe carpeta 'book'"
    exit 1
fi

cd book

zip -0 -X "../$OUTPUT_DIR/$EPUB_NAME" mimetype
zip -9 -X -r "../$OUTPUT_DIR/$EPUB_NAME" META-INF OEBPS -x mimetype

cd ..

echo "Listo: $OUTPUT_DIR/$EPUB_NAME"
