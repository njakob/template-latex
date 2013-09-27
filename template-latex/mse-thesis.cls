\NeedsTeXFormat{LaTeX2e}
\newcommand{\mse@classversion}{2.0}
\ProvidesPackage{./template-latex/mse-thesis}[2013/09/17 MSE Template LaTex, \mse@classversion]

% Options Definitions ######################################################

\RequirePackage{kvoptions}
\SetupKeyvalOptions{
	prefix=mse@option@
}

\DeclareStringOption[fr, en]{lang}
\DeclareStringOption[tic, tin]{major}
\DeclareStringOption[semester, thesis]{type}
\DeclareStringOption{path}
\DeclareBoolOption[false]{confidential}
\DeclareBoolOption[false]{skipbla}

\DeclareDefaultOption{
	\PassOptionsToClass{\CurrentOption}{report}
}

\ProcessKeyvalOptions*

\LoadClass[12pt, a4paper, titlepage]{report}

% Options Processing #######################################################

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[a4paper]{geometry}
\RequirePackage{pdflscape}
\RequirePackage{hyperref}
\RequirePackage{xspace}
\RequirePackage{graphicx}
\RequirePackage{anysize}
\RequirePackage{fancyhdr}
\RequirePackage{listings}
\RequirePackage[style=ieee, backend=biber]{biblatex}
\RequirePackage{csquotes}
\RequirePackage{setspace}

\ifnum\pdf@strcmp{\mse@option@lang}{fr}=0
	\RequirePackage[frenchb]{babel}
    \input{\mse@option@path/mse-thesis-fr.lang}
\else
	\RequirePackage[english]{babel}
    \input{\mse@option@path/mse-thesis-en.lang}
\fi

\ifnum\pdf@strcmp{\mse@option@type}{semester}=0
	\newcommand{\mse@type}{\mse@str@semester}
\else
	\newcommand{\mse@type}{\mse@str@thesis}
\fi

\ifnum\pdf@strcmp{\mse@option@major}{tic}=0
	\newcommand{\mse@major}{\mse@str@tic}
\else
	\newcommand{\mse@major}{\mse@str@tin}
\fi

% Commands Definitions #####################################################

\newcommand{\mse@author}{}
\newcommand{\mse@email}{}
\renewcommand{\author}[2]{
   \renewcommand{\mse@author}{#1}
   \renewcommand{\mse@email}{#2}
}
\newcommand\mse@institute{}
\newcommand\mse@institute@short{}
\newcommand{\institute}[2]{
   \renewcommand{\mse@institute}{#1}
   \renewcommand{\mse@institute@short}{#2}
}
\newcommand\mse@professor{}
\newcommand\mse@professor@email{}
\newcommand\mse@professor@institute{}
\newcommand{\professor}[3]{
   \renewcommand{\mse@professor}{#1}
   \renewcommand{\mse@professor@email}{#2}
   \renewcommand{\mse@professor@institute}{#3}
}
\newcommand\mse@supervisor{}
\newcommand\mse@supervisor@email{}
\newcommand\mse@supervisor@institute{}
\newcommand{\supervisor}[3]{
   \renewcommand{\mse@supervisor}{#1}
   \renewcommand{\mse@supervisor@email}{#2}
   \renewcommand{\mse@supervisor@institute}{#3}
}
\newcommand\mse@expert{}
\newcommand\mse@expert@email{}
\newcommand\mse@expert@institute{}
\newcommand{\expert}[3]{
   \renewcommand{\mse@expert}{#1}
   \renewcommand{\mse@expert@email}{#2}
   \renewcommand{\mse@expert@institute}{#3}
}
\newcommand\mse@proposedby{}
\newcommand\mse@proposedby@email{}
\newcommand\mse@proposedby@institute{}
\newcommand{\proposedby}[3]{
   \renewcommand{\mse@proposedby}{#1}
   \renewcommand{\mse@proposedby@email}{#2}
   \renewcommand{\mse@proposedby@institute}{#3}
}
\newcommand\mse@advisor{}
\newcommand{\advisor}[1]{
   \renewcommand{\mse@advisor}{#1}
}
\newcommand\mse@headofmse{}
\newcommand{\headofmse}[1]{
   \renewcommand{\mse@headofmse}{#1}
}
\newcommand\mse@version{}
\newcommand{\version}[1]{
   \renewcommand{\mse@version}{#1}
}

% clear a double page for a new chapter - when there isn't any content in a page, this
% would automaticly clear headers
\let\origdoublepage\cleardoublepage
\newcommand{\clearemptydoublepage}{
   \clearpage
   {\pagestyle{empty}\origdoublepage}
}

% table of contents helper
% force toc page style -- http://tex.stackexchange.com/questions/5787/table-of-contents-with-page-style-empty
\addtocontents{toc}{\protect\thispagestyle{fancy}}
\newcommand{\inserttoc}{
   \setcounter{tocdepth}{2}
   \tableofcontents
   \clearemptydoublepage
}

% list of figure helper
\newcommand{\insertlof}{
   \newpage
   \phantomsection
   \addcontentsline{toc}{chapter}{\listfigurename}
   \listoffigures\thispagestyle{fancy}
}

% list of table helper
\newcommand{\insertlot}{
   \newpage
   \phantomsection
   \addcontentsline{toc}{chapter}{\listtablename}
   \listoftables\thispagestyle{fancy}
}

% list of listening helper
\newcommand{\insertlol}{
   \newpage
   \phantomsection
   \addcontentsline{toc}{chapter}{\lstlistlistingname}
   \lstlistoflistings\thispagestyle{fancy}
}

% bibliography helper
\newcommand{\insertbibliography}{
   \nocite{*}
   \newpage
   \phantomsection
   \printbibliography[heading=bibintoc]
   \thispagestyle{fancy}
}

% More Package Setup #######################################################

% group listings into the table of listing by chapter
\let\Chapter\chapter
\def\chapter{\addtocontents{lol}{\protect\addvspace{10pt}}\Chapter}

% proper header height
\setlength{\headheight}{15pt}

% Title Page ###############################################################

\AtBeginDocument{

   \pagestyle{empty}

   \begin{center}
      \parbox[c][0.98\textheight][t]{1.0\textwidth}{
         \begin{center}

         \vspace*{-2cm}
         \begin{minipage}[c]{0.5\textwidth}
            \begin{flushleft}
               \includegraphics[width=200px]{\mse@option@path/gfx/mse.eps}
            \end{flushleft}
         \end{minipage}
         \hfill
         \begin{minipage}[c]{0.4\textwidth}
            \begin{flushright}
               \includegraphics[width=150px]{\mse@option@path/gfx/hesso.eps}
            \end{flushright}
         \end{minipage}
         \vspace*{1.5cm}
         \ifmse@option@confidential \MakeUppercase{\mse@str@confidential} \fi
         \vspace*{1.5cm}

         {\large \bf Master of Science HES-SO in Engineering}\\[1.5ex]
         {\mse@str@major: \mse@major}
         \vspace{1.5cm}

         {\Huge \bf \@title \par}
         \vspace{2ex} 
         {\large \mse@type}
         \vspace{0.75cm} 

         \if\mse@institute \else
            \begin{minipage}[c]{0.6\textwidth}
                \centering \mse@str@supportedby \textit \mse@institute, \textit \mse@institute@short
            \end{minipage}
         \fi
         \vspace{2cm}

         {\large \mse@author}\\
         \if\mse@email \else \texttt \mse@email \fi
         \vspace{2.5cm} 

         \begin{minipage}[t]{0.45\textwidth}
            \begin{flushleft}
               {\bf \mse@str@professor}\\
               \mse@professor, {\textit \mse@professor@institute}\\
               {\texttt \mse@professor@email}\\
               \vspace{1cm} 
               \if\mse@supervisor \else
                  {\bf \mse@str@supervisor}\\
                  \mse@supervisor, {\textit \mse@supervisor@institute}\\
                  {\texttt \mse@supervisor@email}
               \fi
            \end{flushleft}
         \end{minipage}
         \hfill
         \begin{minipage}[t]{0.45\textwidth}
            \begin{flushright}
               {\bf Expert}\\
               \mse@expert, {\textit \mse@expert@institute}\\
               {\texttt \mse@expert@email}
            \end{flushright}
         \end{minipage}

         \vfill
         {HES-SO//Master, \@date, \mse@version}

         \end{center}
      }
   \end{center}  
   \cleardoublepage

   \ifmse@option@skipbla \else

      \pagestyle{empty}

      \begin{center}
         \parbox[c][\textheight][t]{1.0\textwidth}{
            \begin{center}

               \mse@str@proposedby\\[2ex]
               \mse@proposedby, {\textit \mse@proposedby@institute}\\
               {\texttt \mse@proposedby@email}
               \vspace{2.5cm} 

               \begin{minipage}[t]{0.49\textwidth}
                  \begin{flushleft}
                     {\bf \mse@str@advisor}\\
                     \mse@advisor\\
                  \end{flushleft}
               \end{minipage}
               \hfill
               \begin{minipage}[t]{0.49\textwidth}
                  \begin{flushright}
                     {\bf \mse@str@headofmse}\\
                     \mse@headofmse\\
                  \end{flushright}
               \end{minipage}

            \end{center}
         }
      \end{center}
      \cleardoublepage

   \fi

   \pagestyle{fancy}
   \fancyfoot{}
   \fancyfoot[LE,RO]{\thepage}
   \fancyfoot[LO]{\mse@author\ --- \@title}
   \renewcommand{\headrulewidth}{1.0pt}
   \renewcommand{\footrulewidth}{0.4pt}
}

\endinput