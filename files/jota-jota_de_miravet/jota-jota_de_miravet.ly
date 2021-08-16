\version "2.16.0"

\header {
  dedication="Jota"
  title="   "
  subtitle="Jota de Miravet"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="La Ribera d'Ebre"
  arranger="Arr. Joan Moliner"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g''
{
  \clef treble
  \key g \major
  \time 3/8
  g8 d b \tempo 4. = 60  |
  g8 d'16 d d d  \bar "||"
  \mark \markup {\musicglyph #"scripts.segno"} g8 fis16 ( e ) d8 ~  |
  d8 e16 ( d ) c b  |
  %05
  d8 c16 ( b a8 ~ )  |
  a8 d16 d d d  |
  fis8 e16 ( d c8 ~ )  |
  c8 d16 c b a   |
  c8 b16 ( a ) g8  |
  %10
  r8 d'16 d d d  |
  g8 fis16 ( e d8 ~ )  |
  d8 e16 ( d ) c b  |
  d8 c16 ( b ) a8 ~  |
  a8 d16 d d d  |
  %15
  fis8 e d  |
  c8 b a  |
  g8 r fis'  |
  g8 d16 d d d  \bar "||"
  g8 fis16 ( ( e ) ) d8 ~  |
  %20
  d8 e16 ( d ) c b  |
  d8 c16 ( b ) a8 ~  |
  a8 d16 d d d  |
  fis8 e16 d c8 ~   |
  c8 d16 ( c ) b a  |
  %25
  c8 b16 ( a ) g8  |
  r8 d'16 d d d  |
  g8 fis16 ( ( e ) ) d8 ~  |
  d8 e16 ( d ) c b  |
  d8 c16 ( b ) a8 ~  |
  %30
  a8 d16 d d d  |
  fis8-. e-. d-.  |
  c8-. b-. a-.  |
  \mark "Fine" g8-. r d'-.  |
   g8-. r r  \bar "||"
  %35
  a8 \times 2/3 { g16 a g } fis8  |
  r16 e ( fis8 ) d  |
  g8 \times 2/3 { d16 e d } b8  |
  r4 r8  |
  b'8 \times 2/3 { a16 b a } g8  |
  %40
  r16 fis ( g8 ) \times 2/3 { e16 fis e }  |
  d8 fis a  |
  r4 r8  |
  a8 \times 2/3 { g16 a g } fis8  |
  r16 e ( fis8 ) d  |
  %45
  g8 \times 2/3 { d16 e d } b8  |
  r4 r8  |
  d8 b' \times 2/3 { a16 b a }  |
  g8 \times 2/3 { fis16 g fis } \times 2/3 { e fis e }  |
  d8 fis a ~  |
  %50
  a8 g e  |
  d8 fis a ~  |
  a8 e g  |
  d4 b8 ~  |
  b8 r r  |
  %55
  d8 b' \times 2/3 { a16 b a }  |
  g8 \times 2/3 { fis16 g fis } \times 2/3 { e fis e }  |
  d8 fis a ~  |
  a8 g e  |
  d8 fis a ~  |
  %60
  a8 e fis  |
  g8 d b  |
  g8 _"a la " r r \segno  \bar "||"
  a'8 \coda \times 2/3 { g16 a g } fis8  |
  r16 e ( fis8 ) d  |
  %65
  g8 \times 2/3 { d16 e d } b8  |
  r4 r8  |
  b'8 \times 2/3 { a16 b a } g8  |
  r16 fis ( g8 ) \times 2/3 { e16 fis e }  |
  d8 fis a  |
  %70
  r4 r8  |
  a8 \times 2/3 { g16 a g } fis8  |
  r16 e ( fis8 ) d  |
  g8 \times 2/3 { d16 e d } b8  |
  r4 r8  |
  %75
  d8 b' \times 2/3 { a16 b a }  |
  g8 \times 2/3 { fis16 g fis } \times 2/3 { e fis e }  |
  d8 fis a ~  |
  a8 g e  |
  d8 fis a ~  |
  %80
  a8 e g  |
  d4 b8 ~  |
  b8 r r  |
  d8 b' \times 2/3 { a16 b a }  |
  g8 \times 2/3 { fis16 g fis } \times 2/3 { e fis e }  |
  %85
  d8 fis a ~  |
  a8 g e  |
  d8 fis a ~  |
  a8 e fis  |
  g8 d b  |
  %90
  \mark "D.S. al Fine" g8 r r  \bar "|."
}

liniaroAb =
\relative g''
{
  \tempo 4. = 60
  \clef treble
  \key g \major
  \time 3/8
  g8 d b  |
  g8 r r  \bar "||"
  r8 g16 ( a ) b c  |
  d8 g8. e16  |
  %05
  fis8 d16 ( e ) fis g  |
  fis8 r r  |
  r8 a,16 ( b ) c d  |
  e8 fis8. g16  |
  e8 d16 ( c ) b c  |
  %10
  d8 r r  |
  r8 g,16 ( a ) b c  |
  d8 g8. e16  |
  fis8 d16 ( e ) fis g  |
  fis8 fis16 fis fis fis  |
  %15
  a8 g fis  |
  e8 d c  |
  b8 r a  |
  b8 d16 d d d  \bar "||"
  b'8 b16 a g8 ~  |
  %20
  g8 g16 ( fis ) e d  |
  fis8 e16 ( d ) c8 ~  |
  c8 d16 d d d  |
  a'8 g16 fis e8 ~   |
  e8 fis16 ( e ) d c  |
  %25
  e8 d16 ( c ) d8  |
  r8 d16 d d d  |
  b'8 b16 a g8 ~  |
  g8 g16 ( fis ) e d  |
  fis8 e16 ( d ) c8 ~  |
  %30
  c8 fis16 fis fis fis  |
  a8-. g-. fis-.  |
  e8-. d-. c-.  |
  b8-. r fis'-.  |
  g8-. r r  \bar "||"
  %35
  c,8-. r r  |
  c8-. r r  |
  b8-. r r  |
  b8-. b-. b-.  |
  b8-. r r  |
  %40
  b8-. r r  |
  c8-. r r  |
  c8-. c-. c-.  |
  c8-. r r  |
  c8-. r r  |
  %45
  b8-. r r  |
  b8 b b  |
  b8 b16 c ( d8 )  |
  b8 a g  |
  fis8 a16 ( b ) c8 ~  |
  %50
  c8 b g  |
  a8 a16 ( b ) c8 ~  |
  c8 c b  |
  a8 g16 fis g8 ~   |
  g8 r r  |
  %55
  b8 b16 c ( d8 )  |
  b8 a g  |
  fis8 a16 ( b ) c8 ~  |
  c8 b g  |
  a8 a16 ( b ) c8 ~  |
  %60
  c8 b a  |
  g8-. g-. g-.  |
  g8-. r r  \bar "||"
  c8 \times 2/3 { b16 c b } a8  |
  r16 g ( a8 ) fis  |
  %65
  g8 g16 a b8  |
  r4 r8  |
  d8 \times 2/3 { c16 d c } b8  |
  r16 a ( b8 ) g  |
  a8 a16 b c8  |
  %70
  r4 r8  |
  c8 \times 2/3 { b16 c b } a8  |
  r16 g ( a8 ) fis  |
  g8 g16 a b8  |
  r4 r8  |
  %75
  g8 b c16 d  |
  e8 \times 2/3 { d16 e d } \times 2/3 { c d c }  |
  b8 a16 b c8 ~  |
  c8 b g  |
  a8 a16 b c8 ~  |
  %80
  c8 c c  |
  b4 g8 ~  |
  g8 r r  |
  g8 b c16 d  |
  e8 \times 2/3 { d16 e d } \times 2/3 { c d c }  |
  %85
  b8 a16 b c8 ~  |
  c8 b g  |
  a8 a16 b c8 ~  |
  c8 c a  |
  g8 g g  |
  %90
  g8 r4  \bar "|." % kompletite
}

liniaroAc =
\relative a'
{
  \tempo 4. = 60
  \clef treble
  \key g \major
  \time 3/8
  r4 r8  |
  r4 r8  \bar "||"
  r4 r8  |
  r4 r8  |
  %05
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  %10
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  %15
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  \bar "||"
  r4 r8  |
  %20
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  %25
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  %30
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  \bar "||"
  %35
  a8-. r r  |
  a8-. r r  |
  g8-. r r  |
  g8-. g-. g-.  |
  g8-. r r  |
  %40
  g8-. r r  |
  a8-. r r  |
  a8-. a-. a-.  |
  a8-. r r  |
  a8-. r r  |
  %45
  g8-. r r  |
  g8-. g-. g-.  |
  r8 g-. g-.  |
  r8 g-. g-.  |
  r8 a-. a-.  |
  %50
  r8 a-. a-.  |
  r8 fis-. fis-.  |
  r8 fis-. fis-.  |
  r8 g-. g-.  |
  g8-. g-. g-.  |
  %55
  r8 g-. g-.  |
  r8 g-. g-.  |
  r8 a-. a-.  |
  r8 a-. a-.  |
  r8 fis-. fis-.  |
  %60
  r8 fis-. fis-.  |
  g8-. g-. g-.  |
  g8-. r r  \bar "||"
  r4 r8  |
  r4 r8  |
  %65
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  %70
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  %75
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  %80
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  %85
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  r4 r8  |
  %90
  r4 r8  \bar "|."
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

