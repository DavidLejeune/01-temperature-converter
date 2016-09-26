require 'tk'

class Converter
  def initialize
    ph = {'padx'=>15, 'pady'=>10}

    p = proc {convert}

    @textf = TkVariable.new
    @textc = TkVariable.new
    @textk = TkVariable.new

    root = TkRoot.new{title 'Temperature Converter'}
    top = TkFrame.new(root)

    TkLabel.new(top) {text 'Fahrentheit';pack(ph)}
    @entryfahr = TkEntry.new(top, 'textvariable'=>@textf)
    @entryfahr.pack(ph)

    TkLabel.new(top) {text 'Celcsius';pack(ph)}
    @entrycel = TkEntry.new(top, 'textvariable'=>@textc)
    @entrycel.pack(ph)

    TkLabel.new(top) {text 'Kelvin';pack(ph)}
    @entrykel = TkEntry.new(top, 'textvariable'=>@textk)
    @entrykel.pack(ph)

    TkButton.new(top) {text 'Convert'; command p; pack ph}
    TkButton.new(top) {text 'Exit'; command {proc exit}; pack ph}

    top.pack('fill'=>'both', 'side'=>'top')

  end

  def convert

    if @textf != ""
      @textc.value = (5.0/9.0) * (@textf - 32.0)
      @textk.value = @textc+ 273.15
    elsif @textc != ""
      @textf.value = (9.0/5.0) * @textc + 32.0
      @textk.value = @textc+ 273.15
    elsif @textk != ""
      @textc.value = @textk - 273.15
      @textf.value = (9.0/5.0) * @textc + 32.0
    end

  end

end

Converter.new
Tk.mainloop
