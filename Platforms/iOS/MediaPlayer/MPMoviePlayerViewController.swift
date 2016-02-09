
@available(iOS 3.2, *)
@available(iOS, introduced=3.2, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
class MPMoviePlayerViewController : UIViewController {
  init!(contentURL: URL!)
  var moviePlayer: MPMoviePlayerController! { get }
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
extension UIViewController {
  @available(iOS, introduced=3.2, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  func presentMoviePlayerViewControllerAnimated(moviePlayerViewController: MPMoviePlayerViewController!)
  @available(iOS, introduced=3.2, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  func dismissMoviePlayerViewControllerAnimated()
}