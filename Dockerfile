# Tesseract OCR Runtime Environment - Docker Container
# with deu, ces and helpful aliases
FROM tesseractshadow/tesseract4re

COPY bashrc_add /tmp/basrc_add
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y tesseract-ocr tesseract-ocr-deu tesseract-ocr-ces imagemagick && \
    cat /tmp/basrc_add >> ~/.bashrc

WORKDIR /home/work
