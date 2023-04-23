\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title="Pasdoble"
  subtitle="Música per a les vesprades"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Francesc Alexandri, 1998"
  arranger=""
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
  r4 g  |
  \repeat volta 2 { c2  |
  e8. d16 c8. a16  |
  g2  |
  %05
  e'2  |
  e4 f8. e16  |
  d4 c  |
  b2 ~  |
  b4 g  |
  %10
  d'2  |
  f8. e16 d8. c16  |
  b2  |
  d4 g,8. a16  |
  b4 c  |
  %15
  d4 dis  |
  e2 ~  |
  e4 g,  |
  c2  |
  e8. d16 c8. a16  |
  %20
  g2  |
  e'2  |
  e8. c16 b8. c16  |
  d4 e  |
  f2 ~  |
  %25
  f4 a,8. c16  |
  f2 ~  |
  f4 a,8. c16  |
  e2 ~  |
  e4 g,8. b16  |
  %30
  d4 f8. e16  |
  d4 b }
  \alternative { { c2 ~  |
  c4 g }
  { c2 ~  |
  %35
  c4 r } }
  r4. g'8  |
  fis8 f e b'  |
  r4 c\fermata  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r4 g  |
  \repeat volta 2 { e'2  |
  g8. f16 e8. d16  |
  e4. f8  |
  %05
  g2  |
  g4 a8. g16  |
  f4 e  |
  d2 ~  |
  d4 g,  |
  %10
  f'2  |
  a8. g16 f8. e16  |
  d4. e8  |
  f4 b,8. c16  |
  d4 e  |
  %15
  a4 b  |
  g2 ~  |
  g4 g,  |
  e'2  |
  g8. f16 e8. d16  |
  %20
  e4. f8  |
  g2  |
  g8. e16 d8. e16  |
  a4 gis  |
  a2 ~  |
  %25
  a4 r  |
  r4 c8. b16  |
  a2 ~  |
  a4 b8. a16  |
  g2  |
  %30
  g4 <g gis>  |
  <fis a>4 <f b> }
  \alternative { { <e c'>2 ~ ~  |
  <e c'>4 g, }
  { <e' c'>2 ~ ~  |
  %35
  <e c'>4 r } }
  r4. b8  |
  c8 d e f  |
  r4 e\fermata  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r4 r  |
  \repeat volta 2 { r4 g  |
  g4 c  |
  b8. a16 g4  |
  %05
  g4. r8  |
  r4 g  |
  g4 c8. d16  |
  b8. c16 b8. a16  |
  g4 r  |
  %10
  r4 g  |
  g4 ~ g8. a16  |
  b8. c16 b8. a16  |
  g4 r  |
  g2 ~  |
  %15
  g8. a16 b8. g16  |
  c8 b a g  |
  e'8 d c b  |
  c4 g  |
  g4 c  |
  %20
  b8. a16 g4  |
  g4. r8  |
  r4 a  |
  b4 ais  |
  a2 ~  |
  %25
  a4 r  |
  r4 a  |
  c2 ~  |
  c4 g  |
  c8. g16 c8. e16  |
  %30
  d8. c16 b8. a16  |
  b8. a16 g8. b16 }
  \alternative { { c2 ~  |
  c4 r }
  { c2 ~  |
  %35
  c4 r } }
  r4. g8  |
  a8 b c d  |
  r4 c\fermata  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAc
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
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAc
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

\bookpart {
  \header {instrument="Gralla 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

