# Übersicht Widget - Ethereum/USD price

![Screenshot](https://github.com/AdrienKuhn/ubersicht-ethereum-usd-price/blob/master/eth.png)

## Getting started

```
command: "curl -s http://www.coincap.io/front | /usr/local/bin/jq '.[1].price' | /usr/bin/sed 's/\"//' | cut -c 1-6"
```

Replace `/usr/local/bin/jq` and `/usr/bin/sed` by your jq and sed binaries full path.
