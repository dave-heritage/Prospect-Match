import json
import logging


import get_match_data as db_query


def build_response_object(body, status):
    return {
            'statusCode': status,
            'headers': {
                'Content-Type': 'application/json'
            },
            'body': json.dumps(body)
        }


def lambda_handler(event: dict, context: any) -> dict:
    logging.getLogger().setLevel(logging.INFO)
    logging.info('Invoking get-best-match...')
    
    try:
        # Get a jobId query parameter value
        id = event["queryStringParameters"]["jobId"]
        
        if id is None or not id.isdigit():
            logging.info(f'A bad jobId value was entered: {id}')
            body = {'message': 'Bad Request. The request must contain a jobId that is a number.'}
            return build_response_object(body, 400)

        logging.info('Executing queries...')
        result = db_query.get_data(id)
        logging.info('A reponse from the database has been received...')

        if isinstance(result, str):
            logging.error(f'An error occurred while querying that database: {e}')
            body = {'message': 'Something went wrong extracting that data... Try again later.'}
            return build_response_object(body, 500)
        
        if len(result) == 0 or result == None:
            logging.info('No result found in query.')
            result = {'message': f'This query returned {len(result)} items...'}
        
        logging.info('Response was acquired... Returning response.')
        return build_response_object(result, 200)
    
    except Exception as e:
        logging.error(f'An error occured. {e}')
        body = {'message': 'An error occured. Try again later...'}
        return build_response_object(result, 500)
