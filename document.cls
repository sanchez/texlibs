\LoadClass[11pt,a4paper]{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{document}

\RequirePackage[none]{hyphenat}
\RequirePackage{ncolor}
\RequirePackage{hyperref}
\RequirePackage{helvet}

% Options
\DeclareOption{number}{\def\@secnumber}
\DeclareOption{rule}{\def\@headrule}
% Other options go before this line
\ProcessOptions\relax

\newcommand{\vrulefill}[1]{\leavevmode\leaders\hrule height#1\hfill\kern0pt}
\newcommand{\firstletter}[1]{\primary#1\black}

% Set the font to sans
\renewcommand{\familydefault}{\sfdefault}

\setcounter{tocdepth}{3} % set how many headings show in toc
\setcounter{secnumdepth}{3} % sets how many sections are shown with numbers

% counters for the sections
\newcounter{heading}
\newcounter{subheading}
\newcounter{subsubheading}

\let\latexsection\section
\renewcommand{\section}[1]{
    \stepcounter{heading}
    \setcounter{subheading}{0}
        \phantomsection
        \addcontentsline{toc}{section}{
            \ifdefined\@secnumber\theheading\quad\fi
            #1
        }
        \noindent\begin{minipage}{\textwidth}
            \noindent\primary\LARGE\bfseries
            \ifdefined\@secnumber\theheading\quad\fi
            #1
            \ifdefined\@headrule\ \vrulefill{0.12em}\fi
        \end{minipage}
}
\renewcommand{\subsection}[1]{
    \stepcounter{subheading}
    \setcounter{subsubheading}{0}
    \phantomsection
    \addcontentsline{toc}{subsection}{
        \ifdefined\@secnumber\thesubheading\quad\fi
        #1
    }
    \noindent\begin{minipage}{\textwidth}
        \noindent\primary\Large\bfseries
        \ifdefined\@secnumber\theheading.\thesubheading\quad\fi
        #1
    \end{minipage}
}
\renewcommand{\subsubsection}[1]{
    \stepcounter{subsubheading}
    \phantomsection
    \addcontentsline{toc}{subsubsection}{
        \ifdefined\@secnumber\thesubsubheading\quad\fi
        #1
    }
    \noindent\begin{minipage}{\textwidth}
        \noindent\primary\large\bfseries
        \ifdefined\@secnumber\theheading.\thesubheading.\thesubsubheading\quad\fi
        \firstletter#1
    \end{minipage}
}
