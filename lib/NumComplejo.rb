class NumComplejo

   attr_reader :r, :i

   def initialize (r, i)
      raise ArgumentError, "Argumento no numerico" unless r.is_a? Numeric
      raise ArgumentError, "Argumento no numerico" unless i.is_a? Numeric
     
      @r = r
      @i = i
   end

   def to_s
      "(#{@r}+#{@i}i)"
   end

   def +(other)
      if (other.is_a? NumComplejo)
         return NumComplejo.new(@r + other.r, @i + other.i)
      elsif (other.is_a? Numeric)
         return NumComplejo.new(@r + other, @i)
      else
         puts "Error, second argument isnt a valid number."
      end
   end 

   def -@
      return NumComplejo.new(-@r, @i)
   end

   def *(other)
      if (other.instance_of? NumComplejo)
         return NumComplejo.new(@r * other.r - @i * other.i, @r * other.i + @i * other.r)
      elsif (other.instance_of? Fixnum)
         return NumComplejo.new( @r * other, @i * other)
      else
         puts "Error, second argument isn't a valid number."
      end
   end

   def /(other)
      if (other.instance_of? NumComplejo)
         d = other.r * other.r + other.i * other.i
         return NumComplejo.new((@r * other.r + @i * other.i) / d,
                                (@i * other.r - @r * other.i) / d)
      elsif (other.instance_of? Fixnum)
         return NumComplejo.new(@r / other, @i / other)
      else
         puts "Error, second argument isn't valid number."
      end
   end
end
