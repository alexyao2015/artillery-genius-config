ARG MARLIN_VERSION=2.0.9.2
FROM python:3.9.0-buster

RUN pip install platformio

WORKDIR /marlin

RUN git clone https://github.com/MarlinFirmware/Marlin.git . \
    && git checkout ${MARLIN_VERSION}

# Copy config files to git directory
COPY root .

CMD ["pio", "run"]

# .pio/build/mega2560/firmware.hex