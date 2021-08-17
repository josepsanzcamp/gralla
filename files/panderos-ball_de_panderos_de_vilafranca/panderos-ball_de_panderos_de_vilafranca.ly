\version "2.16.0"

\header {
  dedication="Ball de panderos"
  title="  "
  subtitle="Ball de panderos de Vilafranca"
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
\relative b'
{
  \clef treble
  \key g \major
  \time 2/8
  b16 a b \tempo 4. = 60 c  |
  \time 3/8   \repeat volta 2 { d16 c b a g8-.  |
  g8-. b16 a b c  |
  d16 cis d e d8-.  |
  %05
  d8-. d16 e fis g  |
  a8-. g-. fis-.  |
  e8 d c  |
  b16 c a b g8-. }
  \alternative { { g8-. b16 a b c }
  %10
  { \mark "Fine" g4 d'8 ( } }
  \repeat volta 2 { e4 ) d16. c32   |
  b8 c d  |
  e4-. d8->  |
  c4-> c8 (  |
  %15
  d4 ) c16. ( b32 )  |
  a8 b c  |
  e4-. d8-> }
  \alternative { { b4-> d8 }
  { b8-> d16-. d-. d-. d-. } }
  %20
  \repeat volta 2 { e16 d cis d ( e d )  |
  b8-. d16-. d-. d-. d-.  |
  e16 ( d cis d e d )  |
  a8-. c16-. c-. c-. c-.  |
  d16 ( c b c d c )  |
  %25
  a8-. c16-. c-. c-. c-.  |
  e16 ( d cis d e d ) }
  \alternative { { b8-. d16-. d-. d-. d-. }
  { b4 d8-> } }
  \repeat volta 2 { g8.-> fis16-> g8->  |
  %30
  e8 fis d  |
  e8. c16 a8->  |
  a8-> r a  |
  fis'8. e16 fis8  |
  d8 e c  |
  %35
  d8. b16 g8-> }
  \alternative { { g8-> r d' }
  { \mark "D.C. al Fine" g,8-> r r } } \bar "||"
}

liniaroAb =
\relative b'
{
  \clef treble
  \key g \major
  \time 2/8
  b16 a b \tempo 4. = 60 c  |
  \time 3/8   \repeat volta 2 { d16 c b a g8-.  |
  g8-. b16 a b c  |
  d16 cis d e d8-.  |
  %05
  d8-. d16 e fis g  |
  a8-. g-. fis-.  |
  e8 d c  |
  b16 c a b g8-. }
  \alternative { { g8-. b16 a b c }
  %10
  { g4 b8 ( } }
  \repeat volta 2 { c4 ) b16. a32   |
  g8 a b  |
  c4-. b8->  |
  a4-> a8 (  |
  %15
  b4 ) a16. ( g32 )  |
  fis8 g a  |
  c4-. b8-> }
  \alternative { { g4-> b8 }
  { g8-> d'16-. d-. d-. d-. } }
  %20
  \repeat volta 2 { e16 d cis d ( e d )  |
  b8-. d16-. d-. d-. d-.  |
  e16 ( d cis d e d )  |
  a8-. c16-. c-. c-. c-.  |
  d16 ( c b c d c )  |
  %25
  a8-. c16-. c-. c-. c-.  |
  e16 ( d cis d e d ) }
  \alternative { { b8-. d16-. d-. d-. d-. }
  { b4 d8-> } }
  \repeat volta 2 { g8.-> fis16-> g8->  |
  %30
  e8 fis d  |
  e8. c16 a8->  |
  a8-> r a  |
  fis'8. e16 fis8  |
  d8 e c  |
  %35
  d8. b16 g8-> }
  \alternative { { g8-> r d' }
  { g,8-> r r } } \bar "||"
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

