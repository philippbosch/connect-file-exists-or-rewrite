connect-file-exists-or-rewrite
==============================

Connect middleware that checks if a file exists at the location specified
through the URL path, and if not rewrites the URL to e.g. '/'.

Only makes sense if used together with
[Connect Static](http://www.senchalabs.org/connect/static.html) middleware.


Installation
------------

    npm install connect-file-exists-or-rewrite --save-dev


Usage
-----

    app.use(require('connect-file-exists-or-rewrite')(__dirname + '/public'));
    app.use(connect.static(__dirname + '/public'));


Assuming this directory structure …

    + public
    |
    +--- index.html
    |
    +--+ images
       |
       +--- logo.png

… requests would be treated as follows:

- `http://yourserver.com/`: untouched
- `http://yourserver.com/images/logo.png`: untouched
- `http://yourserver.com/products`: rewritten to `/`


License
-------

[MIT](http://philippbosch.mit-license.org/)
