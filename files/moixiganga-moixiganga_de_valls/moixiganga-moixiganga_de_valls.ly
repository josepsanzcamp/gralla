\version "2.16.0"

\header {
  dedication="Moixiganga"
  title="   "
  subtitle="Moixiganga de Valls"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="L'Alt Camp"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  e8 _"Pas de cartró"  |
  \time 6/8   a8. b16 c8 b8. c16 d8  |
  c8. d16 e8 d8. e16 f8  |
  e8. d16 c8 b8. a16 gis8  |
  %05
  e'8. a,16 e'8 e4 e,8  |
  a8. b16 c8 b8. c16 d8  |
  c8. d16 e8 d8. e16 f8  |
  e8. d16 c8 b8. a16 gis8  |
  a8. c16 e8 a,4 r8  \bar "||"
  %10
  \time 3/8   r8 _"n" c16 b c d  |
  e8. d16 c8  |
  c8 d16 f e d  |
  e8. d16 c8  |
  c8 g16 a b c  |
  %15
  d8. c16 d8  |
  d4 f8  |
  f8 e d  |
  g4 g8  |
  g8. f16 e8  |
  %20
  f4 f8  |
  f8. e16 d8  |
  e4 e8  |
  e8. d16 c8  |
  d4 g,8  |
  %25
  c8 e g  |
  c,4 r8  \bar "||"
  r4  d8  |
  g8. d16 e8  |
  f8. g16 f8  |
  %30
  e8. d16 c8  |
  c4 e8  |
  d8. a16 g8  |
  g4 f'8  |
  e8. d16 c8  |
  %35
  c4 e8  |
  d8. a16 g8  |
  g4 f'8  |
  e8. d16 c8  |
  c4 e8  |
  %40
  d8. a16 g8  |
  g4 e'8  |
  d8. e16 f8  |
  a8. g16 f8  |
  e8 r e  |
  %45
  d8 r d  |
  c8 r16 e g8  |
  c,8 r16 e g8  |
  \mark "Fine" c,4.  \bar "||"
  \time 4/4   g'4\fermata f\fermata e\fermata d\fermata  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/8
  e8  |
  \time 6/8   c8. b16 a8 d8. c16 b8  |
  e8. d16 c8 f8. e16 d8  |
  c8. d16 e8 d8. e16 f8  |
  %05
  e8. d16 c8 b8. a16 gis8  |
  c8. b16 a8 d8. c16 b8  |
  e8. d16 c8 f8. e16 d8  |
  c8. d16 e8 gis,8. a16 b8  |
  a8. c16 e8 a,4 r8  \bar "||"
  %10
  \time 3/8   r8 r g  |
  c4 e8  |
  e16 g, b8 g  |
  c4 e8  |
  e8 f16 e d c  |
  %15
  b4 b8  |
  b8. c16 b a  |
  g4 g8  |
  g8 a b  |
  c8 d c  |
  %20
  b8 a g  |
  g8 a b  |
  c8 g c  |
  c8 d e  |
  f8. f16 f8  |
  %25
  e8 c e  |
  e4 r8  \bar "||"
  r4 g,8  |
  b8. b16 c8  |
  d8. e16 d8  |
  %30
  c4 c8  |
  c8. a16 g8  |
  g4 g8  |
  g8. a16 b8  |
  c4 c8  |
  %35
  c8. a16 g8  |
  g4 g8  |
  g8. a16 b8  |
  c4 c8  |
  c8. a16 g8  |
  %40
  g4 g8  |
  g8 a16 b c8  |
  b8. c16 d8  |
  f8. e16 d8  |
  c8 r c  |
  %45
  b8 r b  |
  c8 r16 c b8  |
  c8 r16 c b8  |
  c4.  \bar "||"
  \time 4/4   e4\fermata d\fermata _"Verdana" c\fermata b\fermata  \bar "|."
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

