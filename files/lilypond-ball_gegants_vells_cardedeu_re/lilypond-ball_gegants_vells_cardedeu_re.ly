\version "2.14.2"

\header {
  title="Ball dels Gegants Vells"
  subtitle="(Cardedeu)"
  tagline=""
}

liniaroAa =
\relative g'
{
  \clef treble
  \key c \major
  \time 3/4
  \tempo 4=170
  r4 r4 d'4 |

  \bar "||"
  b4. a8 g4 |
  a2 b4 |
  c4. e8 d4 |
  b4 d8 r8 d4 |
  b4. a8 g4 |
  a2 b4 |
  c4. e8 d4 |
  b2 b4 |
  a4. b8 a4 |
  d4. e8 d4 |
  c4 b4 a4 |
  b4 d8 r8 b4 |
  a4. b8 a4 |
  d4. e8 d4 |
  c4 b4 a4 |

  g2 d'4 |
  \bar "||"
  b4. a8 g4 |
  a2 b4 |
  c4. e8 d4 |
  b4 d8 r8 d4 |
  b4. a8 g4 |
  a2 b4 |
  c4. e8 d4 |
  b2 b4 |
  a4. b8 a4 |
  d4. e8 d4 |
  c4 b4 a4 |
  b4 d8 r8 b4 |
  a4. b8 a4 |
  d4. e8 d4 |
  c4 b4 a4 |

  \time 2/4
  \tempo 4=170
  g2 |
  \bar "||"
  d'8. e16 d8 c8 |
  b8. a16 b8 c8 |
  d4 e4 |
  b4 d8 r8 |
  d8. e16 d8 c8 |
  b8. a16 b8 c8 |
  d4 b4 |
  g2 |
  d'8. e16 d8 c8 |
  b8. a16 b8 c8 |
  d4 e4 |
  b4 d8 r8 |
  d8. e16 d8 c8 |
  b8. a16 b8 c8 |
  d4 b4 |
  g2 |
  \bar "||"
  e'8 e8 d4 |
  e8 e8 d4 |
  g8. f32 e32 d8 c8 |
  b8 a8 b8 d8 |
  e8 e8 d4 |
  e8 e8 d4 |
  g8. f32 e32 d8 c8 |

  b8 a8 g4 |
  \bar "||"
  e'8 e8 d4 |
  e8 e8 d4 |
  g8. f32 e32 d8 c8 |
  b8 a8 b8 d8 |
  e8 e8 d4 |
  e8 e8 d4 |
  g8. f32 e32 d8 c8 |

  b2 |
  a2 |
  g2 |
  \bar "||"
}

liniaroAb =
\relative e''
{
  \clef treble
  \key c \major
  \time 3/4
  \tempo 4=170
  r4 r4 b'4 |

  g2 d4 |
  fis4. e8 d4 |
  e4. g8 fis4 |
  g4 b8 r8 b4 |
  g2 d4 |
  fis4. e8 d4 |
  e4. g8 fis4 |
  g2 g4 |
  fis4. g8 fis4 |
  fis4. g8 fis4 |
  e4 g4 fis4 |
  g4 b8 r8 g4 |
  fis4. g8 fis4 |
  fis4. g8 fis4 |
  e4 g4 fis4 |

  g2 b4 |

  g2 d4 |
  fis4. e8 d4 |
  e4. g8 fis4 |
  g4 b8 r8 b4 |
  g2 d4 |
  fis4. e8 d4 |
  e4. g8 fis4 |
  g2 g4 |
  fis4. g8 fis4 |
  fis4. g8 fis4 |
  e4 g4 fis4 |
  g4 b8 r8 g4 |
  fis4. g8 fis4 |
  fis4. g8 fis4 |
  e4 g4 fis4 |

  \time 2/4
  \tempo 4=170
  g2 |
  g8. g16 fis8 fis8 |
  g8. g16 d8 d8 |
  g4 fis4 |
  g4 d8 r8 |
  g8. g16 fis8 fis8 |
  g8. g16 d8 d8 |
  g4 fis4 |
  g8 d8 e8 fis8 |
  g8. g16 fis8 fis8 |
  g8. g16 d8 d8 |
  g4 fis4 |
  g4 d8 r8 |
  g8. g16 fis8 fis8 |
  g8. g16 d8 d8 |
  g4 fis4 |
  g8 d8 e8 fis8 |

  c8 c8 b4 |
  c8 c8 b4 |
  r2 |
  r2 |
  c8 c8 b4 |
  c8 c8 b4 |
  r2 |

  r2 |

  c8 c8 b4 |
  c8 c8 b4 |
  r2 |
  r2 |
  c8 c8 b4 |
  c8 c8 b4 |
  r2 |

  d4. g8 |
  fis4. c8 |
  b2 |
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
