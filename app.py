# I HAVE CLAIMED THIS CODE IN THE NAME OF BEME!
# SURRENDER AND PLACE YOUR COMPUTER ON YOUR CHIN MUAHAHAHAHA
from flask import Flask, render_template, request
from flask_mysqldb import MySQL
from flask import jsonify
import numpy as np

import os

app = Flask(__name__)
# Allows us to connect to local database server
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

@app.route('/recommendation', methods=['POST'])
def rec():
    cur = mysql.connection.cursor()
    # Request data format:
    # [{"id": business_id,...},{"id": business_id,...},{"id": business_id,...}]
    data = request.get_json()
    business_ids = map(lambda x: x['id'], data)
    param = business_ids[0] #get this from post data BUT SQL INJECTION!
    # Check for SQL injection. Currently makes sure that input has no spaces
    # (any SQL query would have spaces)
    # TODO: put into separate function and perhaps expand on it
    for id in business_ids:
        if (' ' in id):
            raise ValueError('SQL injection may have been attempted.');
    #TODO: change to actually get top 10 for everything and deal with overlaps
    param = business_ids[0] # for now, just return top 10 for first one

    query = "select cosine from business_cosine where business_id = '" + business_ids[0] + "'"
    cur.execute(query)
    cosine_vector_str = cur.fetchone()
    print type(cosine_vector_str[0])
    cosine_vector = np.loads(cosine_vector_str[0])
    result = get_recommendation(cosine_vector)
    return jsonify(result)

def get_recommendation(cosine_vector):
    cur = mysql.connection.cursor()
    res = np.argsort(cosine_vector).flatten()
    top_indices = res[::-1][0:11] # TODO: filter out business_ids that were in the input
    query = "select business.name, business.id from business join business_index on business.id = business_index.business_id where m_index in " + str(tuple(top_indices)) #idk if this works
    cur.execute(query)
    data = cur.fetchall()
    data = map(lambda x: { "id": x[1], "name": x[0] }, data)
    return data

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)
