class MainController < UIViewController
  def loadView
    self.view = MainView.alloc.init
  end

  def viewDidLoad
    rmq.stylesheet = MainStylesheet

    rmq(view).apply_style(:my_view)

    3.upto(6) do |i|
      button = rmq.append(UIButton.buttonWithType(UIButtonTypeRoundedRect), :my_button).get
      button.setTitle("#{i}", forState:UIControlStateNormal)
      button.rmq.on(:tap) { view.sides = i }
    end

    rmq(:my_button).distribute(:horizontal, margin: 10)
  end

end
