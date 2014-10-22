SEGMENTS = 10
DURATION = 30

scale = (i) ->
  (i + 1) / (SEGMENTS + 1)

randomDashes = ->
  values = for i in [0...10]
    Math.floor (Math.random() * 50) + 2
  values.join ' '

module.exports = "
  <svg
    class='loading-spinner'
    width='300'
    height='300'
    viewBox='-100 -100 200 200'
    xmlns='http://www.w3.org/2000/svg'
    xmlns:xlink='http://www.w3.org/1999/xlink'>

    #{("
      <circle
        r='#{95 * scale i}'
        fill='none'
        stroke='currentcolor'
        stroke-width='2'
        stroke-dasharray='#{randomDashes()}'
        opacity='#{scale i}'>

        <animateTransform
          attributeName='transform'
          begin='0s'
          type='rotate'
          from='0'
          to='#{360 * -1 * (i % 2 || -1)}'
          dur='#{DURATION * scale i}s'
          repeatCount='indefinite'
        />
      </circle>
    " for i in [0...SEGMENTS]).join '\n'}
  </svg>
"
