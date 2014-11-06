class MainView < UIView

  # custom setter
  def sides=(num_sides)
    @sides = num_sides

    # tell rendering engine to redraw this view
    setNeedsDisplay
  end

  def drawRect(rect)
    # use a random color for drawing
    rmq.color.random.set

    # create a path
    path = UIBezierPath.bezierPath

    # draw the polygon
    if @sides
      r = 100
      @sides.times.each do |n|
        x = (r * Math.cos(2 * Math::PI * n / @sides)) + center.x
        y = (r * Math.sin(2 * Math::PI * n / @sides)) + center.y
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
