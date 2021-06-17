# Chariots of fire
# Based on sheet music downloaded from:
#    https://www.sheetmusicmobile.com/piano/sheets/48528/Vangelis_Chariots_of_Fire.html
# and further adapted to better match audio from:
#    https://youtu.be/8a-HfNE3EIo

# 135 bpm
# 8 beats per bar
use_bpm 135

# Preliminary bar of introduction not in sheet music
# Here, we ramp up from near-zero to half amplitude
define :pre_intro do
  use_synth :dsaw
  use_synth_defaults attack_level: 2.5, decay: 0.2, sustain: 0.8, release: 0.2, detune: 0.1
  
  d_amp = 0.03125
  amp = d_amp
  16.times do
    play 'C3', amp: amp
    sleep 0.5
    amp = amp + d_amp
  end
end

# To save space on piano parts with delay and sleep the same length
# Define play sleep (plays") function
define :plays do |note, length|
  play note, decay: length
  sleep length
end

# A really common structure throughout
# Define as a function to optimise
define :thirds do |a, b, c|
  plays a, 0.66666
  plays b, 0.66666
  plays c, 0.66668
end

# Define a function for the repeating bar of percussion
define :percussion do
  cymbal = :elec_hi_snare, pitch_dis=1, pitch=10, env_curve=5
  snare  = :sn_zolf, pitch_dis=1, pitch=10, env_curve=5
  vol=1.75
  
  with_fx :echo, decay: 0.1, pre_amp: 0.2, phase: 0.5 do
    with_fx :gverb do
      with_fx :distortion, mix: 0.6 do
        2.times do
          sample snare, amp: 0.8 * vol
          sample cymbal, amp: 0.8 * vol
          sleep 0.5
          sample snare, amp: 0.6 * vol
          sample cymbal, amp: 0.6 * vol
          sleep 0.5
          sample snare, amp: 0.4 * vol
          sample cymbal, amp: 0.4 * vol
          sleep 0.5
          sample snare, amp: 0.3 * vol
          sample cymbal, amp: 0.3 * vol
          sleep 0.5
          sample snare, amp: 0.2 * vol
          sample cymbal, amp: 0.2 * vol
          sleep 1.5
          sample snare, amp: 0.4 * vol
          sample cymbal, amp: 0.4 * vol
          sleep 0.5
        end
      end
    end
  end
end

# 11 bar introduction
define :introduction do
  
  # bars 1-11 of continual C3
  in_thread do
    use_synth :dsaw
    use_synth_defaults attack_level: 2.5, decay: 0.2, sustain: 0.8, release: 0.2
    
    # ramp up from half to full amplitude over the first 2 bars
    d_amp = 0.03125
    amp = 0.5
    16.times do
      play 'C3', amp: amp
      sleep 0.5
      amp = amp + d_amp
    end
    # remaining bars all at full amplitude
    160.times do
      play 'C3'
      sleep 0.5
    end
  end
  
  # melody 1 (last post synth)
  in_thread do
    
    # synth intro for 7 bars
    use_synth :saw
    use_synth_defaults attack: 1.0, attack_level: 2.5, decay: 0.5, amp: 2.0
    
    # bar 1-4
    2.times do
      sleep 6
      play 'C4', sustain: 0.5, release: 0.5
      sleep 2
      play 'G4', sustain: 2, release: 6
      sleep 8
    end
    # bar 5-7
    sleep 6
    play 'C4', sustain: 0.5, release: 0.5
    sleep 2
    play 'G4', sustain: 2, release: 6
    sleep 16
    
    #bar 8
    sleep 8
    
    # bar 9
    sleep 6
    play 'C4', sustain: 0.5, release: 0.5
    sleep 2
    play 'G4', sustain: 2, release: 6
    sleep 8
    
    #bar 11
    sleep 6
    play 'C4', sustain: 0.5, release: 0.5
    sleep 2
    
  end
  
  # melody 2 (synth chords)
  in_thread do
    
    # 7 bars of rest
    sleep 56
    
    # 4 more bars of synth chords
    
    use_synth :saw
    use_synth_defaults amp: 0.75
    
    # bar 8-9
    play 'G3', decay: 12
    play 'C4', decay: 12
    plays 'E4', 12
    
    play 'A3', decay: 4
    play 'C4', decay: 2
    play 'F4', decay: 4
    sleep 2.5
    use_synth_defaults amp: 1
    plays 'C4', 1.5
    
    # bar 10-11
    play 'C4', decay: 14
    play 'E4', decay: 14
    play 'G4', decay: 14
    sleep 12
    
  end
  
  # percussion
  in_thread do
    # 7 bars of rest
    sleep 56
    4.times do
      percussion
    end
  end
  
  in_thread do
    
    # 7 bars of rest
    sleep 56
    
    use_synth :piano
    use_synth_defaults amp: 3
    
    play 'G3', decay: 4
    play 'C4', decay: 4
    play 'E4', decay: 4
    sleep 12
    play 'A3', decay: 4
    play 'C4', decay: 2
    play 'F4', decay: 4
    sleep 2.5
    use_synth_defaults amp: 1
    play 'C4', decay: 1.5
    sleep 1.5
    
    # bar 10-11
    play 'C4', decay: 2
    play 'E4', decay: 2
    play 'G4', decay: 2
    sleep 12
    
    # main piano ready to kick in
    use_synth_defaults amp: 3
    
    sleep 1
    plays 'C5', 1
    play 'A5', decay: 2
    play 'C5', decay: 2
    thirds 'F5', 'G5', 'A5'
  end
  
  # As all sections above are in threads, also wait 11 bars (88) before starting anything else
  sleep 88
end

define :main_sect do
  
  # more continual C3
  # this time, 16 bars worth
  in_thread do
    use_synth :dsaw
    use_synth_defaults attack_level: 2.5, decay: 0.2, sustain: 0.8, release: 0.2
    
    256.times do
      play 'C3'
      sleep 0.5
    end
  end
  
  in_thread do
    16.times do
      percussion
    end
  end
  
  
  # bass line
  in_thread do
    use_synth :piano
    use_synth_defaults amp: 3
    
    # bars 12-13
    play 'C2', decay:16
    sleep 16
    # bars 14-17
    4.times do
      play 'C2', decay:8
      sleep 8
    end
    # bars 18-19
    play 'C2', decay:6
    sleep 6
    play 'G2', decay:2
    sleep 2
    
    play 'C2', decay:8
    sleep 8
    
    # bass line of bars 20-23 repeats for 24-27
    2.times do
      # bars 20-21
      plays 'E2', 2
      plays 'F2', 2
      plays 'C2', 4
      plays 'E2', 2
      plays 'G2', 2
      plays 'C2', 4
      # bars 22-23
      plays 'E2', 2
      plays 'F2', 2
      plays 'C2', 2
      plays 'G2', 2
      plays 'C2', 8
    end
  end
  
  # main melody
  in_thread do
    use_synth :piano
    use_synth_defaults amp: 3
    
    # bars 12-13
    play 'C5', decay: 6
    play 'E5', decay: 6
    plays 'G5', 2
    plays 'E5', 2
    sleep 1
    plays 'C5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    thirds 'F5', 'G5', 'A5'
    
    play 'C5', decay: 6
    play 'E5', decay: 6
    plays 'G5', 4
    sleep 1
    plays 'C5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    thirds 'F5', 'G5', 'A5'
    
    # bars 14-15
    play 'C5', decay: 6
    play 'E5', decay: 6
    plays 'G5', 2
    plays 'E5', 2
    sleep 1
    plays 'E5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    thirds 'F5', 'E5', 'C5'
    
    play 'E4', decay: 6
    play 'G4', decay: 6
    plays 'C5', 4
    sleep 1
    plays 'C5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    thirds 'F5', 'G5', 'A5'
    
    # bars 16-17 (identical to 12-13 - optimise?)
    play 'C5', decay: 6
    play 'E5', decay: 6
    plays 'G5', 2
    plays 'E5', 2
    sleep 1
    plays 'C5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    thirds 'F5', 'G5', 'A5'
    
    play 'C5', decay: 6
    play 'E5', decay: 6
    plays 'G5', 4
    sleep 1
    plays 'C5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    thirds 'F5', 'G5', 'A5'
    
    # bar 18
    play 'C5', decay: 6
    play 'E5', decay: 6
    plays 'G5', 2
    plays 'E5', 2
    sleep 1
    plays 'E5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    thirds 'F5', 'E5', 'C5'
    
    #bars 19-22 (repeats to bars 23-26)
    2.times do
      #bar 19
      play 'E4', decay: 8
      play 'G4', decay: 8
      plays 'C5', 4
      sleep 1
      plays 'C6', 1
      thirds 'B5', 'A5', 'G5'
      
      # bars 20-21
      play 'E5', decay: 2
      play 'G5', decay: 2
      plays 'B5', 1.5
      plays 'G5', 0.5
      play 'C5', decay: 2
      play 'F5', decay: 2
      plays 'A5', 1.5
      plays 'F5', 0.5
      play 'C5', decay: 4
      play 'G5', decay: 4
      plays 'G5', 1.5
      plays 'C6', 0.5
      thirds 'B5', 'A5', 'G5'
      
      play 'E5', decay: 2
      play 'G5', decay: 2
      plays 'B5', 2
      play 'B4', decay: 2
      play 'D5', decay: 2
      plays 'F5', 2
      play 'G4', decay: 4
      play 'C5', decay: 4
      play 'E5', decay: 4
      sleep 1
      plays 'C6', 1
      thirds 'B5', 'A5', 'G5'
      
      # bar 22
      
      play 'E5', decay: 2
      play 'G5', decay: 2
      plays 'B5', 1.5
      plays 'G5', 0.5
      play 'C5', decay: 2
      play 'F5', decay: 2
      plays 'A5', 1.5
      plays 'F5', 0.5
      play 'C5', decay: 2
      play 'G5', decay: 2
      plays 'G5', 1.5
      plays 'E5', 0.5
      play 'A4', decay: 1
      play 'C5', decay: 1
      thirds 'F5', 'E5', 'C5'
    end
    #bar 27
    
    play 'E4', decay: 8
    play 'G4', decay: 8
    plays 'C5', 4
    sleep 1
    plays 'C5', 1
    thirds 'F5', 'G5', 'A5'
    
  end
  
  # melody 2 (last post synth at very start and end of section)
  in_thread do
    
    # synth intro for 7 bars
    use_synth :saw
    use_synth_defaults attack: 1.0, attack_level: 2.5, decay: 0.5, amp: 2.0
    
    # bar 12
    play 'G4', sustain: 2, release: 6
    sleep 8
    
    # then wait until final bar of section (possibly fill in some more later)
    
    sleep 112
    
    #bar 27
    sleep 6
    play 'C4', sustain: 0.5, release: 0.5
    sleep 2
  end
  
  # As all sections above are in threads, wait 16 bars (128) before starting anything else
  sleep 128
  
end

define :main_chords do
  
  # main melody chords repeated in synth
  
  in_thread do
    use_synth :saw
    use_synth_defaults sustain: 0.5, amp: 0.75
    
    # bars 12-13
    play 'C4', decay: 4
    play 'E4', decay: 4
    plays 'G4', 4
    sleep 2
    play 'A3', decay: 2
    play 'C4', decay: 2
    plays 'F4', 2
    
    play 'C4', decay: 4
    play 'E4', decay: 4
    plays 'G4', 4
    sleep 2
    play 'A3', decay: 2
    play 'C4', decay: 2
    plays'F4', 2
    
    # bars 14-15
    play 'C4', decay: 4
    play 'E4', decay: 4
    plays 'G4', 4
    sleep 2
    play 'A3', decay: 2
    play 'C4', decay: 2
    plays 'F4', 2
    
    play 'E3', decay: 4
    play 'G3', decay: 4
    plays 'C4', 4
    sleep 2
    play 'A3', decay: 2
    play 'C4', decay: 2
    plays 'F4', 2
    
    # bars 16-17 (identical to 12-13 - optimise?)
    play 'C4', decay: 4
    play 'E4', decay: 4
    plays 'G4', 4
    sleep 2
    play 'A3', decay: 2
    play 'C4', decay: 2
    plays 'F4', 2
    
    play 'C4', decay: 4
    play 'E4', decay: 4
    plays 'G4', 4
    sleep 2
    play 'A3', decay: 2
    play 'C4', decay: 2
    plays'F4', 2
    
    # bar 18
    play 'C4', decay: 4
    play 'E4', decay: 4
    plays 'G4', 4
    sleep 2
    play 'A3', decay: 2
    play 'C4', decay: 2
    plays 'F4', 2
    
    #bars 19-22 (repeats to bars 23-26)
    2.times do
      #bar 19
      play 'E3', decay: 4
      play 'G3', decay: 4
      plays 'C3', 4
      sleep 4
      
      # bars 20-21
      play 'E4', decay: 3
      play 'G4', decay: 3
      plays 'B4', 3
      sleep 1
      play 'C4', decay: 3
      play 'E4', decay: 3
      plays 'G4', 3
      sleep 1
      
      play 'E4', decay: 3
      play 'G4', decay: 3
      plays 'B4', 3
      sleep 1
      play 'G3', decay: 3
      play 'C4', decay: 3
      plays 'E4', 3
      sleep 1
      
      # bar 22
      
      play 'E4', decay: 3
      play 'G4', decay: 3
      plays 'B4', 3
      sleep 1
      play 'C4', decay: 3
      play 'E4', decay: 3
      plays 'G4', 3
      sleep 1
    end
    #bar 27
    
    play 'E3', decay: 3
    play 'G3', decay: 3
    plays 'C4', 3
    sleep 5
    
  end
  
  # Note no final sleep statement here, so this function
  #can be called in parallel with the main section
  
end

define :final_sect do
  
  # more continual C3
  # this time, 10 bars worth
  in_thread do
    use_synth :dsaw
    use_synth_defaults attack_level: 2.5, decay: 0.2, sustain: 0.8, release: 0.2
    
    160.times do
      play 'C3'
      sleep 0.5
    end
  end
  
  # percussion
  in_thread do
    10.times do
      percussion
    end
  end
  
  
  # bass line
  in_thread do
    use_synth :piano
    use_synth_defaults amp: 3
    
    # 7 bars of C2
    7.times do
      plays 'C2', 8
    end
    # bars 37-38
    2.times do
      plays 'C2', 6
      plays 'G1', 2
    end
    #bar 39
    plays 'C2', 8
  end
  
  # melody
  in_thread do
    use_synth :piano
    use_synth_defaults amp: 3
    
    # bars 30-31
    play 'C5', decay: 6
    play 'E5', decay: 6
    plays 'G5', 2
    plays 'E5', 2
    sleep 1
    plays 'C5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    thirds 'C6', 'B5', 'A5'
    
    play 'C5', decay: 6
    play 'E5', decay: 6
    plays 'G5', 4
    sleep 1
    plays 'C5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    thirds 'C6', 'B5', 'A5'
    
    # bars 32-33
    play 'C5', decay: 6
    play 'E5', decay: 6
    plays 'G5', 2
    plays 'E5', 2
    sleep 1
    plays 'E5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    plays 'F5', 1
    plays 'G5', 1
    
    play 'E5', decay: 6
    play 'G5', decay: 6
    plays 'C6', 4
    sleep 1
    plays 'C5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    thirds 'F5', 'E5', 'C5'
    
    # bars 34-35
    play 'G4', decay: 6
    play 'C5', decay: 6
    plays 'E5', 4
    sleep 1
    plays 'C5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    thirds 'F5', 'E5', 'C5'
    
    play 'E4', decay: 6
    play 'G4', decay: 6
    plays 'C5', 4
    sleep 1
    plays 'C5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    thirds 'F5', 'E5', 'C5'
    
    # bar 36
    play 'E4', decay: 6
    play 'G4', decay: 6
    plays 'E5', 4
    sleep 1
    plays 'E5', 1
    play 'A4', decay: 2
    play 'C5', decay: 2
    thirds 'F5', 'E5', 'C5'
    
    # bars 37-39
    play 'E4', decay: 16
    play 'G4', decay: 16
    plays 'C5', 16
    
    play 'E4', decay: 8
    play 'G4', decay: 8
    plays 'C5', 8
    
  end
  
  # melody 2 (last post synth)
  in_thread do
    
    use_synth :saw
    use_synth_defaults attack: 1.0, attack_level: 2.5, decay: 0.5, amp: 2.0
    # synth intro for 7 bars
    
    # bar 30
    play 'G4', sustain: 2, release: 6
    sleep 8
    
    #bar 31-32 (and 33-34)
    sleep 6
    play 'C4', sustain: 0.5, release: 0.5
    sleep 2
    play 'G4', sustain: 2, release: 6
    sleep 8
    
    
    # then 4 times fading out synth
    d_amp = -0.4
    amp = 1.5
    
    4.times do
      sleep 7
      play 'C4', sustain: 0.5, release: 0.5, amp: amp
      sleep 1
      play 'G4', sustain: 3.5, release: 6, amp: amp
      sleep 8
      amp = amp + d_amp
    end
  end
  
  # As all sections above are in threads, wait 10 bars (80) before starting anything else
  sleep 80
end

define :outro do
  
  cymbal = :elec_hi_snare, pitch_dis=1, pitch=10, env_curve=5
  snare  = :sn_zolf, pitch_dis=1, pitch=10, env_curve=5
  vol = 1.75
  
  use_synth :dsaw
  use_synth_defaults attack_level: 2.5, decay: 0.2, sustain: 0.8, release: 0.2
  
  d_amp = -0.125
  amp = 1.0
  d_amp_synth = -0.015625
  amp_synth = 1.0
  8.times do
    
    in_thread do
      8.times do
        play 'C3', amp: amp
        sleep 0.5
        amp_synth = amp_synth + d_amp_synth
      end
    end
    
    in_thread do
      sample snare, amp: 0.8 * amp * vol
      sample cymbal, amp: 0.8 * amp * vol
      sleep 0.5
      sample snare, amp: 0.6 * amp * vol
      sample cymbal, amp: 0.6 * amp * vol
      sleep 0.5
      sample snare, amp: 0.4 * amp * vol
      sample cymbal, amp: 0.4 * amp * vol
      sleep 0.5
      sample snare, amp: 0.3 * amp * vol
      sample cymbal, amp: 0.3 * amp * vol
      sleep 0.5
      sample snare, amp: 0.2 * amp * vol
      sample cymbal, amp: 0.2 * amp * vol
      sleep 1.5
      sample snare, amp: 0.4 * amp * vol
      sample cymbal, amp: 0.4 * amp * vol
      sleep 0.5
      amp = amp + d_amp
    end
    
    sleep 4
    
  end
  
  
end

# Play the piece by combining the sections defined above

use_transpose 1
pre_intro
introduction
main_sect
main_chords
main_sect
final_sect
outro
