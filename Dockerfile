# Use the official Odoo 18.1 image
FROM odoo:18

# Set any default environment variables as needed
# You can override these in Render's "Environment" settings
ENV HOST=postgres
ENV USER=odoo
ENV PASSWORD=secret
ENV TEST_ENABLE=False
ENV LOG_LEVEL=info
ENV WITHOUT_DEMO=False

# Copy your Odoo config (if any)
COPY config /etc/odoo

# Copy your custom modules (if any)
COPY modules /mnt/extra-addons

# Expose Odoo's default port
EXPOSE 8069

# Start Odoo (optionally specify --http-port if you need to listen on a dynamic port)
CMD ["odoo", "--http-port", "8069"]
