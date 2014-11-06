class MainController < UIViewController

  # specify the view class we want to use
  def loadView
    self.view = MainView.alloc.init
  end

  def viewDidLoad
    # apply some style to the whole view
    view.backgroundColor = UIColor.whiteColor

    # add some buttons
    @button_1 = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button_1.frame = [[10,30],[37,37]]
    @button_1.setTitle("3", forState:UIControlStateNormal)
    @button_1.backgroundColor = UIColor.lightGrayColor

    @button_1.addTarget(self, action: :touch_up_inside, forControlEvents: UIControlEventTouchUpInside)
    view.addSubview(@button_1)

    @button_2 = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button_2.frame = [[57,30],[37,37]]
    @button_2.setTitle("4", forState:UIControlStateNormal)
    @button_2.backgroundColor = UIColor.lightGrayColor

    @button_2.addTarget(self, action: :touch_up_inside, forControlEvents: UIControlEventTouchUpInside)
    view.addSubview(@button_2)

    @button_3 = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button_3.frame = [[104,30],[37,37]]
    @button_3.setTitle("5", forState:UIControlStateNormal)
    @button_3.backgroundColor = UIColor.lightGrayColor

    @button_3.addTarget(self, action: :touch_up_inside, forControlEvents: UIControlEventTouchUpInside)
    view.addSubview(@button_3)

    @button_4 = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button_4.frame = [[151,30],[37,37]]
    @button_4.setTitle("6", forState:UIControlStateNormal)
    @button_4.backgroundColor = UIColor.lightGrayColor

    @button_4.addTarget(self, action: :touch_up_inside, forControlEvents: UIControlEventTouchUpInside)
    view.addSubview(@button_4)
  end

  # touch event handler
  def touch_up_inside(sender = nil, event = nil)
    sides = sender.titleForState(UIControlStateNormal)
    draw_polygon(sides.to_i)
  end

  # modify the view and queue it for redrawing
  def draw_polygon(sides)
    view.sides = sides
    view.setNeedsDisplay
  end

end
