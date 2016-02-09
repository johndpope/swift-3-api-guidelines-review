
@available(iOS 8.0, *)
enum AVAudioEnvironmentDistanceAttenuationModel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case exponential
  case inverse
  case linear
}
@available(iOS 8.0, *)
class AVAudioEnvironmentDistanceAttenuationParameters : Object {
  var distanceAttenuationModel: AVAudioEnvironmentDistanceAttenuationModel
  var referenceDistance: Float
  var maximumDistance: Float
  var rolloffFactor: Float
  init()
}
@available(iOS 8.0, *)
class AVAudioEnvironmentReverbParameters : Object {
  var enable: Bool
  var level: Float
  var filterParameters: AVAudioUnitEQFilterParameters { get }
  func loadFactoryReverbPreset(preset: AVAudioUnitReverbPreset)
  init()
}
@available(iOS 8.0, *)
class AVAudioEnvironmentNode : AVAudioNode, AVAudioMixing {
  var outputVolume: Float
  var nextAvailableInputBus: AVAudioNodeBus { get }
  var listenerPosition: AVAudio3DPoint
  var listenerVectorOrientation: AVAudio3DVectorOrientation
  var listenerAngularOrientation: AVAudio3DAngularOrientation
  var distanceAttenuationParameters: AVAudioEnvironmentDistanceAttenuationParameters { get }
  var reverbParameters: AVAudioEnvironmentReverbParameters { get }
  var applicableRenderingAlgorithms: [Number] { get }
  init()
  @available(iOS 9.0, *)
  func destinationFor(mixer mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  @available(iOS 8.0, *)
  var volume: Float
  @available(iOS 8.0, *)
  var pan: Float
  @available(iOS 8.0, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  @available(iOS 8.0, *)
  var rate: Float
  @available(iOS 8.0, *)
  var reverbBlend: Float
  @available(iOS 8.0, *)
  var obstruction: Float
  @available(iOS 8.0, *)
  var occlusion: Float
  @available(iOS 8.0, *)
  var position: AVAudio3DPoint
}