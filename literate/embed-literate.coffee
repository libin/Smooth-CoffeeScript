###
Edit ,>coffee -s >embed-literate.html; plumb embed-literate.html
###

kup = require 'coffeekup'

webfragment = -> 
  input class: 'field', type: 'button', value: 'Limit Width', onclick: ->
    [document.getElementById('page').style.maxWidth, @value] =
      if document.getElementById('page').style.maxWidth is ''
        ['600px', 'Allow Freeflow']
      else
        ['', 'Limit Width']
    return
  script src: 'node_modules/coffee-script.js'
  script src: 'node_modules/coffeekup.js'
  coffeescript ->
    # To obtain a base64 encoding of a file run the CoffeeScript compiler like this:
    # coffee -e "console.log require('fs').readFileSync('../img/ostrich.jpg').toString 'base64'"
    window.ostrich = 'data:image/png;base64,/9j/4AAQSkZJRgABAgAAZABkAAD/7AARRHVja3kAAQAEAAAAHgAA/+4ADkFkb2JlAGTAAAAAAf/bAIQAEAsLCwwLEAwMEBcPDQ8XGxQQEBQbHxcXFxcXHx4XGhoaGhceHiMlJyUjHi8vMzMvL0BAQEBAQEBAQEBAQEBAQAERDw8RExEVEhIVFBEUERQaFBYWFBomGhocGhomMCMeHh4eIzArLicnJy4rNTUwMDU1QEA/QEBAQEBAQEBAQEBA/8AAEQgAWgBaAwEiAAIRAQMRAf/EAIYAAAIDAQEBAAAAAAAAAAAAAAQFAgMGAAEHAQEBAQEBAAAAAAAAAAAAAAACAQMABBAAAgEDAwIDBQYFBQEAAAAAAQIDABEEITESQQVhIhNRcYGhMrFCMxQVBpHBUmJDcqIjUzQ1EQACAgICAgIDAAAAAAAAAAAAARECITFBElFhcaHBIgP/2gAMAwEAAhEDEQA/AMtBEzW3o9ICBUsWG9qPWHTavPa2TZIDENx1qxI7WvRHEA6Uwwe1evxyMg8YL6KPqe32CopZXgAQAUdBBE/l4sQw/EPQ+FNJcjs+DFI6wxsVGq738LtSXJ/c8EbGD0OOPIBqAAyk+weyr19yTt6ITxMjFG3XehJUa2hNTHdcOWVTJo4urno69D764EMGN9msviLXvRiCyATcgLXNBSEnrameQnKhGxz7KdWFoFQsrbmir+J+mq0j81qK9Mf7aU5JBZiMRqaY+cwGYWKqeJA3FKYHKi23zptjIqQmVnLBgeSrp5RsdayssjQNI3AGQgkDUr1tUcvvxkUeivkQeXXa39tC5vcV+kPzXxFiPfQQMUqtYWO5+NKtfKC34LTm5mTxlPKXgeTCwVVHhrQjRnmVD+oSwW4Gt99KIWZorBVFiOJuP6tzTjHxsJceKZQpyI+DWUEkm9yoBsSRtTbjgmxNNjH8xxhQqIyRITtyP0r8qtORLCI1IvLExDBhbS2laTgmH6QCI6yHk6cbt6h6szgdTakWefWeQqi+RmvIu21+Itp8RU3tFiCw5MT8OZCO6huOttakGjlBEZ5eIpbMuRIy2GllBB95ozFj9MlmIUMblR0otJIqZJILtfeifQ+yjsSGOYC2/W1F/p/9w2oyywjLRMVfanU2eZYjBCllIs5OpNht4ClSY8ryqsQJdiAoHtphMpjurqL3N2F9TVbIjNZ6OkpO19Bapfp2Tr6ciyzqvqPDGSzKgsSSdtL6gUz9PEfuOOJyBCWHNjsF9poPP7aqZTMJAOOu41HRgeoNaK8RJy/n2mNrieOSjHkZivIXuQCfcafYYAaOc6kCykai/wBX2mhcbtU57eJuJtIzPbrw2U2rSdiwZAkWRIto7WWMDRr7tY1Hl4DoDZMhsmR52u8YW0SnzctW8NTyoKZLEgLxBbz21BtqSTWpzO0JLOkoJGOtiygnTieVh76Q9/xUSKXJwrLEt/VjB2c25Fajq5KmZ/IzURLfe020/hQP52d2trr93f7K8m5hwQnK4AG++9GxQKncIGVfTuoZhuAaWESLPOtfY8/bjZLLcxFkPW38603n/wCofT4UsTusMYCgC/Wwq39VHyvQ7L8izoSiBgbjQjYjeo5JkWKxJa/QnX505jxhuRQvcsc+g1h40SmYmkBewTfQAmtBidjxpcaOZoNRbmisWI5amyXtb3Vm/VBkCML67bWp3h50UMKoh5MDsGPEDfVSfsrRhXJr8bGUYrLJ5kItxPQW/lV0UsarwH+Py2pR23v8bERyNzhbdGN3S/3lc/Uvv1FB9+7zldqzA2NgPNBoWnflwcW2XhsffST1AX7NQ8SzQsDpyv8AZWRkR1xpo528zlkkVRYctdSPnWsxclMvt2PloCiTIHVTuAwBsay3fHwl/c2JiJzWSfi8jg+Tz3AFvtqXrMNcHVZn82F8ObkqcogRyBNzp0vQqyvLlGeQ2JOi/wBKjYU87/DFFkMuPYq44sx+pjsSvsFIVThLY73/AIVFz5E23Clx4GXM35A1d+Yb29KGRgwtVnE/KiU2CkBaHyQGjYFb6bVR+bFSE4kNuVvGo7I6GYzumPJFO9l4A6hfCgVyJkOjWp73lY/UK3Y3OrEaUhljYagfGtaOUgWUMmmfJGwJ1tsb6i/srYftv92RMq4eawZNk5bgezxFYU71wuCCDYjY0uq+Ayz7XFlYuTF/wlSg0BW1tPdSPuGUkOohDTqvGOZtBY3vyfw3rC9v/cWfgyrIrliNGF/qH91d3HvWZ3NzyuikWKA6W9nuotN40JdV7O7h3P8AMZhkXzKiiOM9NN2+Jr3Fj5ed73NDxQAbijYmCWtpUeoRVPIZGgA2tV1h8qEjmuas9Tx6UIYgh8hlFShmEikN10ub2A9ulUP8KPX/AOZ/i3P4P4m33qOCiPNZg11tx0A1NhQWQxMY06EUc/8A5D/q+Hx8aAyfxW3361tUFtgbC1QNTPwrw/CtDM4UVjRlt/hQw26Uww/o6UWVFuwr0Iz2C163wonF3H00Bl2LgXF2or9NTxojH2G3woj+FZ/tI8H/2Q=='
    window.onload = ->
      canvas = document.getElementById('drawCanvas')
      window.ctx = canvas.getContext '2d' if canvas?

      evaluateSource = ->
        # Clear output
        if window.ctx?
          window.ctx.clearRect 0, 0,
            window.ctx.canvas.width, window.ctx.canvas.height

        getParent = (child) -> child?.parentElement ? child?.parentNode
        elem = window.document.getElementsByClassName('output')[0]
        while elem?
          getParent(elem).removeChild elem
          elem = window.document.getElementsByClassName('output')[0]

        # Create support functions
        addElement = (parent, text) ->
          newelem = document.createElement 'code'
          newelem.setAttribute 'class', 'sourceCode output'
          newelem.innerHTML = text
          parent.appendChild newelem
        separator = (parent) ->
          if parent.getElementsByClassName('output').length is 0
            addElement parent, '<hr><br>'
        addErrorElement = (text) ->
          parentTag = getParent codeTag
          separator parentTag
          addElement parentTag,
            """<span class="al">#{text}</span>"""
        show = (msg) ->
          parentTag = getParent codeTag
          separator parentTag
          addElement parentTag, "&rarr; #{msg}<br>"
          msg
        addFrame = (parent, width, height, content) ->
          newelem = document.createElement 'iframe'
          newelem.setAttribute 'class', 'output'
          newelem.setAttribute 'width',  width
          newelem.setAttribute 'height', height
          newelem.setAttribute 'src',
            "data:text/html;charset=utf-8,#{encodeURIComponent content}"
          parent.appendChild newelem
        showDocument = (content, width = 300, height = 300) ->
          parentTag = getParent codeTag
          separator parentTag
          addFrame parentTag, width, height, content

        # Obtain each code segment with an ownership tag
        segments =
          for codeSegment in document.getElementsByTagName 'pre'
            if codeSegment.className is 'sourceCode'
              codeTag = codeSegment.getElementsByTagName('code')[0]
              if codeTag.className is 'sourceCode coffeescript'
                segment = codeTag.innerHTML
                #console.debug "From: #{segment}"
                code = segment.replace /<br>/g, '\n'
                code = code.replace /<[^>]*>/g, ''
                code = code.replace /[&]gt;/g, '>'
                code = code.replace /[&]lt;/g, '<'
                code = code.replace /[&]nbsp;/g, ' '
                #console.debug "To: #{code}"
                codeTag:codeTag, code:code

        # Stitch together continuing code segments
        segments = (segment for segment in segments when segment?)
        for segment, i in segments
          if i > 0 and /^[\s]/.test segment.code
            segment.code = segments[i-1].code + '\n' + segment.code
            segments[i-1] = undefined
        segments = (segment for segment in segments when segment?)

        # Evaluate code segments
        for segment in segments
          codeTag = segment.codeTag
          code = segment.code + '\ndraw window.ctx if draw?'
          try
            eval CoffeeScript.compile code, bare:on
          catch error
            addErrorElement error
            return
        return

      # Evaluate code segments on load and every keypress
      for segment in document.getElementsByTagName 'pre'
        segment.getElementsByTagName('code')[0]
          .addEventListener 'keyup', evaluateSource, false
      evaluateSource()

console.log kup.render webfragment, format:on