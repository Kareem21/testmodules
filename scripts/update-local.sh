#!/bin/bash
# This script updates the local Odoo environment with latest changes

# Navigate to project root (where this script should be run from)
cd "$(dirname "$0")/.."

# Pull latest changes from git
git pull

# Check if we want to run tests
if [ "$1" = "test" ]; then
  export TEST_ENABLE=True
  export LOG_LEVEL=test
  export ODOO_COMMAND="-- --test-enable --stop-after-init -d test_db -i all"
  echo "Running in test mode..."
else
  # Normal run mode
  export TEST_ENABLE=False
  export ODOO_COMMAND=""
  echo "Running in normal mode..."
fi

# Restart the containers with the latest code
docker-compose down
docker-compose up -d

echo "Environment updated and restarted!"
if [ "$TEST_ENABLE" = "True" ]; then
  # Follow logs when testing
  docker-compose logs -f odoo
else
  echo "Odoo is available at http://localhost:8069"
fi