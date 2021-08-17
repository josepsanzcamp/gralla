\version "2.16.0"

\header {
  dedication="Jota"
  title="   "
  subtitle="Jota de Bellmunt"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="El Priorat"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  g4 g8 g g g  |
  g4 fis8 g a g  |
  e4 e8 e e e  |
  e4 a8 g fis e  |
  %05
  d4 d8 e fis g  |
  fis4 e fis  |
  g2. ~  |
  g4 b, d  |
  \repeat volta 2 { g4 fis e  |
  %10
  fis4 d fis  |
  e4. c8 a4  |
  r4 g'2  |
  fis4. g8 fis4  |
  r4 e2  |
  %15
  d4. e8 d4  |
  r4 b d  |
  g4 fis e  |
  fis4 d fis  |
  e4. c8 a4  |
  %20
  r4 g'2  |
  fis4 e fis  |
  b4 a2 }
  \alternative { { g2. ~  |
  g4 b, d }
  %25
  { g2. ~ } }
  g4 a b  |
  c4 b a ~  |
  a4 g2  |
  fis2. ~  |
  %30
  fis4 fis g  |
  a4 g fis ~  |
  fis4 e2  |
  d2. ~  |
  d4 d8 e d e  |
  %35
  d4 b d  |
  g4 a4. g8  |
  fis2. ~  |
  fis4 fis e  |
  d4 d e  |
  %40
  fis4 g4. a8  |
  b2. ~  |
  b4 a b  |
  c4 b a ~  |
  a4 g2  |
  %45
  fis2. ~  |
  fis4 fis g  |
  a4 g fis ~  |
  fis4 e2  |
  d2. ~  |
  %50
  d4 d8 e d e  |
  d4 b d  |
  g4 r fis8 g  |
  fis4 e g  |
  fis4 r e8 fis  |
  %55
  e4 d c'  |
  b2 a4  |
  g2. ~  |
  g4 b,8 c b c  |
  \key c \major   \repeat volta 2 { e4 d c  |
  %60
  e4 d c  |
  e4 d8 c b4  |
  r4 c8 d c d  |
  f4 e d  |
  f4 e d  |
  %65
  f4 e8 d c4  |
  r4 e8 f g a  |
  g4. f8 e4 ~  |
  e8 f e4 d  |
  c4 c8 d e4 ~  |
  %70
  e4 f8 e d c  |
  b4 b8 c d4 ~  |
  d4 e8 f e d }
  \alternative { { c2. ~  |
  c4 b8 c b c }
  %75
  { c4 r d  |
  e4 r2 } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  b4 b8 b b b  |
  b4 a8 b c b  |
  c4 c8 c c c  |
  c4 c8 b a g  |
  %05
  fis4 fis8 g a b  |
  a4 g a  |
  g4 b d  |
  g,4 r2  |
  \repeat volta 2 { b4 d c  |
  %10
  d4 b d  |
  c4. a8 fis4  |
  r4 b2  |
  a4. b8 a4  |
  r4 c2  |
  %15
  b4. c8 b4  |
  r2 r4  |
  b4 d c  |
  d4 b d  |
  c4. a8 fis4  |
  %20
  r4 b2  |
  a4 g a  |
  d4 c2 }
  \alternative { { g4 b d  |
  g,4 r2 }
  %25
  { b4 b8 b b b } }
  b4 c d  |
  e4 d c ~  |
  c4 b2  |
  a2. ~  |
  %30
  a4 a b  |
  c4 b a ~  |
  a4 c2  |
  b2. ~  |
  b4 b8 c b c  |
  %35
  b4 g b  |
  b4 c4. b8  |
  a2. ~  |
  a4 a c  |
  b4 b c  |
  %40
  d4 e4. fis8  |
  g2. ~  |
  g4 c, d  |
  e4 d c ~  |
  c4 b2  |
  %45
  a2. ~  |
  a4 a b  |
  c4 b a ~  |
  a4 c2  |
  b2. ~  |
  %50
  b4 b8 c b c  |
  b4 g b  |
  b4 r d8 b  |
  d4 c b  |
  a4 r c8 d  |
  %55
  c4 b e  |
  d2 c4  |
  g4 b d  |
  b4 d8 e d e  |
  \key c \major   \repeat volta 2 { g4 f e  |
  %60
  g4 f e  |
  g4 f8 e d4  |
  r4 e8 f e f  |
  a4 g f  |
  a4 g f  |
  %65
  a4 g8 f e4  |
  r4 g8 a b c  |
  b4. a8 g4 ~  |
  g8 a g4 f  |
  e4 e8 f g4 ~  |
  %70
  g4 a8 g f e  |
  d4 d8 e f4 ~  |
  f4 g8 a g f }
  \alternative { { e2. ~  |
  e4 d8 e d e }
  %75
  { e4 r b'  |
  c4 r2 } } \bar "||"
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"" } \liniaroAb
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" } \liniaroAb
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }
}

}

