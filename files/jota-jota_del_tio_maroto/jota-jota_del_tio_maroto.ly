\version "2.16.0"

\header {
  dedication="Jota"
  title="   "
  subtitle="Jota del Tio Maroto"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Atea, Aragó"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  r16 d e fis  |
  \time 3/4   g4 g8 g g g  |
  g4 g8 fis fis e  |
  \repeat volta 2 { e8 d c d g4  |
  %05
  r4 g8 fis fis e  |
  e8 d c d a'4  |
  r4 a8 g fis g  |
  a8 g fis e d4  |
  r4 fis8 e d e }
  %10
  \alternative { { d8 c b a g4  |
  r4 g'8 fis fis e }
  { d8 c b a g4 } }
  r4 b8 d c e  |
  \repeat volta 2 { e8 d b d c e  |
  %15
  e8 d d d d d  |
  d4. e8 fis4  |
  r4 a,8 c b d  |
  d8 c a c b d  |
  d8 c a c d c  |
  %20
  b4. c8 d4 ~ }
  \alternative { { d4 b8 d c e }
  { d4. g,8 b d } }
  \repeat volta 2 { g4. fis8 e d  |
  fis4. e8 d c  |
  %25
  e4. d8 c b  |
  a4. b8 c d  |
  fis4. e8 d c  |
  e4. d8 c b  |
  d4. c8 b a }
  %30
  \alternative { { g4 r8 g b d }
  { g,2 d'4 } }
  \repeat volta 2 { g4 b, d  |
  d4 g, b  |
  b2 a4 ~  |
  %35
  a2 c4  |
  e4 a, c  |
  c4 fis, a }
  \alternative { { a2 g4 ~  |
  g2 d'4 }
  %40
  { a2 g4 } }
  \repeat volta 2 { r4 b4. c8  |
  d4 e fis  |
  g4 a b  |
  c4. b8 a4  |
  %45
  r4 c4. b8  |
  a4 g fis  |
  e4 d4. c8  |
  c2 b4  | }
  \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} d4 e8 fis g a  |
  %50
  b4 b8 a g fis  |
  e4 a8 g fis e  |
  d2 c4  |
  c4 d8 e fis g  |
  a4 a8 g fis e  |
  %55
  d4 fis8 e d c  |
  c2 b4 ~  | }
  b2 r4  \bar "||" % kompletite
  a4 r2  | % kompletite
  d4 e fis  |
  %60
  g4. a8 b4 ~  |
  b2 r4  |
  b4 b b  |
  d4 c b  |
  a4. g8 fis4 ~  |
  %65
  fis2 r4  |
  e4 e e  |
  g4 fis e  |
  d4. c8 b4 ~  |
  b2 r4  |
  %70
  d4 d d  |
  fis4 e d  |
  c4. b8 a4 ~  |
  a2 r4  |
  a4 b c  |
  %75
  d4 e fis  |
  g4. a8 b4 ~  |
  b2 r4  |
  b4 b b  |
  d4 c b  |
  %80
  a4. g8 fis4 ~  |
  fis4 a g  |
  fis4. e8 d4 ~  |
  d4 fis4. e8  |
  d4. c8 b4 ~  |
  %85
  b4 r2  | % kompletite
  \repeat volta 2 { b'4 a g  |
  fis4 e4. d8  |
  d2 c4 ~  |
  c4 a'8 a a a  |
  %90
  a4 g fis  |
  e4 d4. c8 }
  \alternative { { c2 b4 ~  |
  b4 b'8 b b b }
  { \mark "D.S." c,2 b4 } }
  %95
  g'4 g4. g8  |
  g2 r4  \bar "|."
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 3/4   tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 r2  |
  \repeat volta 2 { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  %05
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } }
  %10
  \alternative { { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } }
  { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4 } }
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  \repeat volta 2 { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  %15
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %20
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4 }
  \alternative { { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } }
  { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } } }
  \repeat volta 2 { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl tomfl  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %25
  tomfl8 tomfl \times 2/3 { tomfl tomfl tomfl } tomfl tomfl  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl tomfl  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl tomfl }
  %30
  \alternative { { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } }
  { tomfl4 tomfl tomfl } }
  \repeat volta 2 { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %35
  tomfl4 tomfl tomfl  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4 }
  \alternative { { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 tomfl8 tomfl tomfl tomfl }
  %40
  { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4 } }
  \repeat volta 2 { tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  %45
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  | }
  \repeat volta 2 { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %50
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  %55
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  | }
  tomfl4 r2  \bar "||" % kompletite
  tomfl4 r2  | % kompletite
  tomfl4 r2  |
  %60
  tomfl4 r2  |
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } tomfl tomfl16 tomfl  |
  tomfl4 r2  |
  tomfl4 r2  |
  tomfl4 r2  |
  %65
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } tomfl tomfl16 tomfl  |
  tomfl4 r2  |
  tomfl4 r2  |
  tomfl4 r2  |
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } tomfl tomfl16 tomfl  |
  %70
  tomfl4 r2  |
  tomfl4 r2  |
  tomfl4 r2  |
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } tomfl tomfl16 tomfl  |
  tomfl4 r2  |
  %75
  tomfl4 r2  |
  tomfl4 r2  |
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } tomfl tomfl16 tomfl  |
  tomfl4 r2  |
  tomfl4 r2  |
  %80
  tomfl4 r2  |
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } tomfl tomfl16 tomfl  |
  tomfl4 r2  |
  tomfl4 r2  |
  tomfl4 r2  |
  %85
  tomfl4 r2  | % kompletite
  \repeat volta 2 { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %90
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } }
  \alternative { { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } }
  { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4 } }
  %95
  tomfl4 tomfl r8 tomfl  |
  tomfl4 r2  \bar "|."
}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a4")
  #(layout-set-staff-size 20)
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
        \new DrumStaff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
        \new DrumStaff \with {instrumentName = #"" } \liniaroAb
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
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
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
        \new DrumStaff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a5landscape")
  #(layout-set-staff-size 16)
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
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
        \new DrumStaff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 12)
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
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
        \new DrumStaff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }
}

}

