\version "2.16.0"

\header {
  dedication="Vals"
  title="   "
  subtitle="La gata gris"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Eugenio Gracía Marco"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r2 c4  |
  \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} e2 c4  |
  a4 b c  |
  e2 c4  |
  %05
  a2 e'4  |
  g4. fis8 e4  |
  d4 c d  |
  e2 c4  |
  a2 a4  |
  %10
  e'2 c4  |
  a4 b c  |
  e2 c4  |
  a2 e'4  |
  g4. fis8 e4  |
  %15
  d4 c b  |
  a4 c4. b8 }
  \alternative { { a2 c4 }
  { a4. a8 gis a } }
  \repeat volta 2 { b4. b8 a b  |
  %20
  c4. c8 b c  |
  d4. d8 c d  |
  e4. c8 a c  |
  g'4 a g  |
  e4. c8 a c  |
  %25
  g'4 a g  |
  d4. d8 c d  |
  e4. d8 c d  |
  fis4. e8 d c  |
  d4 c b  |
  %30
  a4 c4. b8  |
  a4. a8 gis a  | }
  \repeat volta 2 { a'4 gis g  |
  e4. a,8 gis a  |
  g'4 fis f  |
  %35
  e4. a,8 gis a  |
  e'4 dis d  |
  c4 c8 c b c  |
  e4 e8 c b c }
  \alternative { { a4. a8 gis a }
  %40
  {  a4. c8 b c } }
  \mark \markup {D.S. e Coda} a2 c4  \bar "||"
  \mark \markup {\musicglyph #"scripts.coda"} a4. e'8 c e  |
  a4 a8 e c e  |
  g4 g8 e c e  |
  %45
  fis4 fis8 e c e  |
  f4 f8 e d c  |
  d4 d8 a gis a  |
  e'4 e8 d c b  |
  a4. c8 b c  |
  %50
  a4. e'8 c e  |
  a4 a8 e c e  |
  g4 g8 e c e  |
  fis4 fis8 e c e  |
  f4 f8 e d c  |
  %55
  d4 d8 a gis a  |
  e'4 e8 d c b  |
  a4. c8 b c  |
  a4. e'8 dis e  |
  a,4. c8 b c  |
  %60
  a4. c8 b c  |
  a4. c8 b c  |
  a2. ~  |
  a2 r4  \bar "|."
}

liniaroAb =
\relative a,
{
  \tempo 4=120
  \clef bass
  \key c \major
  \time 3/4
  r2 r4  |
  \repeat volta 2 { a4 ~ <a a' c e> <a' c e>  |
  d,,4 ~ <d d' fis a c> ~ <d d' fis a c>  |
  e4 ~ <e e' g b> ~ <e e' g b>  |
  %05
  a4 ~ <a a' c e> ~ <a a' c e>  |
  g4 ~ <g g' b d> ~ <g g' b d>  |
  d4 ~ <d d' fis a c> ~ <d d' fis a c>16 c''8.  |
  e,,4 ~ <e e' g b> ~ <e e' g b>  |
  a4 ~ <a a' c e> ~ <a a' c e>  |
  %10
  a4 ~ <a a' c e> <a' c e>  |
  d,,4 ~ <d d' fis a c> ~ <d d' fis a c>  |
  e4 ~ <e e' g b> ~ <e e' g b>  |
  a4 ~ <a a' c e> ~ <a a' c e>  |
  g4 ~ <g g' b d> ~ <g g' b d>  |
  %15
  d4 ~ <d d' fis a c> ~ <d d' fis a c>  |
  a'4 ~ <a a' c e> ~ <a a' c e> }
  \alternative { { a4 ~ <a a' c e> ~ <a a' c e> }
  { a4 ~ <a a' c e> ~ <a a' c e> } }
  \repeat volta 2 { e4 ~ <e e' g b> ~ <e e' g b>  |
  %20
  a4 ~ <a a' c e> ~ <a a' c e>  |
  << { r4 <d fis a c> <d fis a c> } \\ { d,2. } >>  |
  a'4 ~ <a a' c e> ~ <a a' c e>  |
  g4 ~ <g g' b d> ~ <g g' b d>  |
  a4 ~ <a a' c e> ~ <a a' c e>  |
  %25
  g4 ~ <g g' b d> ~ <g g' b d>  |
  d4 ~ <d d' fis a c> ~ <d d' fis a c>  |
  a'4 ~ <a a' c e> ~ <a a' c e>  |
  d,4 ~ <d d' fis a c> ~ <d d' fis a c>  |
  e4 ~ <e e' g b> ~ <e e' g b>  |
  %30
  a4 ~ <a a' c e> ~ <a a' c e>  |
  a4 ~ <a a' c e> ~ <a a' c e>  | }
  \repeat volta 2 { e4 ~ <e e' g b> ~ <e e' g b>  |
  a4 ~ <a a' c e> ~ <a a' c e>  |
  g4 ~ <g g' b d> ~ <g g' b d>  |
  %35
  a4 ~ <a a' c e> ~ <a a' c e>  |
  d,4 ~ <d d' fis a c> ~ <d d' fis a c>  |
  a'4 ~ <a a' c e> ~ <a a' c e>  |
  e4 ~ <e e' g b> ~ <e e' g b> }
  \alternative { { a4 ~ <a a' c e> ~ <a a' c e> }
  %40
  { a4 ~ <a a' c e> ~ <a a' c e> } }
  a4 ~ <a a' c e> ~ <a a' c e>  \bar "||"
  a4 ~ <a a' c e> ~ <a a' c e>  |
  a4 ~ <a a' c e> ~ <a a' c e>  |
  a4 ~ <a a' c e g> ~ <a a' c e g>  |
  %45
  d,4 ~ <d d' fis a c> ~ <d d' fis a c>  |
  f4 ~ <f d' f a> ~ <f d' f a>  |
  d4 ~ <d d' f a> ~ <d d' f a>  |
  e4 ~ <e e' g b> ~ <e e' g b>  |
  a4 ~ <a a' c e> ~ <a a' c e>  |
  %50
  a4 ~ <a a' c e> ~ <a a' c e>  |
  a4 ~ <a a' c e> ~ <a a' c e>  |
  a4 ~ <a a' c e g> ~ <a a' c e g>  |
  d,4 ~ <d d' fis a c> ~ <d d' fis a c>  |
  f4 ~ <f d' f a> ~ <f d' f a>  |
  %55
  d4 ~ <d d' f a> ~ <d d' f a>  |
  e4 ~ <e e' g b> ~ <e e' g b>  |
  a4 ~ <a a' c e> ~ <a a' c e>  |
  a4 ~ <a a' c e> e  |
  a4 ~ <a a' c e> ~ <a a' c e>8 e  |
  %60
  a4 ~ <a a' c e> ~ <a a' c e>8 e  |
  << { r4 <a' c e> <a c e>8 e, } \\ { a2. } >>  |
  << { r4 <a' c e>8 <a c e> <a c e>4 } \\ { a,2. } >>  |
  <a a' c e>2.  \bar "|."
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
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
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
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
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
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
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
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" } \liniaroAa
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

