class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = MainController.new

    @window.makeKeyAndVisible

    @audio_controller = AEAudioController.alloc.initWithAudioDescription(
      AEAudioController.nonInterleaved16BitStereoAudioDescription,
      inputEnabled:true)

    @audio_controller.createChannelGroup
    true
  end
end
