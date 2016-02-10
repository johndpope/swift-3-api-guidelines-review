
@available(OSX 10.5, *)
class CBIdentityPicker : Object {
  var title: String?
  var allowsMultipleSelection: Bool
  func runModal() -> Int
  @available(OSX, introduced=10.5, deprecated=10.11)
  func runModal(forWindow window: NSWindow, modalDelegate delegate: AnyObject?, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModal(forWindow window: NSWindow, completionHandler: ((NSModalResponse) -> Void)? = nil)
  var identities: [CBIdentity] { get }
  init()
}
