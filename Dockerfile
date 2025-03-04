FROM odoo:18

ENV TEST_ENABLE=False
ENV LOG_LEVEL=info
ENV WITHOUT_DEMO=False

COPY config /etc/odoo
COPY modules /mnt/extra-addons

EXPOSE 8069

# This works fine; Odoo will pick up PGHOST, PGPORT, etc. from environment
CMD ["odoo", "--http-port", "8069"]
