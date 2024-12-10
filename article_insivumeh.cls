\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article_insivumeh}

\LoadClass{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish,mexico]{babel}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage[defaultfam,tabular,lining]{montserrat}
\RequirePackage[T1]{fontenc}
\RequirePackage{caption}
\RequirePackage{fancyhdr}
\RequirePackage{geometry}
\RequirePackage[dvipsnames,table,xcdraw]{xcolor}
\RequirePackage{titlesec}

\renewcommand*\oldstylenums[1]{{\fontfamily{Montserrat-TOsF}\selectfont #1}}

\fancypagestyle{insivumeh}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}    
    \newlength{\extratbmargin}
    \setlength{\extratbmargin}{25pt}
    
    \settoheight{\headheight}{\includegraphics[width=\paperwidth]{Figures/page_header.png}}
    \settoheight{\footskip}{\includegraphics[width=\paperwidth]{Figures/page_footline.png}}
    \setlength{\footskip}{\dimexpr\footskip+\extratbmargin\relax}

    \geometry{
        left=3cm,
        right=3cm,
        top=0cm,
        bottom=10pt,
        headsep=\extratbmargin,
        includehead,
        includefoot,
        headheight=\headheight,
        footskip=\footskip
    }
            
    \fancyhead[lo]{
        \hspace*{\the\dimexpr
        -\hoffset - 1in
        -\oddsidemargin \relax}%
        \includegraphics[width=\paperwidth]{Figures/page_header.png}
        }
        
    \fancyheadoffset[re]{\the\dimexpr \hoffset + 1in + \oddsidemargin \relax}
    \fancyhead[re]{
        \hspace*{\the\dimexpr - \hoffset - 1in - \evensidemargin \relax}%
        \scalebox{-1}[1]{\includegraphics[width=\paperwidth]{Figures/page_header.png}}
        }
            
    \fancyfoot[lo]{
        \hspace*{\the\dimexpr
        -\hoffset - 1in
        -\oddsidemargin \relax}%
        \includegraphics[width=\paperwidth]{Figures/page_footline.png}
        }
        
    \fancyfootoffset[re]{\the\dimexpr \hoffset + 1in + \oddsidemargin \relax}
    \fancyfoot[re]{
        \hspace*{\the\dimexpr - \hoffset - 1in - \evensidemargin \relax}%
        \includegraphics[width=\paperwidth]{Figures/page_footline.png}
        }
    
    % \fancyfoot[l]{%
    %     \hspace*{\the\dimexpr-\hoffset - 1in -\oddsidemargin \relax}%
    %     \includegraphics[width=\paperwidth]{Figures/page_footline.png}
    %     }
    
    \fancyfoot[c]{\thepage}
}

\pagestyle{insivumeh}



\definecolor{blue_insivumeh}{HTML}{1b2a55}



\newcommand{\code}[1]{\gdef\@code{#1}}
\code{}

\newcommand{\dep}[1]{\gdef\@dep{#1}}
\dep{}

\newcommand{\insi}[1]{\gdef\@insi{#1}}
\insi{Instituto Nacional de Sismología, Vulcanología, Meteorología e Hidrología - INSIVUMEH}

\renewcommand{\maketitle}{
    \begin{center}
        {\color{blue_insivumeh}\LARGE\textbf{\textsc{\@title}}}
        
        {\color{blue_insivumeh}\MakeUppercase{\@code}}
        \vspace{5pt}
        
        {\@dep}
        
        {\@insi}
        
        \vspace{5pt}
        {\@date}
        
        {\footnotesize\@author}
        \vspace{12pt}
    \end{center}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Redefine titles
\titleformat{\section}
  {\color{blue_insivumeh}\normalfont\Large\bfseries}
  {\thesection}{1em}{}

\titleformat{name=\section,numberless}
  {\color{blue_insivumeh}\normalfont\LARGE\bfseries}
  {}{0em}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

