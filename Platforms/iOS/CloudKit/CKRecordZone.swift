
@available(iOS 8.0, *)
struct CKRecordZoneCapabilities : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var fetchChanges: CKRecordZoneCapabilities { get }
  static var atomic: CKRecordZoneCapabilities { get }
}
@available(iOS 8.0, *)
let CKRecordZoneDefaultName: String
@available(iOS 8.0, *)
class CKRecordZone : Object, SecureCoding, Copying {
  class func defaultRecordZone() -> CKRecordZone
  init(zoneName: String)
  init(zoneID: CKRecordZoneID)
  var zoneID: CKRecordZoneID { get }
  var capabilities: CKRecordZoneCapabilities { get }
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}