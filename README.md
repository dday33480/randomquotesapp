# Random Quotes App

Small app that generates well known quotes randomly.

---


## Description

Users can log on to the app/website and generate a well know quote randomly, admins can add more quotes to the DataBase.

This is a beginners app to get used to database connections and Git commands.

---


## Tech Stack

* ![python](https://img.shields.io/badge/python-3.10-blue)
* ![django](https://img.shields.io/badge/django-5.0-blue)
* ![sqlite](https://img.shields.io/badge/sqlite-3.37-blue)
* ![robotframework](https://img.shields.io/badge/robotframework-7.0-blue)
* ![selenium](https://img.shields.io/badge/selenium-4.23-blue)

---

## Database

### Create SQLite DB superuser
`python3 manage.py createsuperuser`

---

## Website

### Run the site (local)
`python3 manage.py runserver`

### Access back office
`[localhost]/admin`

---

## Tests

### Run tests
`robot -d testResults tests/navigation-test.robot`


