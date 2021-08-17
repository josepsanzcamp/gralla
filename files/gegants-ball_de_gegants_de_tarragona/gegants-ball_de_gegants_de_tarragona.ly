\version "2.16.0"

\header {
  dedication="Ball de gegants"
  title="               "
  subtitle="Ball de gegants de Tarragona"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Tarragona"
  arranger="Anònim - Arr. Xavier Fort"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative b'
{
  \clef treble
  \key c \major
  \time 1/8
  b16 c \tempo 4 = 90  |
  \time 2/4   \repeat volta 2 { d8. e16 f e f g  |
  f8 e d c  |
  d4 b8 b16 c  |
  %05
  d8. e16 f e f g  |
  f8 e c d  |
  b2 ~  |
  b2 ~ }
  \alternative { { b4 r8 b16 c }
  %10
  { b4 r8 d16 e } }
  \repeat volta 2 { f8 e d c  |
  d8. b16 g8 a  |
  b8 b16 a b8 c  |
  d4. e8  |
  %15
  c4. d8  |
  b8 g d'8. c16  |
  b2 ~ }
  \alternative { { b4 r8 d16 e }
  { b4 r4 } } \bar "||" % kompletite
}

liniaroAb =
\relative g'
{
  \tempo 4 = 90
  \clef treble
  \key c \major
  \time 1/8
  g16 a  |
  \time 2/4   \repeat volta 2 { b8. c16 d c d e  |
  d8 c b a  |
  b4 g8 g16 a  |
  %05
  b8. c16 d c d e  |
  d8 c a b  |
  b2 ~  |
  b2 ~ }
  \alternative { { b4 r8 g16 a }
  %10
  { b4 r8 b16 c } }
  \repeat volta 2 { d8 c b a  |
  b8. g16 <e g>8 <f a>  |
  g8 g16 <f a> g8 a  |
  b4. c8  |
  %15
  a4. b8  |
  g8 <e g> b'8. a16  |
  g2 ~ }
  \alternative { { g4 r8 b16 c }
  { g4 r4 } } \bar "||" % kompletite
}

liniaroAc =
\relative d''
{
  \tempo 4 = 90
  \clef treble
  \key c \major
  \time 1/8
  r8  |
  \time 2/4   \repeat volta 2 { d4. d16 b  |
  d8 g f e  |
  d4. r8  |
  %05
  d4. d16 b  |
  d8 g e f  |
  d2 ~  |
  d8. f16 d4 ~ }
  \alternative { { d8. e16 d8 r }
  %10
  { d4 r } }
  \repeat volta 2 { f8 c f e  |
  f8. d16 d8. c16  |
  d8 d16 e d8 e  |
  d8 d f g  |
  %15
  e8 e c f  |
  d8 r f8. e16  |
  d4 ~ d8. c16 }
  \alternative { { d4 r }
  { d4 r4 } } \bar "||" % kompletite
}

liniaroAd =
\relative g'
{
  \tempo 4 = 90
  \clef treble
  \key c \major
  \time 1/8
  r8  |
  \time 2/4   \repeat volta 2 { g4 f8 a  |
  f8 a g r  |
  g4. r8  |
  %05
  g4 f8 a  |
  f8 a f a  |
  g8. g16 g g g g  |
  g8 g g8. f16 }
  \alternative { { g8 g g r }
  %10
  { g8 g g r } }
  \repeat volta 2 { f16 a f a g8 g  |
  g8 g g f  |
  g8 r g f  |
  g8 g16 f g8 a  |
  %15
  f8 r g16 g g g  |
  g4 g8 f16 g  |
  g8 g g8. f16 }
  \alternative { { g4 r }
  { g4 r4 } } \bar "||" % kompletite
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
        \new Staff \with {instrumentName = #"Gralla 4" } \liniaroAd
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
        \new Staff \with {instrumentName = #"Gralla 4" } \liniaroAd
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 4" } \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 4" } \liniaroAd
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 4" } \liniaroAd
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 4" } \liniaroAd
      >>
    }
    \layout {}
  }
}

}

