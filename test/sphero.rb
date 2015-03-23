require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-ORY-AMP-SPP'
device :sphero, :driver => :sphero

work do
  @rolling = false

  every(3.seconds) do
    puts "Rolling..."
    unless @rolling
      sphero.roll 90, rand(360)
      @rolling = true
    else
      sphero.stop
      @rolling = false
    end
  end
end