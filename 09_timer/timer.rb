class Timer
    attr_accessor :seconds
    
    def initialize
        @seconds = 0
    end
            
    def time_string
        seconds = @seconds
        hours = seconds / 3600
        minutes = (seconds % 3600) / 60
        seconds_remaining = seconds % 60
        timer = "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds_remaining)}"
    end
    
    def padded(number) # Adds extra 0 if time is a single digit (e.g. :9 to :09)
        if number < 10
            return "0#{number}"
        elsif number.to_s.length == 2
            return "#{number}"
        end
    end
end
