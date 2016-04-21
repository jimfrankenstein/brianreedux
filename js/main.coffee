---
---

# basic namespace
window.brianreed ||= {}

brianreed.home =

  init: () ->

    # @bindings()
    # @plugins()
    # @analytics()

  bindings: ->

    _t = this

    document.querySelector('.homeContainer').addEventListener('click', ->
      _t.themeSwap()
    )

  themeSwap: ->

    console.debug 'changing theme'

    @currentTheme = @currentTheme++

    @currentTheme = 0 if @currentTheme > 6

    document.body.dataset.theme = @currentTheme

  analytics: ->
    ((i, s, o, g, r, a, m) ->
      i['GoogleAnalyticsObject'] = r
      i[r] = i[r] or ->
        (i[r].q = i[r].q or []).push arguments
        return

      i[r].l = 1 * new Date
      a = s.createElement(o)
      m = s.getElementsByTagName(o)[0]
      a.async = 1
      a.src = g
      m.parentNode.insertBefore a, m
      return
    ) window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga'
    ga 'create', 'UA-52937713-3', 'auto'
    ga 'send', 'pageview'

  plugins: ->

    _t = this

    # bind external plugins

    # fastclick

    document.addEventListener('DOMContentLoaded', ->
      FastClick.attach(document.body)
    )
