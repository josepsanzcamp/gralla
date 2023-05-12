\version "2.16.2"

\header {
  dedication=""
  title="Gegants"
  subtitle="Ball dels gegants de l'Agrupació"
  subsubtitle="Introducció"
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Jordi Fàbregas"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 4/4
  b2 c _"Solemne" (  |
  d2 e  |
  d2 \times 2/3 { c4 d c }  |
  b2. ) r4  |
  %05
  g'1 ( \ff  |
  e1 )  |
  r1  \bar "||"
  c2 ( d  |
  e2 g  |
  %10
  a2 fis  |
  g2. ) r4  |
  e1 \> \!  |
  d8 e d4 ~ ( \> d2 \! )  |
  r1  \bar "||"
  %15
  b2 ( \< d  |
  g2 \! fis \>  |
  e2. ) \! r4  |
  c'1  \ff   |
  b2 a4 ( g  |
  %20
  fis2 e4 fis  |
  g2. ) r4  |
  e2. \> r4 \!  |
  g1\fermata  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 4/4
  g2 a (  |
  b2 c  |
  b2 \times 2/3 { a4 b a }  |
  g2. ) r4  |
  %05
  b2 ( c8 b a b  |
  c1 )  |
  r1  \bar "||"
  a2 ( b  |
  c2 e  |
  %10
  fis2 d4 c  |
  b2. ) r4  |
  c1  |
  b8 c b4 ~ ( \p b2 )  |
  r1  \bar "||"
  %15
  g2 ( b  |
  e2 d  |
  c2. ) r4  |
  e2 ( fis )  |
  g2 fis4 ( e  |
  %20
  d2 c  |
  b2. ) r4  |
  c2. \p r4  |
  b1\fermata \f  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

