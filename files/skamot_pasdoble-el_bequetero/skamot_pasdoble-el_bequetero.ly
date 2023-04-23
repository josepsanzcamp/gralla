\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title="Pasdoble"
  subtitle="El Bequetero"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Gustavo Pasqual Falcó"
  arranger="Arr. Xavier Richart"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  g8 g16 a b8 c  |
  d8 b16 c d8 e  |
  f8. fis16 g4-.  |
  r4 g,8 g  \bar "||"
  %05
  e'4 d8 b  |
  d4 c8 b  |
  a4 g ~  |
  g4 g8 g  |
  e'4 d8 b  |
  %10
  d4 c8 a  |
  b2 ~  |
  b4 gis8 a  |
  f'4 e8 c  |
  e4 d8 a  |
  %15
  c4 b ~  |
  b4 b8 d  |
  a4 b  |
  d4 c8 a  |
  g2 ~  |
  %20
  g4 g8 g  |
  e'4 d8 b  |
  d4 c8 b  |
  a4 g ~  |
  g4 gis8 a  |
  %25
  e'4 e8 e  |
  a4 g8 e  |
  f2 ~  |
  f4 g,8 a  |
  f'4 e8 d  |
  %30
  c4 b8 a  |
  a4 g ~  |
  g8 g g g  |
  b4 a8 g  |
  e'4 d  |
  %35
  c2 _"FI"  \bar "||"
  r8 e d e  |
  \repeat volta 2 { d4 c ~  |
  c8 d c d  |
  c4 b ~  |
  %40
  b8 f' e f  |
  e4 d ~  |
  d8 e f fis  |
  g2  |
  r8 e d e  |
  %45
  d4 c ~  |
  c8 a' g a  |
  g4 f ~  |
  f8 f c d  |
  e4 g ~  |
  %50
  g8 f d e }
  \alternative { { c2  |
  r8 e d e }
  { c2 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  g8 g16 g g8 g  |
  g8 g16 g g8 g  |
  a8. gis16 g4-.  |
  r4 g'8 g  \bar "||"
  %05
  g4 f8 g  |
  f4 e8 g  |
  f4 e ~  |
  e4 g8 g  |
  g4 f8 g  |
  %10
  f4 e8 c  |
  d2 ~  |
  d4 b8 c  |
  d4 c8 a  |
  c4 f8 f  |
  %15
  e4 d ~  |
  d4 g8 g  |
  f4 g  |
  f4 e8 f  |
  g4 f  |
  %20
  e4 g8 g  |
  g4 f8 g  |
  f4 e8 g  |
  f4 e ~  |
  e4 d8 c  |
  %25
  c4 g8 g  |
  c4 b8 ais  |
  a4 c  |
  a4 b8 c  |
  d4 c8 d  |
  %30
  e4 d8 e  |
  f4 e ~  |
  e8 d e f  |
  g4 f8 e  |
  g4 f  |
  %35
  e2  \bar "||"
  r8 g f g  |
  \repeat volta 2 { f4 e (  |
  f8 ) f e f  |
  e4 d ~  |
  %40
  d8 d c d  |
  c4 b ~  |
  b8 c b a  |
  g2  |
  r8 g' f g  |
  %45
  f4 e ~  |
  e8 f e c  |
  ais4 a ~  |
  a8 a a b  |
  c4 g ~  |
  %50
  g8 d' b g }
  \alternative { { c8 e g4  |
  r8 g f g }
  { c,2 } } \bar "||"
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

