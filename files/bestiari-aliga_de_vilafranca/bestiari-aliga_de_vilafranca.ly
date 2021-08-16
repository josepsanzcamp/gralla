\version "2.16.0"

\header {
  dedication="Bestiari"
  title="   "
  subtitle="L'Àliga de Vilafranca"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="L'Alt Penedès"
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
  \time 1/8
  g8 _"Tonada 1"  |
  \time 2/4   c16 ( d c b ) c8 g  |
  c16 ( d c b ) c8 e  |
  d8.-> ( c16 b8. a16 )  |
  %05
  a8.-> a16 g8 g  |
  c16 d c ( b c8 g )  |
  c16 ( d c b c8 ) e  |
  d8.-> ( c16 b8 d )  |
  c4. e8  |
  %10
  d8.-> ( c16 b8. a16 )  |
  a4-> g8. e'16  |
  d8.-> c16 ( b8. a16  |
  g4. ) e'8  |
  d8.-> ( c16 b8. a16 )  |
  %15
  a4-> g8 e'  |
  d8.-> ( c16 b8 d  |
  c4 ) r8 r8  | % kompletite
  \time 1/8   g8->   |
  \time 2/4   c8.-> c16 c8 g->  |
  %20
  c8.-> ( c16 c8 e )  |
  d8. ( c16 b8 a )  |
  a4 ( g8 ) g->  |
  c8.-> c16 c8 g->  |
  c8.-> c16 c8 e  |
  %25
  d8.-> ( c16 b8 d )  |
  c4 r8 e  |
  d8.-> ( c16 b8 a )  |
  a4-> ( g8 ) e'  |
  d8.-> ( c16 b8 a )  |
  %30
  g4 r8 g->  |
  c8.-> c16 c8 g->  |
  c8.-> c16 c8 e  |
  d8.-> ( c16 b8 d  |
  c4 ) r  \bar "|."
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
  #(set-paper-size "a5landscape")
  #(layout-set-staff-size 16)
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

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 12)
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

