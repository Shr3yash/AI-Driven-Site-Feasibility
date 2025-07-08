import oracledb

# --- Oracle Database Configuration ---

DB_USER = "TEAM25" 
DB_PASSWORD = "hashed"
DB_DSN = "hashed"  

def connect_and_retrieve_sites_data():
    """
    Connects to Oracle Database and retrieves rows from the SITES table.
    """
    connection = None
    cursor = None

    try:
        print("Check 1: Attempting to connect to Oracle Database...")
        connection = oracledb.connect(
            user=DB_USER,
            password=DB_PASSWORD,
            dsn=DB_DSN
        )
        print("Successfully connected to Oracle Database.")

        cursor = connection.cursor()
        query = "SELECT * FROM SITES"
        cursor.execute(query)

        print("Data from SITES table:")
        for row in cursor:
            print(row)

    except oracledb.Error as e:
        print("Error while connecting to Oracle DB:", e)

    finally:
        if cursor:
            cursor.close()
        if connection:
            connection.close()
            print("🔒 Database connection closed.")

# --- Main Execution ---
if __name__ == "__main__":
    connect_and_retrieve_sites_data()
