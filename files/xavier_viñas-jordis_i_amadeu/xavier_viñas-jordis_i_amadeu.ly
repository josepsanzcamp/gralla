\version "2.16.2"

\header {
  dedication=""
  title="Els Jordis i l'Amadeu"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Jaume Vidal 1981"
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
  \key g \major
  \time 2/4
  g4. d8   |
  g4. d8  |
  g8 d b d  |
  g,4 r  |
  %05
  r8 d' b d  |
  g4 fis   |
  e4 d  |
  b2  |
  r8 d b d  |
  %10
  g4 fis  |
  e4 d  |
  c2 ~  |
  c4 a8 b  |
  c4 d  |
  %15
  e4 g  |
  fis2 ~  |
  fis4 a,8 b  |
  c4 d  |
  e4 fis  |
  %20
  e2   |
  d8 d b d  |
  g4 fis  |
  e4 d  |
  b2 ~  |
  %25
  b8 g b d  |
  g4 fis  |
  g4 d  |
  e2 ~  |
  e4 c8 d  |
  %30
  e2 ~  |
  e4 fis8 e  |
  d2 ~  |
  d4 e8 d  |
  c4 e  |
  %35
  d4 c  |
  b2 ~  |
  b4 r  |
  b4 d  |
  g,4 a  |
  %40
  b2 ~  |
  b4 r  |
  b4 d  |
  a4 b  |
  c2 ~  |
  %45
  c4 r  |
  c4 b  |
  d4 g  |
  fis2 ~  |
  fis4 r  |
  %50
  c4 b  |
  d4 fis  |
  e2   |
  d8 r r4  |
  b4 d  |
  %55
  g,4 a  |
  b2 ~  |
  b4 r  |
  b4 d  |
  g4 d  |
  %60
  e2 ~  |
  e4 r  |
  e8 fis4 e8  |
  d4 r  |
  d8 e4 d8  |
  %65
  c4 r  |
  c8 d4 c8  |
  b4 d  |
  g2 ~  |
  g4 g8. g16  |
  %70
  fis4. e8  |
  fis8. e16 fis8. e16  |
  d2 ~  |
  d8 d e b  |
  d4 c8 b  |
  %75
  c8 e fis c  |
  e4 d8 cis  |
  d4 g8. g16  |
  fis4. e8  |
  fis8. e16 fis8. e16  |
  %80
  d2 ~  |
  d4 \times 2/3 { b8 c d }  |
  e4 \times 2/3 { c8 d e }  |
  fis4 \times 2/3 { d8 e fis }  |
  g4 r8 e  |
  %85
  d4 b  |
  g4 r  \bar "|."
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  g4. d8  |
  g4. d8  |
  g8 d b d  |
  g,4 r  |
  %05
  r8 b g b  |
  d4 d  |
  c4 b  |
  g2  |
  r8 b g b  |
  %10
  d4 d  |
  c4 b  |
  a2 ~  |
  a4 a8 g  |
  a4 b  |
  %15
  c4 d  |
  d2 ~  |
  d4 a8 g  |
  a4 b  |
  c4 d  |
  %20
  c2 (  |
  b8 ) b g b  |
  d4 d  |
  c4 b  |
  g2 ~  |
  %25
  g8 g b d  |
  d4 d  |
  d4 b  |
  c2 ~  |
  c4 a8 b  |
  %30
  c2 ~  |
  c4 d8 c  |
  b2 ~  |
  b4 c8 b  |
  a4 c  |
  %35
  b4 a  |
  g2 ~  |
  g4 r  |
  b4 d  |
  g,4 a  |
  %40
  b2 ~  |
  b4 r  |
  b4 d  |
  a4 b  |
  c2 ~  |
  %45
  c4 r  |
  c4 b  |
  b4 b  |
  d2 ~  |
  d4 r  |
  %50
  c4 b  |
  b4 d  |
  c2  |
  b8 b a g  |
  b4 d  |
  %55
  g,4 a  |
  b2 ~  |
  b4 r  |
  b4 d  |
  b4 b  |
  %60
  c2 ~  |
  c4 r  |
  c8 d4 c8  |
  b4 r  |
  b8 c4 b8  |
  %65
  a4 r  |
  a8 b4 a8  |
  g4 b  |
  b2 ~  |
  b4 b8. b16  |
  %70
  d4. c8  |
  d8. c16 d8. c16  |
  b2 ~  |
  b8 b c g  |
  b4 a8 g  |
  %75
  a8 c d a  |
  c4 b8 a  |
  b4 b8. b16  |
  d4. c8  |
  d8. c16 d8. c16  |
  %80
  b2 ~  |
  b4 \times 2/3 { g8 a b }  |
  c4 \times 2/3 { a8 b c }  |
  fis4 \times 2/3 { d8 cis c }  |
  b4 r8 e  |
  %85
  d4 b  |
  g4 r  \bar "|."
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
    \midi {}
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
    \midi {}
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
    \midi {}
  }
}

