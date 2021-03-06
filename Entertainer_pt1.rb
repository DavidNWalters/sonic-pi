# The Entertainer by Scott Joplin
# (Part one - up to bar 54)
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

define :intro do
  # f
  use_synth_defaults hard: 0.4, amp: 1.3
  
  #bar 1 (except last note) used 3 times in a row
  define :bar1_min1 do
    plays2 'D5', 'D6', 0.25
    plays2 'E5', 'E6', 0.25
    plays2 'C5', 'C6', 0.25
    plays2 'A4', 'A5', 0.5
    plays2 'B4', 'B5', 0.25
  end
  
  #bars 1-4
  bar1_min1
  plays2 'G4', 'G5', 0.5
  
  with_transpose -12  do # one octave lower
    bar1_min1
    plays2 'G4', 'G5', 0.5
  end
  
  with_transpose -24  do # two octaves lower
    bar1_min1
  end
  plays2 'A2', 'A3', 0.25
  plays2 'Ab2', 'Ab3', 0.25
  
  plays2 'G2', 'G3', 0.5
  sleep 0.5
  
  play 'G1', decay: 0.5, hard: 0.5
  play 'G2', decay: 0.5, hard: 0.5
  play 'G4', decay: 0.5, hard: 0.5
  play 'B4', decay: 0.5, hard: 0.5
  play 'D5', decay: 0.5, hard: 0.5
  play 'G5', decay: 0.5, hard: 0.5
  sleep 0.5
  play 'G3', decay: 0.5, amp: 1 # dim
  play 'B3', decay: 0.5, amp: 1
  play 'D4', decay: 0.25, amp: 1
  sleep 0.25
  play 'Ds4', decay: 0.25, amp: 0.8
  sleep 0.25
  
end

# Main section 1, left hand
define :sect1_lh do
  
  #bar 5 repeats
  define :bar5_lh do
    plays 'C3', 0.5
    plays3 'E3', 'G3', 'C4', 0.5
    plays2 'G2', 'G3', 0.5
    plays3 'G3', 'Bb3', 'C4', 0.5
  end
  
  define :bars5to7_lh do
    # bar 5 (p)
    use_synth_defaults hard: 0.4, amp: 0.65
    bar5_lh
    
    plays2 'F2', 'F3', 0.5
    plays2 'A3', 'C4', 0.5
    play 'E2', decay: 0.5, amp: 0.8 # cres
    play 'E3', decay: 0.5, amp: 0.8
    sleep 0.5
    play 'G3', decay: 0.5, amp: 1
    play 'C4', decay: 0.5, amp: 1
    sleep 0.5
    
    # bar 7 (f)
    use_synth_defaults hard: 0.4, amp: 1.4
    plays 'G2', 0.5
    plays3 'E3', 'G3', 'C4', 0.5
    plays 'G2', 0.5
    plays3 'F3', 'G3', 'B3', 0.5
  end
  
  bars5to7_lh
  plays 'C3', 0.5
  plays3 'E3', 'G3', 'C4', 0.5
  play 'E3', decay: 0.5, amp: 1.0 #dim
  play 'G3', decay: 0.5, amp: 1.0
  play 'C4', decay: 0.5, amp: 1.0
  sleep 0.5
  play 'G3', decay: 0.5, amp: 0.8
  play 'B3', decay: 0.5, amp: 0.8
  sleep 0.5
  
  # bar 9 (p)
  use_synth_defaults hard: 0.4, amp: 0.65
  bar5_lh
  
  plays2 'F2', 'F3', 0.5
  plays2 'A3', 'C4', 0.5
  play 'E2', decay: 0.5, amp: 0.8 # cres
  play 'E3', decay: 0.5, amp: 0.8
  sleep 0.5
  play 'Eb2', decay: 0.5, amp: 1
  play 'Eb3', decay: 0.5, amp: 1
  sleep 0.5
  
  # bar 11 (f)
  use_synth_defaults hard: 0.4, amp: 1.4
  plays2 'D2', 'D3', 0.5
  plays4 'D3', 'Fs3', 'A3', 'C4', 0.5
  plays 'D3', 0.5
  plays3 'F3', 'A3', 'C4', 0.5
  
  plays2 'G3', 'B3', 0.5
  plays2 'G3', 'G3', 0.5
  play 'A2', decay: 0.5, amp: 1.0 #dim
  play 'A3', decay: 0.5, amp: 1.0
  sleep 0.5
  play 'B2', decay: 0.5, amp: 0.8
  play 'B3', decay: 0.5, amp: 0.8
  sleep 0.5
  
  # bar 13
  bars5to7_lh
  
  plays 'C3', 0.5
  plays3 'E3', 'G3', 'C4', 0.5
  plays3 'G3', 'C4', 'E4', 0.5
  sleep 0.5
  
  # bars 17-18
  plays2 'C3', 'C4', 0.5
  plays3 'G3', 'C4', 'E4', 0.5
  plays2 'Bb2', 'Bb3', 0.5
  plays3 'G3', 'C4', 'E4', 0.5
  
  plays2 'A2', 'A3', 0.5
  plays3 'A3', 'C4', 'F4', 0.5
  plays2 'Ab2', 'Ab3', 0.5
  plays3 'Ab3', 'C4', 'F4', 0.5
  
  
  # bar 19
  plays2 'G2', 'G3', 0.5
  plays3 'G3', 'C4', 'E4', 0.5
  plays 'G2', 0.5
  plays2 'G3', 'B3', 0.5
  
end

# Main section 1, right hand
define :sect1_rh do
  
  #bar 5 (less a quaver) repeats
  define :bar5_rh do
    plays 'E4', 0.25
    plays 'C5', 0.5
    plays 'E4', 0.25
    plays 'C5', 0.5
    plays 'E4', 0.25
  end
  
  define :bars5to7_rh do
    # bar 5 (p)
    use_synth_defaults hard: 0.4, amp: 0.65
    bar5_rh
    plays 'C5', 1.5
    
    play 'C5', decay: 0.25, amp: 0.8 # cres
    play 'E5', decay: 0.25, amp: 0.8
    play 'C6', decay: 0.25, amp: 0.8
    sleep 0.25
    play 'D5', decay: 0.25, amp: 1.0
    play 'F5', decay: 0.25, amp: 1.0
    play 'D6', decay: 0.25, amp: 1.0
    sleep 0.25
    play 'Ds5', decay: 0.25, amp: 1.2
    play 'Fs5', decay: 0.25, amp: 1.2
    play 'Ds6', decay: 0.25, amp: 1.2
    sleep 0.25
    
    # bar 7 (f)
    use_synth_defaults hard: 0.4, amp: 1.4
    plays3 'E5','G5','E6', 0.25
    plays3 'C5','E5','C6', 0.25
    plays3 'D5','F5','D6', 0.25
    plays3 'E5','G5','E6', 0.5
    plays3 'B4', 'D5', 'B5', 0.25
    plays3 'D5', 'F5', 'D6', 0.5
  end
  
  # bars 5-7
  bars5to7_rh
  plays3 'C5', 'E5', 'C6', 1.5
  play 'D4', decay: 0.25, amp: 1 # dim
  sleep 0.25
  play 'Ds4', decay: 0.25, amp: 0.8
  sleep 0.25
  
  # bar 9 (p)
  use_synth_defaults hard: 0.4, amp: 0.65
  bar5_rh
  plays 'C5', 1.75
  
  play 'A4', decay: 0.25, amp: 1.0
  play 'C5', decay: 0.25, amp: 1.0
  play 'A5', decay: 0.25, amp: 1.0
  sleep 0.25
  play 'G4', decay: 0.25, amp: 1.2
  play 'C5', decay: 0.25, amp: 1.2
  play 'G4', decay: 0.25, amp: 1.2
  sleep 0.25
  
  # bar 11 (f)
  use_synth_defaults hard: 0.4, amp: 1.4
  plays3 'Fs4', 'C5', 'Fs5', 0.25
  plays2 'A4', 'A5', 0.25
  plays2 'C5', 'C6', 0.25
  plays2 'E5', 'E6', 0.5
  plays2 'D5', 'D6', 0.25
  plays2 'C5', 'C6', 0.25
  plays2 'A4', 'A5', 0.25
  
  plays3 'D5', 'F5', 'D6', 1.5
  play 'D4', decay: 0.25, amp: 1 # dim
  sleep 0.25
  play 'Ds4', decay: 0.25, amp: 0.8
  sleep 0.25
  
  # bars 13-15
  bars5to7_rh
  
  plays3 'C5', 'E5', 'C6', 1.5
  plays2  'C5', 'C6', 0.25
  plays2  'D5', 'D6', 0.25
  
  # bar 17-18
  2.times do
    plays2 'E5', 'E6', 0.25
    plays2 'C5', 'C6', 0.25
    plays2 'D5', 'D6', 0.25
    plays2 'E5', 'E6', 0.5
    plays2 'C5', 'C6', 0.25
    plays2 'D5', 'D6', 0.25
    plays2 'C5', 'C6', 0.25
  end
  
  # bar 19
  plays3 'E5', 'G5', 'E6', 0.25
  plays3 'C5', 'E5', 'C6', 0.25
  plays3 'D5', 'F5', 'D6', 0.25
  plays3 'E5', 'G5', 'E6', 0.5
  plays3 'B4', 'D5', 'B5', 0.25
  plays3 'D5', 'F5', 'D6', 0.5
  
end

define :sect1 do
  in_thread do
    sect1_lh
    plays3 'C3', 'G3', 'C4', 0.5
    plays2 'G2', 'G3', 0.5
    play 'A2', decay: 0.5, amp: 1.0
    play 'A3', decay: 0.5, amp: 1.0
    sleep 0.5
    play 'B2', decay: 0.5, amp: 0.8
    play 'B3', decay: 0.5, amp: 0.8
    sleep 0.5
    
    sect1_lh
    plays3 'C3', 'G3', 'C4', 0.5
    play 'G2', decay: 0.5, amp: 1.0
    play 'G3', decay: 0.5, amp: 1.0
    sleep 0.5
    play 'C2', decay: 0.5, amp: 0.8
    play 'C3', decay: 0.5, amp: 0.8
    sleep 1
    
  end
  in_thread do
    sect1_rh
    plays3 'C5', 'E5', 'C6', 1.5
    play 'D4', decay: 0.25, amp: 1.0
    sleep 0.25
    play 'Ds4', decay: 0.25, amp: 0.8
    sleep 0.25
    
    sect1_rh
    plays3 'C5', 'E5', 'C6', 1.25
    play 'E4', decay: 0.25, amp: 1.2
    play 'C5', decay: 0.25, amp: 1.2
    play 'E5', decay: 0.25, amp: 1.2
    sleep 0.25
    play 'F4', decay: 0.25, amp: 1
    play 'D5', decay: 0.25, amp: 1
    play 'F5', decay: 0.25, amp: 1
    sleep 0.25
    play 'Fs4', decay: 0.25, amp: 0.8
    play 'Ds5', decay: 0.25, amp: 0.8
    play 'Fs5', decay: 0.25, amp: 0.8
    sleep 0.25
  end
  sleep 64
end


define :sect2_lh do
  # bar 22 (f)
  use_synth_defaults hard: 0.4, amp: 1.4
  define :bar22_lh do
    plays2 'C2', 'C3', 0.5
    plays3 'G3', 'C4', 'E4', 0.5
    plays 'G2', 0.5
    plays3 'G3', 'C4', 'E4', 0.5
  end
  define :bar23_lh do
    plays 'C3', 0.5
    plays3 'G3', 'C4', 'E4', 0.5
    plays 'G2', 0.5
    plays3 'G3', 'C4', 'E4', 0.5
  end
  bar22_lh
  bar23_lh
  
  # bar 24
  define :bar24_lh do
    plays 'F2', 0.5
    plays3 'A3', 'C4', 'F4', 0.5
    plays 'F3', 0.5
    plays3 'Ab3', 'C4', 'F4', 0.5
  end
  bar24_lh
  bar23_lh
  
  # bar 26
  bar23_lh
  
  plays 'C3', 0.5
  plays3 'G3', 'C4', 'E4', 0.5
  plays 'E3', 0.5
  plays 'Eb3', 0.5
  
  # bar 28
  plays 'D3', 0.5
  plays3 'G3', 'B3', 'D4', 0.5
  plays 'D3', 0.5
  plays3 'A3', 'C4', 'D4', 0.5
  
  plays3 'G3', 'B3', 'D4', 0.5
  play 'F2', decay: 0.5, hard: 0.5
  play 'F3', decay: 0.5, hard: 0.5
  sleep 0.5
  play 'E2', decay: 0.5, hard: 0.5
  play 'E3', decay: 0.5, hard: 0.5
  sleep 0.5
  play 'D2', decay: 0.5, hard: 0.5
  play 'D3', decay: 0.5, hard: 0.5
  sleep 0.5
  
  # bar 30
  bar22_lh
  bar23_lh
  
  # bar 32
  bar24_lh
  
  plays 'E3', 0.5
  plays3 'G3', 'C4', 'E4', 0.5
  play 'C3', decay: 0.5, amp: 1
  sleep 0.5
  use_synth_defaults hard: 0.4, amp: 0.8
  plays3 'Bb3', 'C4', 'E4', 0.5
  
  # bar 34 (p)
  use_synth_defaults hard: 0.4, amp: 0.67
  plays4 'F3', 'A3', 'C4', 'F4', 0.5
  plays4 'F3', 'A3', 'C4', 'F4', 0.5
  plays4 'Fs3', 'A3', 'C4', 'Ds4', 0.5
  plays4 'Fs3', 'A3', 'C4', 'Ds4', 0.5
  
  plays3 'G3', 'C4', 'E4', 0.5
  use_synth_defaults hard: 0.4, amp: 0.8
  plays3 'G3', 'C4', 'E4', 0.5
  use_synth_defaults hard: 0.4, amp: 1
  plays3 'G3', 'C4', 'E4', 0.5
  use_synth_defaults hard: 0.4, amp: 1.2
  plays3 'G3', 'C4', 'E4', 0.5
  
  # bar 36 (f)
  use_synth_defaults hard: 0.4, amp: 1.4
  plays2 'D3', 'C4', 0.5
  plays2 'D3', 'A3', 0.5
  plays2 'G3', 'B3', 0.5
  plays2 'G3', 'B3', 0.5
  
end

define :sect2_rh do
  # bar 22 (f)
  use_synth_defaults hard: 0.4, amp: 1.4
  define :bar22_rh do
    plays3 'G4', 'E5', 'G5', 0.5
    plays3 'A4', 'E5', 'A5', 0.25
    plays3 'G4', 'E5', 'G5', 0.5
    plays3 'E4', 'C5', 'E5', 0.25
    plays3 'F4', 'D5', 'F5', 0.25
    plays3 'Fs4', 'Ds5', 'Fs5', 0.25
  end
  define :bar23_rh do
    plays3 'G4', 'E5', 'G5', 0.5
    plays3 'A4', 'E5', 'A5', 0.25
    plays3 'G4', 'E5', 'G5', 0.5
    plays 'E5', 0.25
    plays 'C5', 0.25
    plays 'G4', 0.25
  end
  bar22_rh
  bar23_rh
  
  # bar 24
  define :bar24_rh do
    plays 'A4', 0.25
    plays 'B4', 0.25
    plays 'C5', 0.25
    plays 'D5', 0.25
    plays 'E5', 0.25
    plays 'D5', 0.25
    plays 'C5', 0.25
    plays 'D5', 0.25
  end
  bar24_rh
  
  plays 'G4', 0.25
  plays 'E5', 0.25
  plays 'F5', 0.25
  plays 'G5', 0.25
  plays 'A5', 0.25
  plays 'G5', 0.25
  plays 'E5', 0.25
  plays 'F5', 0.25
  
  # bar 26
  bar22_rh
  
  plays3 'G4', 'E5', 'G5', 0.5
  plays3 'A4', 'E5', 'A5', 0.25
  plays3 'G4', 'E5', 'G5', 0.5
  plays 'G5', 0.25
  plays 'A5', 0.25
  plays 'As5', 0.25
  
  # bar 28
  plays3 'D5', 'G5', 'B5', 0.25
  plays3 'D5', 'G5', 'B5', 0.5
  plays3 'C5', 'Fs5', 'B5', 0.5
  plays 'A5', 0.25
  plays2 'C5', 'Fs5', 0.25
  plays 'D5', 0.25
  
  plays2 'B4', 'G5', 1.25
  plays3 'E4', 'C5', 'E5', 0.25
  plays3 'F4', 'D5', 'F5', 0.25
  plays3 'Fs4', 'Ds5', 'Fs5', 0.25
  
  # bar 30
  bar22_rh
  bar23_rh
  
  # bar 32
  bar24_rh
  
  plays 'C5', 1.25
  play 'G4', decay: 0.25, amp: 1.2 # dim
  sleep 0.25
  play 'Fs4', decay: 0.25, amp: 1
  sleep 0.25
  play 'G4', decay: 0.25, amp: 0.8
  sleep 0.25
  
  # bar 34 (p)
  use_synth_defaults hard: 0.4, amp: 0.67
  plays 'C5', 0.5
  plays 'A4', 0.25
  plays 'C5', 0.5
  plays 'A4', 0.25
  plays 'C5', 0.25
  plays 'A4', 0.25
  
  plays 'G4', 0.25
  play 'C5', decay: 0.25, amp: 0.7 # cres
  sleep 0.25
  play 'E5', decay: 0.25, amp: 0.8
  sleep 0.25
  play 'G5', decay: 0.5,  amp: 1
  sleep 0.5
  play 'E5', decay: 0.25, amp: 1.1
  sleep 0.25
  play 'C5', decay: 0.25, amp: 1.2
  sleep 0.25
  play 'G4', decay: 0.25, amp: 1.3
  sleep 0.25
  
  #bar 36 (f)
  use_synth_defaults hard: 0.4, amp: 1.4
  plays2 'Fs4', 'A4', 0.5
  plays2 'Fs4', 'C5', 0.5
  plays2 'F4', 'E5', 0.25
  plays2 'F4', 'D5', 0.5
  
end


define :sect2 do
  in_thread do
    sect2_lh
    plays2 'C3', 'C4', 0.5
    play 'G2', decay: 0.5, hard: 0.5
    play 'G3', decay: 0.5, hard: 0.5
    sleep 0.5
    play 'E2', decay: 0.5, hard: 0.5
    play 'E3', decay: 0.5, hard: 0.5
    sleep 0.5
    play 'D2', decay: 0.5, hard: 0.5
    play 'D3', decay: 0.5, hard: 0.5
    sleep 0.5
    
    sect2_lh
    plays2 'C3', 'C4', 0.5
    plays2 'G2', 'G3', 0.5
    play 'C2', decay: 0.5, amp: 1
    play 'C3', decay: 0.5, amp: 1
    sleep 0.5
  end
  in_thread do
    sect2_rh
    plays2 'E4', 'C5', 1.5
    
    with_transpose 12 do
      plays3 'E4', 'C5', 'E5', 0.25
      plays3 'F4', 'D5', 'F5', 0.25
      plays3 'Fs4', 'Ds5', 'Fs5', 0.25
      sect2_rh
      plays2 'E4', 'C5', 1.75
    end
    plays 'D4', 0.25
    plays 'Ds4', 0.25
  end
  sleep 64
end

define :sect3 do
  in_thread do
    # bars 39 to 53 repeat 5 to 19
    sect1_lh
    # bar 54
    plays3 'C3', 'G3', 'C4', 0.5
    plays2 'G2', 'G3', 0.5
    plays2 'C2', 'C3', 0.5
    sleep 0.5
  end
  in_thread do
    # bars 39 to 53 repeat 5 to 19
    sect1_rh
    # bar 54
    plays3 'C5', 'E5', 'C6', 1
    plays3 'C5', 'E5', 'C6', 0.5
    sleep 0.5
  end
  sleep 32
end



#intro
#sect1
#sect2
#sect3