from flask import Flask, render_template
from flask_mysqldb import MySQL
from flask import jsonify

import os

app = Flask(__name__)
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'poloisbae'
app.config['MYSQL_DB'] = 'yelp_db'
mysql = MySQL(app)

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/testDbConn')
def testDbConn():
    cur = mysql.connection.cursor()
    return 'success!'

@app.route('/recommendation')
def recommendation():
	cur = mysql.connection.cursor()
	query = "select business.id, name from business join category on business.id = category.business_id where state = 'AZ' and category.category='Restaurants' order by rand() limit 10"
	cur.execute(query)
	data = cur.fetchall()
	data = map(lambda x: { "id": x[0], "restaurant": x[1] }, data)
	return jsonify(data)

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)
