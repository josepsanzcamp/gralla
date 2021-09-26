\version "2.16.2"

\header {
  dedication="Masurca"
  title=""
  subtitle="Masurca del Tio Bartolo"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Aragó"
  arranger="del repertori de José Sancho, \"Tío Bartolo\""
  opus="Arr. Blas Coscollar"
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
  \time 3/4
  \repeat volta 2 { e8. d16 c8. b16 c8. a16  |
  g4 e' r  |
  e8. d16 c8. b16 c8. a16  |
  g4 f' r  |
  %05
  g,8. a16 b8. c16 b8. a16  |
  g4 f' r  |
  g,8. a16 b8. c16 b8. a16  |
  g4 e' r  |
  e8. d16 c8. b16 c8. a16  |
  %10
  g4 e' r  |
  e8. d16 c8. b16 d8. c16  |
  a2 r4  |
  f'8. f16 e8. e16 d8. d16  |
  c4 g r  |
  %15
  g8. a16 b8. c16 d8. e16  |
  \mark "Fine" c4 c r  | }
  e4 g e  |
  g4 g r  |
  g4 f8. e16 d8. e16  |
  %20
  f4 f r  |
  f4 g a  |
  g4 g r  |
  f8. e16 d8. e16 f8. g16  |
  e4 e r  |
  %25
  e4 g e  |
  g4 g r  |
  c,4 b8. c16 d8. c16  |
  a2 r4  |
  f'8. f16 e8. e16 d8. d16  |
  %30
  c4 g r  |
  g8. a16 b8. c16 d8. e16  |
  \mark "D.C. al Fine" c4 c' r  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 { r2 r4  |
  e8. d16 c8. b16 a8. g16  |
  g4 c e  |
  f8. e16 d8. c16 b8. a16  |
  %05
  g4 b d  |
  f8. e16 d8. c16 b8. a16  |
  g4 d' dis  |
  e8. d16 c8. b16 a8. g16  |
  c4 e c  |
  %10
  e8. d16 c8. b16 a8. g16  |
  c4 d e  |
  f8. e16 d8. e16 f8. d16  |
  f8. a16 f8. a16 f8. a16  |
  e8. g16 e8. g16 e8. g16  |
  %15
  b8. a16 g8. f16 e8. d16  |
  e4 e r  | }
  c4 e c  |
  e4 e r  |
  e4 d8. c16 b8. c16  |
  %20
  d4 d r  |
  d4 e f  |
  e4 e r  |
  g,8. a16 b8. g16 a8. b16  |
  c4 c r  |
  %25
  c4 e c  |
  e4 e r  |
  e4 d8. e16 f8. e16  |
  f2 r4  |
  f8. a16 f8. a16 f8. a16  |
  %30
  e8. g16 e8. g16 e8. g16  |
  b8. a16 g8. f16 e8. d16  |
  e4 e r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
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

