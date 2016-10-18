FROM risingstack/alpine:3.3-v5.5.0-1.1.3

ENV PARSE_HOME /parse

COPY package.json ${PARSE_HOME}/package.json

COPY server ${PARSE_HOME}/server
COPY scripts ${PARSE_HOME}/scripts

WORKDIR $PARSE_HOME
RUN npm install

CMD ["npm","start"]