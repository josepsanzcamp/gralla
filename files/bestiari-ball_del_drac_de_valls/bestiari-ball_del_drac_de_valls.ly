\version "2.16.0"

\header {
  dedication="Bestiari"
  title="    "
  subtitle="Ball del drac de Valls"
  subsubtitle=""
  poet="               Allegretto"
  meter=""
  piece=""
  composer="Cisco Bofarull"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g''
{
  \clef treble
  \key c \major
  \time 1/4
  g8 e \tempo 4 = 126  |
  \time 2/4   \repeat volta 2 { c8. g16 c8 e  |
  c4 b8 c  |
  d8. f16 e8 d  |
  %05
  e8 c g' e  |
  c8. g16 c8 e  \bar "||"
  \mark \markup {\musicglyph #"scripts.segno"} c4 b8 c  |
  d8. f16 e8 d }
  \alternative { { c4 g'8 e }
  %10
  { c4 b8 c } }
  d8. e16 d8 c  |
  d8 b b c  |
  d8. e16 d8 c  |
  b4 g'8 e  |
  %15
  c8. g16 c8 e  |
  c4 b8 c  |
  d8. f16 e8 d  |
  e8 c g' e  |
  c8. g16 c8 e  |
  %20
  c4 f8 e  |
  d8. c16 d8 e  |
  c2 ~  |
  c4 r8 \times 2/3 { g16 a b }  |
  c8. g16 \times 2/3 { c8 g c }  |
  %25
  e4 c8. e16  |
  d8. c16 b8. d16  |
  c4 r8 \times 2/3 { g16 a b }  |
  c8. g16 \times 2/3 { c8 g c }  |
  e4 c8. e16  |
  %30
  d8. c16 b8. d16  |
  c4 r8 g'  |
  f8. e16 d8. f16  |
  e4 c8. e16  |
  d8. c16 b8. c16  |
  %35
  d4 r8 \times 2/3 { g,16 a b }  |
  c8. g16 \times 2/3 { c8 g c }  |
  e4 c8. e16  |
  d8. c16 b8. d16  |
  c4 g'8 e  |
  %40
  c8. g16 c8 e  |
  c4 b8 c  |
  d8. f16 e8 d  |
  e8 c g' e  |
  c8. g16 c8 e  |
  %45
  c4 b8 c  |
  d8. f16 e8 d  |
  c4 g'8 e  |
  c8. g16 c8 e  |
  c4 b8 c  |
  %50
  d8. f16 e8 d  |
  e8 c g' e  |
  \mark \markup {D.S. e Coda} c8. g16 c8 e  \bar "||"
  \mark \markup {\musicglyph #"scripts.coda"} c4 f8 _"rit." e  |
  d8. c16 d8 e  |
  %55
  c2 ~  |
  c2 ~  |
  c4 r  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4 = 126
  \clef treble
  \key c \major
  \time 1/4
  e8 c  |
  \time 2/4   \repeat volta 2 { g8. g16 g8 c  |
  g4 g8 a  |
  b8. d16 c8 b  |
  %05
  c8 g e' c  |
  g8. g16 g8 c  \bar "||"
  g4 g8 a  |
  b8. d16 c8 b }
  \alternative { { g4 e'8 c }
  %10
  { g4 g8 a } }
  b8. c16 b8 a  |
  b8 g g a  |
  b8. c16 b8 a  |
  g4 e'8 c  |
  %15
  g8. g16 g8 c  |
  g4 g8 a  |
  b8. d16 c8 b  |
  c8 g e' c  |
  g8. g16 g8 c  |
  %20
  g4 f'8 e  |
  d8. c16 d8 e  |
  c2 ~  |
  c4 r8 \times 2/3 { g16 a b }  |
  c8. g16 \times 2/3 { c8 g c }  |
  %25
  c4 g8. c16  |
  b8. a16 g8. d'16  |
  c4 r8 \times 2/3 { g16 a b }  |
  c8. g16 \times 2/3 { c8 g c }  |
  c4 g8. c16  |
  %30
  b8. a16 g8. d'16  |
  c4 r8 e  |
  d8. c16 b8. d16  |
  c4 g8. c16  |
  b8. a16 g8. a16  |
  %35
  b4 r8 \times 2/3 { g16 a b }  |
  c8. g16 \times 2/3 { c8 g c }  |
  c4 g8. c16  |
  b8. a16 g8. d'16  |
  c4 e8 c  |
  %40
  g8. g16 g8 c  |
  g4 g8 a  |
  b8. d16 c8 b  |
  c8 g e' c  |
  g8. g16 g8 c  |
  %45
  g4 g8 a  |
  b8. d16 c8 b  |
  g4 e'8 c  |
  g8. g16 g8 c  |
  g4 g8 a  |
  %50
  b8. d16 c8 b  |
  c8 g e' c  |
  g8. g16 g8 c  \bar "||"
  g4 d'8 c  |
  b8. a16 b8 g  |
  %55
  c2 ~  |
  c2 ~  |
  c4 r  \bar "|."
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

