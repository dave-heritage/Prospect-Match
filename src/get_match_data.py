import os
import psycopg2


def get_highest_match(lst: list) -> dict:
    """Return the highest match value of provided list."""
    highest_match = max(lst, key=lambda x: x[2])
    result = convert_to_json(highest_match)
    return result


def convert_to_json(match: tuple) -> dict:
    """Format result to be in json form."""
    return {
        "job_id": match[0],
        "prospect_id": match[1],
        "match": match[2]
    }


def format_result(result: tuple, match_val: str) -> dict:
    """Format response"""
    return {
        "prospect_name": result[0],
        "prospect_email": result[1],
        "prospect_phone": result[2],
        "job_title": result[3],
        "company_contact": result[4],
        "company_email": result[5],
        "match_value": match_val
    }


def get_data(id: int):
    try:
        # Connect to the PostgreSQL database
        conn = psycopg2.connect(
            host=os.environ['host'],
            database="",
            port= 5432,
            user=os.environ['username'],
            password=os.environ['password']
        )

        # Open a cursor to perform database operations
        cur = conn.cursor()

        # Execute a SELECT query to fetch data from a table
        cur.execute(f"SELECT job_id, prospect_id, match_value FROM prospect_finder.matches WHERE job_id = {id}")

        # Fetch all rows from the result set
        match_rows = cur.fetchall()
        if len(match_rows) == 0:
            return {'message': 'user does not exist'}
        
        highest = get_highest_match(match_rows)

        #get user and job data for match value
        cur.execute(f"SELECT p.name, p.email, p.phone_number, j.title, j.company_contact, j.company_email \
                        FROM prospect_finder.prospects as p \
                        CROSS JOIN prospect_finder.jobs as j \
                        WHERE j.job_id = {highest['job_id']} AND  p.prospect_id = {highest['prospect_id']} \
                        LIMIT 1")
        
        rows = cur.fetchall()
        if len(rows) == 0:
            return None
        
        result = format_result(rows[0], highest["match"])

        # Close the cursor and the database connection
        cur.close()
        conn.close()

        return result
    
    except psycopg2.Error as e:
        return e
