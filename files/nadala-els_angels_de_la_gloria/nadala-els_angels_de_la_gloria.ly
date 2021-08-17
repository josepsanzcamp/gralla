\version "2.16.0"

\header {
  dedication="Nadala"
  title="  "
  subtitle="Els àngels de la glòria"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Trad. francesa"
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
  \time 4/4
  e4 e e e8 g  |
  g4. f8 e4 c  |
  e4 e8 d e4 e8 g  |
  g4. f8 e4 r  |
  %05
  e4 e e e8 g  |
  g4. f8 e4 c  |
  e4 e8 d e4 e8 g  |
  g4. f8 e4 r  |
  g2 a8 g f e  |
  %10
  f2 g8 f e d  |
  e2 f8 e d c  |
  d4. d8 g,4 r  |
  c4 d e f  |
  e2 d  |
  %15
  g2 a8 g f e  |
  f2 g8 f e d  |
  e2 f8 e d c  |
  d4. d8 g,4 r  |
  c4 d e f  |
  %20
  e2 d  |
  c1\fermata  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  e4 e e e8 g  |
  g4. f8 e4 c  |
  e4 e8 d e4 e8 g  |
  g4. f8 e4 r  |
  %05
  e4 e e e8 g  |
  g4. f8 e4 c  |
  e4 e8 d e4 e8 g  |
  g4. f8 e4 r  |
  r1  |
  %10
  r1  |
  g2 a8 g f e  |
  f2 g8 f e d  |
  e4 d c c  |
  c2 b  |
  %15
  r4 e2 a8 g  |
  f8 e d2 g8 f  |
  e8 d c2 f8 e  |
  d8 c b c d4 r  |
  e4 g g a  |
  %20
  g2. f4  |
  e1\fermata  \bar "|."
}

liniaroAc =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  a8 r g r c r b r  |
  c8 r d r g, r c b  |
  a8 r g r c r b r  |
  c8 r d r g, e f g  |
  %05
  a8 r g r c r b r  |
  c8 r d r g, r c b  |
  a8 r g r c r b r  |
  c8 r d r g, r r4  |
  e'4 d cis a  |
  %10
  d4 c b g  |
  c4 b a2  |
  b4 a g r  |
  e4 g c a  |
  g2 g  |
  %15
  r2 c  |
  d8 c b a b2  |
  c8 b a g a2  |
  b8 a g fis g4 r  |
  a4 b c c  |
  %20
  c2 b  |
  c1\fermata  \bar "|."
}

liniaroAd =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  c8 r b r a r g r  |
  a8 r b r c r e d  |
  c8 r b r a r g r  |
  a8 r b r c e, f g  |
  %05
  c8 r b r a r g r  |
  a8 r b r c r e d  |
  c8 r b r a r g r  |
  a8 r b r c r r4  |
  r1  |
  %10
  r1  |
  e4 d c a  |
  d4 c b g  |
  c4 b a f  |
  g2 g  |
  %15
  r2 r4 a  |
  a4 d8 c b a g4  |
  g4 c8 b a g f4  |
  f4 g8 a b4 r  |
  a4 g c f,  |
  %20
  g2 g  |
  g1\fermata  \bar "|."
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

