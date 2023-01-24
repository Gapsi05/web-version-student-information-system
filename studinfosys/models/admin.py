from . import cursor
from werkzeug.security import check_password_hash

class Admin():
    def __init__(
        self,
        username: str = None,
        password: str = None,
        password2: str = None) -> None:

        self.username = username
        self.password = password
        self.password2 = password2

    
    def registered_user(self) -> bool:
        return True
