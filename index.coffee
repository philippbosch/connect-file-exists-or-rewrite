module.exports = (root, toUrl='/') ->
    fs = require('fs')
    path = require('path')
    url = require('url')

    (req, res, next) ->
        absolutePath = path.join(root, url.parse(req.url).pathname)
        fs.exists absolutePath, (exists) ->
            req.url = toUrl if not exists
            next()
