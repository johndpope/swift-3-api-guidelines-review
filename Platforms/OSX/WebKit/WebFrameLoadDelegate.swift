
protocol WebFrameLoadDelegate : ObjectProtocol {
  optional func webView(sender: WebView!, didStartProvisionalLoadFor frame: WebFrame!)
  optional func webView(sender: WebView!, didReceiveServerRedirectForProvisionalLoadFor frame: WebFrame!)
  optional func webView(sender: WebView!, didFailProvisionalLoadWithError error: Error!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didCommitLoadFor frame: WebFrame!)
  optional func webView(sender: WebView!, didReceiveTitle title: String!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didReceiveIcon image: NSImage!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didFinishLoadFor frame: WebFrame!)
  optional func webView(sender: WebView!, didFailLoadWithError error: Error!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didChangeLocationWithinPageFor frame: WebFrame!)
  optional func webView(sender: WebView!, willPerformClientRedirectTo URL: URL!, delay seconds: TimeInterval, fire date: Date!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didCancelClientRedirectFor frame: WebFrame!)
  optional func webView(sender: WebView!, willClose frame: WebFrame!)
  @available(OSX 10.4, *)
  optional func webView(webView: WebView!, didClearWindowObject windowObject: WebScriptObject!, forFrame frame: WebFrame!)
  @available(OSX 10.9, *)
  optional func webView(webView: WebView!, didCreateJavaScriptContext context: JSContext!, forFrame frame: WebFrame!)
}
