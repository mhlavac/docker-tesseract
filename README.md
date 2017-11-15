# Tesseract Runtime with additional languages

tesseractshadow/tesseract4re with few additional languages and handy aliases

How to use:

## Examples

ocr: following command will convert my_document.pdf to text files pages_000.txt, pages_001.txt etc...
```
docker run --rm -it --network none -v $PWD:/home/work mhlavac/docker-tesseract ocr my_document.pdf deu+ces+eng 
```

ocr-deu: same as above but for deu
```
docker run --rm -it --network none -v $PWD:/home/work mhlavac/docker-tesseract ocr-deu my_document.pdf 
```

image2text-deu: same as above but for image, this will generate output.txt
```
docker run --rm -it --network none -v $PWD:/home/work mhlavac/docker-tesseract pdf2text-deu my_document.png output 
```

## Set up an aliases

You can get even faster if you use aliases for your own machine

```
alias ocr-deu='docker run --rm -it --network none -v $PWD:/home/work mhlavac/docker-tesseract ocr-deu'
alias ocr-ces='docker run --rm -it --network none -v $PWD:/home/work mhlavac/docker-tesseract ocr-ces'
alias ocr-eng='docker run --rm -it --network none -v $PWD:/home/work mhlavac/docker-tesseract ocr-eng'
alias image2text-deu='docker run --rm -it --network none -v $PWD:/home/work mhlavac/docker-tesseract image2text-deu'
alias image2text-ces='docker run --rm -it --network none -v $PWD:/home/work mhlavac/docker-tesseract image2text-ces'
alias image2text-eng='docker run --rm -it --network none -v $PWD:/home/work mhlavac/docker-tesseract image2text-eng'
```
