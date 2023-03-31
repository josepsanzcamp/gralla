\version "2.16.2"

\header {
  dedication="Cercavila"
  title=""
  subtitle="Beuna"
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
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  e8 c g4 ~  |
  g8 e' d c  |
  c8 b b4 ~  |
  b4 r  |
  %05
  f'8 d b4 ~  |
  b8 f' e d  |
  c8 b c d  |
  e4 g,  |
  e'8 c g4 ~  |
  %10
  g8 e' d c  |
  c8 b b4 ~  |
  b4 r  |
  b8 b16 b b8 c  |
  d8 d16 d d8 e  |
  %15
  d8 d e fis  |
  g4 g,  |
  e'8 c g4 ~  |
  g8 e' d c  |
  c8\prall b b4 ~  |
  %20
  b4 r  |
  f'8 d b4 ~  |
  b8 f' e d  |
  c8\prall b c d  |
  e4 g,  |
  %25
  e'8 c g4 ~  |
  g8 e' d c  |
  c8\prall b b4 ~  |
  b8 e d c  |
  b8 b16 b b8 c  |
  %30
  d8 e16 d c8 b  |
  c2 ~  |
  c4 g  |
  \repeat volta 2 { f'4. d8  |
  b4 g  |
  %35
  g'4. e8  |
  c4 g  |
  a4. b8  |
  d8 c b a  |
  a8\prall g4. ~  |
  %40
  g4 g  |
  f'4. d8  |
  b4 g  |
  g'4. e8  |
  c4 g  |
  %45
  a4 c  |
  b8 g a b }
  \alternative { { c2 ~  |
  c4 g }
  { c4-. g--  |
  %50
  c4-. r } } \bar "||"
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  g8 e e4 ~  |
  e8 g f e  |
  e8 d d4 ~  |
  d4 r  |
  %05
  a'8 f d4 ~  |
  d8 a' g f  |
  e8 d e f  |
  g2  |
  g8 e c d  |
  %10
  e8 g f e  |
  e8 d d4 ~  |
  d4 r  |
  d8 d16 d d8 e  |
  fis8 fis16 fis fis8 g  |
  %15
  a8 c b a  |
  g2  |
  g8 e e4 ~  |
  e8 g f e  |
  e8\prall d d4 ~  |
  %20
  d4 r  |
  a'8 f d4 ~  |
  d8 a' g f  |
  e8\prall d e f  |
  g2  |
  %25
  g8 e c d  |
  e8 g f e  |
  e8\prall d d4 ~  |
  d8 g f e  |
  d8 d16 d d8 e  |
  %30
  f8 g16 f e8 d  |
  e2 ~  |
  e2  |
  \repeat volta 2 { d8 d16 c b8 b16 a  |
  g2  |
  %35
  e'8 e16 d c8 b16 a  |
  g2  |
  f'8 f16 e d8 d16 e  |
  f8 e d c  |
  c8\prall e4. ~  |
  %40
  e2  |
  d8 d16 c b8 b16 a  |
  g2  |
  e'8 e16 d c8 b16 a  |
  g2  |
  %45
  f'8 f16 g a g f e  |
  d8 e f g }
  \alternative { { e2 ~  |
  e2 }
  { e4-. g--  |
  %50
  c4-. r } } \bar "||"
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

