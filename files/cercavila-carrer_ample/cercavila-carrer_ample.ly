\version "2.16.0"

\header {
  dedication="Cercavila"
  title="  "
  subtitle="Carrer ample"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Tomás Navarro Cosme"
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
  \time 2/4
  r4 g  |
  c8 g4 c8  |
  \repeat volta 2 { e8 g f d  |
  c8 g4. ~  |
  %05
  g4 g  |
  c8 g4 c8  |
  e8 g f e  |
  d2 ~  |
  d4 g,  |
  %10
  d'8 b4 d8  |
  f8 a g f  |
  e8 c4 d8  |
  e8 g f e  |
  d8 b4 c8  |
  %15
  d8 f e d  |
  e4 f  |
  g4 e  |
  f8 d4 e8  |
  f8 a g f  |
  %20
  e8 c4 d8  |
  e8 g f e  |
  d8 b4 c8  |
  d8 d c b }
  \alternative { { c2  |
  %25
  r4 g  |
  c8 g4 c8 }
  { c2 ~  |
  \mark "Fine" c4 r } }
  c8 c4 d8  |
  %30
  e8 e4 f8  |
  g8 e4 d8  |
  c8 r g4  |
  c8 c4 d8  |
  e8 d e f  |
  %35
  g8 fis4 fis8  |
  g8-. r d-. r  |
  g8-. r d-. r  |
  g8-. g-. e d  |
  c8. b16 c8 d  |
  %40
  e8 g e d  |
  c2 ~  |
  c8 g' e d  |
  c8. b16 c8 d  |
  e8 a f e  |
  %45
  d2 ~  |
  d8 a' f e  |
  d8. cis16 d8 e  |
  f8 a f e  |
  d2 ~  |
  %50
  d8 a' f e  |
  d8. cis16 d8 e  |
  f8 a g f  |
  e2 ~  |
  e8 g e d  |
  %55
  c8. b16 c8 d  |
  e8 g e d  |
  c2 ~  |
  c8 g' e d  |
  c8. b16 c8 d  |
  %60
  e8 e f g  |
  a2 ~  |
  a4 \times 2/3 { f8 f g }  |
  a8 a16 a b8 a  |
  a8 g \times 2/3 { e e f }  |
  %65
  g8 g16 g a8 g  |
  g8 f \times 2/3 { d d e }  |
  f8 f16 f e8 d  |
  e4 f  |
  g8-. e f g  |
  %70
  a8 a16 a b8 a  |
  a8 g \times 2/3 { e e f }  |
  g8 g16 g a8 g  |
  g8 f \times 2/3 { d d e }  |
  f8 f16 f d8 b  |
  %75
  \mark "D.C. al Fine" d16 ( e d c ~ ) c4  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r2  |
  r2  |
  \repeat volta 2 { r4 g  |
  c4. d8  |
  %05
  e8 f16 ( e d8 ) e  |
  c8 g4.  |
  r4 g  |
  d'4. e8  |
  f8 g16 ( f e8 ) f  |
  %10
  d8 b4. ~  |
  b8 f' e d  |
  c8 g4 b8  |
  c8 e d c  |
  b8 d4 a8  |
  %15
  b8 d c b  |
  c8. b32 ( c ) d8. c32 ( d )  |
  e8 c b a  |
  b8 b4 c8  |
  d8 f e d  |
  %20
  c8 g4 b8  |
  c8 e d c  |
  b8 d4 a8  |
  b8 b a b }
  \alternative { { <g c>4 b  |
  %25
  a4 g  |
  c2 }
  { g2 ~  |
  g4 r } }
  g8 g4 b8  |
  %30
  c8 c4 d8  |
  e8 c4 b8  |
  g8 r d'4  |
  g,8 g4 b8  |
  c8 b c d  |
  %35
  e8 dis4 dis8  |
  e8-. r g,-. r  |
  e'8-. r g,-. r  |
  e'8-. r r4  |
  r8 g e d  |
  %40
  g4 b,  |
  e8 f16 ( e d8 ) c16 ( d )  |
  e2 ~  |
  e8 g e d  |
  c4 a'  |
  %45
  f8 g16 ( f ) e8 d16 ( e )  |
  f2 ~  |
  f8 a f e  |
  f4 d  |
  f8 g16 ( f e8 ) d16 ( e )  |
  %50
  f2 ~  |
  f8 a f e  |
  d4 f  |
  c8 d16 ( c b8 ) a16 ( b )  |
  c2 ~  |
  %55
  c8 g' e d  |
  g4 b,  |
  e8 f16 e d8 c16 ( d ) |
  e2 ~  |
  e8 g e d  |
  %60
  g4 a  |
  f8 g16 ( f ) e8 d16 ( e )  |
  f4 \times 2/3 { d8 d e }  |
  f8 f16 f g8 f  |
  f8 e \times 2/3 { c c d }  |
  %65
  e8 e16 e f8 e  |
  e8 d \times 2/3 { b b c }  |
  d8 d16 d c8 b  |
  c8. b32 ( c d8. ) c32 ( d )  |
  e8-. c d e  |
  %70
  f8 f16 f g8 f  |
  f8 e \times 2/3 { c c d }  |
  e8 e16 e f8 e  |
  e8 d \times 2/3 { b b c }  |
  d8 d16 d b8 g  |
  %75
  a16 ( b a g ~ ) g4  \bar "|."
}

liniaroAc =
\relative d
{
  \tempo 4=120
  \clef bass
  \key c \major
  \time 2/4
  r2  |
  d4 a  |
  \repeat volta 2 { d4 a  |
  d4 a  |
  %05
  d4 a  |
  d4 a  |
  d4 a  |
  e'4 a,  |
  e'4 a,  |
  %10
  e'4 a,  |
  e'4 a,  |
  d4 a  |
  d4 a  |
  cis4 a  |
  %15
  cis4 a  |
  d4 cis  |
  d4 b  |
  e4 a,  |
  e'4 a,  |
  %20
  d4 a  |
  d4 a  |
  cis4 a  |
  cis4 a }
  \alternative { { d4 cis  |
  %25
  b4 a  |
  d4 a }
  { d4 a  |
  d4 r } }
  d,8 d4 e8  |
  %30
  fis8 fis4 g8  |
  a8 fis4 e8  |
  d4 a'  |
  d,8 d4 e8  |
  fis8 e fis g  |
  %35
  a8 gis4 gis8  |
  a4 e  |
  a4 e  |
  a4 a  |
  d4 a  |
  %40
  d4 a  |
  d4 a  |
  d4 a  |
  d4 a  |
  d4 a  |
  %45
  e'4 b  |
  e4 b  |
  e4 b  |
  e4 b  |
  e4 b  |
  %50
  e4 b  |
  e4 b  |
  e4 a,  |
  d4 a  |
  d4 a  |
  %55
  d4 a  |
  d4 a  |
  d4 a  |
  d4 a  |
  d4 a  |
  %60
  d4 a  |
  e'4 b  |
  e4 b  |
  e4 b  |
  d4 a  |
  %65
  d4 a  |
  cis4 a  |
  cis4 a  |
  d4 e  |
  fis4 d  |
  %70
  e4 b  |
  d4 a  |
  d4 a  |
  cis4 a  |
  cis4 a  |
  %75
  d4 a  \bar "|."
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

