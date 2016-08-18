FROM docker:latest

RUN apk add --no-cache --update \
        musl \
        python3 \
        bash \
        git \
    && python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --upgrade pip setuptools \
    && rm -r /root/.cache \
    && rm -rf /var/cache/apk/* \
    && cd /usr/bin \
    && ln -sf easy_install-3 easy_install \
    && ln -sf idle3 idle \
    && ln -sf pydoc3 pydoc \
    && ln -sf python3 python \
    && ln -sf python-config3 python-config \
    && ln -sf pip3 pip
    