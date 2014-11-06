class MainView < UIView

  attr_accessor :sides

  # override iOS rendering method
  def drawRect(rect)

    # grab a random color for drawing
    red = rand
    green = rand
    blue = rand
    color = UIColor.colorWithRed(red, green:green, blue:blue, alpha:1.0)

    # set the random color as current drawing color
    color.set

    #draw a polygon
    path = UIBezierPath.bezierPath

    if @sides
      r = 100
      @sides.times.each do |n|
        x = (r * Math.cos(2*Math::PI*n/@sides)) + center.x
        y = (r * Math.sin(2*Math::PI*n/@sides)) + center.y
        if n == 0
          path.moveToPoint(CGPointMake(x, y))
        else
          path.addLineToPoint(CGPointMake(x, y))
        end
      end
      path.closePath
      path.fill
    end
  end

end
