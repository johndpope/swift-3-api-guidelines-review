
@available(tvOS 8.0, *)
class UIImageAsset : Object, SecureCoding {
  init()
  init?(coder aDecoder: Coder)
  func image(withTraitCollection traitCollection: UITraitCollection) -> UIImage
  func register(image: UIImage, withTraitCollection traitCollection: UITraitCollection)
  func unregisterImage(withTraitCollection traitCollection: UITraitCollection)
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
}
