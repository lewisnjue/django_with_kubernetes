import os
import pathlib
import dotenv
CURRECT_DIR = pathlib.Path(__file__).resolve().parent
BASE_DIR = CURRECT_DIR.parent
ENV_FILE_PATH = BASE_DIR / '.env'
dotenv.load_dotenv()
#dotenv.read_dotenv(str(ENV_FILE_PATH))
from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'lewishome.settings')

application = get_wsgi_application()
