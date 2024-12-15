FROM ghcr.io/cloudnative-pg/postgresql:17.0
USER root
RUN groupadd -g 1000 duser
RUN useradd -g duser -u 1000 -G postgres,ssl-cert duser
RUN chown -R duser:duser /var/run/postgresql
RUN chown -R duser:duser /var/lib/postgresql
USER duser