
@available(iOS 8.0, *)
enum MTLVertexFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case invalid
  case uChar2
  case uChar3
  case uChar4
  case char2
  case char3
  case char4
  case uChar2Normalized
  case uChar3Normalized
  case uChar4Normalized
  case char2Normalized
  case char3Normalized
  case char4Normalized
  case uShort2
  case uShort3
  case uShort4
  case short2
  case short3
  case short4
  case uShort2Normalized
  case uShort3Normalized
  case uShort4Normalized
  case short2Normalized
  case short3Normalized
  case short4Normalized
  case half2
  case half3
  case half4
  case float
  case float2
  case float3
  case float4
  case int
  case int2
  case int3
  case int4
  case uInt
  case uInt2
  case uInt3
  case uInt4
  case int1010102Normalized
  case uInt1010102Normalized
}
@available(iOS 8.0, *)
enum MTLVertexStepFunction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case constant
  case perVertex
  case perInstance
}
@available(iOS 8.0, *)
class MTLVertexBufferLayoutDescriptor : Object, Copying {
  var stride: Int
  var stepFunction: MTLVertexStepFunction
  var stepRate: Int
  init()
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class MTLVertexBufferLayoutDescriptorArray : Object {
  subscript (atIndexedSubscript index: Int) -> MTLVertexBufferLayoutDescriptor!
  init()
}
@available(iOS 8.0, *)
class MTLVertexAttributeDescriptor : Object, Copying {
  var format: MTLVertexFormat
  var offset: Int
  var bufferIndex: Int
  init()
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class MTLVertexAttributeDescriptorArray : Object {
  subscript (atIndexedSubscript index: Int) -> MTLVertexAttributeDescriptor!
  init()
}
@available(iOS 8.0, *)
class MTLVertexDescriptor : Object, Copying {
  var layouts: MTLVertexBufferLayoutDescriptorArray { get }
  var attributes: MTLVertexAttributeDescriptorArray { get }
  func reset()
  init()
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
