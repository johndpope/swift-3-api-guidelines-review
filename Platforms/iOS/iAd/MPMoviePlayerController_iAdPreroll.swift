
extension MPMoviePlayerController {
  @available(iOS 7.0, *)
  class func preparePrerollAds()
  @available(iOS 7.0, *)
  func playPrerollAd(completionHandler completionHandler: ((Error!) -> Void)!)
  @available(iOS 8.0, *)
  func cancelPreroll()
}