\version "2.16.0"

\header {
  dedication="Ball pla"
  title="  "
  subtitle="Ballet de Déu"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative d''
{
  \tempo 4=160
  \clef treble
  \key g \major
  \time 3/4
  \repeat volta 2 { d4 d b8 c  |
  d4 d b8 c  |
  d4 e c  |
  d8 e d c b c  |
  %05
  d4 d b8 c  |
  d4 d b8 c  |
  d4 e c  |
  b2.  |
  c4. b8 a b  |
  %10
  c4. b8 a4  |
  d4. c8 b c  |
  d4. c8 b4  |
  g4 a b  |
  c4 d e  |
  %15
  d4 r fis  |
  g2 r4  | }
  \time 6/8   r4. d4 c8  |
  \repeat volta 2 { b4 b8 c b c  |
  e4 d8 d4 c8  |
  %20
  b4 b8 c b c  |
  d4. d4 c8  |
  b4 b8 c b c  |
  e4 d8 d4 c8  |
  b4 b8 c b c  |
  %25
  d4 r8 g fis e  |
  d8 e d c b a  |
  g8 a b c d e  |
  d4. fis  |
  g4. g8 fis e  |
  %30
  d8 e d c b a  |
  g8 a b c d e  |
  d4. fis }
  \alternative { { g4. d4 c8 }
  { g'4. r } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=160
  \clef treble
  \key g \major
  \time 3/4
  \repeat volta 2 { b4 b g8 a  |
  b4 b g8 a  |
  b4 c a  |
  b8 c b a g a  |
  %05
  b4 b g8 a  |
  b4 b g8 a  |
  b4 c a  |
  g2.  |
  a4. g8 fis g  |
  %10
  a2 r4  |
  b4. a8 g a  |
  b4. a8 g4  |
  g'4 fis f  |
  e4 d c  |
  %15
  b8 b b4 a  |
  g2 r4  | }
  \time 6/8   r4. b4 a8  |
  \repeat volta 2 { g4 g8 a g a  |
  c4 b8 b4 a8  |
  %20
  g4 g8 a g a  |
  b4. b4 a8  |
  g4 g8 a g a  |
  c4 b8 b4 a8  |
  g4 g8 a g a  |
  %25
  b4 r8 e d c  |
  b8 c b a g fis  |
  g8 a b a b c  |
  b4. a  |
  g4. e'8 d c  |
  %30
  b8 c b a g fis  |
  g8 a b a b c  |
  b4. a }
  \alternative { { g4. b4 a8 }
  { g4. r } } \bar "||"
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
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
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

}

