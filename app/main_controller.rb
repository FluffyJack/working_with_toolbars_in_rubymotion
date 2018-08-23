class MainController < UIViewController
  def viewDidLoad
    super

    view.backgroundColor = UIColor.whiteColor

    add_hello_button

    # navigationController.toolbarHidden = false
    view.addSubview(@toolbar = UIToolbar.new)
    @toolbar.frame = CGRectMake(0, 150, 320, 50)
    @toolbar.setItems([
      UIBarButtonItem.alloc.initWithTitle("Hello", style: UIBarButtonItemStylePlain, target: self, action: 'hello_pressed:'),
      UIBarButtonItem.alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemFlexibleSpace, target: nil, action: nil),
      UIBarButtonItem.alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemAction, target: self, action: 'hello_pressed:')
    ], animated: true)
  end

  def hello_pressed(_)
    navigationController.pushViewController(HelloController.new, animated: true)
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
