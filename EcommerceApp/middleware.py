import json

from django.http import QueryDict

class add_token_middleware:

    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):

        if request.path in ['/o/token', '/o/token/']:
            q = QueryDict.copy(request.POST)
            json_body = json.loads(request.body)
            q.__setitem__("client_id","V6RjEwVYBF2crl11EaYuzkOn2mJdLCXtAdMEDtRS" )
            q.__setitem__('client_secret', "JDdM6KfyObHXHxktICJjRpqvIBveu2hKojNKPNMPKGYEkXtoK7PDpv1pfbpgBWPLHEAybmTXaSRMgF9X6H49L44hOcqgIoon4KYY3FYpKFF8jVbQq0vzShZtsr1hVjHl")
            q.__setitem__('username', json_body['username'])
            q.__setitem__('password', json_body['password'])
            q.__setitem__('grant_type', json_body['grant_type'])
            request.POST = q

        response = self.get_response(request)

        return response