class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    Demo.run_demo

    RemoteManager.setup

    UINavigationBar.appearance.tap do |o|
      o.barTintColor = UIColor.purpleColor
      o.tintColor = UIColor.whiteColor

      o.setTitleTextAttributes({
        UITextAttributeTextColor => UIColor.whiteColor
      })
    end

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(TaskListController.new)
    @window.makeKeyAndVisible

    LoadTasksCommand.run

    true
  end
end
