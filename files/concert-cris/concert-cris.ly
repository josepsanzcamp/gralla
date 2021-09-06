\version "2.22.1"

\header {
  dedication="Concert"
  title="   "
  subtitle="Cris"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Julio González"
  arranger="2a veu: Raül Forcadell"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  c4 g8 b  |
  c4. e8  |
  d4 c  |
  d4 g,  |
  %05
  c4 g8 b  |
  c4. e8  |
  d4 g,  |
  c4 r  \bar "||"
  e4 e8 e  |
  %10
  g4 g8 g  |
  c,4 c8 c  |
  f8. f16 e8. e16  |
  d4. r8  |
  g4 c,8 c  |
  %15
  f4 d8 d  |
  e4 d  |
  c4 r  |
  g'4 a8 a  |
  g4 f8 f  |
  %20
  g4 e  |
  c4 r  \bar "||"
  c16 d e f g a g f  |
  e16 f d e c4  \bar "||"
  c4 g8 b  |
  %25
  c4. e8  |
  d4 c  |
  d4 g,  |
  c4 g8 b  |
  c4. e8  |
  %30
  d4 g,  |
  c4\fermata r  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  c16 g a b c d e f  |
  e4 a8 g  |
  f4 g  |
  f4 g  |
  %05
  c,16 g a b c d e f  |
  e4 a8 g  |
  f4 d  |
  c4 r  \bar "||"
  g4 g8 g  |
  %10
  g4 g8 g  |
  a4 a8 a  |
  d4 c  |
  b4. r8  |
  c4 g8 g  |
  %15
  b4 a8 b  |
  c4 b  |
  c4 r  |
  g4 a8 a  |
  g8 a b4  |
  %20
  c16 d e f g e c e  |
  c4 r  \bar "||"
  c16 b a g a g b d  |
  c16 d b c e4  \bar "||"
  c16 g a b c d e f  |
  %25
  e4 a8 g  |
  f4 g  |
  f4 g  |
  c,16 g a b c d e f  |
  e4 a8 g  |
  %30
  f4 d  |
  c4\fermata r  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 2/4
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  %05
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  \bar "||"
  tomfl4 ~ tomfl8 tomfl  |
  %10
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  %15
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  %20
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  \bar "||"
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  \bar "||"
  tomfl4 ~ tomfl8 tomfl  |
  %25
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 ~ tomfl8 tomfl  |
  %30
  tomfl4 ~ tomfl8 tomfl  |
  tomfl4 r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
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

