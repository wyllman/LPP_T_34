class NumComplejo
   attr_reader :real, :img

   def initialize (nReal, nImg)
      @real = r.to_f
      @img  = i.to_f
   end

   def to_s
      return "(#{real}, #{img})"
   end

   def +(other)
      if (other.instance_of? NumComplejo)
         return NumComplejo.new (real + other.real, img + other.img)
      elsif (other. instance_of Fixnum)
         return NumComplejo.new (real + other, img)
      else
         puts "Error, second argument isn't a valid number."
      end
   end 

   def -@
      return NumComplejo.new (-real, img)
   end

   def *(other)
      if (other.instance_of? NumComplejo)
         return NumComplejo.new (real * other.real - img * other.img,real * other.img + img * other.real)
      elsif (other.instance_of? Fixnum)
         return NumComplejo.new ( real * other, img * other)
      else
         puts "Error, second argument isn't a valid number."
      end
   end

   def /(other)
      if (other.instance_of? NumComplejo)
         d = other.real * ohter.real + other.img * other.img
         return NumComplejo.new ((real * other.real + img * other.img) / d,
                                (img * other.real - real * other.img) / d)
      elsif (other.instance_of? Fixnum)
         return NumComplejo.new (real / other, img / other)
      else
         puts "Error, second argument isn't valid number."
      end
   end
end
