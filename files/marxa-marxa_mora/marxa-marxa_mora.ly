\version "2.22.1"

\header {
  dedication="Marxa mora"
  title="  "
  subtitle="Marxa mora"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Xavier Richart"
  arranger="Arr. Ramon Güell"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key bes \major
  \time 4/4
  g2 d'  |
  c2 ees  |
  d2 c  |
  b2 r  |
  %05
  g2 d'  |
  c2 f  |
  d2 ges  |
  g1  |
  r1  |
  %10
  r1  |
  \repeat volta 2 { g2 \times 2/3 { aes4 g ges }  |
  g4 d2 g4  |
  aes2 \times 2/3 { c4 b aes }  |
  g2 r4 d  |
  %15
  f2 \times 2/3 { ees4 d c }  |
  b4 d2 d4  |
  f2 \times 2/3 { ges4 d ges }  |
  g1  |
  r1  | }
  %20
  \repeat volta 2 { d8 d16 d d8 d c d c d  |
  b8 b16 b b8 b aes b c aes  |
  d8 d16 d d8 d ees d ges g  |
  d2 r  |
  d8 d16 d d8 d c d c d  |
  %25
  b8 b16 b b8 b aes b c aes  |
  d4 aes \times 2/3 { c b aes }  |
  g1  |
  g'8 g16 g g8 g \times 2/3 { aes4 g ges }  |
  f4 aes8 g f4 d  |
  %30
  ees4 ges \times 2/3 { g ges ees }  |
  d2 r  |
  \times 2/3 { c4 d ees } \times 2/3 { ges g ges } }
  \alternative { { d4 b d8 c b c  |
  d4 b \times 2/3 { c b aes }  |
  %35
  g1 }
  { d'4 b \times 2/3 { d8 c bes } \times 2/3 { aes bes c }  |
  d4 b \times 2/3 { aes8 b c } \times 2/3 { d ees ges }  |
  g1 ~  |
  g4 r r1 } } \bar "||" % troigo!
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key bes \major
  \time 4/4
  g2 g  |
  aes2 c  |
  b2 aes  |
  g2 r  |
  %05
  g2 g  |
  aes2 d  |
  b2 c  |
  b1  |
  r1  |
  %10
  r1  |
  \repeat volta 2 { b2 c  |
  b2 g  |
  c2 ees  |
  b2 g  |
  %15
  c2 a  |
  g2 g'  |
  a,2 c  |
  b1  |
  r1  | }
  %20
  \repeat volta 2 { b8 b16 b b8 b aes b aes b  |
  g8 g16 g g8 g ges'2  |
  b,8 b16 b b8 b c b aes4  |
  g2 r  |
  b8 b16 b b8 b aes b aes b  |
  %25
  g8 g16 g g8 g ges'2  |
  ges2 \times 2/3 { ees4 d c }  |
  b1  |
  b8 b16 b b8 b c2  |
  b2 aes  |
  %30
  c4 d \times 2/3 { ees d c }  |
  g2 r  |
  aes2 c }
  \alternative { { g2 aes  |
  g2 \times 2/3 { ges'4 d ges }  |
  %35
  g1 }
  { g,2 a  |
  g2 ges'4 c,  |
  b1 ~  |
  b4 r r1 } } \bar "||" % troigo!
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 4/4
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %05
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  %10
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %15
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  | }
  %20
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %25
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  %30
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl }
  \alternative { { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %35
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl }
  { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 r r1 } } \bar "||" % troigo!
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
      >>
    }
    \midi {}
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
    \midi {}
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
    \midi {}
  }
}

\bookpart {
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \midi {}
  }
}

