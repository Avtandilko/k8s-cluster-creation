import requests

TEST_URL = "http://php-app.example"
TEST_STRING = "php-app"

def get_page(search_url):
  page = requests.get(search_url)
  return page

def test_page_response():
  response = get_page(TEST_URL)
  assert response.status_code == 200

def test_page_content():
  response = get_page(TEST_URL)
  assert TEST_STRING in response.text
