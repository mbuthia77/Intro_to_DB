import mysql.connector
from mysql.connector import errorcode

def create_database():
    try:
        
        conn = mysql.connector.connect(
            host='localhost',
            user='root',
            password='your_password'
        )
        
        cursor = conn.cursor()
        
        # Create the database
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully.")
        
    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_DB_CREATE_EXISTS:
            print("Database already exists.")
        else:
            print(f"Error: {err}")
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()
