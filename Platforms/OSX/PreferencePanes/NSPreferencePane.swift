
enum NSPreferencePaneUnselectReply : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unselectCancel
  case unselectNow
  case unselectLater
}
let NSPreferencePaneDoUnselectNotification: String
let NSPreferencePaneCancelUnselectNotification: String
let NSPrefPaneHelpMenuInfoPListKey: String
let NSPrefPaneHelpMenuTitleKey: String
let NSPrefPaneHelpMenuAnchorKey: String
class NSPreferencePane : Object {
  init(bundle: Bundle)
  var bundle: Bundle { get }
  func loadMainView() -> NSView
  func mainViewDidLoad()
  var mainNibName: String { get }
  func assignMainView()
  func willSelect()
  func didSelect()
  var shouldUnselect: NSPreferencePaneUnselectReply { get }
  func replyTo(shouldUnselect shouldUnselect: Bool)
  func willUnselect()
  func didUnselect()
  var mainView: NSView
  var initialKeyView: NSView?
  var firstKeyView: NSView?
  var lastKeyView: NSView?
  var autoSaveTextFields: Bool { get }
  var isSelected: Bool { get }
  func updateHelpMenuWith(inArrayOfMenuItems: [[String : String]]?)
  init()
}