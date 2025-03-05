{
    'name': 'Custom Login Redirect',
    'version': '1.0',
    'category': 'Authentication',
    'summary': 'Redirect all authenticated users to /odoo',
    'description': """
        This module overrides the default login redirect behavior
        to ensure all users are directed to /odoo
    """,
    'author': ' Kareem ',
    'depends': ['web', 'portal'],
    'data': [],
    'installable': True,
    'application': False,
    'auto_install': False,
}
