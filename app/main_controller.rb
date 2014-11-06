class MainController < UIViewController

  # specify the view class we want to use
  def loadView
    self.view = MainView.alloc.init
  end

  def viewDidLoad
    # declare a stylesheet for this controller
    rmq.stylesheet = MainStylesheet

    # apply a 'style' to this controller's view
    # a la CSS stylesheet classes
    rmq(view).apply_style(:my_view)

    # create 4 buttons and hook up listeners
    3.upto(6) do |i|
      button = rmq.append(UIButton.buttonWithType(UIButtonTypeRoundedRect), :my_button).get
      button.setTitle("#{i}", forState:UIControlStateNormal)
      button.rmq.on(:tap) { view.sides = i }
    end

    # find all the views with the :my_button style
    # and evenly space them with a margin of 10 points
    # a la jQuery
    rmq(:my_button).distribute(:horizontal, margin: 10)
  end

end
