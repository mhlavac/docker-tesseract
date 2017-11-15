# Tesseract OCR Runtime Environment - Docker Container
# with deu, ces and helpful aliases
FROM tesseractshadow/tesseract4re

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y tesseract-ocr tesseract-ocr-deu tesseract-ocr-ces imagemagick && \

COPY ocr /bin/ocr
COPY ocr-ces /bin/ocr-ces
COPY ocr-deu /bin/ocr-deu
COPY ocr-eng /bin/ocr-eng
COPY image2text-ces /bin/image2text-ces
COPY image2text-deu /bin/image2text-deu
COPY image2text-eng /bin/image2text-eng

WORKDIR /home/work
