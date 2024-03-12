from django.db import models

class Quote(models.Model):
    quote_text = models.CharField(max_length=900)
    quote_author = models.CharField(max_length=50)
    quote_year = models.IntegerField()
    pub_date = models.DateTimeField("date published")

    def __str__(self) -> str:
        return self.quote_text
