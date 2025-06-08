\version "2.22.2"
\language "english"

global = {
    \key d \major
    \time 3/4
    \tempo 4 = 144
}

soprano = \relative c' {
    \global
    \partial 4 
    d | 
    d2 e4 | fs2 g4 | fs2 e4 | d2 d4 | a'2 a4 |
    a (b) cs | d2 d4 | d2 \bar "||" a4 | d2 d4 | cs2 a4 |
    b2 b4 | a2 g4 | a2 fs4 | e2 fs4 | d2 cs4 | d2 \fermata \bar "|."
}

alto = \relative c' {
    \global
    \partial 4
    a4 |
    b2 cs4 | d2 4 | 2 a4 | fs2 b4 | d (g) fs |
    e2 4 | 2 g4 | fs2 \bar "||" e4 | d (fs) e | 2 d4 |
    b2 d4 | 2 b4 | e2 d4 | cs2 d4 | b2 a4 | a2 \bar "|."
}

tenor = \relative {
    \global 
    \partial 4
    fs4 |
    2 a4 | 2 d,4 | a' (b) cs | d2 4 | 2 a4 |
    2 4 | 2 b4 | a2 \bar "||" 4 | b2 4 | a (g) fs |
    g2 4 | fs2 g4 | e2 a4 | 2 4 | g (fs) e | fs2 \bar "|." 
}

bass = \relative {
    \global
    \partial 4
    d4 | 
    b2 a4 | d4 (cs) b | a (g) a | d2 g4 | fs4 (e) d |
    cs2 a4 | d2 4 | 2 \bar "||" cs4 | b (a) gs | a2 d4 |
    g,2 b4 | d2 e4 | cs2 d4 | a (g) fs | g2 a4 | d2 \fermata \bar "|."
}