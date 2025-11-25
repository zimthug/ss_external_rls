import logging
import os

logger = logging.getLogger()

SQLALCHEMY_DATABASE_URI = os.environ.get("SUPERSET_DATABASE_URI")

SUPERSET_LOAD_EXAMPLES = False

# Feature flags
FEATURE_FLAGS = {
    "ENABLE_TEMPLATE_PROCESSING": True,
    "DASHBOARD_RBAC": True,
    "SCHEMA_PERMISSIONS": True,
    "ALERT_REPORTS": True,
    "ALERT_REPORTS_V2": True,
}

HTML_SANITIZATION_SCHEMA_EXTENSIONS = {
    "attributes": {
        "*": ["class", "style", "className"]
    },
    "tagNames": ["style"]
}

DEBUG = True
