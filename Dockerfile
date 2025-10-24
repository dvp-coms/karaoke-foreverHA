ARG BUILD_FROM
FROM https://hub.docker.com/r/radrootllc/karaoke-eternal:latest
FROM $BUILD_FROM

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
