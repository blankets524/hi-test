#Task 4.1
CREATE TABLE `People` (
	`PersonID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`FullName`	TEXT NOT NULL,
	`DateOfBirth`	TEXT NOT NULL,
	`ScreenName`	TEXT NOT NULL,
	`IsAdult`	INTEGER NOT NULL
);

#Task 4.2
class Person:
    def __init__(self, full_name, date_of_birth):
        self.full_name = full_name
        self.date_of_birth = date_of_birth

    def is_adult(self):
        birth_year = int(self.date_of_birth[:4])
        return (2026 - birth_year) > 18

    def screen_name(self):
        name = ""

        for char in self.full_name:
            if char.isalnum():
                name += char

        month = self.date_of_birth[5:7]
        day = self.date_of_birth[8:10]

        return name + month + day


class Staff(Person):
    def is_adult(self):
        return True

    def screen_name(self):
        name = ""

        for char in self.full_name:
            if char.isalnum():
                name += char

        return name + "Staff"


class Student(Person):
    def is_adult(self):
        return False

#Task 4.3
from flask import Flask
import sqlite3

app = Flask(__name__)

@app.route("/")
def index():
    conn = sqlite3.connect("school.db")
    cursor = conn.cursor()

    cursor.execute("SELECT FullName, ScreenName, IsAdult FROM People")
    people = cursor.fetchall()

    conn.close()

    html = """
    <html>
    <head><title>People</title></head>
    <body>
    <h1>People</h1>
    <table border="1">
        <tr>
            <th>Full Name</th>
            <th>Screen Name</th>
            <th>Identity</th>
        </tr>
    """

    for person in people:
        if person[1].endswith("Staff"):
            identity = "Staff"
        elif person[2] == 0:
            identity = "Student"
        else:
            identity = "Person"

        html += f"""
        <tr>
            <td>{person[0]}</td>
            <td>{person[1]}</td>
            <td>{identity}</td>
        </tr>
        """

    html += """
    </table>
    </body>
    </html>
    """

    return html

app.run()
