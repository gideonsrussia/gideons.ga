pkg = require '../package.json'
siteConfig =
  buildDate: new Date
  integrations:
    disqus: 'a1ip'
    analytics: 'UA-26406005-7'
  gaId: 'UA-26406005-7'
  owner:
    uri: 'http://phil.rigovanov.ru'
    name: 'Phil Rigovanov'
  lang: 'ru'
  moment: require('moment')
  pkg: pkg
  site:
    url: pkg.homepage
    title: 'Миссия Гедеон'
    description: 'Миссия Гедеон'
    keywords: 'миссия, гедеон'
    meta: [
      {
        name: 'author'
        content: pkg.author.name
      }
      {
        name: 'twitter:site'
        content: '@phil_rigovanov'
      }
    ]
module.exports = siteConfig
