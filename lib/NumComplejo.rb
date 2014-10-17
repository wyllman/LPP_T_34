class NumComplejo
   attr_reader :real, :img

   def initialize (nReal, nImg)
      @real = r.to_f
      @img  = i.to_f
   end

   def to_s
      return "(#{real}, #{img})"
   end

end
