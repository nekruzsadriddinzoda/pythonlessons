import sys
import MySQLdb

# Open database connection
db = MySQLdb.connect("localhost", "root", "1", "test", charset='utf8')

# prepare a cursor object using cursor() method
cursor = db.cursor()

sql = "SELECT * FROM category"

try:
   id_category = input('Category ID: ')   
   sql = "DELETE FROM category WHERE id = " + id_category
   print(sql)
   cursor.execute(sql)
   db.commit()
except Exception as e:
   print("Error: ", sys.exc_info())
   exc_type, exc_obj, exc_tb = sys.exc_info()
   print(exc_type, exc_tb.tb_lineno)    

# disconnect from server
db.close()
