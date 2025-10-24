ARG BUILD_FROM
FROM ghcr.io/dvp-coms/karaokeforeverHA:latest
FROM $BUILD_FROM

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
