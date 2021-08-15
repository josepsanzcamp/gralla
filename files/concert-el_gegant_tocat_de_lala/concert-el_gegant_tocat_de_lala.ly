\version "2.16.0"

\header {
  dedication="Concert"
  title="                  "
  subtitle="El gegant tocat de l'ala"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Enric Montsant, 1999"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 6/8
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r4. r4 e8  |
  \repeat volta 2 { a,4 a8 b4 b8  |
  %10
  c4. ~ c8 g' f  |
  e8 d c b c d  |
  e4 c8 a4 e'8  |
  a,4 a8 b4 b8  |
  c4. ~ c8 g' f  |
  %15
  e8 d c b c b  |
  a4. ~ a4 e'8  |
  a,4 a8 b4 b8  |
  c4. ~ c8 g' f  |
  e8 d c b c d  |
  %20
  e4 c8 a4 a8  |
  b4 c8 d4 f8  |
  e4. ~ e8 d c  |
  b8 c d c4 b8  |
  a8 r4 g4.  \bar "||"
  %25
  <e' e>8 e e <e e> e e  |
  g4 f8 e4 d8  |
  <c c>8 c c <c c> c c  |
  e4 d8 c4 <b b>8  |
  a8 b c b c d  |
  %30
  a'4 g8 f4 e8  |
  d8 r4 f4.  |
  e8 r4 g,4.  |
  <e' e>8 e e <e e> e e  |
  g4 f8 e4 d8  |
  %35
  <c c>8 c c <c c> c c  |
  e4 d8 c4 <b b>8  |
  a8 b c b c d }
  \alternative { { c4 b8 a4 gis8  |
  a2. ~  |
  %40
  a8 r4 e'4. }
  { a4 g8 f4 e8  |
  d8 r4 g4.  |
  a2 r4 } } % kompletite
  a8 r4 g,4.  |
  %45
  \repeat volta 2 { c4 d8 e4 f8  |
  g4 a8 g4 f8  |
  e4 g8 f4 e8  |
  f4 e8 d4.  |
  c4 d8 e4 f8  |
  %50
  g4 a8 g4 f8 }
  \alternative { { e4 g8 f4 e8  |
  d4. g, }
  { e'4 f8 e4 d8  |
  c4 r8 e4. } }
  %55
  \repeat volta 2 { a,4 b8 c4 d8  |
  e4 f8 e4 d8  |
  c4 e8 d4 c8  |
  d4 c8 b4.  |
  a4 b8 c4 d8  |
  %60
  e4 f8 e4 d8 }
  \alternative { { c4 e8 d4 c8  |
  b4. e }
  { c4 d8 c4 b8  |
  c2. } }
  %65
  <d fis>4 <d fis>8 <d fis> <d fis> <d fis>  |
  <b f'>4 <b f'> <b f'>  |
  <c e>4 <c e>8 <c e> <c e> <c e>  |
  <c f>2.  |
  <d fis>4 <d fis>8 <d fis> <d fis> <d fis>  |
  %70
  <b f'>4 <b f'> <b f'>  |
  <c e>4 <c e>8 <c e> <c e> <c e>  |
  <c f>8 r4 r4.  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 6/8
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  \repeat volta 2 { r2 r4  |
  %10
  r4. r8 e d  |
  c8 b a g a b  |
  c4 a8 a4 r8  |
  r2 r4  |
  r4. r8 e' d  |
  %15
  g8 f e d e d  |
  c4. ~ c4 r8  |
  r2 r4  |
  r4. r8 e d  |
  c8 b a g a b  |
  %20
  c4 a8 a4 r8  |
  r2 r4  |
  r4. r8 b a  |
  gis8 a b a4 gis8  |
  a8 r4 g4.  \bar "||"
  %25
  e'8 d c e d c  |
  b4 a8 g4.  |
  c8 b a c b a  |
  gis4 gis8 a4 b8  |
  c8 d e d e f  |
  %30
  f4 e8 d4 c8  |
  b8 r4 g4.  |
  a8 r4 g4.  |
  e'8 d c e d c  |
  b4 a8 g4.  |
  %35
  c8 b a c b a  |
  gis4 gis8 a4 b8  |
  c8 d e d e f }
  \alternative { { e4 d8 c4 b8  |
  c2. ~  |
  %40
  c8 r4 r4. }
  { f4 e8 d4 c8  |
  b8 r4 b4.  |
  c2 r4 } } % kompletite
  c8 r4 r4 r8  | % kompletite
  %45
  \repeat volta 2 { r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %50
  r2 r4 }
  \alternative { { r2 r4  |
  r2 r4 }
  { r2 r4  |
  r4. e } }
  %55
  \repeat volta 2 { a,4 gis8 a4 b8  |
  c4 d8 c4 b8  |
  a4 c8 b4 a8  |
  b4 a8 gis4.  |
  a4 gis8 a4 b8  |
  %60
  c4 d8 c4 b8 }
  \alternative { { a4 c8 b4 a8  |
  gis4. gis }
  { a4 b8 a4 gis8  |
  a2. } }
  %65
  a4 a8 a a a  |
  g4 g g  |
  g4 g8 g g g  |
  a2.  |
  a4 a8 a a a  |
  %70
  g4 g g  |
  g4 g8 g g g  |
  a8 r4 r4.  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 6/8
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl r  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl r  |
  %05
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl r  |
  tomfl4 tomfl tomfl  |
  tomfl4. r  |
  \repeat volta 2 { tomfl4 tomfl8 tomfl4 tomfl8  |
  %10
  tomfl8 tomfl tomfl tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl4 tomfl8  |
  %15
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl4.  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %20
  tomfl8 tomfl tomfl tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 r4 tomfl4.  \bar "||"
  %25
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %30
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4. tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %35
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8 }
  \alternative { { tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %40
  tomfl4. tomfl }
  { tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl } }
  tomfl8 r4 tomfl4.  |
  %45
  \repeat volta 2 { tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4.  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %50
  tomfl4 tomfl8 tomfl tomfl tomfl }
  \alternative { { tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4. tomfl }
  { tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4. tomfl } }
  %55
  \repeat volta 2 { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4.  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %60
  tomfl4 tomfl8 tomfl4 tomfl8 }
  \alternative { { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4. tomfl }
  { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4. tomfl } }
  %65
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4. r  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %70
  tomfl4 tomfl tomfl  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl8 r4 r4.  \bar "|."
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
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
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
  \header {instrument="Timbal"}
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
}

}

