def print_arguments(environ, start_response):
    query_string = environ.get('QUERY_STRING', None)
    coll_back_string = query_string.replace('&', '\n')
    return coll_back_string.encode('utf-8')
