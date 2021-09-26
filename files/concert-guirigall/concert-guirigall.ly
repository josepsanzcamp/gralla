\version "2.16.2"

\header {
  dedication="Concert"
  title=""
  subtitle="Guirigall"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Xavier Ahuir"
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
  \time 1/4
  e8 e  |
  \time 2/4   a4 e8 e  |
  a4 e8 e  |
  c'8. b16 a8 g  |
  %05
  a4 e8 e  |
  a4 e8 e  |
  a4 e8 e  |
  c'8. b16 a8 g  |
  a4 f8 f  |
  %10
  e8. d16 c8 b  |
  c8 a f' f  |
  e8. d16 c8 b  |
  a4 f'8 f  |
  e8. d16 c8 b  |
  %15
  c8 a f' f  |
  e8. d16 c8 b  |
  a4 a8 b  \bar "||"
  c8. d16 c8 b  |
  b8 g g g  |
  %20
  b8. b16 c8 b  |
  a4 a8 b  |
  c8. d16 c8 b  |
  b8 g g g  |
  b8. b16 c8 b  |
  %25
  a4 e'8 e  |
  a4 e8 e  |
  a4 e8 e  |
  c'8. b16 a8 g  |
  a4 e8 e  |
  %30
  a4 e8 e  |
  a4 e8 e  |
  c'8. b16 a8 g  |
  a4 a8 b  |
  c8. d16 c8 b  |
  %35
  gis8 e e e  |
  gis8. a16 b8 c  |
  a4 a8 b  |
  c8. d16 c8 b  |
  gis8 e e e  |
  %40
  gis8. a16 b8 c  |
  a4 a8 g  |
  f8. g16 a8 f  |
  e8 c d e  |
  f8. g16 a8 f  |
  %45
  e4 a8 g  |
  f8. g16 a8 f  |
  e8 c d e  |
  f8. d16 c8 b  |
  a4 e'8 e  |
  %50
  a4 e8 e  |
  a4 e8 e  |
  c'8. b16 a8 g  |
  a4 e8 e  |
  a4 e8 e  |
  %55
  a4 e8 e  |
  c'8. b16 a8 g  |
  a2 ~  |
  a2  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  c8 c  |
  \time 2/4   c4 c8 c  |
  c4 c8 c  |
  e8. d16 c8 b  |
  %05
  c4 c8 c  |
  c4 c8 c  |
  c4 c8 c  |
  e8. d16 c8 b  |
  c4 d8 d  |
  %10
  c16 b c d e f g8  |
  e8 c a'16 f d b  |
  c16 d e f e8 \times 2/3 { d16 e d }  |
  c16 d b c d8 d  |
  c16 b c d e f g8  |
  %15
  e8 c a'16 f d b  |
  c16 d e f e8 \times 2/3 { d16 e d }  |
  c4 c8 d  \bar "||"
  e16 a g f e f g a  |
  g8 e e f  |
  %20
  g16 b a g \times 2/3 { a g f } e d  |
  c16 d e d c8 d  |
  e16 a g f e f g a  |
  g8 e e f  |
  g16 b a g \times 2/3 { a g f } e d  |
  %25
  c4 c8 c  |
  c4 c8 c  |
  c4 c8 c  |
  e8. d16 c8 b  |
  c4 c8 c  |
  %30
  c4 c8 c  |
  c4 c8 c  |
  e8. d16 c8 b  |
  c4 c8 d  |
  e16 d c b a b gis a  |
  %35
  b8 gis4 g16 a  |
  b16 a b c \times 2/3 { d e f } e d  |
  c8 e16 d c8 d  |
  e16 d c b a b gis a  |
  b8 gis4 g16 a  |
  %40
  b16 a b c \times 2/3 { d e f } e d  |
  c4 c8 b  |
  a16 g a b c b c d  |
  c8 a4 g8  |
  a16 g a b c b c d  |
  %45
  c16 b a b c8 b  |
  a16 g a b c b c d  |
  c8 a4 g8  |
  a16 g a b c b a b  |
  c4 c8 c  |
  %50
  c4 c8 c  |
  c4 c8 c  |
  e8. d16 c8 b  |
  c4 c8 c  |
  c4 c8 c  |
  %55
  c4 c8 c  |
  e8. d16 c8 b  |
  a2 ~  |
  a2  \bar "|."
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

