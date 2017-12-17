module Location

  def distance_between(x1, y1, x2, y2)
    Math.sqrt((x1 - x2)**2 + (y1 - y2)**2).round(2)
  end

end