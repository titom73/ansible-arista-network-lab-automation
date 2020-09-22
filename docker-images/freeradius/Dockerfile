FROM freeradius/freeradius-server:latest
COPY raddb/ /etc/raddb/
COPY dictionaries/dictionary.arista /usr/share/freeradius/
RUN echo '$INCLUDE dictionary.arista' >> /usr/share/freeradius/dictionary