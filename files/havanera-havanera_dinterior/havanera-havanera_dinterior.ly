\version "2.16.0"

\header {
  dedication="Havanera"
  title="   "
  subtitle="Havanera d'interior"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Josep Prats"
  arranger=""
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
  \key c \major
  \time 4/4
  r4. g8 g4 g  |
  g4 r8 g a4 g  |
  \repeat volta 2 { d'8 f d b a4 g  |
  d'8 f d b a4 g }
  %05
  \alternative { { e'8 g e c a4 g  |
  c4 r8 g a4 g }
  { c4 r8 e g4 g, } }
  c4 r8 e g4 g,  |
  c4 r8 e e4 g  \bar "||"
  %10
  f4. e8 d4 e  |
  f8 d4 b8 a4 b  |
  g4. a8 g4 a  |
  g4. g8 c4 a  |
  f'2. \times 2/3 { g8 a g }  |
  %15
  f4. f8 f4 f  |
  e4. d8 c4. d8  |
  e4. e8 e4 g  |
  f4. e8 d4 c  |
  b8 c4 d8 b4 a  |
  %20
  e'4. d8 c2 ~  |
  c4. g8 c4 g  |
  a4. a8 d4 c  |
  b4. g8 e'4 d  |
  c2 c  |
  %25
  c4 r8 g c4 e  |
  g4 r8 c, e4 g  |
  c,4 r8 c g'4 \times 2/3 { g,8 a b }  |
  c4 r e r  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r4. g8 g4 g  |
  g4 r8 g a4 g  |
  \repeat volta 2 { b1  |
  b4. g8 a4 b }
  %05
  \alternative { { c4. a8 g2 ~  |
  g4 r8 g a4 g }
  { c4 r8 c e4 g } }
  c,4 r8 c e4 g  |
  c,4 r8 c c2  \bar "||"
  %10
  d4. c8 b4 a  |
  b8 d4 e8 d4 b  |
  g4. a8 g4 a  |
  g4. g8 e'4 d  |
  b4 \times 2/3 { b8 c b } a4 g  |
  %15
  a4. b8 d4 d8 c  |
  a4. g8 c4. d8  |
  e4. c8 e4 e  |
  d4. c8 d4 e  |
  f8 a4 g8 f4 e8 d  |
  %20
  e4. d8 c2 ~  |
  c4. e8 e4 e  |
  d4. e8 f4 d  |
  f4. f8 a4 g8 f  |
  e4. f8 g4 a  |
  %25
  g4 r8 g, e'4 g  |
  c,4 r8 e g4 c,  |
  e4 r8 g e4 \times 2/3 { g,8 a b }  |
  c4 r g' r  \bar "|."
}

liniaroAc =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r4. e8 e4 e  |
  e4 r8 e f4 e  |
  \repeat volta 2 { f2. e4  |
  f2. g4 }
  %05
  \alternative { { e1 ~  |
  e4 r8 e f4 e }
  { c'4 r8 g g4 g } }
  c4 r8 g g4 g  |
  c4 r8 g c2  \bar "||"
  %10
  b4. a8 g4 a  |
  b4. a8 g4 f  |
  e4. f8 g2  |
  g4. g8 c4 a  |
  b4 \times 2/3 { g8 a g } f2 ~  |
  %15
  f4. a8 g4 b  |
  c4. b8 c2 ~  |
  c4. g8 c4 e  |
  d4. c8 b4 c  |
  b8 c4 d8 b4 a  |
  %20
  g4. f8 e4 f  |
  g4. g8 c4 g  |
  a4. a8 a4 a  |
  b4. b8 b4 a8 b  |
  c2 c  |
  %25
  c4 r8 g g4 g  |
  c4 r8 g g4 g  |
  c4 r8 g c4 \times 2/3 { b8 a g }  |
  c4 r c r  \bar "|."
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
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
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
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
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
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
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
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
      >>
    }
    \layout {}
  }
}

}

