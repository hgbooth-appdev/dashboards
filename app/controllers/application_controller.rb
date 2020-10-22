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
    render({ :template => "forex1.html.erb"})

  end

  def covid

  end

end

