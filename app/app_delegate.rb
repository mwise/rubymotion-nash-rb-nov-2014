class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = MainController.new

    @window.makeKeyAndVisible

    # create a new audio controller
    @audio_controller = AEAudioController.alloc.initWithAudioDescription(
      AEAudioController.nonInterleaved16BitStereoAudioDescription,
      inputEnabled:true)

    # this *should* work, but blows up during precompilation
    @audio_controller.createChannelGroup
    true
  end
end
