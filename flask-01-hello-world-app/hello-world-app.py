from flask import Flask 
app = Flask(__name__)
@app.route('/')
def head():
     return 'Hello world'
@app.route('/secondpage')
def second():
     return 'This is the second page'
@app.route('/third')
def third():
     return 'This is the third page'
@app.route('/fourth/<string:id>')
def fourth(id):
     return f'ID of this page {id}'
if __name__ == '__main__':

    #app.run(debug=True, port=3000)
     app.run(host= '0.0.0.0', port=80)