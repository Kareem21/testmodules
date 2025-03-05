from odoo.addons.web.controllers.home import Home as WebHome

class Home(WebHome):
    def _login_redirect(self, uid, redirect=None):
        return '/odoo'
