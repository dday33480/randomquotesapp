from django.db import models

class QuoteCategory(models.Model):
    category = models.CharField(max_length=50)

    def __str__(self) -> str:
        return self.category



class Quote(models.Model):
    category = models.ForeignKey('QuoteCategory', on_delete=models.CASCADE, default=1)
    quote_text = models.CharField(max_length=900)
    quote_author = models.CharField(max_length=50)
    quote_year = models.IntegerField()
    pub_date = models.DateTimeField("date published")

    def __str__(self) -> str:
        return self.quote_text