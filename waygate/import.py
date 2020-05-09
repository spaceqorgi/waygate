from map.models import Book, Choice
import pandas as pd

data = pd.read_csv('data/chapters.csv', sep='|')

b1 = Book.objects.get(book_number=1)
b1

for d in data.itertuples():
    c = Chapter(book=b1,chapter_number=d[2],chapter_name=d[3],period=d[4],summary=d[5])
    c.save()
    c
