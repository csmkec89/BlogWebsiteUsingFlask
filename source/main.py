import os
from flask import Flask, render_template, request, session, redirect, url_for, flash, get_flashed_messages
from flask_sqlalchemy import SQLAlchemy
from flask_mail import Mail
from werkzeug.utils import secure_filename
import json
from datetime import datetime
import math

with open('config.json', 'r') as c:
    params = json.load(c)["params"]

app = Flask(__name__)
app.secret_key = 'super-secret-key'  ##this can be anything
app.config['UPLOAD FOLDER'] = params["upload_loc"]


app.config.update(

    MAIL_SERVER='smtp.gmail.com',
    MAIL_PORT='465',
    MAIL_USE_SSL=True,
    MAIL_USERNAME=params['gmail_user'],
    MAIL_PASSWORD=params['gmail_password']
)

mail = Mail(app)

app.config['SQLALCHEMY_DATABASE_URI'] = params["db_uri"]
db = SQLAlchemy(app)


class Contacts(db.Model):
    """
    SRNO,NAME,EMAIL,PHONE,MESSAGE,DATE, taken from alchemy quick guide
    """

    SRNO = db.Column(db.Integer, primary_key=True)
    NAME = db.Column(db.String(80), unique=False, nullable=False)
    EMAIL = db.Column(db.String(30), unique=True, nullable=False)
    PHONE = db.Column(db.String(15), unique=True, nullable=False)
    MESSAGE = db.Column(db.String(120), unique=False, nullable=False)
    DATE = db.Column(db.String(12), unique=False, nullable=True)


class Posts(db.Model):
    """
    SRNO,TITLE,CONTENT,DATE
    """

    SRNO = db.Column(db.Integer, primary_key=True)
    TITLE = db.Column(db.String(80), unique=False, nullable=False)
    CONTENT = db.Column(db.String(30), unique=False, nullable=False)
    SUBTITLE = db.Column(db.String(30), unique=False, nullable=False)
    SLUG = db.Column(db.String(25), unique=False, nullable=False)
    IMG_FILE = db.Column(db.String(30), unique=False, nullable=False)
    DATE = db.Column(db.String(12), unique=False, nullable=True)


class Aboutus(db.Model):
    """
    SRNO,TITLE,CONTENT,DATE
    """

    SRNO = db.Column(db.Integer, primary_key=True)
    ABOUT = db.Column(db.String(80), unique=False, nullable=False)


@app.route("/")
def indexPage():
    posts = Posts.query.filter_by().all()
    last = math.ceil(len(posts)/params["no_of_posts"])
    page = request.args.get('page')
    if (not str(page).isnumeric()):
        page = 1
    page = int(page)
    posts = posts[(page-1)*params["no_of_posts"]: (page-1)*params["no_of_posts"] + params["no_of_posts"]]
    if page == 1:
        prev = "#"
        next = '/?page='+ str(page+1)
    elif (page == last):

        prev = '/?page=' + str(page - 1)
        next = "#"
    else:
        prev = '/?page=' + str(page - 1)
        next = '/?page=' + str(page + 1)








   # posts = Posts.query.filter_by().all()[0:params["no_of_posts"]]
    return render_template('index.html', params=params, posts=posts, prev=prev, next=next)


@app.route("/about")
def about():
    abouts = Aboutus.query.all()
    return render_template('about.html', params=params, abouts=abouts)


@app.route("/Dashboard", methods=['GET', 'POST'])
def Dashboard():
    if ('user' in session and session['user'] == params['admin_email']):
        posts = Posts.query.all()
        return render_template('dashboard.html', params=params, posts=posts)

    if request.method == 'POST':
        mail = request.form.get('email')
        pwd = request.form.get('pass')

        if (mail == params['admin_email'] and pwd == params['admin_password']):
            session['user'] = mail
            posts = Posts.query.all()
            return render_template('dashboard.html', params=params, posts=posts)

    return render_template('login.html', params=params)


@app.route("/post/<string:post_slug>", methods=['GET'])
def post_route(post_slug):
    post = Posts.query.filter_by(SLUG=post_slug).first()
    return render_template('post.html', params=params, post=post)


@app.route("/edit/<string:sno>", methods=['GET', 'POST'])
def edit(sno):
    if ('user' in session and session['user'] == params['admin_email']):

        if request.method == "POST":

            req_title = request.form.get('title')
            req_subtitle = request.form.get('subtitle')
            req_content = request.form.get('content')
            req_slug = request.form.get('slug')
            req_image = request.form.get('img_file')
            date = datetime.now()

            if sno == '0':

                post = Posts(TITLE=req_title, SUBTITLE=req_subtitle, CONTENT=req_content, SLUG=req_slug, IMG_FILE=req_image, DATE=date)

                db.session.add(post)
                db.session.commit()



            else:
                post = Posts.query.filter_by(SRNO=sno).first()
                post.TITLE = req_title
                post.SUBTITLE = req_subtitle
                post.CONTENT = req_content
                post.SLUG = req_slug
                post.IMG_FILE = req_image
                post.DATE = date
                db.session.add(post)
                db.session.commit()
                return redirect('/edit/' +sno)


    post = Posts.query.filter_by(SRNO=sno).first()
    return render_template('edit.html', params=params, post=post, sno=sno)

@app.route('/uploader', methods = ['GET', 'POST'])
def uploader():

    if ('user' in session and session['user'] == params['admin_email']):


        if request.method == 'POST':

            f = request.files['file']
            f.save(os.path.join(app.config['UPLOAD FOLDER'], secure_filename(f.filename)))
            return 'Uploaded Sucessfully'



@app.route('/logout')
def logout():

    session.pop('user')
    return redirect('/Dashboard')

@app.route("/delete/<string:sno>", methods=['GET', 'POST'])
def delete(sno):
    if ('user' in session and session['user'] == params['admin_email']):
        post = Posts.query.filter_by(SRNO=sno).first()
        db.session.delete(post)
        db.session.commit()
    return redirect('/Dashboard')



@app.route("/contact", methods=['GET', 'POST'])
def contact():
    if request.method == 'POST':
        '''Add entry to the database'''
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        message = request.form.get('message')
        entry = Contacts(NAME=name, PHONE=phone, MESSAGE=message, DATE=datetime.now(), EMAIL=email)
        db.session.add(entry)
        db.session.commit()
        mail.send_message('New mail from ' + name,
                          sender=email,
                          recipients=[params['gmail_user']],
                          body=message + "\n" + phone
                          )
    return render_template('contact.html', params=params)


app.run(debug=True, port=8989)
