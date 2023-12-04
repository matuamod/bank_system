from django.apps import AppConfig

class BankAppConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'bank_app'
    
    def ready(self):
        from bank_app import signals