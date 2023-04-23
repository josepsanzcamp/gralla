\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title="Tarantella"
  subtitle="Tarantella"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Sicília"
  arranger="Arr. Ramon Güell"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative a''
{
  \clef treble
  \key c \major
  \time 3/8
  a4 a8 \tempo 4. = 200  |
  \time 6/8   \repeat volta 2 { e4 e8 a4 a8  |
  e4. e4 e8  |
  f4 f8 f g f  |
  %05
  e4. e8 f e  |
  d4 d8 d e d  |
  c4. b4 c8  |
  e8 d c b c b }
  \alternative { { a4. a'4 a8 }
  %10
  { a,4. a4 b8 } }
  \repeat volta 2 {
  c8 b c d c b  |
  c4 a8 a4 b8  |
  c8 b c d c d  |
  e4. e8 f e  |
  %15
  d4 d8 d e d  |
  c4. b4 c8  |
  e8 d c b c b }
  \alternative { { a4. a4 b8 }
  { a4. a8 c e } }
  %20
  \repeat volta 2 { a4. a  |
  a4. ~ a8 g f  |
  e8 f e d c b  |
  c8 e c a4.  |
  a'4 e8 a4 e8  |
  %25
  a4. ~ a8 g f  |
  e8 f e d c b }
  \alternative { { a4. a8 c e }
  { a,4. e'4 f8 } }
  \repeat volta 2 {
  g8 e c g' e c  |
  %30
  g'4 g8 g a g  |
  f8 e f d e f  |
  g8 e c c e f  |
  g8 e c g' e c  |
  g'4 g8 g a g  |
  %35
  b8 a g f e d }
  \alternative { { c4. e4 f8 }
  { c4. r } } \bar "||"
}

liniaroAb =
\relative c''
{
  \tempo 4. = 200
  \clef treble
  \key c \major
  \time 3/8
  r4.  |
  \time 6/8   \repeat volta 2 { c4. c  |
  a4. a  |
  d4. d  |
  %05
  c4. c  |
  b4. b  |
  a4. a  |
  gis4. gis }
  \alternative { { a4. r }
  %10
  { a4. r } }
  \repeat volta 2 {
  e'4. f  |
  e4. r  |
  e4. f  |
  g4 c,8 a4.  |
  %15
  b4. b  |
  a4. a  |
  gis4. gis }
  \alternative { { a4. r }
  { a4. r } }
  %20
  \repeat volta 2 { a4. a8 c e  |
  a,4. a  |
  c4. b  |
  a4. a8 c e  |
  a,4. a8 c e  |
  %25
  a,4. a  |
  c4. b }
  \alternative { { c4. r }
  { a4. r } }
  \repeat volta 2 {
  c4. g  |
  %30
  c4. b  |
  a4. b  |
  c4. c  |
  c4. g  |
  c4. b  |
  %35
  f'4. b, }
  \alternative { { e4. r }
  { e4. r } } \bar "||"
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

