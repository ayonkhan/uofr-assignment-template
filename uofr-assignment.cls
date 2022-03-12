%%
% Class ``uofr-assignment.cls''
%
% Author: Ayon Khan <ayonkhan AT gmail.com>
% Date: 2022/03/09
%
% License: CC BY 4.0
% License URL: https://creativecommons.org/licenses/by/4.0/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uofr-assignment}[2022/03/09]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[11pt]{article}

\RequirePackage[a4paper, width=150mm, top=25mm, bottom=25mm, headheight=15pt]{geometry}

% \RequirePackage{emptypage}
\RequirePackage[cleardoublepage=plain]{scrextend}

\RequirePackage[doublespacing]{setspace}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
% \fancyhead[C]{\@title}
\fancyfoot{}
\fancyfoot[L]{\@title}
\fancyfoot[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}

\RequirePackage{hyperref}
\hypersetup{colorlinks, citecolor=black, filecolor=black, linkcolor=black, urlcolor=black}

\RequirePackage{graphicx}
\graphicspath{{images/}}

\newcommand{\studentid}[1]{\gdef\@studentid{#1}}
\newcommand{\coursecode}[1]{\gdef\@coursecode{#1}}
\newcommand{\coursename}[1]{\gdef\@coursename{#1}}
\newcommand{\articletype}[1]{\gdef\@articletype{#1}}
\newcommand{\faculty}[1]{\gdef\@faculty{#1}}
\newcommand{\department}[1]{\gdef\@department{#1}}
\newcommand{\UofR}{University of Regina}
\newcommand{\uofr}{\UofR}
\newcommand{\UOFR}{\MakeUppercase{\UofR}}
\newcommand{\uofraddress}{Regina, SK}

\newcommand{\signature}[2]{%
    \par
    \noindent#1\dotfill\null\\
    {\raggedleft #2\\}
}

\renewcommand{\maketitle}{%
    \begin{titlepage}
        \begin{center}
            \vspace*{2cm}
            
            \includegraphics[width=0.5\columnwidth]{UR_Logo_Primary_Full_COlour_RGB.png}
            
            \vspace*{2cm}
            
            \Large
            {\@coursecode}: {\@coursename}\\
            \large
            \@articletype
            
            \rule{\linewidth}{0.2mm}
            
            \vspace*{0.4cm}
            
            \huge
            \textbf{\@title}
            
            \rule{\linewidth}{0.2mm}
            
            \vspace*{1cm}
            
            \large
            Submitted by\\
            \Large
            \textbf{\@author}\\
            ID: \@studentid\\
            \large
            \@date
        \end{center}
        
        \vspace*{\fill}
        
        \begin{flushright}
            \small
            \@faculty\\
            \@department
        \end{flushright}
    \end{titlepage}
}
