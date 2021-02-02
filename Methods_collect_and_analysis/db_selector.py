from pymongo import MongoClient
from pprint import pprint
client = MongoClient('localhost', 27017)
db = client['instadb']
users = db.instagramcom

class MongoDB():
    @classmethod
    def select_followers(cls, name):
        for user in users.find({'$and': [{'name': name, 'status': 'followers'}]}):
            pprint(user)

    @classmethod
    def select_followed_by(cls, name):
        for user in users.find({'$and': [{'name': name, 'status': 'followed_by'}]}):
            pprint(user)

name = input('Enter username: ')
mongo_db = MongoDB()
print('''Выберите пункт меню:
            1. Показать подписчиков
            2. Показать подписки
            0. Выйти
''')
menu = int(input('Enter number: '))
try:
    if menu == 1:
        mongo_db.select_followers(name)
    elif menu == 2:
        mongo_db.select_followed_by(name)
    elif menu == 0:
        pass
    else:
        print('Такого пункта нет')

except Exception as e:
    print(e)

