import mysql.connector

class mysqlcon:
   def __init__(self, host="localhost", user="root", password="142857", database="attendb"):
        try:
            self.sql_con = mysql.connector.connect(
                                host=host,
                                user=user,
                                password=password,
                                database=database,
                            )
        except:
            print("Failed to establish MySQL Connection")
        
        self.cursor = self.sql_con.cursor()
   
   def execute_non_return(self, cmd):
        self.cursor.execute(cmd)
        self.sql_con.commit()
   
   def execute_return(self, cmd):
        self.cursor.execute(cmd)
        query_rows = self.cursor.fetchall()
        
        return query_rows
   
   def execute_return_selective(self, cmd):
        self.cursor.execute(cmd)
        query_row = self.cursor.fetchone()
        
        return query_row
