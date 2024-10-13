\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cover-letter}[2024/10/13 Cover letter class]

\LoadClass[a4paper,12pt]{article}

% 能使用 itemize、enumerate
\RequirePackage{enumitem}
\setlist[itemize]{noitemsep, topsep=0pt, parsep=0pt, partopsep=0pt}
\setlist[itemize,2]{label=$\circ$, noitemsep, topsep=0pt, parsep=0pt, partopsep=0pt}

% 設定頁面邊界
\RequirePackage[right=20mm, left=20mm, top=20mm, bottom=20mm, headheight=0pt, headsep=0pt]{geometry}

% Allows arbitrary scaling of Computer Modern fonts
\RequirePackage{type1cm}

% 數學符號
% \RequirePackage{amssymb}
% \RequirePackage[fleqn]{amsmath}

% 繪製圖形
% \RequirePackage{tikz}

% 多欄排版
\RequirePackage{multicol}

% 設定區域行距
\RequirePackage{setspace}

% 設定段落行距
\setlength{\parskip}{1em}

% 都是圖表的東西
% \RequirePackage{makecell}
% \setlength{\columnsep}{1pt}
% \RequirePackage{pgfplots}
% \RequirePackage{subcaption}
% % \RequirePackage{subfig}
% \RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{float}
\RequirePackage{tabularx}

\captionsetup[table]{name={表},labelsep=period}

% 章節首段縮排
\RequirePackage{indentfirst}

% 設定首行縮排
\newlength{\fullwidthspace}
\setlength{\fullwidthspace}{2em}  % 定義兩個全形空白的長度為2em
\setlength{\parindent}{\fullwidthspace}  % 設定段落首行縮排為兩個全形空白

% 頁碼
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}

\lhead{}
\chead{}
\rhead{}

\lfoot{}
\cfoot{}
\rfoot{} 
% \rfoot{ 第 \thepage 頁} 
% \rfoot{ 共 \pageref{LastPage} 頁 第  \thepage   頁} 


% 超連結、目錄跳轉
\RequirePackage[unicode=true,pdfusetitle,
 bookmarks=true,bookmarksnumbered=false,bookmarksopen=false,
 breaklinks=false,pdfborder={0 0 0},backref=false,colorlinks=false]
 {hyperref}

% 英文字體設定
\RequirePackage{fontspec}
\setmainfont{Helvetica}
% 中文字體設定
\RequirePackage{xeCJK}
\setCJKmainfont{Noto Sans TC}
\setCJKsansfont{Noto Sans TC}
\setCJKmonofont{Noto Sans TC}

% 大標題樣式
\RequirePackage{titling}

\preauthor{\begin{flushright}\normalsize}
\postauthor{\end{flushright}}
\predate{}
\postdate{}

% 標題樣式
\RequirePackage{titlesec}

\titleformat{\section}{\centering\Large\bfseries}{}{0em}{}[\titlerule]
\titlespacing*{\section}{0pt}{0em}{1em}

\titleformat{\subsection}{\centering\large\bfseries}{}{0em}{}[]
\titlespacing*{\subsection}{0pt}{0em}{0em}

\titlespacing*{\subsubsection}{0pt}{0em}{0em}

% 目錄樣式
\RequirePackage{titletoc}

\titlecontents{section}[0em]{\setstretch{1.5}\bfseries}{\hspace{0em}}{}{\titlerule*[0.5pc]{.}\contentspage}

% 目錄名稱
\renewcommand{\contentsname}{目錄}

% 字體顏色
\RequirePackage{xcolor}

% \let\originaltextbf\textbf
% \renewcommand{\textbf}[1]{\originaltextbf{\textcolor{red}{#1}}}
\newcommand{\textbfred}[1]{\textcolor{red}{\textbf{#1}}}


