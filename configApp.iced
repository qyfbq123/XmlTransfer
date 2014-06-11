
js2xmlparser = require "js2xmlparser"
xml2js = require 'xml2js'

xml_data = require './data/xml_data.json'

# parser = new xml2js.Parser()
module.exports = (app)->
    app.use (req, res, next)->
        req.body[k] = v for k, v of req.query
        next()
    
    app.get '/xml1', (req, res, next)->


    app.get '/xml', (req, res, next)->
        data = js2xmlparser 'table', xml_data
        res.charset = 'utf8'
        res.writeHead 200, ('Content-Type': 'text/xml')
        res.end data

