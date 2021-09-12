\version "2.22.1"

\header {
  dedication="Polca"
  title=""
  subtitle="El terròs"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Blas Coscollar"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  g16 c  |
  \time 2/4   c8 b d,16 e f g  |
  a8 g e16 f g e  |
  g8 f b16 g f d  |
  %05
  e8 f g g16 c  |
  c8 b d,16 e f a  |
  gis4 a16 b c a  |
  c4 b16 g a b  |
  c4 r8 b16 a  |
  %10
  f8 f f16 c' b a  |
  e8 e e4  |
  f8 f f16 d g f  |
  e16 c f d g c b a  |
  f8 f f16 b a g  |
  %15
  e8 e e4  |
  f16 g a c b8 g  |
  c4 r  \bar "||"
  \key g \major   b8 d, d8. b'16  |
  c8 fis, fis4  |
  %20
  a16 g fis e fis8. e16  |
  e8 d d4  |
  b16 d g d g8. a16  |
  g8 fis c'4  |
  d,16 fis a g fis8. b16  |
  %25
  a8 g b4  |
  b8 d, d4  |
  c'8 a e4  |
  a16 g fis e fis g a c  |
  b4 r  |
  %30
  b8 a e4  |
  a8 g d4  |
  fis8 d a' fis  |
  g16 d b' g d' b a g  |
  a8 e c'4  |
  %35
  g8 d b'4  |
  b16 a gis a e8 fis  |
  g4 r  \bar "|."
}

liniaroAb =
\relative f''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  r8  |
  \time 2/4   f8 d b g  |
  f'8 e c g  |
  b16 g d' b f'8 b,  |
  %05
  c16 g d' b e4  |
  f8 d b a  |
  b16 c d f e4  |
  d16 e f d g8 f  |
  e4 r  |
  %10
  b8 b b4  |
  c8 c c16 g e' c  |
  b16 g d' b g8 b  |
  c8 d e c  |
  b8 b b4  |
  %15
  c8 c cis16 a b cis  |
  d8 d f16 d e f  |
  e4 r  \bar "||"
  \key g \major   d8 b b4  |
  d8 c d16 c b a  |
  %20
  c8 a d16 e d c  |
  c8 b b16 c b a  |
  g8 a b16 a g a  |
  b8 c d16 c b c  |
  a8 b c16 b a b  |
  %25
  c8 d e16 d c d  |
  g,4 b8 g  |
  a4 c8 a  |
  d4 c8 e  |
  fis4 dis8 b  |
  %30
  e4 c8 a  |
  d4 b8 g  |
  d'4 c  |
  b4 g'8 d  |
  e4 e8 c  |
  %35
  d4 g8 d  |
  fis8 e c d  |
  b4 r  \bar "|."
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

