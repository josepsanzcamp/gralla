\version "2.16.0"

\header {
  dedication="Concert"
  title="   "
  subtitle="Suite de festa"
  subsubtitle="sobre un tema popular, per a tres gralles i timbal"
  poet="          1. Toc de festa"
  meter=""
  piece=""
  composer="Pep Coca, 1991"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative b'
{
  \clef treble
  \key g \major
  \time 1/8
  b8 \tempo 4 = 92  |
  \time 2/4   \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} e16 fis ( \p e ) _"(2a v.)" dis e8-. b  |
  fis'16 ( g ) fis e fis8-. a  |
  g8 fis16 ( g ) e8 g  |
  %05
  fis16 ( e ) dis cis dis8-. b  |
  e16 ( fis ) e dis e8-. b  |
  fis'16 g fis e ( fis8-. b16 ) a  |
  g16 ( fis e g ) fis ( e ) dis fis }
  \alternative { { e4 r8 b }
  %10
  { e4 r8 d \f } }
  <g, g g>8 g16 a ( b8-- ) g--  |
  c8. e16 d8-- g,--  |
  c8. e16 d8 e16 fis  |
  g8-- e-- f ( d )  |
  %15
  <g, g g>8 g16 ( a b8-- ) g--  |
  c8. e16 d8-- g,--  |
  c16 ( d ) c b c8-- d--  |
  g,4-- r  |
  g2  |
  %20
  g2  |
  g2  |
  g2  |
  g2  |
  g4 fis  |
  %25
  g4 fis  |
  g4-- r  |
  \repeat volta 2 { r4 r8 d' \f  |
  e16 ( f ) e d e8-. r \p  |
  e8 r fis r  |
  %30
  g8-. g-. g-. r  |
  r4 r8 d  |
  e16 ( f ) e d e8-- d--  |
  e8 d16 ( c ) fis8-- e-- }
  \alternative { { \mark "Fine" d4-- r }
  %35
  { \mark "D.S. al Fine" d4 r8 b } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4 = 92
  \clef treble
  \key g \major
  \time 1/8
  r8  |
  \time 2/4   \repeat volta 2 { r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2 }
  \alternative { { r2 }
  %10
  { r2 } }
  <g g g>8 g16 a ( b8-- ) g--  |
  c8. e16 d8-- g,--  |
  c8. e16 d8 e16 fis  |
  g8-- e-- f ( d )  |
  %15
  <g, g g>8 g16 ( a b8-- ) g--  |
  c8. e16 d8-- g,--  |
  c16 ( d ) c b c8-- d--  |
  g,4-- r  |
  b8 b16 c d8-- b-- |
  %20
  e8. g16 fis8-- b,--  |
  a8. c16 b8 c16 d  |
  b8-- g-- a-- ( b-- )  |
  b8 b16 ( c d8-- ) b--  |
  a8. g16 b8-- a--  |
  %25
  g8 a16 b d8-- a--  |
  g4-- r  |
  \repeat volta 2 { r4 r8 b  |
  g16 ( a ) g b g8-. r  |
  a8 r a r  |
  %30
  g8-. g-. b-. r  |
  r4 r8 b \f  |
  g16 ( a ) g b g8-- g--  |
  a4 a-- }
  \alternative { { b4-- r }
  %35
  { b4 r8 b } } \bar "||"
}

liniaroAc =
\relative g'
{
  \tempo 4 = 92
  \clef treble
  \key g \major
  \time 1/8
  r8  |
  \time 2/4   \repeat volta 2 { r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2 }
  \alternative { { r2 }
  %10
  { r2 } }
  g2  |
  g2  |
  g2  |
  g2  |
  %15
  g2  |
  g2  |
  g2  |
  g4-- r8 d'  |
  <g, g g>8 g16 a b8-- g-- |
  %20
  c8. e16 d8-- g,--  |
  c8. e16 d8 e16 fis  |
  g8-- e-- f-- ( d-- )  |
  <g, g g>8 g16 a ( b8-- ) g--  |
  c8. e16 dis8-- b--  |
  %25
  e16 d c b a b ( c d )  |
  g,4 r8 d' \p  |
  \repeat volta 2 { g16 a ( g ) fis g8-. d  |
  e16 ( f ) e d e8-. b  |
  c8 b16 ( a d8-- ) d--  |
  %30
  b16 ( c ) b a g8-. d'  |
  g16 a g fis ( g8-. ) d \f  |
  e16 ( f ) e d e8-- b--  |
  c8 b16 ( a ) d8-- d-- }
  \alternative { { g,4-- r8 d' }
  %35
  { g,4 r8 b } } \bar "||"
}

liniaroAd =
\drummode
{
  \tempo 4 = 92
  \time 1/8
  r8  |
  \time 2/4   \repeat volta 2 { tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %05
  tomfl4. tomfl8  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl-> ~  |
  tomfl16 tomfl tomfl tomfl tomfl8 tomfl16 tomfl }
  \alternative { { tomfl4 r }
  %10
  { tomfl4 r } }
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  %15
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl  |
  tomfl4. tomfl8  |
  tomfl8 tomfl tomfl tomfl16 tomfl  |
  %20
  tomfl4 tomfl8 tomfl16 tomfl  |
  tomfl4 tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl  |
  tomfl4 tomfl8 tomfl16 tomfl  |
  tomfl4 tomfl8 tomfl16 tomfl  |
  %25
  tomfl8 tomfl tomfl16 tomfl tomfl8  |
  tomfl4 r  |
  \repeat volta 2 { tomfl4. tomfl8 \f  |
  tomfl4 tomfl8 tomfl \p  |
  tomfl4 tomfl  |
  %30
  tomfl8 tomfl tomfl r  |
  tomfl4. tomfl8  |
  tomfl4 tomfl8 tomfl  |
  tomfl4 tomfl }
  \alternative { { tomfl8 tomfl tomfl r }
  %35
  { tomfl4 r } } \bar "||"
}

\book {

\paper {
  print-page-number = false
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAd
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
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
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
        \new DrumStaff \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 14)
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
}

\bookpart {
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \layout {}
  }
}

}

