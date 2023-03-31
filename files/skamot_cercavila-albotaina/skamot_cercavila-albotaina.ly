\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title="Cercavila"
  subtitle="Albotaina"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Algemesí"
  arranger="Arr. Xavier Richart"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/8
  d16 _"Allegro" d  |
  \time 2/4   \repeat volta 2 { d8 e d c  |
  d8 g4 g8  |
  fis4 e8 \mordent d  |
  %05
  c4 r8 c16 c  |
  c8 d c b  |
  c8 fis4 fis8  |
  e4 d8 \mordent c  |
  d4 r8 d16 d  |
  %10
  d8 e d c  |
  d8 g4 g8  |
  fis4 f  |
  e4 r8 e16 e  |
  e8 g fis e  |
  %15
  d8 b d g  |
  fis8 d e fis }
  \alternative { { g4 r8 d16 d }
  { \mark "Fine" g2 } }
  \key c \major   \repeat volta 2 { e4. f8  |
  %20
  g4. e8  |
  f8 g f d  |
  e4 r8 d16 e  |
  f8 f f f  |
  f4. e16 f  |
  %25
  g8 g g g  |
  g2  |
  e4. f8  |
  g4. e8  |
  f8 g f d  |
  %30
  e4. d16 e  |
  f8 f f f  |
  g8 f e d }
  \alternative { { e2  |
  r8 f e d }
  %35
  { \mark "D.C. al Fine" c2 } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/8
  b16 b  |
  \time 2/4   \repeat volta 2 { b8 c b a  |
  b8 b4 c8  |
  d4 c8 \mordent b  |
  %05
  a4 r8 a16 a  |
  a8 b a g  |
  a8 a4 b8  |
  c4 b8 \mordent a  |
  b4 r8 b16 b  |
  %10
  b8 c b a  |
  b8 b4 c8  |
  d8 g, a b  |
  c4 r8 c16 c  |
  c8 e d c  |
  %15
  b8 g b e  |
  d8 c b a }
  \alternative { { g4 r8 b16 b }
  { g2 } }
  \key c \major   \repeat volta 2 { c4. d8  |
  %20
  e4. c8  |
  a4. b8  |
  c4 r8 b16 c  |
  d8 b g b  |
  d4. c16 d  |
  %25
  e8 c g c  |
  e2  |
  c4. d8  |
  e4. c8  |
  a4. b8  |
  %30
  c4. b16 c  |
  d8 c b a  |
  g8 g a b }
  \alternative { { c2  |
  r8 g a b }
  %35
  { c2 } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAb
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
  \header {instrument="Gralla 1"}
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

