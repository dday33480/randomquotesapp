from django.contrib import admin

from .models import Quote, QuoteCategory

class QuoteTableAdmin(admin.ModelAdmin):
    list_display = ('category', 'quote_author', 'quote_text')
    list_filter = ['category']

admin.site.register(Quote, QuoteTableAdmin)


