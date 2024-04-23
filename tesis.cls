\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tesis}
\LoadClass[12pt]{report}

\RequirePackage[a4paper]{geometry} % Page size
\RequirePackage{afterpage}

\RequirePackage{blindtext} % lorems
\RequirePackage{xurl} % lorems
% \RequirePackage[none]{hyphenat} % no hyphenation

\RequirePackage{pgfkeys} % Commands with key, value args
\RequirePackage{blindtext}
\RequirePackage{multicol} %Multicolumn for pages
\RequirePackage{amsmath} %Equation enviroment
\RequirePackage{keyval} %Functions with key=val paramaters
\RequirePackage[final]{graphicx} %No move figueres
\RequirePackage{subcaption}
\RequirePackage{wrapfig}
\RequirePackage{float}
\RequirePackage{enumitem} % Square bullets

\RequirePackage{rotating} %Landscape sometimes
\RequirePackage{pdflscape} %Landscape sometimes
\RequirePackage[table, dvipsnames]{xcolor} %color columns
\RequirePackage{makecell} %color columns
\RequirePackage{comment} %Multi-line comments as enviroments
\RequirePackage[hidelinks]{hyperref} %Referencias cruzadas
\RequirePackage[nameinlink]{cleveref} %Referencias cruzadas

%Longtables with footnotes and titles and refs
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage[online]{threeparttable}
\RequirePackage{threeparttablex}
\RequirePackage{footnote}
\RequirePackage{multirow}

\RequirePackage{setspace}%Espaciado 1.5 puntos
\RequirePackage{titlesec} % Format titles
\RequirePackage{titletoc} % Format titles of the table of contents
\RequirePackage{cite}%Citas
\RequirePackage{listings}% Listings for code

%Grapichs with tikz
\RequirePackage{array}
\RequirePackage{tikz}
\RequirePackage{pgf-pie}
\usetikzlibrary{shapes.geometric, arrows, calc, fit, shapes.symbols}

\RequirePackage{tabularx}
\RequirePackage{appendix}
\RequirePackage{prettyref}
\RequirePackage{placeins}
\RequirePackage[skip=6pt, justification=centering, labelsep=period]{caption} %spaces for captions

\RequirePackage{svg}
\RequirePackage{calculator}
\RequirePackage{ifluatex}
\ifluatex
	\RequirePackage{pdftexcmds}
	\makeatletter
	\let\pdfstrcmp\pdf@strcmp
	\let\pdffilemoddate\pdf@filemoddate
	\makeatother
\fi
\RequirePackage{pdfpages}
\RequirePackage{tocloft}
\RequirePackage{xpatch}
\RequirePackage{calc}
\RequirePackage{pgfplots}

\spacing{1.5}

\makeatletter
\let\percent\@percentchar
\makeatother

\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}}

% full width captions 
\setlength\LTcapwidth{\linewidth}

%set counter for appendices
\newcounter{appendixno}
\def\theappendixno{\Alph{appendixno}}
\newcounter{historiacounter}
\newcommand{\historianumber}{\stepcounter{historiacounter}\arabic{historiacounter}}
\newcounter{requicounter}
\newcommand{\requinumber}{\stepcounter{requicounter}\arabic{requicounter}}
\newcounter{itercounter}
\newcommand{\iternumber}{\stepcounter{itercounter}\arabic{itercounter}}
\newcounter{acptcounter}
\newcommand{\acptnumber}{\stepcounter{acptcounter}\arabic{acptcounter}}





%No hyphenation
\sloppy % Makes TeX obey margins by stretching inter word spaces
\hyphenpenalty=10000
\exhyphenpenalty=10000

%No indent
\setlength{\parindent}{0pt}

% Square bullets
\setlist[itemize]{label=\rule[0.5ex]{0.6ex}{0.6ex}}

%Change "Table" to "Tabla" in crossreferences
\crefname{table}{Tabla}{Tablas}

%Márgenes: superior 3cm, inferior 2.5 cm, derecha 2.5 cm, izquierda 4 cm.
%Hoja A4
\geometry{
	top={30mm},
	bottom={25mm},
	right={25mm},
	left={40mm},
}
\setcounter{secnumdepth}{4}
%Subtítulos: Sólo con mayúscula la letra inicial, negrillas, sin punto final
% \titleformat{<command>}[<shape>]{<format>}{<label>}{<sec>}{<before-code>}[<after-code>]
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\titleformat{\section}[block]{\normalfont\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}[block]{\normalfont\bfseries}{\thesubsection}{1em}{}
\renewcommand{\thesubsubsection}{\alph{subsubsection}}
\titleformat{\subsubsection}[block]{\normalfont\bfseries\itshape}{\thesubsubsection.}{1em}{}
\titleformat{\paragraph}[runin]{\normalfont\bfseries\itshape}{\rule[0.5ex]{0.6ex}{0.6ex}}{1em}{}[.]


% \titlespacing{command}{left spacing}{before spacing}{after spacing}[right]
% Spacing: how to read {12pt plus 4pt minus 2pt}
% 12pt is what we would like the spacing to be.
% plus 4pt means that TeX can stretch it by at most 4pt.
% minus 2pt means that TeX can shrink it by at most 2pt.
% This is one example of the concept of, 'glue', in TeX.
%Capitulo
\titlespacing{\chapter}{0pt}{-20pt plus 0pt minus 0pt}{24pt plus 0pt minus 0pt}
%Segundo nivel 1.1
\titlespacing{\section}{0pt}{24pt plus 0pt minus 0pt}{24pt plus 0pt minus 0pt}
%Tercer nivel 1.1.1
\titlespacing{\subsection}{0pt}{24pt plus 0pt minus 0pt}{24pt plus 0pt minus 0pt}
%Cuarto nivel a
\titlespacing{\subsubsection}{0pt}{12pt plus 0pt minus 0pt}{12pt plus 0pt minus 0pt}
%Quinto nivel []Titulo
\titlespacing{\paragraph}{0pt}{12pt plus 0pt minus 0pt}{1ex}

%Format chapters
\renewcommand{\chaptername}{CAPÍTULO}
\renewcommand{\thechapter}{\Roman{chapter}}
\titleformat{\chapter}[block]{\normalfont\bfseries\centering}{CAPÍTULO \thechapter.}{1ex}{\normalfont\bfseries\MakeUppercase}



% Rename bibname
\renewcommand\bibname{Referencias Bibliográficas}

% CAPTIONS and REFERENCES
%Rename tables and figures caption
\renewcommand{\figurename}{Figura}
\renewcommand{\lstlistingname}{Código}
\renewcommand{\tablename}{Tabla}

%Count without chapter (III.x) -> (x)
\counterwithout{table}{chapter}
\counterwithout{figure}{chapter}
\counterwithout{equation}{chapter}
\AtBeginDocument{\counterwithout{lstlisting}{chapter}}


%pretty format for appendices
\newrefformat{app}{Anexo~\ref{#1}}
\newrefformat{table}{Tabla~\ref{#1}}
\newrefformat{lst}{Código~\ref{#1}}
\newrefformat{fig}{Figura~\ref{#1}}
\newrefformat{eq}{Ecuación~\ref{#1}}

\newcommand{\listappendixsname}{\hfill\bfseries índice de anexos\hfill}

\newlistof{appendixs}{apx}{\listappendixsname}

\newcommand{\appendixs}[1]{%
	\renewcommand{\theappendixs}{\Alph{appendixs}}
	\refstepcounter{appendixs}
	\begin{center}
		{Anexo \theappendixs. #1}
	\end{center}
	\setcounter{table}{0}
	\setcounter{figure}{0}
	\setcounter{lstlisting}{0}
	\addcontentsline{apx}{appendixs}
	{\protect\numberline{\theappendixs}#1}\par
}


% Format appendixs
\renewcommand{\cftafterapxtitle}{\hfill}
\renewcommand{\cftbeforeapxtitleskip}{-18pt}
\renewcommand{\cftafterapxtitleskip}{24pt}
\renewcommand{\cftapxtitlefont}{\normalfont\MakeUppercase}

% Format toc
\renewcommand{\contentsname}{\hfill\bfseries Índice general de contenidos\hfill}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftbeforetoctitleskip}{-14pt}
\renewcommand{\cftaftertoctitleskip}{24pt}
\renewcommand{\cfttoctitlefont}{\normalfont\MakeUppercase}

% Format lof
\renewcommand{\listfigurename}{\hfill\bfseries índice de figuras}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftbeforeloftitleskip}{-18pt}
\renewcommand{\cftafterloftitleskip}{24pt}
\renewcommand{\cftloftitlefont}{\normalfont\MakeUppercase}

% \renewcommand{\cftfigpresnum}{\figurename~} % note the double ‘l’
% \renewcommand{\cftfigaftersnum}{. }
% \addtolength{\cftfignumwidth}{4ex}

% Format lot
\renewcommand{\listtablename}{\hfill\bfseries índice de tablas}
\renewcommand{\cftafterlottitle}{\hfill}
\renewcommand{\cftbeforelottitleskip}{-16pt}
\renewcommand{\cftafterlottitleskip}{24pt}
\renewcommand{\cftlottitlefont}{\normalfont\MakeUppercase}

% \renewcommand\cfttabpresnum{\tablename~}% Use the name used for the tables as prefix
% \renewcommand{\cfttabaftersnum}{. }
% \setlength\cfttabnumwidth{\widthof{\tablename~\thetable.x}}% Prevent the title from overlapping the "Tabelle X" prefix

% remove identation
\setlength{\cftfigindent}{0pt}  % remove indentation from figures in lof
\setlength{\cfttabindent}{0pt}
\setlength{\cftsecindent}{0pt}% Remove indent for \section
\setlength{\cftsubsecindent}{0pt}% Remove indent for \subsection
\setlength{\cftsubsubsecindent}{0pt}% Remove indent for \subsubsection

% \renewcommand{\cftsecafterpnum}{\vskip12pt}
% \renewcommand{\cftsubsecafterpnum}{\vskip12pt}
% \renewcommand{\cfttabafterpnum}{\vskip12pt}
% \renewcommand{\cftfigafterpnum}{\vskip12pt}
% \renewcommand{\cftapxafterpnum}{\vskip12pt}



%Format table of content titles
\titlecontents{chapter}% <section-type>
[0pt]% <left>
{\vspace{2.2mm}}% <above-code>
{\bfseries\chaptername\ \thecontentslabel.\hspace{0.5em}}% <numbered-entry-format>
{\vspace{2.2mm}}% <numberless-entry-format>
{\bfseries\hfill\contentspage}[]% <filler-page-format>

\makeatletter
\xpatchcmd\l@lstlisting{1.5em}{0em}{}{}
\makeatother


\renewcommand\lstlistlistingname{ÍNDICE DE CÓDIGOS}
