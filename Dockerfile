FROM odoo:18

ENV TEST_ENABLE=False
ENV LOG_LEVEL=info
ENV WITHOUT_DEMO=False

# Add these environment variables to match your render.yaml
ENV DB_HOST=dpg-cv3djqin91rc739ernr0-a
ENV DB_PORT=5432
ENV DB_USER=mytestdb_aa42_user
ENV DB_PASSWORD=S3D3y1nOjq8PqnnfbQDyTSuvPTrPeZjm
ENV DB_NAME=mytestdb_aa42

COPY config /etc/odoo
COPY modules /mnt/extra-addons

EXPOSE 8069
# Explicitly specify the database name
CMD ["odoo", "--database", "mytestdb_aa42", "-i", "base", "--http-port", "8069"]