\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2024/10/12 Homework class]

\LoadClass[a4paper,10pt]{article}

% Allows arbitrary scaling of Computer Modern fonts
\RequirePackage{type1cm}

% Specifies multi-column layout
\RequirePackage{multicol}

% Chinese character support
\RequirePackage{xeCJK}
\setCJKmainfont{Noto Sans TC}
\setCJKsansfont{Noto Sans TC}
\setCJKmonofont{Noto Sans TC}

% bookmark
\RequirePackage{hyperref}
\RequirePackage[atend, numbered]{bookmark}

% Paragraph indent and line spacing settings
\setlength{\parindent}{15pt}
\linespread{1}

% Geometry package to control page margins
\RequirePackage{geometry}
\geometry{left=2.5cm,right=2.5cm,top=1cm,bottom=2cm}

% Customize section and subsection numbering format
\renewcommand\thesection{p\arabic{section}} % p1
\renewcommand\thesubsection{(\alph{subsection})} % (a)
\renewcommand\thesubsubsection{\alph{subsection}\arabic{subsubsection})} % a1)

% Package for including graphics (e.g., images)
\RequirePackage{graphicx}
\RequirePackage{subcaption}

% Custom environment for indented sections (e.g., subsubsections)
\RequirePackage{changepage}
\newenvironment{indentblock}[1]
  {\adjustwidth{#1}{0pt}}
  {\endadjustwidth}
% indent subsubsections command
\newcommand{\indentsubsubsection}[1]{
  \begin{indentblock}[3em]
    \subsubsection{#1}
  \end{subs}
}

% Titlesec package to format subsection and subsubsection titles
\RequirePackage{titlesec}
\titleformat{\subsection}[hang]{\normalfont\large}{\textbf{\thesubsection}}{1em}{}
\titleformat{\subsubsection}[hang]{\normalfont\normalsize}{\thesubsubsection}{1em}{}

% siunitx package for formatting numbers and units
\RequirePackage{siunitx}
\sisetup{
  round-mode = places,
  round-precision = 3,
  group-separator = {},
}

% Float package for controlling figure placement (e.g., [H] for exact placement)
\RequirePackage{float}

% amsmath package for advanced mathematical expressions and alignments
\RequirePackage{amsmath}
\RequirePackage{amssymb}

% Forest package for drawing probability trees and other tree diagrams
\RequirePackage{forest}

% Indent first paragraph of each section
\RequirePackage{indentfirst}

% code listings
\RequirePackage{listings}
\RequirePackage{xcolor}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\normalsize,
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    keepspaces=true,
    numbers=left,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    tabsize=2
}

\setlength{\parskip}{16pt}

\lstset{style=mystyle}