FROM odoo:18

ENV TEST_ENABLE=False
ENV LOG_LEVEL=info
ENV WITHOUT_DEMO=False

COPY config /etc/odoo
COPY modules /mnt/extra-addons

EXPOSE 8069
CMD ["odoo", "-i", "base", "--http-port", "${PORT:-8069}"]
