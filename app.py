from flask import Flask, render_template
from flask_mysqldb import MySQL
import os

app = Flask(__name__)
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'poloisbae'
app.config['MYSQL_DB'] = 'db'
mysql = MySQL(app)

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/testDbConn')
def testDbConn():
    cur = mysql.connection.cursor()
    return 'success!'

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)
