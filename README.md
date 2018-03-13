# dabbington-backend
Backend for Yelp Data visualization application.

## Setup
Steps below are from the [official Flask documentation](http://flask.pocoo.org/docs/0.12/installation/).
Setting up a virtual environment and using the requirements.txt is highly recommended. This prevents package confusion that frequently occurs with global packages
and will make it much easier to debug problems with pip on your computer.

`virtualenv venv`

On OS X, do the following

`. venv/bin/activate`

If you are a windows user, 
`venv\Scripts\activate`

To deactivate the virtual environment:

`deactivate`

After activating the virtual environment (or not setting it up at all, like I did), run the following commands:

`sudo easy_install pip`, if you do not already have pip (you usually should).

`pip install -r requirements.txt`

You should be good to go!

NOTE: when adding new packages, run `pip freeze > requirements.txt` after to add to requirements.
