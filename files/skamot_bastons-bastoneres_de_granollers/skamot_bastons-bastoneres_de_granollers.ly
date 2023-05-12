\version "2.16.2"

\header {
  dedication=""
  title="Ball de bastons"
  subtitle="Ball de bastoneres de Granollers"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus="El Vallès Oriental"
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  e4 e4. c8  |
  f4 f2  |
  g8. f16 e8. g16 f8. d16  |
  e8. f16 e8. d16 c4  |
  %05
  e4 e4. c8  |
  f4 f2  |
  g8. f16 e8. g16 f8. d16  |
  c4 r2  |
  b4 c d  |
  %10
  d4 e f  |
  f4 f8 e d c  |
  e2 d4  |
  e4 e4. c8  |
  f4 f2  \bar "||"
  %15
  \key g \major   \time 6/8   g8 a g fis e fis  |
  g4. r  |
  \repeat volta 2 { b,8 c d d d d  |
  e4 d8 b c d  |
  d4 c8 c d e  |
  %20
  e4 d8 d4.  |
  b8 c d d d d  |
  e4 c8 a b c  |
  d8 e d c b a  |
  g4. d'  | }
  %25
  \repeat volta 2 { a8 c c a c c  |
  b8 c d d4 b8  |
  a8 c c a c c  |
  b8 c d d4.  |
  a8 c c a c c  |
  %30
  b8 c d d b c  |
  d8 e d c b a  |
  g4. d'  | }
  \repeat volta 2 { f4 d8 e4 c8  |
  d4. ~ d8 b c  |
  %35
  d8 e d c b c  |
  d4 b8 g4.  |
  f'4 d8 e4 c8  |
  d4. ~ d8 b c  |
  d8 e d c b a  |
  %40
  g4. r  | }
  \repeat volta 2 { b8 c d d d d  |
  e4 d8 b c d  |
  d4 c8 c d e  |
  e4 d8 d4.  |
  %45
  b8 c d d d d  |
  e4 c8 a b c }
  \alternative { { d8 e d c b a  |
  g4. r }
  { d'8 e d c b c } }
  %50
  d4. r  |
  \time 3/4   d4 d4. b8  |
  c4 c4. a8  |
  b4 b4. g8  |
  a2 r4  |
  %55
  \time 6/8   d8 e d c b c  |
  d8 e d c b c  |
  d8 e d c b a  |
  g4. r  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  c4 c4. c8  |
  a4 a2  |
  b8. a16 g8. g16 a8. b16  |
  c8. d16 c8. b16 c4  |
  %05
  c4 c4. c8  |
  a4 a2  |
  b8. a16 g8. g16 a8. b16  |
  c4 r2  |
  r2 r4  |
  %10
  b4 c d  |
  d4 d8 c b a  |
  g8 c b a g4  |
  c4 c4. c8  |
  a4 a2  \bar "||"
  %15
  \key g \major   \time 6/8   g8 a g c b a  |
  g4. r  |
  \repeat volta 2 { g8 a b b b b  |
  c4 b8 g a b  |
  b4 a8 a b c  |
  %20
  c4 b8 b4.  |
  g8 a b b b b  |
  c4 a8 fis g a  |
  b8 c b a g fis  |
  g4. b  | }
  %25
  \repeat volta 2 { a8 c c a c c  |
  g8 a b b4 g8  |
  a8 c c a c c  |
  g8 a b b4.  |
  a8 c c a c c  |
  %30
  g8 a b b g a  |
  b8 c b a g fis  |
  g4. b  | }
  \repeat volta 2 { r2 r4  |
  r2 r4  |
  %35
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %40
  r2 r4  | }
  \repeat volta 2 { g8 a b b b b  |
  c4 b8 g a b  |
  b4 a8 a b c  |
  c4 b8 b4.  |
  %45
  g8 a b b b b  |
  c4 a8 fis g a }
  \alternative { { b8 c b a g fis  |
  g4. r }
  { b8 c b a g a } }
  %50
  b4. r  |
  \time 3/4   b4 b2  |
  a4 a2  |
  g4 g2  |
  fis2 r4  |
  %55
  \time 6/8   b8 c b a g a  |
  b8 c b a g a  |
  b8 c b a g fis  |
  g4. r  \bar "|."
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

