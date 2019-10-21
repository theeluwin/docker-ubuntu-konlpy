# docker-ubuntu-konlpy
Docker image of latest Ubuntu for KoNLPy on Python 3.

```bash
$ docker pull theeluwin/ubuntu-konlpy:latest
```

## Build

```bash
$ docker build -t konlpy -f Dockerfile .
```

or,

```bash
$ ./build.sh
```

## Run

```bash
$ docker run --rm -it konlpy
```

```python
from konlpy.tag import Mecab, Kkma, Okt
mecab = Mecab()
kkma = Kkma()
okt = Okt()
mecab.pos("안녕 친구들")
kkma.pos("안녕 친구들")
okt.pos("안녕 친구들")
# all works fine
```
