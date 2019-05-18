curl -X POST \
    -H 'Authorization: Bearer 6e91ba9bf7f8493297777437a236d19b' \
   'https://utilityapi.com/api/v2/forms'

curl -X POST \
    -H 'Authorization: Bearer 6e91ba9bf7f8493297777437a236d19b' \
    -d '{"utility": "DEMO", "scenario": "residential"}' \
    'https://utilityapi.com/api/v2/forms/55944/test-submit'

curl -X GET \
     -H 'Authorization: Bearer 6e91ba9bf7f8493297777437a236d19b' \
    'https://utilityapi.com/api/v2/authorizations?referrals=131214&include=meters'

curl -X POST \
    -H 'Authorization: Bearer 6e91ba9bf7f8493297777437a236d19b' \
    -d '{"meters": ["367853"]}' \
    'https://utilityapi.com/api/v2/meters/historical-collection'

curl -X POST \
    -H 'Authorization: Bearer 6e91ba9bf7f8493297777437a236d19b' \
    'https://utilityapi.com/api/v2/meters/367853'




curl -X GET \
    -H 'Authorization: Bearer 6e91ba9bf7f8493297777437a236d19b' \
    'https://utilityapi.com/api/v2/bills?meters=367853'

