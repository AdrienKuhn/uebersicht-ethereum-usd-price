command: "/usr/bin/curl -s https://v2.ethereumprice.org:8080/snapshot/eth/usd/waex/24h"

refreshFrequency: 60000 #ms

style: """
  bottom: 10px
  left: 20px
  color: #fff
  font-family: Helvetica Neue

  table
    border-collapse: collapse
    table-layout: fixed
    -webkit-font-smoothing: antialiased
    -moz-osx-font-smoothing: grayscale

    &:after
      content: 'Ethereum'
      position: absolute
      left: 0
      top: -14px
      font-size: 12px

  td
    font-size: 24px
    font-weight: 200
    overflow: hidden
    text-shadow: 0 0 1px rgba(#000, 0.5)

  #change
    font-size: 18px

"""


update: (output, domEl) ->
  res  = JSON.parse(output)
  price = res.data.price
  change = res.data.percent_change
  $domEl = $(domEl)

  $domEl.find('#price').text price
  $domEl.find('#change').text '('+change+'%)'

render: (o) -> """
  <table>
    <tr>
      <td>$<span id='price'></span> <span id='change'></span></td>
    </tr>
  </table>
"""
