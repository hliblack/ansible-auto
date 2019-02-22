import sys
import os

sys.stdout = sys.stderr

# put here your ENV variables
# here is an example with multiple instances
os.environ['TRAC_ENV_PARENT_DIR'] = '/data/wwwroot/'
os.environ['PYTHON_EGG_CACHE'] = '/data/www/tracroot/.eggs/'

import trac.web.main
from trac.web.standalone import AuthenticationMiddleware
from trac.web.main import dispatch_request
from trac.web.auth import BasicAuthentication

def application(environ, start_application):
    auth = {"*" : BasicAuthentication("/etc/nginx/conf.d/users", "admin")}
    wsgi_app = AuthenticationMiddleware(dispatch_request, auth)
    return wsgi_app(environ, start_application)