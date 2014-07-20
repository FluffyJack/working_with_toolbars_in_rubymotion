class MainController < UIViewController
  def viewDidLoad
    super

    view.setBackgroundColor UIColor.whiteColor

    add_hello_button

    # setup toolbar here
  end

  def hello_pressed(sender)
    puts "Hello Pressed"
  end

  private

  def add_hello_button
    view.addSubview(@button = UIButton.new)
    @button.setTitle("Hello", forState: UIControlStateNormal)
    @button.setTitleColor(UIColor.blueColor, forState: UIControlStateNormal)
    @button.frame = CGRectMake(20, 100, 280, 30)
    @button.addTarget(self, action: 'hello_pressed:', forControlEvents: UIControlEventTouchUpInside)
  end
end
