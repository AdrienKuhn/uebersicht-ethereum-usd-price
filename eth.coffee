command: "curl -s http://www.coincap.io/front | /usr/local/bin/jq '.[1].price' | /usr/bin/sed 's/\"//' | cut -c 1-6"

refreshFrequency: 10000 #ms

style: """
  bottom: 10px
  left: 10px
  color: #fff
  font-family: Helvetica Neue

  table
    border-collapse: collapse
    table-layout: fixed

    &:after
      content: 'Ethereum'
      position: absolute
      left: 0
      top: -14px
      font-size: 12px

  td
    font-size: 24px
    font-weight: 100
    max-width: 200px
    overflow: hidden
    text-shadow: 0 0 1px rgba(#000, 0.5)
    padding-left:5px

  .wrapper
    padding: 4px 6px 4px 6px
    position: relative




"""

render: (o) -> """
  <table>
    <tr>
      <td class='col1'>$ #{o}</td>
    </tr>
  </table>
"""
