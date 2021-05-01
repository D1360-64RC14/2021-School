\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SchoolBook}[2021/04/21 - Created during quarentine to online studying]

% ================= Comandos Disponíveis =================
% -- \heading{<int>}{<string>}
% -- -- Formatação do tamanho do texto. Partindo do nível 1 (maior)
% -- -- Agumentos:
% -- -- -- #1 <int>    : Nível do heading. 1..6;
% -- -- -- #2 <string> : Texto a ser formatado.
%
% -- \title{<int>}{<string>}
% 
% ========================================================


\LoadClass[12pt]{article}

\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage[main=portuguese,english]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}
\RequirePackage[autostyle=false, style=english]{csquotes}
\RequirePackage{hyperref}
\RequirePackage{enumerate}
\RequirePackage{enumitem}

\geometry{
    layout=a4paper, %      A4 Paper        %
    lmargin=0.75in, %    Left Margin       %
    rmargin=0.75in, %   Right Margin       %
    tmargin=1in,    %     Top Margin       %
    bmargin=1.5in,  %  Bottom Margin       %
    headsep=0.2in,  %  Header Separation   %
    footskip=0pt,   %  Footer Skipping     %
}

\setmainfont{Calibri}

% \hypersetup{
%     bookmarks=true
% }

\parindent=24pt
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\MakeOuterQuote{"}

\renewenvironment{day}[1]{
    \newpage
    \fancyhf{}
    \rhead{\heading{5}{#1}}
}{}
% \addcontentsline{toc}{chapter}{#1}

\newcommand{\heading}[2]{
       \ifx #11 {\fontsize{24.00pt}{26.880pt}\selectfont#2}
    \fi\ifx #12 {\fontsize{18.00pt}{20.160pt}\selectfont#2}
    \fi\ifx #13 {\fontsize{14.04pt}{15.725pt}\selectfont#2}
    \fi\ifx #14 {\fontsize{12.00pt}{13.440pt}\selectfont#2}
    \fi\ifx #15 {\fontsize{09.96pt}{11.155pt}\selectfont#2}
    \fi\ifx #16 {\fontsize{08.04pt}{09.005pt}\selectfont#2}
    \fi
}
\renewcommand{\title}[2]{
    \begin{center}
        \bf
        \heading{#1}{#2}
    \end{center}
}
\newcommand{\response}{
    \vspace{3pt}\newline\textbf{R:}
}

\newcommand{\colorx}[2]{{\color{#1}#2}}
