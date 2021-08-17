\version "2.16.0"

\header {
  dedication=""
  title="            "
  subtitle="Ball de cercavila de Salàs"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="El Pallars Jussà"
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
  \key g \major
  \time 2/4
  g8. a16 b8 g  |
  a4 r8 d16 e  |
  d8 c b a  |
  b16 c b a g4  |
  %05
  g8. a16 b8 g  |
  a4 r8 d16 e  |
  d8 c b a  |
  g4 r  \bar "||"
  d'8 g fis e  |
  %10
  d4. c16 b  |
  a8 c b a  |
  b16 c b a g4  |
  d'8 g fis e  |
  d4. c16 b  |
  %15
  a8 c b a  |
  g4 r  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  << { r2 } \\ { b8. c16 d8 d } >>  |
  << { r2 } \\ { c8. b16 a8 d } >>  |
  << { r2 } \\ { fis8. e16 d8 fis } >>  |
  << { r2 } \\ { g16 e d c b c b a } >>  |
  %05
  << { r2 } \\ { b8. c16 d8 d } >>  |
  << { r2 } \\ { c8. b16 a8 d } >>  |
  << { r2 } \\ { fis8. d16 e8 fis } >>  |
  g4 r  \bar "||"
  << { r2 } \\ { b,4. c8 } >>  |
  %10
  << { r2 } \\ { d4. e16 d } >>  |
  c8 c c e  |
  << { r2 } \\ { d2 } >>  |
  << { r2 } \\ { b4. c8 } >>  |
  << { r2 } \\ { d4. e16 d } >>  |
  %15
  c8 c a c  |
  << { b4 r } >>  \bar "|."
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

