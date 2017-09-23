metalsmith = require 'metalsmith'
drafts = require 'metalsmith-drafts'
markdown = require 'metalsmith-markdown'
#asciidoc = require 'metalsmith-asciidoc'
templates = require 'metalsmith-templates'
permalinks = require 'metalsmith-permalinks'
autoprefixer = require 'metalsmith-autoprefixer'
pagination = require 'metalsmith-pagination'
cleancss = require 'metalsmith-clean-css'
snippet = require 'metalsmith-snippet'
sitemap = require 'metalsmith-sitemap'
concat = require 'metalsmith-concat'
assets = require 'metalsmith-assets'
feed = require 'metalsmith-feed'
gulpsmith = require 'gulpsmith'
siteData = require './config/site'

metalsmith __dirname
  .metadata siteData
  .source 'src'
  .use markdown require './config/markdown'
  #.use asciidoc()
  .use drafts()
  .use snippet require './config/snippet'
  .use permalinks()
  .use autoprefixer()
  .use templates require './config/templates'
  .use sitemap require './config/sitemap'
  .use assets require './config/assets'
  .use concat require './config/concat'
  .use cleancss require './config/cleancss'
  .destination 'build'
  .build (err,files) ->
    if err
      throw err
    return
