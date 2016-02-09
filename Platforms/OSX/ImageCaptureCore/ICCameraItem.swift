
class ICCameraItem : Object {
  var device: ICCameraDevice { get }
  var parentFolder: ICCameraFolder { get }
  var name: String { get }
  var uti: String { get }
  var fileSystemPath: String { get }
  var isLocked: Bool { get }
  var isRaw: Bool { get }
  var isInTemporaryStore: Bool { get }
  var creationDate: Date { get }
  var modificationDate: Date { get }
  var thumbnailIfAvailable: CGImage? { get }
  var largeThumbnailIfAvailable: CGImage? { get }
  var metadataIfAvailable: [String : AnyObject]? { get }
  var userData: MutableDictionary? { get }
  var ptpObjectHandle: UInt32 { get }
  var wasAddedAfterContentCatalogCompleted: Bool { get }
  init()
}
class ICCameraFolder : ICCameraItem {
  var contents: [ICCameraItem] { get }
  init()
}
class ICCameraFile : ICCameraItem {
  var fileSize: off_t { get }
  var orientation: ICEXIFOrientationType
  var duration: Double { get }
  var sidecarFiles: [ICCameraItem] { get }
  init()
}