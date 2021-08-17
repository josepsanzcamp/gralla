\version "2.16.0"

\header {
  dedication="Ball de gegants"
  title="  "
  subtitle="Ball de gegants de Santa Eugènia de Berga"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Sebastià Bardolet, 1998"
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
  b16 c \tempo 4. = 55  |
  \time 3/8   \repeat volta 2 { d8 e d  |
  b4 d8  |
  c16 b a8 e'  |
  %05
  d8 b b16 c  |
  d8 e d  |
  b4 d8 }
  \alternative { { c16 b c b c a  |
  g4 b16 c }
  %10
  { c16 b c d e fis } }
  \repeat volta 2 {
  g4 b,8  |
  a16 a a8 c  |
  b16 b b8 d  |
  c16 c c8 e  |
  %15
  e8 d b  |
  a16 a a8 c  |
  b16 b b8 d }
  \alternative { { c16 b c b c a  |
  g4 b8 }
  %20
  { c16 b c d e fis } }
  \time 2/8   g4  |
  \repeat volta 2 { \times 2/3 { d16 e d } \times 2/3 { c b c }  |
  d8 g  |
  \times 2/3 { d16 e d } \times 2/3 { c b a } }
  %25
  \alternative { { g4 }
  { g8 g'16. d32 } }
  \repeat volta 2 {
  g16. d32 \times 2/3 { g16 fis e }  |
  d8 \times 2/3 { d16 e d } }
  \alternative { { c16. c32 \times 2/3 { c16 b c }  |
  %30
  d8 g16. d32 }
  { c16. c32 \times 2/3 { d16 e fis }  |
  g4 \fermata } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4. = 55
  \clef treble
  \key g \major
  \time 1/8
  g16 a  |
  \time 3/8   \repeat volta 2 { b8 c b  |
  g4 b8  |
  a16 g fis8 c'  |
  %05
  b8 g g16 a  |
  b8 c b  |
  g4 b8 }
  \alternative { { a16 g a g a fis  |
  g4 r8 }
  %10
  { fis16 g a b c a } }
  \repeat volta 2 {
  b4 r8  |
  fis16 fis fis8 fis  |
  g16 g g8 g  |
  a16 a a8 fis  |
  %15
  g4 g8  |
  fis16 fis fis8 fis  |
  g16 g g8 b }
  \alternative { { a16 g a8 fis  |
  g4 r8 }
  %20
  { a16 g a b c d } }
  \time 2/8   b4  |
  \repeat volta 2 { b8 a  |
  b8 c  |
  b8 a }
  %25
  \alternative { { g4 }
  { g8 b16. a32 } }
  \repeat volta 2 {
  b16. a32 \times 2/3 { e'16 d c }  |
  b8 \times 2/3 { b16 c b } }
  \alternative { { a16. a32 \times 2/3 { a16 g a }  |
  %30
  b8 b16. a32 }
  { a16. a32 \times 2/3 { b16 c d }  |
  b4 \fermata } } \bar "||"
}

liniaroAc =
\relative g,
{
  \tempo 4. = 55
  \clef bass
  \key g \major
  \time 1/8
  r8  |
  \time 3/8   \repeat volta 2 { g8 g' g  |
  g,8 g' g  |
  d8 d' d  |
  %05
  g,,8 g' g  |
  g,8 g' g  |
  g,8 g' g }
  \alternative { { d8 d' d  |
  g,8 g, r }
  %10
  { d'8 d' d } }
  \repeat volta 2 {
  g,8 g, r  |
  d'8 c' d  |
  g,8 b d  |
  d,8 fis c'  |
  %15
  c8 b4  |
  d,8 c' d  |
  g,8 b d }
  \alternative { { d,8 fis c'  |
  b8 g r }
  %20
  { d8 fis c' } }
  \time 2/8   b8 g,  |
  \repeat volta 2 { g'8 d  |
  g8 d  |
  g8 fis }
  %25
  \alternative { { g8 g, }
  { g'8 g } }
  \repeat volta 2 {
  g8 g  |
  g8 g }
  \alternative { { d8 d  |
  %30
  g8 g }
  { d8 d  |
  g4 \fermata } } \bar "||"
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
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new Staff \with {instrumentName = #"Baix" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new Staff \with {instrumentName = #"Baix" } \liniaroAc
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
        \new Staff \with {instrumentName = #"Baix" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Baix" } \liniaroAc
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
  #(define output-suffix "a5")
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
        \new Staff \with {instrumentName = #"Baix" } \liniaroAc
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
  #(define output-suffix "a6")
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
        \new Staff \with {instrumentName = #"Baix" } \liniaroAc
      >>
    }
    \layout {}
  }
}

}

