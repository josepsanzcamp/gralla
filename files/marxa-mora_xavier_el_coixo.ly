\version "2.16.0"

\header {
  dedication="Marxa mora"
  title="   "
  subtitle="Xavier el Coixo"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="País Valencià"
  arranger="Arr. Enric Montsant"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4 = 90 r1 \mf  |
  r1  |
  r1  |
  r1 _"A"  \bar "||"
  %05
  r2 g4 g  |
  d'2 \times 2/3 { c4 b c }  |
  d2 \times 2/3 { f4 g f }  |
  d1  |
  r2 g,4 g  |
  %10
  d'2 \times 2/3 { c4 d c }  |
  b2 \times 2/3 { c4 b gis }  |
  g1  |
  r2 g4 g  |
  d'2 \times 2/3 { c4 b c }  |
  %15
  d4 f8 g \times 2/3 { gis4 g f }  |
  d2 b4 c  |
  d2 d4 f  |
  c2 fis4 d  |
  g1  \bar "||"
  %20
  r1  |
  r2 d4 c  |
  b2 c4 d  |
  f2 \times 2/3 { f4 g f }  |
  d1  |
  %25
  r2 b4 c  |
  d2 d4 f  |
  c2 d4 c  |
  b4. gis8 g2  |
  r2 d'4 c  |
  %30
  b8 c d e f4 f8 g  |
  gis4 gis8 g \times 2/3 { f4 g f }  |
  d1  |
  r2 b4 c  |
  d2 c4 d  |
  %35
  c2 b4 gis  |
  g1 \mf  |
  g'4 fis dis8 c4 d16 dis  |
  d1  |
  \times 2/3 { g4 gis g } \times 2/3 { fis dis c }  |
  %40
  d1  |
  c4 d dis8 d4 c8  |
  b4 g gis8 c4 b8  |
  b4 c d fis  |
  g1 \f _"C"  |
  %45
  \repeat volta 2 { g2 g  |
  \times 2/3 { gis4 g f } \times 2/3 { e f gis }  |
  g2 g  |
  f2 f }
  \alternative { { \times 2/3 { e4 f g } \times 2/3 { f e cis }  |
  %50
  c2 \times 2/3 { c4 e f } }
  { \times 2/3 { e4 f g } \times 2/3 { f g b }  |
  c1 } }
  r1  |
  r1  |
  %55
  \repeat volta 2 { g,8 gis b gis g4 gis8 b  |
  c8 d c4 d c8 d }
  \alternative { { c4 b8 gis c4 b8 c  |
  d1 }
  { c4 b8 gis c4 b8 gis  |
  %60
  g1 } }
  \repeat volta 2 { c8 d _"D" e f \f g4 gis8 g  |
  f4 e f e8 f  |
  g4. e8 g2  |
  c,8 d e f g4 gis8 g }
  %65
  \alternative { { f4 e f e8 cis  |
  c1 }
  { f4 e f g8 b  |
  c1  |
  c4 r r1 } } \bar "||" % troigo!
}

liniaroAb =
\relative g'
{
  \tempo 4 = 90
  \clef treble
  \key c \major
  \time 4/4
  r1  |
  r1  |
  r1  |
  r1  \bar "||"
  %05
  r2 g4 g  |
  g2 \times 2/3 { gis4 g gis }  |
  b2 gis  |
  g1  |
  r2 g4 g  |
  %10
  gis1  |
  gis1  |
  g1  |
  r2 g'4 fis  |
  f2 \times 2/3 { dis4 d dis }  |
  %15
  f4 gis c2  |
  b2 gis  |
  g2 f  |
  dis2 c  |
  b1  \bar "||"
  %20
  r1  |
  r2 d4 c  |
  g2 gis  |
  c1  |
  b1  |
  %25
  r2 g4 gis  |
  gis1 ~  |
  gis1  |
  g1  |
  r1  |
  %30
  g8 a b c d4 d8 dis  |
  f4 f8 dis \times 2/3 { d4 dis d }  |
  b1  |
  r2 g4 gis  |
  b2 gis4 b  |
  %35
  gis2 g4 gis  |
  g'1  |
  g4 gis g2  |
  g1  |
  \times 2/3 { g4 c b } gis2  |
  %40
  g1  |
  f2 gis8 g4.  |
  d2 gis  |
  gis2. c4  |
  b1  |
  %45
  \repeat volta 2 { c,2 c  |
  f2 cis  |
  c2 c  |
  cis2 cis }
  \alternative { { \times 2/3 { c4 cis e } \times 2/3 { cis c b }  |
  %50
  c2 c }
  { \times 2/3 { c4 cis dis } \times 2/3 { c dis g }  |
  e1 } }
  r1  |
  r1  |
  %55
  \repeat volta 2 { r1  |
  r1 }
  \alternative { { r1  |
  r1 }
  { r1  |
  %60
  r1 } }
  \repeat volta 2 { c2 b  |
  gis2 cis  |
  c1  |
  c2 b }
  %65
  \alternative { { gis2 cis  |
  c1 }
  { cis2 b  |
  c1  |
  c4 r r1 } } \bar "||" % troigo!
}

liniaroAc =
\drummode
{
  \tempo 4 = 90
  \time 4/4
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  \bar "||"
  %05
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  %10
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %15
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  \bar "||"
  %20
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
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
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %35
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  %40
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %45
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl }
  \alternative { { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  %50
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl }
  { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl } }
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %55
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl }
  \alternative { { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl }
  { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  %60
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl } }
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl }
  %65
  \alternative { { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl }
  { tomfl8. tomfl16 tomfl8 tomfl tomfl tomfl tomfl16 tomfl tomfl tomfl  |
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
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAc
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
  }\score { \unfoldRepeats
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
  }\score { \unfoldRepeats
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
  \header {instrument="Timbal fondo"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \midi {}
  }
}

