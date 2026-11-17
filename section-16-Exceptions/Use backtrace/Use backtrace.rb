def zen
  begin
    p eval("(28+2)/2")
    p eval("(29+3)\\2")
    p eval("(2,3,4,5,35,56,66")
    rescue SyntaxError => error
      puts error.backtrace
    end
  end
  zen
