\version "2.16.0"

\header {
  dedication="Sardana curta"
  title="              "
  subtitle="A les meves dones"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Josep Sentmartí"
  arranger="Gener 2001"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  b4 c8 _"A"  |
  \time 6/8   \repeat volta 2 { d4 e8 d4 b8  |
  a4 b8 c4 d8  |
  e4 d8 cis d e  |
  %05
  fis4 e8 d4.  |
  g4 fis8 e4 e8  |
  d4 d8 e4 e8  |
  c4 c8 a4 d8 }
  \alternative { { g,4. b4 c8 }
  %10
  { g4. d'8 e fis } }
  \repeat volta 2 { g8 _"B
" g g g4 g8  |
  fis8 fis fis fis4 fis8  |
  g4 e8 cis4 e8  |
  fis8 fis e d4.  |
  %15
  e8 g fis e d c  |
  b8 a b d c d }
  \alternative { { e4 c8 fis4 d8  |
  g4. d8 e fis }
  { e4 e8 fis4 fis8  |
  %20
  g4. r4 r8 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  << { r4 r8 } \\ { g4 a8 } >>  |
  \time 6/8   \repeat volta 2 { << { r2 r4 } \\ { b4 c8 b4 g8 } >>  |
  << { r2 r4 } \\ { fis4 g8 a4 b8 } >>  |
  << { r2 r4 } \\ { g4 b8 a b cis } >>  |
  %05
  << { r2 r4 } \\ { d4 a8 fis a d } >>  |
  << { r2 r4 } \\ { e4 d8 c4 c8 } >>  |
  << { r2 r4 } \\ { b4 b8 g4 g8 } >>  |
  << { r2 r4 } \\ { e4 e8 fis4 fis8 } >> }
  \alternative { { << { r2 r4 } \\ { g4. g4 a8 } >> }
  %10
  { << { r2 r4 } \\ { g4. d'8 cis c } >> } }
  \repeat volta 2 { << { r2 r4 } \\ { b8 b b b4 b8 } >>  |
  << { r2 r4 } \\ { a8 a a a4 a8 } >>  |
  << { r2 r4 } \\ { b4 cis8 a4 g8 } >>  |
  << { r2 r4 } \\ { a8 b cis d4. } >>  |
  %15
  << { r2 r4 } \\ { c8 b a g fis e } >>  |
  << { r2 r4 } \\ { g8 fis g b a b } >> }
  \alternative { { << { r2 r4 } \\ { c4 a8 d4 c8 } >>  |
  << { r2 r4 } \\ { b4. d8 cis c } >> }
  { << { r2 r4 } \\ { c4 c8 d4 c8 } >>  |
  %20
  << { r2 r4 } \\ { b4. r4 r8 } >> } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 3/8
  r4.  |
  \time 6/8   \repeat volta 2 { tomfl4. tomfl4 tomfl8  |
  tomfl4. tomfl4 tomfl8  |
  tomfl4. tomfl4 tomfl8  |
  %05
  tomfl4. tomfl4 tomfl8  |
  tomfl4. tomfl4 tomfl8  |
  tomfl4. tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8 }
  \alternative { { tomfl4. tomfl4 tomfl8 }
  %10
  { tomfl4. r } }
  \repeat volta 2 { \times 3/2 { tomfl8 tomfl } tomfl4.  |
  \times 3/2 { tomfl8 tomfl } tomfl4.  |
  \times 3/2 { tomfl8 tomfl } tomfl4.  |
  \times 3/2 { tomfl8 tomfl } tomfl4.  |
  %15
  \times 3/2 { tomfl8 tomfl } tomfl4.  |
  \times 3/2 { tomfl8 tomfl } tomfl4. }
  \alternative { { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4. r }
  { tomfl4 tomfl8 tomfl4 tomfl8  |
  %20
  tomfl4. r } } \bar "||"
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
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"" } \liniaroAb
        \new DrumStaff \with {instrumentName = #"" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"" } \liniaroAb
        \new DrumStaff \with {instrumentName = #"" } \liniaroAc
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"" } \liniaroAc
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"" } \liniaroAc
      >>
    }
    \layout {}
  }
}

}

