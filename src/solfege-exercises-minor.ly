\version "2.18.2"
\language "english"

\header {
  title = "Solfege Exercises"
  subtitle = "A minor, using classical guitar"
}

% #(set-global-staff-size 18)

\layout {
    indent = 0\cm
    \override Staff.TimeSignature #'stencil = ##f
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

\paper {
    #(set-paper-size "letter")
    top-margin = 0.5\in
    right-margin = 0.5\in
    bottom-margin = 0.5\in
    left-margin = 0.5\in

    print-all-headers = ##t
    ragged-right = ##f
}

global = {
  \key a \minor
  \time 4/4
  \clef "treble_8"
}

\score {
  \midi { \tempo 4=65 }
  \relative c' {
    \global
    % Dummy midi block. Just makes numbering so much easier...
    r4
  }
}

%%%%%%%%%%
%%%%%%%%%% Scales
%%%%%%%%%%

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "01. Major scale" title = ##f subtitle = "Scales" }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 b c d | e f g a | a g f e | d c b a
    a4 b c d | e f g a | a g f e | d c b a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "02. Major scale, lower half (Do - Sol)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    \time 3/4
    <a, c e a>4 <gs b e gs>4 <a c e a>4
    a4 b c | d e d | c b a
    a4 b c | d e d | c b a
    a4 b c | d e d | c b a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "03. Major scale, upper half (Do - Fa)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    \time 3/4
    <a, c e a>4 <gs b e gs>4 <a c e a>4
    a' g f | e d e | f g a
    a g f | e d e | f g a
    a g f | e d e | f g a
    \bar "|."
  }
}

%%%%%%%%%%
%%%%%%%%%% Arpeggios
%%%%%%%%%%

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "04. Do me sol" title = ##f subtitle = "Three note arpeggios" }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    \time 3/4
    <a, c e a>4 <gs b e gs>4 <a c e a>4
    a4 c e | c a2 
    a4 c e | c a2 
    a4 c e | c a2 
    a4 c e | c a2 
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "05. Me sol do" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    \time 3/4
    <a, c e a>4 <gs b e gs>4 <a c e a>4
    c4 e a | e c2 
    c4 e a | e c2 
    c4 e a | e c2 
    c4 e a | e c2 
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "06. Sol do me" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    \time 3/4
    <a, c e a>4 <gs b e gs>4 <a c e a>4
    e'4 a c | a e2
    e4 a c | a e2
    e4 a c | a e2
    e4 a c | a e2
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "07. Do me sol do" title = ##f subtitle = "Four note arpeggios" }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    a4 c e a | a e c a 
    a4 c e a | a e c a
    a4 c e a | a e c a 
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "08. Me sol do me" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    c4 e a c | c a e c
    c4 e a c | c a e c
    c4 e a c | c a e c
    c4 e a c | c a e c
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "09. Sol do me sol" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    e'4 a c e | e c a e
    e4 a c e | e c a e
    e4 a c e | e c a e
    e4 a c e | e c a e
    \bar "|."
  }
}

%%%%%%%%%%
%%%%%%%%%% Diatonic chords
%%%%%%%%%%

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "10. Do me sol do (I) →  Re sol te re (v)" title = ##f subtitle = "Diatonic chords" }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    b4 e g b | b g e b
    a4 c e a | a e c a
    
    <a c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    b4 e g b | b g e b
    a4 c e a | a e c a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "11. Do me sol do (I) →  Re sol ti re (V)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    b4 e gs b | b gs e b
    a4 c e a | a e c a
    
    <a c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    b4 e gs b | b gs e b
    a4 c e a | a e c a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "12. Do me sol do (I)  →  Do fa le do (iv)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    a4 d f a | a f d a
    a4 c e a | a e c a
    
    <a c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    a4 d f a | a f d a
    a4 c e a | a e c a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "13. Do me sol do (I)  →  Do me le do (♭VI)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    a4 c f a | a f c a
    a4 c e a | a e c a
    
    <a c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    a4 c f a | a f c a
    a4 c e a | a e c a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "14. Do me sol do (I)  →  Re fa le re (ii°)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    b4 d f b | b f d b
    a4 c e a | a e c a
    
    <a c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    b4 d f b | b f d b
    a4 c e a | a e c a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "15. Do me sol do (I)  →  Re fa te re (♭VII)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    b4 d g b | b g d b
    a4 c e a | a e c a
    
    <a c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    b4 d g b | b g d b
    a4 c e a | a e c a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "16. Do me sol do (I)  →  Re fa ti re (vii°)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    b4 d gs b | b gs d b
    a4 c e a | a e c a
    
    <a c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    b4 d gs b | b gs d b
    a4 c e a | a e c a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "17. Do me sol do (I)  →  Me sol te me (♭III)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    c e g c | c g e c
    a4 c e a | a e c a
    
    <a c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    c e g c | c g e c
    a4 c e a | a e c a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "18. Do me sol do (I)  →  Do fa le do (iv)  →  Re sol te re (v)  →  back to I" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    a4 d f a | a f d a
    b4 e g b | b g e b
    a4 c e a | a e c a
    
    <a c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    a4 d f a | a f d a
    b4 e g b | b g e b
    a4 c e a | a e c a
    \bar "|."
  }
}
