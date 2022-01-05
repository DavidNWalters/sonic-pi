# The Fairytale of New York by Shane Mac-Gowan and Jem Finer
#
# Based on sheet music downloaded from:
# https://musescore.com/user/1352181/scores/1464221
#
# (part 2 - bar 23 on)

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

define :bars23to24_rh do
  
  # bar 23
  play 'D4', decay: 1.5
  plays2 'G4', 'B4', 1
  plays2 'G4', 'B4', 0.25
  plays2 'G4', 'B4', 0.25
  play 'D4', decay: 1.5
  plays2 'G4', 'B4', 0.5
  plays2 'A4', 'Cs5', 1
  
  play 'D4', decay: 1.5
  play 'Fs4', decay: 1.5
  plays2 'B4', 'D5', 0.5
  plays2 'B4', 'D5', 1
  play 'E4', decay: 1.5
  plays2 'A4', 'Cs5', 1
  plays2 'G4', 'B4', 0.5
  
  # bar 24
  plays3 'D4', 'Fs4', 'A4', 1.5
  play 'Fs4', decay: 1.5
  play 'A4', decay: 1.5
  plays 'D5', 1
  plays 'Cs5', 0.5
  plays3 'D4', 'Fs4', 'B4', 2
  plays2 'Fs4', 'A4', 0.5
  plays2 'E4', 'G4', 0.5
end

define :sect2_rh do
  
  define :bars19to25_rh do
    # bar 19
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
    plays 'Fs4', 0.75
    plays 'G4', 0.25
    plays 'A4', 0.5
    
    play 'A3', decay: 1.5
    play 'Cs4', decay: 1.5
    plays 'E4', 0.5
    plays 'D4', 0.5
    plays 'E4', 0.5
    
    # bar 20
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
    plays 'E4', 0.5
    plays 'Fs4', 0.5
    
    #bar 21
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
    plays 'Fs4', 0.75
    plays 'G4', 0.25
    plays 'A4', 0.5
    
    play 'A3', decay: 1.5
    play 'Cs4', decay: 1.5
    plays 'E4', 0.5
    plays 'D4', 0.5
    plays 'E4', 0.5
    
    # bar 22
    play 'A3', decay: 1.5
    play 'D4', decay: 1.5
    plays 'Fs4', 0.5
    plays 'E4', 0.5
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
    plays 'D4', 1
    plays 'A4', 0.5
    
    bars23to24_rh
    
    # bar 25
    play 'A3', decay: 1.5
    play 'D4', decay: 1.5
    plays 'Fs4', 1
    plays 'D4', 0.5
    play 'B3', decay: 1.5
    play 'D4', decay: 1.5
    plays 'G4', 1
    plays 'Fs4', 0.5
    
    play 'A3', decay: 1.5
    play 'Cs4', decay: 1.5
    plays 'E4', 1
    plays 'D4', 0.5
    play 'A3', decay: 1.5
    play 'D4', decay: 1.5
    plays 'Fs4', 1
    plays 'E4', 0.5
    
  end
  
  bars19to25_rh
  
  # bar 26
  play 'A4', decay: 1.5
  plays 'D5', 0.75
  plays 'E5', 0.25
  plays 'Fs5', 0.5
  play 'A4', decay: 1.5
  play 'Cs5', decay: 1.5
  plays 'E5', 0.75
  plays 'D5', 0.25
  plays 'E5', 0.5
  
  play 'B4', decay: 1.5
  play 'D5', decay: 1.5
  plays 'Fs5', 0.75
  plays 'E5', 0.25
  plays 'D5', 0.5
  plays3 'D4', 'G4', 'B4', 1.5
  
  # bar 27
  play 'D5', decay: 1.5
  play 'Fs5', decay: 1.5
  plays 'A5', 0.75
  plays 'B5', 0.25
  plays 'A5', 0.5
  play 'A4', decay: 1.5
  play 'D5', decay: 1.5
  plays 'Fs5', 0.5
  plays 'D5', 0.5
  plays 'D5', 0.25
  plays 'E5', 0.25
  
  play 'D5', decay: 1.5
  plays 'Fs5', 0.5
  plays 'G5', 0.5
  plays 'A5', 0.5
  plays3 'A4', 'Cs5', 'E5', 1.5
  
  # bar 28
  play 'D5', decay: 1.5
  play 'Fs5', decay: 1.5
  plays 'A5', 0.75
  plays 'B5', 0.25
  plays 'A5', 0.5
  play 'B4', decay: 1.5
  play 'D5', decay: 1.5
  plays 'Fs5', 0.5
  plays 'D5', 0.5
  plays 'D5', 0.25
  plays 'E5', 0.25
  
  play 'A4', decay: 1.5
  play 'D5', decay: 1.5
  plays 'Fs5', 0.75
  plays 'E5', 0.25
  plays 'D5', 0.5
  plays3 'D4', 'G4', 'B4', 1.5
  
  # bar 29
  plays 'A4', 0.5
  plays 'D5', 0.5
  plays 'Fs5', 0.5
  plays 'A5', 0.5
  plays 'Fs5', 0.5
  plays 'D5', 0.5
  
  plays 'E5', 0.5
  plays 'Fs5', 0.5
  plays 'E5', 0.5
  plays 'D5', 1.5
  
  # repeat bars 19-25
  bars19to25_rh
  
  # bar 30
  plays3 'Fs3', 'A3', 'D3', 4
  plays3 'Fs4', 'A4', 'D5', 0.5
  plays3 'Fs4', 'A4', 'D5', 1
  plays3 'D4', 'G4', 'D5', 0.5
  
  # bar 31
  play 'D4', decay: 1.5
  play 'G4', decay: 1.5
  plays 'Cs5', 1
  plays 'B4', 0.5
  plays3 'D4', 'G4', 'B4', 3
  plays2 'G4', 'B4', 0.5
  plays2 'A4', 'Cs5', 0.5
  plays2 'B4', 'D4', 0.5
  
  # bar 32
  play 'D4', decay: 1.5
  play 'Fs4', decay: 1.5
  plays 'A4', 1
  plays 'Fs4', 0.5
  plays3 'A3', 'D4', 'Fs4', 1.5
  
  play 'A3', decay: 1.5
  play 'D4', decay: 1.5
  plays 'Fs4', 1
  plays 'D4', 0.5
  play 'B4', decay: 1.5
  play 'D4', decay: 1.5
  plays 'G4', 1
  plays 'Fs4', 0.5
  
  # bar 33
  plays3 'A3', 'Cs4', 'E4', 1.5
  plays3 'Fs3', 'A3', 'D4', 1.5
  plays3 'E3', 'A3', 'Cs4', 1.5
  play 'A3', decay: 1.5
  plays 'A3', 0.5
  plays 'B3', 0.5
  plays 'Cs4', 0.5
  
end

define :bars23to24_lh do
  
  # bar 23
  plays 'G2', 1.5
  plays 'G2', 1
  plays 'A2', 0.5
  plays 'B2', 1.5
  plays 'A2', 1
  plays 'G2', 0.5
  
  plays 'Fs2', 1.5
  plays 'D2', 1
  plays 'E2', 0.5
  plays 'B2', 2
  plays 'B2', 0.5
  plays 'Cs3', 0.5
end

define :sect2_lh do
  
  define :bars19to25_lh do
    
    # bar 19
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
    
    # bar 21
    plays 'D3', 1.5
    plays 'A2', 1.5
    plays 'D3', 1.5
    plays 'A2', 1.5
    
    plays 'D3', 1.5
    plays 'G2', 1.5
    plays 'A2', 1.5
    plays 'D3', 1.5
    
    bars23to24_lh
    
    # bar 25
    plays 'D3', 1.5
    plays 'G2', 1.5
    plays 'A2', 1.5
    plays 'A2', 0.5
    plays 'B2', 0.5
    plays 'Cs3', 0.5
    
    
  end
  
  bars19to25_lh
  
  # bar 26
  plays 'D3', 1.5
  plays 'A2', 1.5
  plays 'B2', 1.5
  plays 'G2', 1.5
  
  plays 'D3', 1.5
  plays 'A2', 1.5
  plays 'D3', 1.5
  plays 'A2', 1.5
  
  # bar 28
  plays 'D3', 1.5
  plays 'B2', 1.5
  plays 'D3', 1.5
  plays 'G2', 1.5
  
  plays 'D3', 1.5
  plays 'D3', 1
  plays 'Fs2', 0.5
  plays 'A2', 1.5
  plays 'D3', 0.5
  plays 'A2', 0.5
  plays 'B2', 0.5
  
  # repeat bars 19-25
  bars19to25_lh
  
  # bar 30
  plays 'D3', 3
  plays 'D3', 2.5
  plays 'Fs2', 0.5
  
  plays 'G2', 5.5
  plays 'A2', 0.5
  
  #bar 32
  plays 'D3', 3
  plays 'D3', 1.5
  plays 'G2', 1.5
  
  plays 'A2', 1.5
  plays 'D3', 1.5
  plays 'A2', 1.5
  plays 'A2', 0.5
  plays 'B2', 0.5
  plays 'Cs3', 0.5
  
end


define :sect2 do
  # tempo (12:8)
  use_bpm 105
  
  use_synth_defaults hard: 0.60, amp: 1.4, attack_level: 2
  
  in_thread do
    sect2_lh
  end
  
  in_thread do
    sect2_rh
  end
  
  sleep 132
  
end

define :sect3_rh do
  # bar 34
  play 'Fs3', decay: 4.5
  play 'A3', decay: 4.5
  plays 'E4', 1
  plays 'D4', 0.5
  plays 'D4', 2.5
  plays 'A4', 0.5
  play 'D4', decay: 1.5
  play 'Fs4', decay: 1.5
  plays 'A4', 1
  plays 'B4', 0.5
  
  # bar 35
  play 'B3', decay: 4.5
  play 'D4', decay: 4.5
  plays 'A4', 1
  plays 'G4', 0.5
  plays 'G4', 2.5
  plays 'G4', 0.5
  play 'D4', decay: 1.5
  play 'G4', decay: 1.5
  plays 'A4', 1
  plays 'B4', 0.5
  
  # bar 36
  play 'Fs4', decay: 6
  play 'A4', decay: 6
  plays 'A4', 1
  plays 'D4', 0.5
  plays 'D4', 2.5
  plays 'D4', 0.5
  plays 'E4', 1
  plays 'D4', 0.5
  
  # bar 37
  play 'E3', decay: 6
  play 'A3', decay: 6
  plays 'D4', 1
  plays 'Cs4', 0.5
  plays 'Cs4', 2.5
  plays 'A3', 0.5
  plays 'D4', 1
  plays 'Cs4', 0.5
  
  
  # bar 38
  play 'Fs3', decay: 4.5
  play 'A3', decay: 4.5
  plays 'E4', 1
  plays 'D4', 0.5
  plays 'D4', 2.5
  plays 'A4', 0.5
  play 'Fs4', decay: 1.5
  play 'A4', decay: 1.5
  plays 'D5', 1
  plays 'Cs5', 0.5
  
  # bar 39
  play 'D4', decay: 6
  play 'G4', decay: 6
  plays 'Cs5', 1
  plays 'B4', 0.5
  plays 'B4', 2.5
  plays 'B4', 0.5
  plays 'Cs5', 1
  plays 'D5', 0.5
  
  # bar 40 (15:8)
  play 'D4', decay: 4.5
  play 'Fs4', decay: 4.5
  plays 'A4', 1
  plays 'Fs4', 0.5
  plays 'Fs4', 1
  plays 'Fs4', 0.5
  plays 'Fs4', 1
  plays 'D4', 0.5
  play 'B3', decay: 1.5
  play 'D4', decay: 1.5
  plays 'G4', 1
  plays 'Fs4', 0.5
  plays3 'A3', 'Cs4', 'E4', 1.5
  
  # bar 41 (12:8)
  play 'Fs3', decay: 4.5
  play 'A3', decay: 4.5
  plays 'D4', 4
  plays 'D4', 0.5
  play 'D4', decay: 1.5
  plays 'D4', 0.5
  plays 'Fs4', 0.5
  plays 'A4', 0.5
  
  # bars 42-43 repeat 23-24
  bars23to24_rh
  
  # bar 44
  play 'Fs4', decay: 1
  plays2 'A3', 'D4', 0.5
  sleep 0.5
  plays 'D4', 0.5
  plays 'G4', 0.5
  plays 'Fs4', 1
  plays 'E4', 1
  plays 'A4', 0.5
  plays 'D5', 1
  plays 'Cs5', 0.5
  
end

define :sect3_lh do
  # bar 34
  plays 'D3', 5.5
  plays 'Fs2', 0.5
  
  plays 'G2', 5.5
  plays 'A2', 0.5
  
  # bar 36
  plays 'D3', 6
  
  plays 'A2', 5
  plays 'B2', 0.5
  plays 'Cs3', 0.5
  
  # bar 38
  plays 'D3', 5.5
  plays 'Fs2', 0.5
  
  plays 'G2', 5.5
  plays 'A2', 0.5
  
  # bar 40 (15:8)
  plays 'D3', 3
  plays 'D3', 1.5
  plays 'G2', 1.5
  plays 'A2', 1.5
  
  12.times do
    plays 'D3', 0.5
  end
  
  # bars 42-43 repeat 23-24
  bars23to24_lh
  
  # bar 44
  plays 'D3', 1
  sleep 5
  
end

define :sect3 do
  # tempo (12:8)
  use_bpm 105
  
  use_synth_defaults hard: 0.60, amp: 1.4, attack_level: 2
  
  in_thread do
    sect3_lh
  end
  
  in_thread do
    sect3_rh
  end
  
  sleep 67.5
  
end

define :sect4_rh do
  
  define :bars45to47_rh do |amp,d_amp|
    
    # We want to be able to apply a diminuendo so adjust amp by
    # d_amp twice every bar
    amp = [amp + d_amp, 0.0].max
    use_synth_defaults hard: 0.60, amp: amp, attack_level: 2
    
    # bar 45
    play 'Fs4', decay: 1.5
    play 'A4', decay: 1.5
    plays 'D5', 1
    plays 'A4', 0.5
    play 'D4', decay: 3
    play 'Fs4', decay: 3
    plays 'A4', 2.5
    plays 'D5', 0.5
    amp = [amp + d_amp, 0.0].max
    use_synth_defaults hard: 0.60, amp: amp, attack_level: 2
    play 'Fs4', decay: 1.5
    play 'A4', decay: 1.5
    plays 'D5', 1
    plays 'Cs5', 0.5
    
    # bar 46
    amp = [amp + d_amp, 0.0].max
    use_synth_defaults hard: 0.60, amp: amp, attack_level: 2
    play 'D4', decay: 1.5
    play 'G4', decay: 1.5
    plays 'Cs5', 1
    plays 'B4', 0.5
    plays3 'D4', 'G4', 'B4', 3
    amp = [amp + d_amp, 0.0].max
    use_synth_defaults hard: 0.60, amp: amp, attack_level: 2
    play 'G4', decay: 1.5
    plays 'B4', 0.5
    plays 'Cs5', 0.5
    plays 'D5', 0.5
    
    # bar 47
    amp = [amp + d_amp, 0.0].max
    use_synth_defaults hard: 0.60, amp: amp, attack_level: 2
    play 'D4', decay: 1.5
    play 'Fs4', decay: 1.5
    plays 'A4', 1
    plays 'Fs4', 0.5
    play 'A3', decay: 3
    play 'D4', decay: 3
    plays 'Fs4', 2.5
    plays 'Fs4', 0.5
    amp = [amp + d_amp, 0.0].max
    use_synth_defaults hard: 0.60, amp: amp, attack_level: 2
    play 'B3', decay: 1.5
    play 'D4', decay: 1.5
    plays 'G4', 1
    plays 'Fs4', 0.5
    
  end
  
  # Use slightly lighter volume but no diminuendo first time around
  amp = 1.1
  d_amp = 0.0
  bars45to47_rh amp, d_amp
  
  # bar 48
  
  play 'A3', decay: 1.5
  play 'Cs4', decay: 1.5
  plays 'Fs4', 1
  plays 'E4', 0.5
  play 'A3', decay: 1.5
  play 'Cs4', decay: 1.5
  plays 'E4', 2.5
  plays 'A4', 0.5
  play 'E4', decay: 1.5
  play 'A4', decay: 1.5
  plays 'D5', 1
  plays 'Cs5', 0.5
  
  bars45to47_rh amp, d_amp
  
  d_amp = -0.067
  
  # start diminuendo and repeat to fade
  2.times do
    
    # bar 49
    amp = [amp + d_amp, 0.0].max
    use_synth_defaults hard: 0.60, amp: amp, attack_level: 2
    plays3 'A3', 'Cs4', 'E4', 1.5
    plays3 'Fs3', 'A3', 'D4', 1.5
    amp = [amp + d_amp, 0.0].max
    use_synth_defaults hard: 0.60, amp: amp, attack_level: 2
    play 'E3', decay: 1.5
    play 'A3', decay: 1.5
    plays 'Cs4', 1
    plays 'A4', 0.5
    play 'E4', decay: 1.5
    play 'A4', decay: 1.5
    plays 'D5', 1
    plays 'Cs5', 0.5
    
    bars45to47_rh amp, d_amp
    amp = [amp + (6*d_amp), 0.0].max
  end
  
end

define :sect4_lh do
  
  define :bars45to47_lh do |amp,d_amp|
    
    # As with rh reduce amp by d_amp twice every bar
    amp = [amp + d_amp, 0.0].max
    
    # bar 45
    play 'D3', decay: 5.5, amp: amp
    sleep 5.5
    amp = [amp + d_amp, 0.0].max
    play 'Fs2', decay: 0.5, amp: amp
    sleep 0.5
    
    amp = [amp + d_amp, 0.0].max
    play 'G2', decay: 5.5, amp: amp
    sleep 5.5
    amp = [amp + d_amp, 0.0].max
    play 'A2', decay: 0.5, amp: amp
    sleep 0.5
    
    amp = [amp + d_amp, 0.0].max
    play 'D3', decay: 4.5, amp: amp
    sleep 4.5
    amp = [amp + d_amp, 0.0].max
    play 'G2', decay: 1.5, amp: amp
    sleep 1.5
  end
  
  # Use slightly lighter volume but no diminuendo first time around
  amp = 1.1
  d_amp = 0.0
  bars45to47_lh amp, d_amp
  
  # bar 48
  plays 'A2', 3
  plays 'A2', 1.5
  plays 'A2', 0.5
  plays 'B2', 0.5
  plays 'Cs3', 0.5
  
  bars45to47_lh amp, d_amp
  
  d_amp = -0.067
  # start diminuendo and repeat to fade
  2.times do
    
    # bar 49
    amp = [amp + d_amp, 0.0].max
    play 'A2', decay: 1.5, amp: amp
    sleep 1.5
    play 'D3', decay: 1.5, amp: amp
    sleep 1.5
    amp = [amp + d_amp, 0.0].max
    use_synth_defaults hard: 0.60, amp: amp, attack_level: 2
    plays 'A2', 1.5
    plays 'A2', 0.5
    plays 'B2', 0.5
    plays 'Cs3', 0.5
    
    bars45to47_lh amp, d_amp
    amp = [amp + (6*d_amp), 0.0].max
    
  end
end

define :sect4 do
  # tempo (12:8)
  use_bpm 105
  
  use_synth_defaults hard: 0.60, amp: 1.4, attack_level: 2
  
  in_thread do
    sect4_lh
  end
  
  in_thread do
    sect4_rh
  end
  
  sleep 42
  
end

#sect2
#sect3
#sect4