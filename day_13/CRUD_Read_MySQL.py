import sys
import MySQLdb

try:
   # Open database connection
   db = MySQLdb.connect("localhost", "root", "1", "test", charset='utf8')

   # prepare a cursor object using cursor() method
   cursor = db.cursor()
   # print(cursor)

   table = "category"
   sql = "SELECT * FROM " + table
   # Execute the SQL command
   cursor.execute(sql)
   # Fetch all the rows in a list of lists.
   results = cursor.fetchall()
   # disconnect from server
   db.close()
   for row in results:
      id = row[0]
      title = row[1]
      # Now print fetched result
      print("id = %s, title = %s" % (id, title))
except Exception as e:
   print("Error: ", sys.exc_info())
   exc_type, exc_obj, exc_tb = sys.exc_info()
   print(exc_type, exc_tb.tb_lineno)    



