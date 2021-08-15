\version "2.16.0"

\header {
  dedication="Peces de concert"
  title="   "
  subtitle="Al so del xaloc"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Arturo España, pare i fill"
  arranger="Per a la colla Xaloc de Castelló de la Plana"
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
  \repeat volta 2 { e8 f e d c4 d  |
  e2 a,4 a  |
  f'2 e4 d  |
  e2 a,4 r  |
  %05
  e'8 f e d c4 d  |
  e2 <a, a>4 <a a>  |
  <c c>8 <d d> <c c> <b b> <a a>4 <g g>  |
   <a a>2 <a a>4 r  | }
  \repeat volta 2 { a4 e' a, e'  |
  %10
  a,4 e' a, e'  |
  e4. d8 c4 e  |
  <a, a>4 e' c e  |
  e8 f <e e> d c4 e  |
  e2 e  |
  %15
  e4. d8 c4 e  |
  <a, a>4 e' c e  |
  e8 f <e e> d c4 e  | }
  a,4 e' a, e'  |
  \repeat volta 2 { <a, a>8 <gis gis> <a a> <b b> <c c> <b b> c d  |
  %20
  << { e8 f e d r2 } \\ { r2 e } >>  | % kompletite
  g4. f8 e d c d  |
  e8 f e d e2  |
  f8 a g f e d e f  |
  e8 g f e d c d e  |
  %25
  d8 f e d c b c d }
  \alternative { { c4 d e r }
  { \mark \markup {D.C. e Coda} c2 c } }
  \mark \markup {\musicglyph #"scripts.coda"} <c c>8 <d d> <c c> <b b> <a a>4 <g g>  |
  a2 a  |
  %30
  <c c>8 <d d> <c c> <b b> <a a>4 <g g>  |
  <a a>4 r a' r  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  \repeat volta 2 { c8 d c b a4 b  |
  c2 a4 a  |
  f'2 e4 d  |
  e2 a,4 r  |
  %05
  c8 d c b a4 b  |
  c2 a4 a  |
  <c c>8 <d d> <c c> <b b> <a a>4 <g g>  |
  <a a>2 <a a>4 r  | }
  \repeat volta 2 { a4 r a r  |
  %10
  a4 r a r  |
  a4 r a b  |
  a4 b a d  |
  a4 r a d  |
  a4 r a r  |
  %15
  a4 r a b  |
  a4 b a d  |
  a4 r a d  | }
  a4 r a r  |
  \repeat volta 2 { <a a>8 <gis gis> <a a> <b b> <c c> <b b> a gis  |
  %20
  << { a8 gis a b c b a gis } \\ { r1 } >>  |
  a8 gis a b c b a gis  |
  a4 a a r  |
  << { r1 } \\ { c2 b } >>  |
  << { r1 } \\ { a2 b } >>  |
  %25
  << { r1 } \\ { c2 b } >> }
  \alternative { { a4 gis a r }
  { a4 gis a r } }
  <c c>8 <d d> <c c> <b b> <a a>4 <g g>  |
  a2 a  |
  %30
  <c c>8 <d d> <c c> <b b> <a a>4 <g g>  |
  <a a>4 r a r  \bar "|."
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
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 2"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
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
  \header {instrument="Gralla 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {instrument="Gralla 2"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
}

}

