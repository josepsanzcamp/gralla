\version "2.16.0"

\header {
  dedication="Jota"
  title="   "
  subtitle="Jota del trenzao"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Ambel, Aragó"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative d''
{
  \clef treble
  \key g \major
  \time 3/4
  d16 e fis g ~ \tempo 8 = 230 g8 g g4  |
  g4 r d  |
  \repeat volta 2 { g4 g8 fis e fis  |
  g4 a g  |
  %05
  fis4 e8 d c4  |
  r2 d4  |
  fis4 fis8 e d e  |
  fis4 g fis  |
  e4 d8 c b4  |
  %10
  r2 d4  |
  e4 e8 d c d  |
  e4 fis g  |
  fis4 e8 d c4  |
  r2 d4  |
  %15
  e4 e8 d c d  |
  e4 fis d  |
  e4 d8 c b4  |
  r2 d4  | }
  b'2 b4  |
  %20
  b4 a g  |
  e4 a r8 g  |
  fis4 r8 d e fis  |
  g4 b,8 c d e  |
  \repeat volta 2 { d4 _"La segona vegada més ràpid" b8 c d e  |
  %25
  d4 b8 c d e  |
  d4 c8 b a4  |
  r4 a8 b c d  |
  c4 a8 b c d  |
  c4 a8 b c d  |
  %30
  c4 b8 a g4  |
  r4 b8 c d e  |
  d4 b8 c d e  |
  d4 b8 c d e  |
  f4 e8 d e4  |
  %35
  r4 a8 g fis e  |
  g4 fis8 e fis4  |
  r4 a,8 b c d  |
  e4 d8 c b4 }
  \alternative { { r4 b8 c d e }
  %40
  { g4 g4. g8 } }
  g4 r2  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %45
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  \bar "|."
}

liniaroAb =
\relative d''
{
  \tempo 8 = 230
  \clef treble
  \key g \major
  \time 3/4
  d16 e fis g ~ g8 g g4  |
  g4 r d  |
  \repeat volta 2 { e4 e8 d c d  |
  e4 fis e  |
  %05
  d4 c8 b a4  |
  r2 b4  |
  d4 d8 c b c  |
  d4 e d  |
  c4 b8 a g4  |
  %10
  r2 b4  |
  c4 c8 b a b  |
  c4 d e  |
  d4 c8 b a4  |
  r2 b4  |
  %15
  c4 c8 b a b  |
  c4 d b  |
  c4 b8 a g4  |
  r2 d'4  | }
  g2 g4  |
  %20
  g4 fis e  |
  c4 fis r8 e  |
  d4 r8 b c d  |
  e4 g,8 a b c  |
  \repeat volta 2 { b4 g8 a b c  |
  %25
  b4 g8 a b c  |
  b4 a8 g fis4  |
  r4 fis8 g a b  |
  a4 fis8 g a b  |
  a4 fis8 g a b  |
  %30
  a4 g8 fis d4  |
  r4 g8 a b c  |
  b4 g8 a b c  |
  b4 g8 a b c  |
  d4 c8 b c4  |
  %35
  r4 fis8 e d c  |
  e4 d8 c d4  |
  r4 fis,8 g a b  |
  c4 b8 a g4 }
  \alternative { { r4 g8 a b c }
  %40
  { g'4 g4. g8 } }
  g4 r2  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %45
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 8 = 230
  \time 3/4
  tomfl4. tomfl8 tomfl4  |
  tomfl2 r4  |
  \repeat volta 2 { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  %05
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %10
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  %15
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  | }
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %20
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  \repeat volta 2 { tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  %25
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %30
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  %35
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 \times 2/3 { tomfl8 tomfl tomfl } tomfl4 }
  \alternative { { tomfl4 r2 }
  %40
  { tomfl4 tomfl4. tomfl8 } }
  tomfl2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %45
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  \bar "|."
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
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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
  \header {instrument=""}
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

\bookpart {
  \header {instrument=""}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
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
  \header {instrument=""}
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

\bookpart {
  \header {instrument=""}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }
}

}

