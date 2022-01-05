# The Fairytale of New York by Shane Mac-Gowan and Jem Finer
#
# Based on sheet music downloaded from:
# https://musescore.com/user/1352181/scores/1464221
#
# (part 1 - up to bar 22)

# Use same piano throughout
use_synth :piano

# To save space on piano parts with decay and sleep the same length
# Define play sleep ("plays") function
define :plays do |note, length|
  play note, decay: length
  sleep length
end

# Also do the same for 2, 3 and 4 notes
define :plays2 do |note1, note2, length|
  play note1, decay: length
  play note2, decay: length
  sleep length
end
define :plays3 do |note1, note2, note3, length|
  play note1, decay: length
  play note2, decay: length
  play note3, decay: length
  sleep length
end
define :plays4 do |note1, note2, note3, note4, length|
  play note1, decay: length
  play note2, decay: length
  play note3, decay: length
  play note4, decay: length
  sleep length
end


define :intro_rh do
  
  plays 'A4', 0.5
  
  # bar 1
  play 'D4', decay: 2
  play 'G4', decay: 2
  plays 'B4', 0.5
  plays 'G4', 0.5
  plays2 'A4', 'Cs5', 0.5
  plays2 'B4', 'D5', 0.5
  
  play 'Fs4', decay: 1
  play 'A4', decay: 1
  plays 'E4', 0.5
  plays 'D4', 0.5
  play 'B3', decay: 1
  play 'D4', decay: 1
  plays 'G4', 0.5
  plays 'Fs4', 0.5
  
  # bar 2
  play 'A3', decay: 1
  play 'D4', decay: 1
  plays 'E4', 0.75
  plays 'D4', 0.25
  plays3 'Fs3', 'A3', 'D4', 1
  
  play 'E3', decay: 2
  play 'G3', decay: 2
  sleep 0.5
  plays 'A3', 0.25
  plays 'A3', 0.25
  plays 'D4', 0.75
  plays 'Cs4', 0.25
end

define :intro_lh do
  sleep   0.5
  
  # bar 1
  plays 'D3', 2
  plays 'D3', 1
  plays 'D3', 1
  
  plays 'E3', 1
  plays 'D3', 1
  plays 'A2', 1
  plays 'B2', 0.5
  plays 'Cs3', 0.5
end

define :intro do
  # tempo (4:4)
  use_bpm 55
  
  use_synth_defaults
  
  in_thread do
    intro_lh
    
  end
  in_thread do
    intro_rh
  end
  sleep 0.5
  sleep 8
end

define :sect1_rh do
  # bar 3
  plays3 'Fs3', 'A3', 'E4', 0.75
  plays 'D4', 0.25
  plays3 'Fs3', 'A3', 'D4', 1.5
  plays4 'E4', 'Fs4', 'A4', 'D5', 0.5
  plays4 'D4', 'Fs4', 'A4', 'D5', 0.5
  plays 'Cs5', 0.5
  
  # bar 4
  plays3 'D4', 'G4', 'D5', 0.75
  plays 'Cs5', 0.25
  plays3 'D4', 'G4', 'B4', 1.5
  plays2 'G4', 'B4', 0.5
  plays2 'A4', 'Cs5', 0.5
  plays2 'B4', 'D5', 0.5
  
  # bar 5
  plays3 'E4', 'Fs4', 'A4', 0.75
  plays 'Fs4', 0.25
  plays3 'A3', 'D4', 'Fs4', 1.5
  plays 'D4', 0.5
  plays2 'D4', 'G4', 0.5
  plays2 'D4', 'Fs4', 0.5
  
  # bar 6
  plays3 'G3', 'B3', 'Fs4', 0.75
  plays 'E4', 0.25
  plays3 'G3', 'B3', 'E4', 1
  
  play 'A3', decay: 1
  play 'Cs4', decay: 1
  sleep 0.5
  plays 'A3', 0.5
  plays 'D4', 0.5
  plays 'Cs4', 0.5
  
  # bar 7
  plays3 'Fs3', 'A3', 'E4', 0.75
  plays 'D4', 0.25
  plays3 'Fs3', 'A3', 'D4', 1
  plays3 'Fs3', 'A3', 'D4', 0.5
  plays4 'E4', 'Fs4', 'A4', 'D5', 0.5
  plays4 'D4', 'Fs4', 'A4', 'D5', 0.5
  plays 'Cs5', 0.5
  
  # bar 8
  plays3 'D4', 'G4', 'D5', 0.75
  plays 'Cs5', 0.25
  plays3 'D4', 'G4', 'B4', 1
  plays3 'D4', 'G4', 'B4', 0.5
  plays2 'G4', 'B4', 0.5
  plays2 'A4', 'Cs5', 0.5
  plays2 'B4', 'D5', 0.5
  
  # bar 9
  plays3 'Cs4', 'Fs4', 'A4', 0.75
  plays 'Fs4', 0.25
  plays3 'A3', 'D4', 'Fs4', 1
  plays3 'A3', 'D4', 'Fs4', 0.5
  plays 'D4', 0.5
  plays3 'B3', 'D4', 'G4', 0.5
  plays 'Fs4', 0.5
  
end

define :sect1_lh do
  define :bars3to5_lh do
    # bar 3
    plays 'D3', 1
    plays 'D3', 3
    
    plays 'G2', 1
    plays 'G2', 3
    
    # bar 5
    plays 'D3', 1
    plays 'D3', 3
  end
  
  bars3to5_lh
  # bar 6
  plays 'A2', 1
  plays 'A2', 1
  plays 'A2', 1
  plays 'B2', 0.5
  plays 'Cs3', 0.5
  
  # bar 7-9 repeat 3-5
  bars3to5_lh
end


define :sect1 do
  # tempo (4:4)
  use_bpm 55
  
  use_synth_defaults  
  
  in_thread do
    sect1_lh
    #bar 10
    plays 'E3', 1
    plays 'D3', 1
    plays 'A2', 1
    plays 'B2', 0.5
    plays 'Cs3', 0.5
    
    sect1_lh
    # bar 11 (3/4)
    plays 'A2', 1
    plays 'D3', 2
    
    # bar 12 (5/4)
    plays 'D3', 4.5
    plays 'Cs3', 0.5
  end
  
  in_thread do
    sect1_rh
    # bar 10
    play 'A3', decay: 1
    play 'D4', decay: 1
    plays 'E4', 0.75
    plays 'D4', 0.25
    plays3 'Fs3', 'A3', 'D4', 1
    
    play 'D3', decay: 2
    play 'G3', decay: 2
    sleep 0.5
    plays 'A3', 0.5
    plays 'D4', 0.5
    plays 'Cs4', 0.5
    
    sect1_rh
    # bar 11 (3/4)
    plays3 'A3', 'D4', 'E4', 0.75
    plays 'D4', 0.25
    plays3 'Fs3', 'A3', 'D4', 1
    plays3 'Fs3', 'A3', 'D4', 0.5
    plays 'A4', 0.5
    
    # bar 12 (5/4)
    play 'A4', decay: 1
    plays 'B4', 0.5
    plays 'G4', 0.5
    play 'A4', decay: 1
    plays 'Cs5', 0.5
    plays 'E5', 0.5
    
    play 'A4', decay: 1
    plays2 'E4', 'Fs4', 0.5
    plays 'D4', 0.5
    play 'B4', decay: 1
    play 'D4', decay: 1
    plays 'G4', 0.5
    plays 'Fs4', 0.5
    play 'A4', decay: 1
    play 'D4', decay: 1
    plays 'E4', 0.75
    plays 'D4', 0.25
  end
  
  sleep 68
end

define :bridge_rh do
  # bar 13
  play 'D4', decay: 1.5
  play 'Fs4', decay: 1.5
  plays 'A4', 0.75
  plays 'B4', 0.25
  plays 'A4', 0.5
  
  play 'D4', decay: 1.5
  plays 'Fs4', 1
  plays 'D4', 0.5
  
  play 'D4', decay: 1.5
  play 'Fs4', decay: 1.5
  plays 'A4', 0.75
  plays 'B4', 0.25
  plays 'A4', 0.5
  
  play 'Cs4', decay: 1.5
  plays 'E4', 0.75
  plays 'Fs4', 0.25
  plays 'E4', 0.5
  
  # bar 14
  play 'A3', decay: 1.5
  play 'D4', decay: 1.5
  plays 'Fs4', 0.75
  plays 'E4', 0.25
  plays 'D4', 0.5
  
  play 'G3', decay: 1.5
  plays 'B3', 0.5
  plays 'G3', 0.5
  plays 'B3', 0.5
  
  play 'A3', decay: 1.5
  plays 'A3', 0.5
  plays 'B3', 0.5
  plays 'Cs4', 0.5
  
  play 'Fs3', decay: 1.5
  play 'A3', decay: 1.5
  plays 'D4', 0.5
  plays 'D4', 0.5
  plays 'D4', 0.5
  
  # bar 15
  play 'A3', decay: 1.5
  plays 'D4', 0.75
  plays 'E4', 0.25
  plays 'Fs4', 0.5
  
  play 'A3', decay: 1.5
  play 'Cs4', decay: 1.5
  plays 'E4', 0.5
  plays 'D4', 0.5
  plays 'E4', 0.5
  
  play 'B3', decay: 1.5
  play 'D4', decay: 1.5
  plays 'Fs4', 0.75
  plays 'E4', 0.25
  plays 'D4', 0.5
  
  plays2 'G3', 'B3', 1.5
  
  # bar 16
  play 'D4', decay: 1.5
  play 'Fs4', decay: 1.5
  plays 'A4', 0.75
  plays 'B4', 0.25
  plays 'A4', 0.5
  
  play 'D4', decay: 1.5
  plays 'Fs4', 0.5
  plays 'D4', 0.5
  plays 'E4', 0.5
  
  play 'D4', decay: 1.5
  plays 'Fs4', 0.5
  plays 'G4', 0.75
  plays 'A4', 0.25
  
  play 'A3', decay: 1.5
  play 'Cs4', decay: 1.5
  plays 'E4', 1
  sleep 0.5
  
  # bar 17
  play 'D4', decay: 1.5
  play 'Fs4', decay: 1.5
  plays 'A4', 0.75
  plays 'B4', 0.25
  plays 'A4', 0.5
  
  play 'B3', decay: 1.5
  play 'D4', decay: 1.5
  plays 'Fs4', 0.5
  plays 'D4', 0.5
  plays 'E4', 0.5
  
  play 'A3', decay: 1.5
  play 'D4', decay: 1.5
  plays 'Fs4', 0.75
  plays 'E4', 0.25
  plays 'D4', 0.5
  
  play 'G3', decay: 1.5
  plays 'B3', 0.5
  plays 'G3', 0.5
  plays 'B3', 0.5
  
  # bar 18
  play 'A3', decay: 1.5
  plays 'D4', 0.75
  plays 'E4', 0.25
  plays 'Fs4', 0.5
  
  play 'D4', decay: 1.5
  play 'Fs4', decay: 1.5
  plays 'A4', 1
  plays 'Fs4', 0.5
  
  play 'A3', decay: 1.5
  play 'Cs4', decay: 1.5
  plays 'E4', 0.5
  plays 'Fs4', 0.5
  plays 'E4', 0.5
  
  plays3 'Fs3', 'A3', 'D4', 1.5
  
end

define :bridge_lh do
  # bar 13
  plays 'D3', 1.5
  plays 'A2', 1.5
  plays 'D3', 1.5
  plays 'A2', 1.5
  
  plays 'D3', 1.5
  plays 'G2', 1.5
  plays 'A2', 1.5
  plays 'D3', 0.5
  plays 'A2', 0.5
  plays 'B2', 0.5
  
  # bar 15
  plays 'D3', 1.5
  plays 'A2', 1.5
  plays 'B2', 1.5
  plays 'G2', 1.5
  
  plays 'D3', 1.5
  plays 'A2', 1.5
  plays 'D3', 1.5
  plays 'A2', 1.5
  
  # bar 17
  plays 'D3', 1.5
  plays 'B2', 1.5
  plays 'D3', 1.5
  plays 'G2', 1.5
  
  plays 'D3', 1.5
  plays 'D3', 1.5
  plays 'A2', 1.5
  plays 'D3', 0.5
  plays 'A2', 0.5
  plays 'B2', 0.5
end

define :bridge do
  # tempo (12:8)
  use_bpm 105
  
  use_synth_defaults hard: 0.60, amp: 1.4, attack_level: 2
  
  in_thread do
    bridge_lh
  end
  
  in_thread do
    bridge_rh
  end
  
  sleep 36
  
end


#intro
#sect1
#bridge
