class Song < ActiveRecord::Base
  def rel
    if self.key > 0 and self.key < 4
      return self.key*-1 - 9
    elsif self.key >= 4
      return self.key*-1 + 3
    elsif self.key < 0 and self.key > -10
      return self.key*-1 + 3
    elsif self.key <= -10
      return self.key*-1 - 9
    else 
      return "Error"
    end
  end
  
  SCALE = {
    1 => "A", 
    2 => "Bb", 
    3 => "B",
    4 => "C",
    5 => "Db",
    6 => "D",
    7 => "Eb",
    8 => "E",
    9 => "F",
    10 => "Gb",
    11 => "G",
    12 => "Ab",
    -1 => "Am",
    -2 => "Bbm",
    -3 => "Bm",
    -4 => "Cm",
    -5 => "C#m",
    -6 => "Dm",
    -7 => "Ebm",
    -8 => "Em",
    -9 => "Fm",
    -10 => "F#m",
    -11 => "Gm",
    -12 => "G#m"
    }
  
  def scale
    return SCALE[self.key]
  end
  
  def scale_rel
    return SCALE[self.rel]
  end
  
end
