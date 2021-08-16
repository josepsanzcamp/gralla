\version "2.16.0"

\header {
  dedication="Ball de gegants"
  title="   "
  subtitle="Ball de gegants de la Granadella"
  subsubtitle="Corrandes de Silono"
  poet=""
  meter=""
  piece=""
  composer="Eduard Iniesta i Torres"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative c''
{
  \clef treble
  \key c \major
  \time 3/8
  c8 d e \tempo 8 = 180  |
  \time 6/8   \repeat volta 2 { c8 d e g f e  |
  f4 d8 b c d  |
  b8 c d f e d  |
  %05
  e4 g8 d4 g8  |
  c,4. a8 b c  |
  e4 d8 ~ d4.  |
  e8 f e d c b }
  \alternative { { a4 r8 c d e }
  %10
  { a,4 r8 a b c } }
  e2. ~  |
  e2. ~  |
  e2.  |
  d2.  |
  %15
  c2.  |
  r4. a8 b c  |
  e2. ~  |
  e2. ~  |
  e2.  |
  %20
  d2.  |
  c2. ~  |
  c4. c8 d e  |
  \repeat volta 2 { c8 d e g f e  |
  f4 d8 b c d  |
  %25
  b8 c d f e d  |
  e4 g8 d4 g8  |
  c,4. a8 b c  |
  e4 d8 ~ d4.  |
  e8 f e d c b }
  %30
  \alternative { { a4 r8 c d e }
  { a,4 r8 c d e } }
  g2.\fermata  |
  a2.\fermata  |
  c2.\fermata  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 8 = 180
  \clef treble
  \key c \major
  \time 3/8
  e8 f g  |
  \time 6/8   \repeat volta 2 { e8 f g b a g  |
  a4 f8 d e f  |
  d8 e f a g f  |
  %05
  g4 b8 f4 d8  |
  e4. c8 d e  |
  g4 f8 ~ f4.  |
  gis8 a gis f e d }
  \alternative { { c4 r8 e f g }
  %10
  { c,4 r8 a b c } }
  c2. ~  |
  c2.  |
  b2. ~  |
  b2.  |
  %15
  g2.  |
  r4. a8 b c  |
  c2. ~  |
  c2.  |
  b2. ~  |
  %20
  b2.  |
  g2. ~  |
  g4. e'8 f g  |
  \repeat volta 2 { e8 f g b a g  |
  a4 f8 d e f  |
  %25
  d8 e f a g f  |
  g4 b8 f4 d8  |
  e4. c8 d e  |
  g4 f8 ~ f4.  |
  gis8 a gis f e d }
  %30
  \alternative { { c4 r8 e f g }
  { c,4 r8 a b c } }
  e2.\fermata  |
  f2.\fermata  |
  e2.\fermata  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 8 = 180
  \time 3/8
  tomfl8 tomfl tomfl  |
  \time 6/8   \repeat volta 2 { tomfl4 tomfl8:32 ~ tomfl4:32 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8:32 ~ tomfl4:32 tomfl8  |
  %05
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8:32 ~ tomfl4:32 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl }
  \alternative { { tomfl4 tomfl8 tomfl tomfl tomfl }
  %10
  { tomfl4 tomfl8 tomfl tomfl tomfl } }
  tomfl4 tomfl8:32 ~ tomfl4:32 tomfl8  |
  tomfl4 tomfl8:32 ~ tomfl4.:32  |
  tomfl2.:32 ~  |
  tomfl2.:32  |
  %15
  tomfl4 tomfl8:32 ~ tomfl4:32 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 tomfl8:32 ~ tomfl4:32 tomfl8  |
  tomfl4 tomfl8:32 ~ tomfl4.:32  |
  tomfl2.:32 ~  |
  %20
  tomfl2.:32  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 r4 r4.  |
  \repeat volta 2 { tomfl4 tomfl8:32 ~ tomfl4:32 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %25
  tomfl4 tomfl8:32 ~ tomfl4:32 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8:32 ~ tomfl4:32 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl }
  %30
  \alternative { { tomfl4 tomfl8 tomfl tomfl tomfl }
  { tomfl4 tomfl8 tomfl tomfl tomfl } }
  tomfl2.:32  |
  tomfl2.:32  |
  tomfl2.:32  \bar "|."
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
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
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
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }
}

}

