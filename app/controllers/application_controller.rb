class ApplicationController < ActionController::Base

  def home

    render({ :template => "starter.html.erb"})
  end

  def forex
    symbolsURL = "https://api.exchangerate.host/symbols"

    s = open(symbolsURL).read
    s = JSON.parse(s)

    symbols = s.fetch("symbols").keys
    @res = symbols
    render({ :template => "forex.html.erb"})

  end

  def forexOne
    symbolsURL = "https://api.exchangerate.host/symbols"

    s = open(symbolsURL).read
    s = JSON.parse(s)

    symbols = s.fetch("symbols").keys
    @res = symbols

    @cur = params.fetch("one")

    render({ :template => "forex1.html.erb"})
    
  end
  
  def forexTwo
    
    @from = params.fetch("one")
    @to = params.fetch("two")
    
    conversionURL = "https://api.exchangerate.host/convert?from=" + @from + "&to=" + @to 

    s = open(conversionURL).read
    s = JSON.parse(s)

    info = s.fetch("info")
    rate = info.fetch("rate")
    @res = rate.to_s

    render({ :template => "forex2.html.erb"})

  end

  def covid

  end

end

