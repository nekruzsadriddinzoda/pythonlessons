import sys
import MySQLdb

# Open database connection
db = MySQLdb.connect("localhost", "root", "1", "test", charset='utf8')

# prepare a cursor object using cursor() method
cursor = db.cursor()

sql = "SELECT * FROM category"

try:
   # Execute the SQL command
   cursor.execute(sql)
   # Fetch all the rows in a list of lists.
   results = cursor.fetchall()
   for row in results:
      id = row[0]
      title = row[1]
      # Now print fetched result
      print("id = %s, title = %s" % (id, title))

   id_category = input('ID of existing category: ')   
   new_title = input('New title: ')   
   sql = "UPDATE category SET title = '" + new_title \
         + "' WHERE id = " + id_category
   print(sql)
   cursor.execute(sql)
   db.commit()
except Exception as e:
   print("Error: ", sys.exc_info())
   exc_type, exc_obj, exc_tb = sys.exc_info()
   print(exc_type, exc_tb.tb_lineno)    

# disconnect from server
db.close()
   
