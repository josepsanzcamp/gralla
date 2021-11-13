\version "2.14.2"

\header {
  title="Ball dels Gegants de Cardedeu"
  tagline=""
}

liniaroAa =
\relative g'
{
  \clef treble
  \key c \major
  \time 3/4
  \tempo 4=170
  r4 r4 g'4 |
  
  \bar "||" 
  e4. d8 c4 |
  d2 e4 |
  f4. a8 g4 |
  e4 ~ g8 r8 g4 |
  e4. d8 c4 |
  d2 e4 |
  f4. a8 g4 |
  c,2 e4 |
  d4. e8 d4 |
  g4. a8 g4 |
  f4 e4 d4 |
  e4 g8 r8 e4 |
  d4. e8 d4 |
  g4. a8 g4 |
  f4 e4 d4 |

  e2 g4 |
  \bar "||"
  e4. d8 c4 |
  d2 e4 |
  f4. a8 g4 |
  e4 ~ g8 r8 g4 |
  e4. d8 c4 |
  d2 e4 |
  f4. a8 g4 |
  c,2 e4 |
  d4. e8 d4 |
  g4. a8 g4 |
  f4 e4 d4 |
  e4 g8 r8 e4 |
  d4. e8 d4 |
  g4. a8 g4 |
  f4 e4 d4 |

  \time 2/4
  \tempo 4=170
  e2 |
  \bar "||"
  g8. a16 g8 f8 |
  e8. d16 e8 f8 |
  g4 a4 |
  e4 g8 r8 |
  g8. a16 g8 f8 |
  e8. d16 e8 f8 |
  g4 e4 |
  c2 |
  g'8. a16 g8 f8 |
  e8. d16 e8 f8 |
  g4 a4 |
  e4 g8 r8 |
  g8. a16 g8 f8 |
  e8. d16 e8 f8 |
  g4 e4 |
  c2 |
  \bar "||"
  a'8 a8 g4 |
  a8 a8 g4 |
  c8. b32 a32 g8 f8 |
  e8 d8 e8 g8 |
  a8 a8 g4 |
  a8 a8 g4 |
  c8. b32 a32 g8 f8 |
  
  e8 d8 c4 |
  \bar "||"    
  a'8 a8 g4 |
  a8 a8 g4 |
  c8. b32 a32 g8 f8 |
  e8 d8 e8 g8 |
  a8 a8 g4 |
  a8 a8 g4 |
  c8. b32 a32 g8 f8 |
  
  e2 |
  d2 |
  c2 |
  \bar "||"
}

liniaroAb =
\relative e''
{
  \clef treble
  \key c \major
  \time 3/4
  \tempo 4=170
  r4 r4 e4 |
  
  c2 g4 |
  b4. a8 g4 |
  a4. c8 d4 |
  c4 e8 r8 e4 |
  c2 g4 |
  b4. a8 g4 |
  a4. c8 d4 |
  e2 c4 |
  b4. c8 b4 |
  b4. c8 b4 |
  a4 g4 a4 |
  c4 e8 r8 c4 |
  b4. c8 b4 |
  b4. c8 b4 |
  a4 c4 b4 |

  c2 e4 |
  
  c2 g4 |
  b4. a8 g4 |
  a4. c8 d4 |
  c4 e8 r8 e4 |
  c2 g4 |
  b4. a8 g4 |
  a4. c8 d4 |
  e2 c4 |
  b4. c8 b4 |
  b4. c8 b4 |
  a4 g4 a4 |
  c4 e8 r8 c4 |
  b4. c8 b4 |
  b4. c8 b4 |
  a4 c4 b4 |

  \time 2/4
  \tempo 4=170
  c2 |
  c8. c16 b8 b8 |
  c8. c16 g8 g8 |
  c4 b4 |
  c4 e8 r8 |
  c8. c16 b8 b8 |
  c8. c16 g8 g8 |
  c4 b4 |
  c8. g16 a8 b8 |
  c8. c16 b8 b8 |
  c8. c16 g8 g8 |
  c4 b4 |
  c4 e8 r8 |
  c8. c16 b8 b8 |
  c8. c16 g8 g8 |
  c4 b4 |
  c8 g16 a16 b16 c16 d16 e16 |

  f8 f8 e4 |
  f8 f8 e4 |
  g8. f32 e32 d8 b8 |
  c8 g8 c8 e8 |
  f8 f8 e4 |
  f8 f8 e4 |
  g8. f32 e32 d8 a8 |
  
  g8 a8 g4 |
    
  f'8 f8 e4 |
  f8 f8 e4 |
  g8. f32 e32 d8 b8 |
  c8 g8 c8 e8 |
  f8 f8 e4 |
  f8 f8 e4 |
  g8. f32 e32 d8 a8 |
  
  g4. c8 |
  b4. f'8 |
  e2 |
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
    \midi {}
  }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
      >>
    }
    \layout {}
    \midi {}
  }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
    \midi {}
  }
}
