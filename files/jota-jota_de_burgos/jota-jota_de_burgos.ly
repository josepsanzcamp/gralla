\version "2.16.0"

\header {
  dedication="Jota"
  title="  "
  subtitle="Jota de Burgos"
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
\relative a'
{
  \tempo 4=120
  \clef treble
  \key d \major
  \time 1/8
  a8  |
  \time 3/4   d4 d d  |
  d4 fis,8 e fis g  |
  \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} a8 g fis e d4  |
  %05
  r4 fis8 e fis g  |
  a8 gis a b a4  |
  r4 a8 b cis d  |
  e4 d cis  |
  b4 a g  |
  %10
  fis8 g fis e d4 }
  \alternative { { r4 fis8 e fis g }
  { d4 r r } }
  fis4. g8 a4  |
  d4 d d  |
  %15
  cis4. b8 a4  |
  d4 d d  |
  cis4. b8 a4  |
  cis4 cis cis  |
  b4. a8 g4 ~  |
  %20
  g2 r4  |
  e4. fis8 g4  |
  cis4 cis cis  |
  b4. a8 g4  |
  cis4 cis cis  |
  %25
  b4. a8 g4  |
  b4 b b  |
  a4. g8 fis4 ~  |
  fis2 r4  |
  fis4. g8 a4  |
  %30
  d4 d d  |
  cis4. b8 a4  |
  d4 d d  |
  cis4. b8 a4  |
  cis4 cis cis  |
  %35
  b4. a8 g4 ~  |
  g2 r4  |
  e4. fis8 g4  |
  a4 b cis  |
  e4. d8 cis4  |
  %40
  b4 a g  |
  fis4. e8 d4  |
  r4 fis8 e fis g  |
  \repeat volta 2 { a8 g fis e d4  |
  r4 fis8 e fis g  |
  %45
  a8 gis a b a4  |
  r4 a8 b cis d  |
  e4 d cis  |
  b4 a g  |
  fis8 g fis e d4 }
  %50
  \alternative { { r4 fis8 e fis g }
  { d4 r a' } }
  d4 cis d  |
  b4 cis r  |
  a4 b4. a8  |
  %55
  g4 r e  |
  cis'4 b cis  |
  a4 b r  |
  g4 a4. g8  |
  fis4 r a  |
  %60
  d4 cis d  |
  b4 cis r  |
  a4 b4. a8  |
  g4 r e  |
  cis'4 b cis  |
  %65
  a4 b r  |
  g4 a4. g8  |
  \mark \markup {D.S. e Coda} fis4 fis8 e fis g  \bar "||"
  \mark \markup {\musicglyph #"scripts.coda"} fis4 fis'8 fis fis fis  |
  fis4 e8 e e e  |
  %70
  e4 d8 d d d  |
  cis4 b a  |
  g4 e'8 e e e  |
  e4 d8 d d d  |
  d4 cis8 cis cis cis  |
  %75
  b4 a g  |
  fis4 fis'8 fis fis fis  |
  fis4 e8 e e e  |
  e4 d8 d d d  |
  cis4 b a  |
  %80
  g4 e'8 e e e  |
  e4 cis8 cis cis cis  |
  cis4 b8 b b b  |
  a4 b cis  |
  d4 r r  \bar "||"
  %85
  d4-> d-> d->  |
  d4-> r r  |
  fis4-> r r  |
  d4-> r r  \bar "|."
}

liniaroAb =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key d \major
  \time 1/8
  a8  |
  \time 3/4   fis4 fis fis  |
  fis4 fis8 e fis g  |
  \repeat volta 2 { a8 g fis e d4  |
  %05
  r4 fis8 e fis g  |
  a8 gis a b a4  |
  r4 a8 b cis d  |
  e4 d cis  |
  b4 a g  |
  %10
  fis8 g fis e d4 }
  \alternative { { r4 fis8 e fis g }
  { d4 r r } }
  d4. e8 fis4  |
  b4 b b  |
  %15
  a4. g8 fis4  |
  b4 b b  |
  a4. g8 fis4  |
  a4 a a  |
  g4. fis8 e4 ~  |
  %20
  e2 r4  |
  cis4. d8 e4  |
  a4 a a  |
  g4. fis8 e4  |
  a4 a a  |
  %25
  g4. fis8 e4  |
  g4 g g  |
  fis4. e8 d4 ~  |
  d2 r4  |
  d4. e8 fis4  |
  %30
  b4 b b  |
  a4. g8 fis4  |
  b4 b b  |
  a4. g8 fis4  |
  a4 a a  |
  %35
  g4. fis8 e4 ~  |
  e2 r4  |
  cis4. d8 e4  |
  fis4 g a  |
  cis4. b8 a4  |
  %40
  g4 fis e  |
  fis4. e8 d4  |
  r4 fis8 e fis g  |
  \repeat volta 2 { a8 g fis e d4  |
  r4 fis8 e fis g  |
  %45
  a8 gis a b a4  |
  r4 a8 b cis d  |
  e4 d cis  |
  b4 a g  |
  fis8 g fis e d4 }
  %50
  \alternative { { r4 fis8 e fis g }
  { d4 r fis } }
  b4 a b  |
  g4 a r  |
  fis4 g4. fis8  |
  %55
  e4 r e  |
  a4 g a  |
  fis4 g r  |
  e4 fis4. e8  |
  d4 r fis  |
  %60
  b4 a b  |
  g4 a r  |
  fis4 g4. fis8  |
  e4 r e  |
  a4 g a  |
  %65
  fis4 g r  |
  e4 fis4. e8  |
  d4 fis8 e fis g  \bar "||"
  d4 d'8 d d d  |
  d4 cis8 cis cis cis  |
  %70
  cis4 b8 b b b  |
  a4 g fis  |
  e4 cis'8 cis cis cis  |
  cis4 b8 b b b  |
  b4 a8 a a a  |
  %75
  g4 fis e  |
  d4 d'8 d d d  |
  d4 cis8 cis cis cis  |
  cis4 b8 b b b  |
  a4 g fis  |
  %80
  e4 cis'8 cis cis cis  |
  cis4 a8 a a a  |
  a4 g8 g g g  |
  g4 g g  |
  fis4 r r  \bar "||"
  %85
  fis4-> fis-> fis->  |
  fis4-> r r  |
  a4-> r r  |
  fis4-> r r  \bar "|."
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

