# Luna's Lullaby by Helen Keeling-Marston
#
# Original song available on youTube here:
# https://www.youtube.com/watch?v=QGFQTBdUJTY

# Set tempo (beats per minute)
# Set using use_bpm bpm later (to allow this to change)
bpm = 75

# To save space on piano parts with decay and sleep the same length
# Define play sleep (plays") function
define :plays do |note, length|
  play note, decay: length
  sleep length
end

#======================================
# Left hand piano parts

define :left_hand1 do |bar_sleep|
  sleep bar_sleep
  plays 'D4', 0.5
  plays 'A4', 1
  plays 'D5', 1
  plays 'A4', 0.5
  plays 'D5', 0.5
  plays 'A4', 0.5
end

define :left_hand2 do |bar_sleep|
  
  2.times do
    sleep bar_sleep
    plays 'D4', 0.5
    plays 'A4', 1
    plays 'D5', 1
    plays 'A4', 0.5
    plays 'D5', 0.5
    plays 'A4', 0.5
  end
  
  2.times do
    sleep bar_sleep
    plays 'B3', 0.5
    plays 'Fs4', 1
    plays 'B4', 1
    plays 'Fs4', 0.5
    plays 'B4', 0.5
    plays 'Fs4', 0.5
  end
  
  2.times do
    sleep bar_sleep
    plays 'E4', 0.5
    plays 'B4', 1
    plays 'E5', 1
    plays 'B4', 0.5
    plays 'E5', 0.5
    plays 'B4', 0.5
  end
  
  
  sleep bar_sleep
  plays 'Cs4', 0.5
  plays 'G4', 1
  plays 'D5', 1
  plays 'G4', 0.5
  plays 'D5', 0.5
  plays 'G4', 0.5
  
  
  sleep bar_sleep
  plays 'A4', 0.5
  plays 'B4', 0.5
  plays 'Cs5', 0.5
  plays 'B4', 0.5
  plays 'A4', 0.5
  plays 'B4', 0.5
  plays 'Cs5', 0.5
  plays 'E5', 0.5
  
end

define :left_hand3 do |bar_sleep|
  
  2.times do
    sleep bar_sleep
    play 'D4', decay: 1
    sleep 0.5
    play 'A4', decay: 0.5, vel: 0.15
    play 'D5', decay: 0.5, vel: 0.15
    sleep 1
    play 'A4', decay: 1, vel: 0.15
    play 'D5', decay: 1, vel: 0.15
    sleep 2.5
  end
  
  2.times do
    sleep bar_sleep
    play 'B3', decay: 1
    sleep 0.5
    play 'Fs4', decay: 0.5, vel: 0.15
    play 'B4', decay: 0.5, vel: 0.15
    sleep 1
    play 'Fs4', decay: 1, vel: 0.15
    play 'B4', decay: 1, vel: 0.15
    sleep 2.5
  end
  
  2.times do
    sleep bar_sleep
    play 'E4', decay: 1
    sleep 0.5
    play 'B4', decay: 0.5, vel: 0.15
    play 'E5', decay: 0.5, vel: 0.15
    sleep 1
    play 'B4', decay: 1, vel: 0.15
    play 'E5', decay: 1, vel: 0.15
    sleep 2.5
  end
  
  sleep bar_sleep
  play 'Cs4', decay: 1
  sleep 0.5
  play 'G4', decay: 0.5, vel: 0.15
  play 'D5', decay: 0.5, vel: 0.15
  sleep 1
  play 'G4', decay: 1, vel: 0.15
  play 'D5', decay: 1, vel: 0.15
  sleep 2.5
  
  sleep bar_sleep
  play 'Cs4', decay: 1
  sleep 0.5
  play 'G4', decay: 0.5, vel: 0.15
  play 'Cs5', decay: 0.5, vel: 0.15
  sleep 1
  play 'G4', decay: 1, vel: 0.15
  play 'Cs5', decay: 1, vel: 0.15
  sleep 2.5
  
end

define :left_hand4 do |bar_sleep|
  sleep bar_sleep
  plays 'D4', 0.5
  plays 'A4', 1
  plays 'D5', 1
  plays 'A4', 0.5
  plays 'D5', 0.5
  plays 'A4', 0.5
  
  sleep bar_sleep*1.5
  play 'D4', decay: 1.5, vel: 0.15
end

#======================================
# Right hand parts

define :right_hand1 do |bar_sleep|
  sleep bar_sleep + 4
end

define :right_hand2 do |bar_sleep|
  
  4.times do
    sleep bar_sleep
    sleep 0.5
    plays 'Fs5', 0.5
    plays 'A5', 0.5
    plays 'Fs5', 0.5
    plays 'E6', 1
    sleep 1
  end
  
  2.times do
    sleep bar_sleep
    sleep 0.5
    plays 'B5', 0.5
    plays 'D6', 0.5
    plays 'B5', 0.5
    plays 'A6', 1
    sleep 1
  end
  
  sleep bar_sleep
  plays 'E6', 1
  sleep 2.5
  plays 'A6', 0.5
  
  sleep bar_sleep
  plays 'B6', 1
  plays 'A6', 1
  plays 'Fs6', 1
  plays 'E6', 1
  
end

define :right_hand3 do |bar_sleep|
  
  2.times do
    sleep bar_sleep
    2.times do
      plays 'A6', 0.5
      plays 'D6', 0.5
      plays 'E6', 0.5
      plays 'Fs6', 0.5
    end
  end
  
  2.times do
    sleep bar_sleep
    2.times do
      plays 'E6', 0.5
      plays 'D6', 0.5
      plays 'B5', 0.5
      plays 'D6', 0.5
    end
  end
  
  2.times do
    sleep bar_sleep
    plays 'E6', 0.5
    plays 'Fs6', 0.5
    plays 'D6', 0.5
    plays 'E6', 0.5
    plays 'B5', 0.5
    plays 'D6', 1
    sleep 0.5
  end
  
  sleep bar_sleep
  plays 'E6', 1
  sleep 2.5
  plays 'A6', 0.5
  
  sleep bar_sleep
  plays 'B6', 1
  plays 'A6', 1
  plays 'Fs6', 1
  plays 'A6', 1
  
end

define :right_hand4 do |bar_sleep|
  sleep bar_sleep
  play 'D6', decay: 1.5
end

define :synth1 do |bar_sleep|
  sleep 8 * (bar_sleep + 4)
end


define :synth2 do |bar_sleep|
  sleep bar_sleep
  play 'Fs5', sustain: (4 + 5 * (4 + bar_sleep) -1 )
  sleep (4 + 5 * (4 + bar_sleep))
  play 'E5', sustain: 4 + bar_sleep - 1
  sleep 2 * (4 + bar_sleep)
end

define :synth3 do |bar_sleep|
  sleep bar_sleep
  play 'D5', sustain: (4 + 5 * (4 + bar_sleep) -1 )
  play 'Fs5', sustain: (4 + 5 * (4 + bar_sleep) -1 )
  sleep (4 + 5 * (4 + bar_sleep))
  play 'Cs5', sustain: 4 + bar_sleep - 1
  play 'E5', sustain: 4 + bar_sleep - 1
  sleep 2 * (4 + bar_sleep)
end


define :synth4 do |bar_sleep|
  sleep bar_sleep
  play 'Fs4', sustain: (4 + 5 * (4 + bar_sleep) -1 )
  play 'D5', sustain: (4 + 5 * (4 + bar_sleep) -1 )
  play 'Fs5', sustain: (4 + 5 * (4 + bar_sleep) -1 )
  sleep (4 + 5 * (4 + bar_sleep))
  play 'E4', sustain: 4 + bar_sleep - 1
  play 'Cs5', sustain: 4 + bar_sleep - 1
  play 'E5', sustain: 4 + bar_sleep - 1
  sleep 2 * (4 + bar_sleep)
end

define :synth5 do |bar_sleep|
  sleep bar_sleep
  play 'D4', sustain: (4 + 5 * (4 + bar_sleep) -1 )
  play 'Fs4', sustain: (4 + 5 * (4 + bar_sleep) -1 )
  play 'D5', sustain: (4 + 5 * (4 + bar_sleep) -1 )
  play 'Fs5', sustain: (4 + 5 * (4 + bar_sleep) -1 )
  sleep (4 + 5 * (4 + bar_sleep))
  play 'Cs4', sustain: 4 + bar_sleep - 1
  play 'E4', sustain: 4 + bar_sleep - 1
  play 'Cs5', sustain: 4 + bar_sleep - 1
  play 'E5', sustain: 4 + bar_sleep - 1
  sleep 2 * (4 + bar_sleep)
end


define :synth5 do |bar_sleep|
  sleep bar_sleep
  play 'D4', sustain: 4 + bar_sleep - 1
end

#==========================
# Main program to play parts in parallel

# Play piano parts with (half default) reverb
# to soften this a little

with_fx :reverb, mix: 0.2 do
  
  use_synth :piano
  use_synth_defaults hard: 0.35 # Slightly softer than normal piano
  
  in_thread do # left hand piano
    
    use_bpm bpm
    
    2.times do
      left_hand1 0.1 #Intro
    end
    
    left_hand2 0.1
    left_hand2 0.067
    
    use_bpm bpm * 1.01
    
    left_hand2 0.02
    left_hand3 0.0
    
    use_bpm bpm
    
    left_hand3 0.02
    
    left_hand2 0.067
    left_hand2 0.1
    
    left_hand4 0.1 # Outro
  end # end of left hand piano
  
  in_thread do # right hand piano
    
    use_bpm bpm
    
    2.times do
      right_hand1 0.1 # Rest during intro
    end
    
    right_hand2 0.1
    right_hand2 0.067
    
    use_bpm bpm * 1.01
    
    right_hand3 0.02
    
    with_transpose -12 do # One octave lower
      right_hand3 0
      
      use_bpm bpm
      
      right_hand3 0.02
      
    end
    
    right_hand2 0.067
    right_hand2 0.1
    
    right_hand4 0.1 # Outro
    
  end # end of right hand piano
  
end

in_thread do
  
  use_synth :tech_saws
  use_synth_defaults attack: 0.5, decay: 0.5, amp: 0.05
  
  use_bpm bpm
  
  2.times do
    right_hand1 0.1 # Rest during intro
  end
  
  synth1 0.1 # Further rest in 1st section
  
  synth2 0.067
  
  use_bpm bpm * 1.01
  synth3 0.02
  
  synth3 0
  
  use_bpm bpm
  
  synth4 0.02
  synth3 0.067
  synth2 0.1
  
  synth5 0.1 # Outro
  
end
