ARG BUILD_FROM
FROM $BUILD_FROM

RUN npm install
RUN npm run build

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
