# adding  or modifiying functionality ta runtime

class Book
  def title=(s)
    @title = s
  end

  def title
    @title
  end
end

## here is Monket Patching it reopen class and do blow at runtime
class Book
  def title
    "This is no longer returns tile"
  end
end
