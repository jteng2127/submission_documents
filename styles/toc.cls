\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{toc}[2024/10/13 TOC class]

\LoadClass{cover-letter}

% no page number
\rfoot{}

% move title up
\setlength{\droptitle}{-1cm}

% set stretch to 1
\setstretch{1}

% set toc section stretch to 1.2
\titlecontents{section}[0em]{\setstretch{1.2}\bfseries}{\hspace{0em}}{}{\titlerule*[0.5pc]{.}\contentspage}
