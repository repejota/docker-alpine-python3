[![Docker Stars](https://img.shields.io/docker/stars/repejota/alpine-python3.svg?style=flat-square)](https://hub.docker.com/r/repejota/alpine-python3/)
[![Docker Pulls](https://img.shields.io/docker/pulls/repejota/alpine-python3.svg?style=flat-square)](https://hub.docker.com/r/repejota/alpine-python3/)


Python 3.6 Docker Alpine image
==============================

This image is based on Alpine Linux image, which is only a 5MB image, and contains
[Python 3.6](https://www.python.org/).

Download size of this image is only:

[![](https://images.microbadger.com/badges/image/repejota/alpine-python3.svg)](http://microbadger.com/images/repejota/alpine-python3 "Get your own image badge on microbadger.com")


Usage:
------

```bash
$ docker run --rm repejota/alpine-python3 python3 -c 'print("Foo bar")'
```

**NOTE:** `pip`/`pip3` is also available in this image.