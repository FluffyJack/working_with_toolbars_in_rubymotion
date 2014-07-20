class HelloController < UIViewController
  def viewDidLoad
    super

    view.setBackgroundColor UIColor.whiteColor

    view.addSubview(@label = UILabel.new)
    @label.text = "Hello World!"
    @label.textColor = UIColor.blackColor
    @label.frame = CGRectMake(20, 100, 280, 30)
  end
end
