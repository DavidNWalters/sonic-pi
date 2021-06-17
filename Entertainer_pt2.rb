# The Entertainer by Scott Joplin
# (Part 2 - bar 55 to the end)
#
# Based on sheet music downloaded from:
# https://www.mutopiaproject.org/ftp/JoplinS/entertainer/entertainer-let.pdf
#
#

# tempo
use_bpm 77

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

define :sect4_lh do
  # bar 55 (f)
  use_synth_defaults hard: 0.4, amp: 1.4
  define :bar55to59_lh do
    plays 'F2', 0.5
    plays3 'A3', 'C4', 'F4', 0.5
    plays 'C3', 0.5
    plays3 'A3', 'C4', 'F4', 0.5
    
    plays 'Bb2', 0.5
    plays3 'Bb3', 'D4', 'F4', 0.5
    plays 'F3', 0.5
    plays3 'Bb3', 'D4', 'F4', 0.5
    
    # bar 57
    plays 'D2', 0.5
    plays3 'A3', 'D4','F4', 0.5
    plays 'A2', 0.5
    plays3 'A3', 'D4','F4', 0.5
    
    plays 'G2', 0.5
    plays2 'Bb3','D4', 0.5
    plays 'D3', 0.5
    plays2 'Bb3', 'D4', 0.5
    
    # bar 59
    plays2 'Bb2', 'Bb3', 0.5
    plays2 'Bb3', 'D4', 0.5
    plays2 'G2', 'G3', 0.5
    plays2 'Gs2', 'Gs3', 0.5
  end
  
  bar55to59_lh
  plays2 'A2', 'A3', 0.5
  plays3 'A3', 'C4', 'E4', 0.5
  plays 'D3', 0.5
  plays3 'A3', 'D4', 'F4', 0.5
  
  # bar 61
  plays 'E3', 0.5
  plays3 'B3', 'D4', 'E4', 0.5
  plays 'Gs3', 0.5
  plays3 'B3', 'D4', 'E4', 0.5
  
  plays3 'A3', 'C4', 'E4', 1
  plays3 'G3', 'C4', 'E4', 0.5
  plays 'C3', 0.5
  
  # bars 63-67 repeat 55-59
  bar55to59_lh
  
  # bar 68
  plays2 'A2', 'A3', 0.25
  play 'F2', decay: 0.25, amp: 1.5 # cres
  play 'F3', decay: 0.25, amp: 1.5
  sleep 0.25
  play 'E2', decay: 0.25, amp: 1.6
  play 'E3', decay: 0.25, amp: 1.6
  sleep 0.25
  play 'D2', decay: 0.25, amp: 1.7
  play 'D3', decay: 0.25, amp: 1.7
  sleep 0.25
  play 'Db2', decay: 1, amp: 1.6
  play 'Db3', decay: 1, amp: 1.6
  sleep 1
  
  # bar 69
  plays2 'C2', 'C3', 0.5
  plays3 'A3', 'C4', 'F4', 0.5
  plays2 'C3', 'C4', 0.5
  plays2 'C2', 'C3', 0.5
end


define :sect4_rh do
  # bar 55 (f)
  use_synth_defaults hard: 0.4, amp: 1.4
  define :bar55to59_rh do
    plays2 'F5', 'A5', 0.25
    plays 'Gs5', 0.25
    plays2 'F5', 'A5', 1
    plays3 'F5', 'A5', 'C6', 0.5
    
    play 'F5', decay: 2
    play 'Bb5', decay: 2
    play 'D6', decay: 2
    sleep 0.5
    plays 'Bb4', 0.25
    plays 'A4', 0.25
    plays 'Bb4', 0.25
    plays 'C5', 0.25
    plays 'D5', 0.5
    
    #bar 57
    plays2 'D5', 'F5', 0.25
    plays 'E5', 0.25
    plays2 'D5', 'F5', 1
    plays3 'D5', 'F5', 'A5', 0.5
    
    play 'D5', decay: 1.75
    play 'G5', decay: 1.75
    play 'Bb5', decay: 1.75
    sleep 0.5
    plays 'G4', 0.25
    plays 'Fs4', 0.25
    plays 'G4', 0.25
    plays 'A4', 0.25
    play 'Bb4', decay: 0.5
    sleep 0.25
    plays 'G5', 0.25
    
    #bar 59
    plays 'D5', 0.5
    plays 'G5', 0.25
    plays 'D5', 0.5
    plays 'G5', 0.25
    plays 'D5', 0.5
    
  end
  bar55to59_rh
  plays 'C5', 1
  plays 'F5', 1
  
  # bar 61
  plays 'E5', 0.25
  plays 'Gs5', 0.25
  plays 'B5', 0.25
  plays 'E6', 0.5
  plays 'D6', 0.25
  plays 'B5', 0.25
  plays 'C6', 0.25
  
  plays 'A5', 1
  plays 'Bb5', 1
  
  # bar 63-67 repeats bar 55-59
  bar55to59_rh
  
  play 'C5', decay: 1, amp: 1.5
  sleep 1
  play 'Gs4', decay: 0.75, amp: 1.7
  play 'B4', decay: 0.75, amp: 1.7
  play 'F5', decay: 0.75, amp: 1.7
  sleep 0.75
  play 'F5', decay: 0.25, amp: 1.5
  sleep 0.25
  
  # bar 69
  plays3 'A4', 'C5', 'A5', 0.25
  plays2 'C5', 'C6', 0.5
  plays2 'Bb4', 'G5', 0.5
  plays 'C5', 0.25
  plays2 'Bb4', 'D5', 0.25
  plays 'E5', 0.25
end

define :sect4 do
  in_thread do
    # bar 55-70
    sect4_lh
    #bar 71
    plays2 'F2', 'F3', 0.5
    sleep 1.5
    
    sect4_lh
    #bar 72c
    plays2 'F2', 'F3', 0.5
    sleep 0.5
    plays2 'F1', 'F2', 0.5
    sleep 0.5
    
  end
  in_thread do
    # bar 55-70
    sect4_rh
    # bar 71
    plays2 'A4', 'F5', 0.5
    plays 'B4', 0.25
    plays 'C5', 0.25
    plays 'D5', 0.25
    plays 'E5', 0.25
    plays 'F5', 0.25
    plays 'G5', 0.25
    
    sect4_rh
    # bar 72
    plays2 'A4', 'F5', 0.5
    sleep 0.5
    plays4 'F5', 'A5', 'C5', 'F6', 0.5
    sleep 0.5
  end
  sleep 64
end

define :sect5_lh do
  use_synth_defaults hard: 0.4, amp: 1.4
  # bar 72
  2.times do
    plays4 'F3', 'A3', 'C4', 'F4', 0.5
  end
  2.times do
    plays4 'Fs3', 'A3', 'C4', 'Fs4', 0.5
  end
  
  4.times do
    plays3 'G3', 'C4', 'E4', 0.5
  end
  
  # bar 74
  plays2 'D3', 'C4', 0.5
  plays2 'D3', 'G3', 0.5
  2.times do
    plays2 'G3', 'B3', 0.5
  end
  
  plays2 'C3', 'C4', 1
  plays2 'C2', 'C3', 0.5
  sleep 0.5
end

define :sect5_rh do
  use_synth_defaults hard: 0.4, amp: 1.4
  # bar 72
  plays 'C5', 0.5
  plays 'A4', 0.25
  plays 'C5', 0.5
  plays 'A4', 0.25
  plays 'C5', 0.25
  plays 'A4', 0.25
  
  plays 'G4', 0.25
  plays 'C5', 0.25
  plays 'E5', 0.25
  plays 'G5', 0.5
  plays 'E5', 0.25
  plays 'C5', 0.25
  plays 'G4', 0.25
  
  # bar 74
  plays2 'Fs4', 'A4', 0.5
  plays2 'Fs4', 'C5', 0.5
  plays2 'F4', 'E5', 0.25
  plays2 'F4', 'D5', 0.5
  
  plays2 'E4', 'C5', 1.25
  plays4 'C5', 'E5', 'G5', 'C6', 0.5
  sleep 0.5
end

define :sect5 do
  in_thread do
    sect5_lh
  end
  in_thread do
    sect5_rh
  end
  sleep 8
end

define :sect6_lh do
  define :bar76to79_lh do
    # bar 76-77
    2.times do
      plays 'F2', 0.5
      plays2 'F3', 'A3', 0.5
      plays 'A2', 0.5
      plays2 'F3', 'A3', 0.5
    end
    
    # bar 78-79
    2.times do
      plays 'C3', 0.5
      plays3 'E3', 'G3', 'C4', 0.5
      plays 'G2', 0.5
      plays3 'E3', 'G3', 'C4', 0.5
    end
  end
  bar76to79_lh
  
  # bar 80
  plays 'G2', 0.5
  plays3 'F3', 'G3', 'B3', 0.5
  plays 'B2', 0.5
  plays3 'F3', 'G3', 'B3', 0.5
  
  plays 'G2', 0.5
  plays3 'F3', 'G3', 'B3', 0.5
  plays 'D3', 0.5
  plays3 'F3', 'G3', 'B3', 0.5
  
  # bar 82
  plays3 'Ds3', 'Fs3', 'C4', 0.5
  plays3 'Ds3', 'Fs3', 'C4', 1
  plays3 'Ds3', 'Fs3', 'C4', 0.5
  
  plays3 'E3', 'G3', 'C4', 0.5
  sleep 1.5
  
  # bars 84-87 repeats 76-79
  bar76to79_lh
  
  # bar 88
  plays2 'F2', 'F3', 0.5
  plays2 'D2', 'D3', 0.5
  plays2 'E2', 'E3', 0.5
  plays2 'F2', 'F3', 0.5
  
  plays2 'G2', 'G3', 0.5
  plays3 'G3', 'C4', 'E4', 0.5
  plays3 'Fs3', 'C4', 'Ds4', 0.5
  plays3 'G3', 'C4', 'E4', 0.5
  
  plays2 'A2', 'A3', 0.5
  plays2 'D2', 'D3', 0.5
  plays2 'G2', 'G3', 0.5
  plays2 'B2', 'B3', 0.5
end

define :sect6_rh do
  define :bar76to79_rh do
    # bar 76
    plays2 'D4', 'F4', 0.5
    plays2 'Cs4', 'E4', 0.25
    plays2 'D4', 'F4', 0.5
    plays2 'Cs4', 'E4', 0.25
    plays2 'D4', 'F4', 0.5
    
    sleep 0.25
    plays 'A4', 0.25
    plays2 'F4', 'D5',  0.25
    plays 'A4', 0.25
    plays 'C5', 0.25
    plays 'D5', 0.25
    plays 'C5', 0.25
    plays 'A4', 0.25
    
    # bar 78
    plays2 'E4', 'G4', 0.5
    plays2 'Ds4', 'Fs4', 0.25
    plays2 'E4', 'G4', 0.5
    plays2 'Ds4', 'Fs4', 0.25
    plays2 'E4', 'G4', 0.5
    
    sleep 0.25
    plays 'C5', 0.25
    plays2 'G4', 'E5',  0.25
    plays 'C5', 0.25
    plays 'D5', 0.25
    plays 'E5', 0.25
    plays 'D5', 0.25
    plays 'C5', 0.25
    
  end
  
  bar76to79_rh
  
  # bar 80
  plays2 'B4', 'D5', 0.5
  plays2 'As4', 'Cs5', 0.25
  plays2 'B4', 'D5', 0.5
  plays2 'As4', 'Cs5', 0.25
  plays2 'B4', 'D5', 0.5
  
  sleep 0.25
  plays 'F5', 0.25
  plays2 'B4', 'A5',  0.25
  plays 'F5', 0.25
  plays 'G5', 0.25
  plays 'A5', 0.25
  plays 'G5', 0.25
  plays 'F5', 0.25
  
  plays2 'C5', 'C6', 0.25
  plays2 'C5', 'C6', 0.25
  plays2 'C5', 'C6', 1
  plays2 'C5', 'A5', 0.5
  
  # bar 83
  plays2 'C5', 'G5', 0.5
  plays2 'E4', 'G4', 0.25
  plays2 'E4', 'G4', 0.25
  plays2 'E4', 'G4', 0.5
  plays2 'E4', 'G4', 0.5
  
  # bar 84-87 repeats 76-79
  bar76to79_rh
  
  # bar 88
  plays 'A4', 0.25
  plays 'Gs4', 0.25
  plays 'A4', 0.25
  plays2 'A4', 'G5', 0.5
  plays2 'A4', 'F5', 0.5
  plays2 'A4', 'C5', 0.25
  
  plays2 'G4', 'E5', 0.25
  plays 'Ds5', 0.25
  plays 'E5', 0.25
  plays 'A5', 0.5
  plays 'C6', 0.25
  plays 'G5', 0.25
  plays 'E5', 0.25
  
  # bar 90
  plays2 'Fs4', 'C5', 0.5
  plays2 'Fs4', 'C5', 0.5
  plays3 'F4', 'B4', 'E5',  0.25
  plays3 'F4', 'B4', 'D5',  0.5
end

define :sect6 do
  in_thread do
    sect6_lh
    # bar 91
    plays2 'C3', 'C4', 0.5
    sleep 1.5
    
    sect6_lh
    # bar 92
    plays2 'C2', 'C4', 0.5
    plays2 'G2', 'G3', 0.5
    plays2 'C2', 'C3', 1
  end
  in_thread do
    sect6_rh
    # bar 91 (and end of 90)
    plays3 'E4', 'G4', 'C5',  0.75
    
    plays2 'E4', 'G4', 0.25
    plays2 'E4', 'G4', 0.25
    plays2 'E4', 'G4', 0.5
    plays2 'E4', 'G4', 0.5
    
    sect6_rh
    # bar 92 (and end of 90)
    plays3 'E4', 'G4', 'C5',  1.25
    plays4 'C5', 'E5', 'G5', 'C6',  0.5
    sleep 0.5
  end
  sleep 64
end

#sect4
#sect5
#sect6