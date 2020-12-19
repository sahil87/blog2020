title: Adding a QR Code Scanner to your Website
author: Sahil Ahuja
tags:
  - react
  - ''
  - web
categories:
  - guide
date: 2019-09-18 00:52:00
---
Barcode and QR code have become common in our day to day shopping and searching experience. Almost everyone has a QR Code Scanner installed in their phones as separate app or as a part of the camera.

You might want to add QRCode scanning as a part of your website. This simple addition opens up a world of possiblities - potentially improving the user experience of your users by leaps and bounds. Below you will learn how to add a simple QR Code Scanner to your Website.

You don't need a native app to be able to scan QR codes - simple javascript can do the trick. We will use a npm package [react-qr-reader](https://github.com/JodusNodus/react-qr-reader). Add the following code to your javascript to get the QR Code scanner working:

```jsx
import React, { Component } from 'react'
import QrReader from 'react-qr-reader'

class Test extends Component {
  state = {
    result: 'No result'
  }

  handleScan = data => {
    if (data) {
      this.setState({
        result: data
      })
    }
  }
  handleError = err => {
    console.error(err)
  }
  render() {
    return (
      <div>
        <QrReader
          delay={300}
          onError={this.handleError}
          onScan={this.handleScan}
          style={{ width: '100%' }}
        />
        <p>{this.state.result}</p>
      </div>
    )
  }
}
```

After this, add the component `<Test>` to the page where you want the QR Code scanner and handle the data scanned in the `handleScan` function in the code above.

### Scanning Website URLs and Opening them on an iframe

This technique can also be used to scan a URL and open it in a iframe rendered as a react component. There are a few things to remember in this approach:
1. Most website today have `X-Frame-Options` header set to `SAMEORIGIN`. This blocks the website from loading in an iframe. You can only open URLs that have the `X-Frame-Options` header is set to `ALLOW-FROM https://<your-website-url>`
1. OR Website from the same domain name as your iframe. [Here](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options) is a MDN article explaining the same.

In case you aren't able to load the website in your frame, and you have access to the website's code, try adding the `X-Frame-Options` header to fix the issue.