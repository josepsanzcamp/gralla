\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title=""
  subtitle="Schiarazula Marazula"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Antonio Mainerio (ca. 1535 - 1582)"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  e8  |
  \time 2/4   e8 ( d ) e  d  |
  c8-> c-> c-> ( b )  |
  a8 ( g ) a  b  |
  %05
  a8-> a-> a-> ( e' )  |
  e8 ( d ) e  d  |
  c8-> c-> c-> b   |
  a8 ( g ) a  b  |
  a8-> a-> a-> d16 ( c )  |
  %10
  b8 ( a ) b  c  |
  b8-> b-> b-> e16 ( d )  |
  c8 ( a ) a  g  |
  a8-> a-> a-> d16 c   |
  b8 ( a ) b  c  |
  %15
  b8-> b-> b-> e16 ( d )  |
   c8 a  a  g  |
  a8-> a-> a-> r  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  e8  |
  \time 2/4   e4. d8  |
  e4. d8  |
  c4. b8  |
  %05
  c4. e8  |
  e4. d8  |
  e4. d8  |
  c4. b8  |
  c4. b16 a  |
  %10
  g4. a8  |
  g4. c16 b  |
  a4. b8  |
  c4. b16 a  |
  g4. a8  |
  %15
  g4. c16 b  |
  a4. b8  |
  c4. r8  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 1/8
  r8  |
  \time 2/4   tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8-> tomh-> tomh-> tomh  |
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  %05
  tomh8-> tomh-> tomh-> tomh  |
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8-> tomh-> tomh-> tomh  |
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8-> tomh-> tomh-> tomh  |
  %10
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8-> tomh-> tomh-> tomh  |
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8-> tomh-> tomh-> tomh  |
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  %15
  tomh8-> tomh-> tomh-> tomh  |
  tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8-> tomh-> tomh-> r  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 1/8
  r8  |
  \time 2/4   tomfl4 tomfl  |
  tomfl8-> tomfl-> tomfl4->  |
  tomfl4 tomfl  |
  %05
  tomfl8-> tomfl-> tomfl4->  |
  tomfl4 tomfl  |
  tomfl8-> tomfl-> tomfl4->  |
  tomfl4 tomfl  |
  tomfl8-> tomfl-> tomfl4->  |
  %10
  tomfl4 tomfl  |
  tomfl8-> tomfl-> tomfl4->  |
  tomfl4 tomfl  |
  tomfl8-> tomfl-> tomfl4->  |
  tomfl4 tomfl  |
  %15
  tomfl8-> tomfl-> tomfl4->  |
  tomfl4 tomfl  |
  tomfl8-> tomfl-> tomfl4->  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAd
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

\bookpart {
  \header {instrument="Gralla 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

\bookpart {
  \header {instrument="Gralla 2"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

\bookpart {
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

\bookpart {
  \header {instrument="Timbal fondo"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

