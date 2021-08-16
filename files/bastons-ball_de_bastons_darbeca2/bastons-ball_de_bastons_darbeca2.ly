\version "2.16.0"

\header {
  dedication="Ball de bastons"
  title="  "
  subtitle="Ball de bastons d'Arbeca (2)"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Les Garrigues"
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
  \time 2/8
  e8 f  |
  \time 2/4   g4 c  |
  g8. f16 e8. f16  |
  g4 c  |
  %05
  g4 g8 f  \bar "||"
  e4 d  |
  c8 d e f  |
  e4 d  |
  c4 r4  \bar "|." % kompletite
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
      \new Staff \with {instrumentName = #"Gralla"} \liniaroAa
    >>
  }
  \layout {}
}\score { \unfoldRepeats
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla"} \liniaroAa
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

\score {
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla"} \liniaroAa
    >>
  }
  \layout {}
}

}

}
