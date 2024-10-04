from flask import *
import pymysql

app = Flask(__name__)

@app.route("/")
def Homepage():
    # connect to db 
    connection = pymysql.connect(host='localhost', user='root', password='', database='jumiya')
    sql = "select * from products where product_category =  'phones'  "
    sql1 = "select * from products where product_category =  'electronics'  "
    sql2 = "select * from products where product_category =  'shoes'  "
    sql3 = "select * from products where product_category =  'beauty'  "
    sql4 = "select * from products where product_category =  'clothes'  "
    # you need to have a cursor 
    # Cursor - is used to run / execute above SQL 
    cursor = connection.cursor()
    cursor1 = connection.cursor()
    cursor2 = connection.cursor()
    cursor3 = connection.cursor()
    cursor4 = connection.cursor()
    # execute 
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    cursor3.execute(sql3)
    cursor4.execute(sql4)
    # fetch all phone rows 
    phones = cursor.fetchall()
    # fetch all electronics rows 
    electronics = cursor1.fetchall()
    # fetch all shoes row 
    shoes = cursor2.fetchall()
    # fetch all beauty row 
    beauty = cursor3.fetchall()
       # fetch all clothes row 
    clothes = cursor4.fetchall()
    return render_template("index.html", phones = phones, electronics= electronics , shoes = shoes, beauty = beauty , clothes = clothes)

   
# route for single item 
@app.route("/single/<product_id>")
def singleitem(product_id):
    # connection to DB 
    connection = pymysql.connect(host='localhost', user='root', password='', database='jumiya')
    # create sql query 
    sql = "select * from products where product_id = %s "
    # create a cursor 
    cursor = connection.cursor()

    # execute 
    cursor.execute(sql, product_id)

    # get the single product 
    product = cursor.fetchone()

    return render_template("single.html" , product = product)

# upload products 
@app.route("/upload", methods =['POST', 'GET'])
def Upload():
    if request.method == 'POST':
        # user can add the products 
        product_name = request.form['product_name']
        product_desc = request.form['product_desc']
        product_cost = request.form['product_cost']
        product_category = request.form['product_category']
        product_image_name = request.files['product_image_name']
        product_image_name.save('static/images/' + product_image_name.filename)

        # connect to DB 
        connection = pymysql.connect(host='localhost', user='root', password='', database='jumiya')

        # create a cursor 
        cursor = connection.cursor()

        sql = "insert into products (product_name, product_desc, product_cost, product_category, product_image_name) values (%s, %s, %s, %s, %s)"

        data = (product_name, product_desc, product_cost, product_category, product_image_name.filename)

        # execute 
        cursor.execute(sql, data)

        # save changes 
        connection.commit()


        return render_template("upload.html", message = "Product added successful")
    else:
      return render_template("upload.html", error = "Please add a product")
    
# fashion route 
# helps you to see all the fashions 
@app.route("/fashion")
def Fashion():
    # connect to db 
    connection = pymysql.connect(host='localhost', user='root', password='', database='jumiya')
    sql = "select * from products where product_category =  'dresses'  "
    sql1 = "select * from products where product_category =  'handbags'  "
    sql2 = "select * from products where product_category =  'caps'  "
    sql3 = "select * from products where product_category =  'socks'  "
    sql4 = "select * from products where product_category =  'belt'  "
    # you need to have a cursor 
    # Cursor - is used to run / execute above SQL 
    cursor = connection.cursor()
    cursor1 = connection.cursor()
    cursor2 = connection.cursor()
    cursor3 = connection.cursor()
    cursor4 = connection.cursor()
    # execute 
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    cursor3.execute(sql3)
    cursor4.execute(sql4)
    # fetch all phone rows 
    dresses = cursor.fetchall()
    # fetch all electronics rows 
    handbags = cursor1.fetchall()
    # fetch all shoes row 
    caps = cursor2.fetchall()
    # fetch all beauty row 
    socks = cursor3.fetchall()
       # fetch all clothes row 
    belt = cursor4.fetchall()
    return render_template("fashion.html",  dresses= dresses, handbags = handbags, caps = caps, socks = socks, belt = belt )

# a route to upload fashion 
@app.route("/uploadfashion", methods =['POST', 'GET'])
def UploadFashion():
    if request.method == 'POST':
        # user can add the products 
        product_name = request.form['product_name']
        product_desc = request.form['product_desc']
        product_cost = request.form['product_cost']
        product_category = request.form['product_category']
        product_image_name = request.files['product_image_name']
        product_image_name.save('static/images/' + product_image_name.filename)

        # connect to DB 
        connection = pymysql.connect(host='localhost', user='root', password='', database='jumiya')

        # create a cursor 
        cursor = connection.cursor()

        sql = "insert into products (product_name, product_desc, product_cost, product_category, product_image_name) values (%s, %s, %s, %s, %s)"

        data = (product_name, product_desc, product_cost, product_category, product_image_name.filename)

        # execute 
        cursor.execute(sql, data)

        # save changes 
        connection.commit()


        return render_template("uploadfashion.html", message = "Fashion added successful")
    else:
      return render_template("uploadfashion.html", error = "Please add a Fashion")
    


@app.route("/about")
def About():
    return "this is about page"

@app.route("/register")
def Register():
    return "This is register page"

@app.route("/login")
def Login():
    return "this is login page "

@app.route("/logout")
def Logout():
    return "This is logout page"

if __name__  == '__main__':
    app.run(debug=True, port= 4000 )
