#
# Pachelbel's Canon
# Joe Walters - 8T2
#

# 90 bpm
use_bpm 90

# ============================================================
# define the parts

# ground bass
define :grbass do
  use_synth :piano
  use_synth_defaults decay: 2
  
  play 'C4'
  sleep 2
  play 'G3'
  sleep 2
  play 'A3'
  sleep 2
  play 'E3'
  sleep 2
  play 'F3'
  sleep 2
  play 'C3'
  sleep 2
  play 'F3'
  sleep 2
  play 'G3'
  sleep 2
end

# part 1
define :p1 do
  use_synth :piano
  use_synth_defaults decay: 2
  
  play 'e5'
  sleep 2
  play 'd5'
  sleep 2
  play 'c5'
  sleep 2
  play 'b4'
  sleep 2
  play 'a4'
  sleep 2
  play 'g4'
  sleep 2
  play 'a4'
  sleep 2
  play 'b4'
  sleep 2
end

# part 2
define :p2 do
  use_synth :piano
  use_synth_defaults decay: 2
  
  play 'c5'
  sleep 2
  play 'b4'
  sleep 2
  play 'a4'
  sleep 2
  play 'g4'
  sleep 2
  play 'f4'
  sleep 2
  play 'e4'
  sleep 2
  play 'f4'
  sleep 2
  play 'g4'
  sleep 2
end

# part 3
define :p3 do
  use_synth :piano
  use_synth_defaults decay: 1
  
  play 'c5'
  sleep 1
  play 'e5'
  sleep 1
  play 'g5'
  sleep 1
  play 'f5'
  sleep 1
  
  play 'e5'
  sleep 1
  play 'c5'
  sleep 1
  play 'e5'
  sleep 1
  play 'd5'
  sleep 1
  
  play 'c5'
  sleep 1
  play 'a4'
  sleep 1
  play 'c5'
  sleep 1
  play 'g4'
  sleep 1
  
  play 'a4'
  sleep 1
  play 'c5'
  sleep 1
  play 'd5', decay: 2
  sleep 2
  
end


# memories (maroon 5)
define :mem do
  use_synth :piano
  
  #bar 1
  play 'g5', decay: 0.5
  sleep 0.5
  play 'e5', decay: 0.25
  sleep 0.25
  play 'f5', decay: 0.25
  sleep 0.25
  play 'g5', decay: 0.5
  sleep 0.5
  play 'e5', decay: 0.25
  sleep 0.25
  play 'f5', decay: 0.25
  sleep 0.25
  play 'g5', decay: 1
  sleep 1
  sleep 1
  
  #bar 2
  play 'e5', decay: 0.5
  sleep 0.5
  play 'c5', decay: 0.25
  sleep 0.25
  play 'd5', decay: 0.25
  sleep 0.25
  play 'e5', decay: 0.5
  sleep 0.5
  play 'c5', decay: 0.25
  sleep 0.25
  play 'd5', decay: 0.25
  sleep 0.25
  play 'e5', decay: 0.5
  sleep 0.5
  play 'c5', decay: 0.25
  sleep 0.25
  play 'd5', decay: 0.25
  sleep 0.25
  play 'e5', decay: 0.5
  sleep 0.5
  play 'd5', decay: 0.25
  sleep 0.25
  play 'c5', decay: 0.25
  sleep 0.25
  
  #bar 3
  play 'a4', decay: 0.5
  sleep 0.5
  play 'a4', decay: 0.5
  sleep 0.5
  play 'a4', decay: 0.5
  sleep 0.5
  play 'a4', decay: 0.25
  sleep 0.25
  play 'g4', decay: 0.25
  sleep 0.25
  play 'a4', decay: 0.25
  sleep 0.25
  play 'g4', decay: 0.25
  sleep 0.25
  play 'g4', decay: 0.5
  sleep 1
  play 'g4', decay: 0.5
  sleep 0.5
  
  # bar 4
  play 'a4', decay: 0.25
  sleep 0.25
  play 'a4', decay: 0.25
  sleep 0.25
  play 'a4', decay: 0.5
  sleep 0.5
  play 'a4', decay: 0.5
  sleep 0.5
  play 'c5', decay: 0.5
  sleep 0.5
  play 'b4', decay: 2
  sleep 2
end

# welcome to the black parade
define :welcome do
  use_synth :piano
  use_synth_defaults decay: 1
  
  play 'c5', decay: 2
  sleep 2
  play 'b4'
  sleep 1
  play 'e5'
  sleep 1
  
  play 'a4', decay: 2
  sleep 2
  play 'g4'
  sleep 1
  play 'c5'
  sleep 1
  
  play 'f4', decay: 2
  sleep 2
  play 'e4'
  sleep 1
  play 'a4'
  sleep 1
  
  play 'd4', decay: 2
  sleep 2
  play 'g4',decay: 2
  sleep 2
  
end

# chords
define :chords do
  use_synth :saw
  use_synth_defaults decay: 2, amp: 0.2
  
  play 'g4'
  play 'c5'
  play 'e5'
  sleep 2
  play 'g4'
  play 'b4'
  play 'd5'
  sleep 2
  
  play 'e4'
  play 'a4'
  play 'c5'
  sleep 2
  play 'e4'
  play 'g4'
  play 'b4'
  sleep 2
  
  play 'f4'
  play 'a4'
  play 'c5'
  sleep 2
  play 'e4'
  play 'g4'
  play 'c5'
  sleep 2
  
  play 'f4'
  play 'a4'
  play 'c5'
  sleep 2
  play 'g4'
  play 'b4'
  play 'd5'
  sleep 2
  
end

# C U when you get there
define :cu do
  use_synth :piano
  
  #bar 1
  play 'e4',decay: 1
  sleep 1
  play 'g4',decay: 1
  sleep 1
  play 'a4',decay: 1
  sleep 1
  play 'g4',decay: 0.5
  sleep 0.5
  play 'f4',decay: 0.5
  sleep 0.5
  
  play 'e4',decay: 0.5
  sleep 0.5
  play 'c4',decay: 0.5
  sleep 0.5
  sleep 2
  play 'e4',decay: 0.25
  sleep 0.25
  play 'f4',decay: 0.25
  sleep 0.25
  play 'e4',decay: 0.25
  sleep 0.25
  play 'f4',decay: 0.25
  sleep 0.25
  
  play 'e4',decay: 0.5
  sleep 0.5
  play 'c4',decay: 0.5
  sleep 0.5
  sleep 2
  play 'e4',decay: 0.25
  sleep 0.25
  play 'f4',decay: 0.25
  sleep 0.25
  play 'e4',decay: 0.25
  sleep 0.25
  play 'f4',decay: 0.25
  sleep 0.25
  
  play 'e4',decay: 0.5
  sleep 0.5
  play 'c4',decay: 1.5
  sleep 1.5
  play 'd4',decay: 2
  sleep 2
  
end

# ======================================================
#  here we use the parts to define canons

# how long is a round?
round = 16

define :pacs_canon do
  
  in_thread do
    6.times do
      grbass
    end
  end
  
  in_thread do
    6.times do
      chords
    end
  end
  
  in_thread do
    sleep round
    5.times do
      p1
    end
  end
  
  in_thread do
    sleep round
    5.times do
      p2
    end
  end
  
  in_thread do
    sleep round
    5.times do
      p3
    end
  end
  
end

define :joes_canon do
  in_thread do
    8.times do
      grbass
    end
    
    use_synth :piano
    play 'C4', decay:2
  end
  
  in_thread do
    sleep round
    7.times do
      chords
    end
    use_synth :saw
    use_synth_defaults decay: 2, amp: 0.2
    play 'g4'
    play 'c5'
    play 'e5'
  end
  
  in_thread do
    sleep 2*round
    6.times do
      welcome
    end
  end
  
  in_thread do
    sleep 3*round
    2.times do
      mem
      cu
    end
    sleep round
  end
  
  
  
  
end

# ======================================================
#  play the canons

pacs_canon
#joes_canon
