
@available(OSX 10.11, *)
protocol MTLCommandEncoder : NSObjectProtocol {
  var device: MTLDevice { get }
  var label: String? { get set }
  func endEncoding()
  func insertDebugSignpost(_ string: String)
  func pushDebugGroup(_ string: String)
  func popDebugGroup()
}
