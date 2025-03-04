FROM odoo:18

# Remove or comment out these defaults, since we’ll rely on PGHOST/PGPORT/PGUSER/PGPASSWORD/PGDATABASE from Render
# ENV HOST=postgres
# ENV USER=odoo
# ENV PASSWORD=secret
ENV TEST_ENABLE=False
ENV LOG_LEVEL=info
ENV WITHOUT_DEMO=False

COPY config /etc/odoo
COPY modules /mnt/extra-addons

EXPOSE 8069

# This works fine; Odoo will pick up PGHOST, PGPORT, etc. from environment
CMD ["odoo", "--http-port", "8069"]
