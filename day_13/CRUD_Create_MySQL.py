import sys
import MySQLdb

# Open database connection
db = MySQLdb.connect("localhost", "root", "1", "test", charset='utf8')

# prepare a cursor object using cursor() method
cursor = db.cursor()

try:
   new_category = input('New Category: ')   
   sql = "INSERT INTO category (title) VALUES ('" + new_category + "')"
   print(sql)
   cursor.execute(sql)
   db.commit()
except Exception as e:
   print("Error: ", sys.exc_info())
   exc_type, exc_obj, exc_tb = sys.exc_info()
   print(exc_type, exc_tb.tb_lineno)    

# disconnect from server
db.close()
