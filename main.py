from flask import Flask, render_template, request
from flask_mysqldb import MySQL
import NoPlate_scanner as sc
import facerecognition as fr

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'itms'

mysql = MySQL(app)


@app.route('/', methods=['GET', 'POST'])
def Home():
    if request.method == "POST":
        if request.form.get("RC"):
            return render_template('Numberplate_Search.html')
        elif request.form.get("DL"):
            return render_template('DrivingLicense_Search.html')
    else:
        return render_template('Home.html')


@app.route('/scan')
def scan():
    scdata = sc.Scanner()
    total = 10
    finaldata = ''
    if len(scdata) > 10:
        total = len(scdata) - total
        finaldata = scdata[:-total]
        return render_template('Numberplate_Search.html', data1=finaldata)
    else:
        return render_template('Numberplate_Search.html', data1=scdata)


@app.route('/search', methods=['GET', 'POST'])
def search():
    Num = request.form['number']
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM rc WHERE Vehicle_Number='" + Num + "'")
    fetchdata = cur.fetchall()
    cur.close()
    if not fetchdata:
        return render_template('Numberplate_Search.html', data="Data Not Exists")
    else:
        return render_template('RC_Info.html', data=fetchdata)


@app.route('/verified')
def verified():
    return render_template('Numberplate_Search.html')


@app.route('/License_search', methods=['GET', 'POST'])
def License_search():
    L_Num = request.form['L_number']
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM dl WHERE License_Number='" + L_Num + "'")
    fetchdata1 = cur.fetchall()
    cur.close()
    if not fetchdata1:
        return render_template('DrivingLicense_Search.html', datal="Data Not Exists")
    else:
        return render_template('DL_info.html', data=fetchdata1)


@app.route('/DL_info')
def DL_info():
    return render_template('DrivingLicense_Search.html')


@app.route('/Face_scan')
def Face_scan():
    face_id = fr.face_recognize()
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM dl WHERE id='" + str(face_id) + "'")
    fetchdata2 = cur.fetchall()
    cur.close()
    if not fetchdata2:
        return render_template('DrivingLicense_Search.html', dataf=face_id)
    else:
        return render_template('DL_info.html', data=fetchdata2)


@app.route('/Main')
def Main():
    return render_template('Home.html')




if __name__ == '__main__':
    app.run(debug=True)
