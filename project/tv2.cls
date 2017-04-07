%------------------------ identification ---------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tv2}[2017/03/29 v1.0]
%------------------------ initial code -----------------------------------------
\RequirePackage[leqno]{amsmath}
\RequirePackage{amssymb,amsthm}%,amsfonts}
\RequirePackage{mathrsfs}
\RequirePackage[final]{graphicx}
\RequirePackage{color,rotating,indentfirst,paralist}
\RequirePackage{textcomp}
\RequirePackage{xspace}
%\RequirePackage{xstring}
\RequirePackage{array,calc,ifthen,multicol}
\RequirePackage{epstopdf}
\RequirePackage{enumerate,wrapfig}
\newboolean{twoup}
\newboolean{partchap}
%------------------------ declaration of options -------------------------------
\DeclareOption{twoup}{\setboolean{twoup}{true}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
%------------------------ execution of options ---------------------------------
\ProcessOptions\relax
%\RequirePackage{txfonts,pscyr}
%\renewcommand\rmdefault{ftm}
\RequirePackage[cp1251]{inputenc}
\RequirePackage[bulgarian]{babel}
\RequirePackage{cmap}
%------------------------ package loading --------------------------------------
\LoadClass[11pt,a4paper,leqno,twoside]{book}% the real code
%------------------------ main code --------------------------------------------
\RequirePackage[text={28cc,42cc},centering]{geometry}
\RequirePackage[perpage,stable]{footmisc}
\RequirePackage[pagestyles,newlinetospace]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{relsize}
\setcounter{secnumdepth}{1}
\RequirePackage{tocloft}
\RequirePackage[fit]{truncate}
%\RequirePackage[unicode,colorlinks,linkcolor=blue,citecolor=red]{hyperref}
%=====================================================================
\topmargin      20mm
\oddsidemargin  20mm
\evensidemargin 20mm
\marginparwidth  0pt
\marginparsep    0pt
\headheight      2cc
\headsep         1.5cc
\footskip        2cc
\parindent     1.5cc
\arraycolsep     2pt
\multlinegap     0pt
\unitlength      1mm
%\raggedbottom
%\frenchspacing
\renewcommand{\arraystretch}{1.2}
\AtBeginDocument{\ifthenelse{\boolean{twoup}}%
           {\addtolength\oddsidemargin{5mm}%
            \addtolength\evensidemargin{-5mm}}{}}%
%=====================================================================
%                        Page Style
%=====================================================================
\newpagestyle{main}{%
\renewcommand{\makeheadrule}{%
\rule[-.5\baselineskip]{\linewidth}{0.4pt}}%
%\headrule
   \sethead[\thepage][][\protect\truncate{26cc}{\chaptertitle}]  % even
           {\protect\truncate{26cc}{\chaptertitle}}{}{\thepage}} % odd
\def\sctntitle{Общи задачи}
\newpagestyle{prob}{%
\renewcommand{\makeheadrule}{%
\rule[-.8\baselineskip]{\linewidth}{0.4pt}}%
%\headrule
   \sethead[\thepage][\chaptertitle][]  % even
           {}{\sctntitle}{\thepage}} % odd
\newpagestyle{cont}{%
\renewcommand{\makeheadrule}{%
\rule[-.8\baselineskip]{\linewidth}{0.4pt}}%
%\headrule
   \sethead[\thepage][\contentsname][]  % even
           {}{\contentsname}{\thepage}} % odd
%=====================================================================
%                           Sections
%=====================================================================
\titleformat{\chapter}[display]
{\normalfont\Large\bfseries\boldmath\filcenter}
{\chaptertitlename\ \thechapter}{15pt}{\Large}
\titlespacing*{\chapter} {0pt}{40pt}{30pt}
\titleformat{\section}[block]
{\normalfont\large\bfseries\boldmath\filcenter}
{\S\ \arabic{section}.}{0.5em}{}
\titleformat{\subsection}[block]
{\normalfont\itshape\bfseries\boldmath\filcenter}
{\Roman{subsection}.}{0.5em}{}
\titleformat{\subsubsection}[block]
{\normalfont\slshape\filcenter}
{\arabic{subsubsection}.}{0.5em}{}
\titlespacing*{\subsubsection}{0pt}
{3.25ex plus 1ex minus .2ex}{3.25ex plus .1ex}
%%%%%
\titlecontents{section}
[2.5em] % ie, 1.5em (chapter) + 2.3em
{}
{\contentslabel[\S~\thecontentslabel.]{2.5em}}
{\hspace*{-2.5em}}
{\titlerule*[1pc]{.}\contentspage}
%%%%%
\titlecontents{subsection}
[4.5em] % ie, 1.5em (chapter) + 2.3em
{}
{\contentslabel[\thecontentslabel.]{2em}}
{}
{\titlerule*[1pc]{.}\contentspage}
%%%%%
\titlecontents{part}
[1pc]
{\addvspace{1.5pc}%
\filcenter}
{\large}
{\large\bfseries}
{} % That is, without page number
[\addvspace{.5pc}]
%%%%%
\titlecontents{chapter}
[4pc]
{\addvspace{1pc}}%
{\contentsmargin{0pt}%
\bfseries
\makebox[0pt][r]{\large\chaptername~\thecontentslabel.\enspace}%
\large}
{\contentsmargin{0pt}%
\large}
{\titlerule*[1pc]{.}\contentspage}
%{\quad\thepage}
[\addvspace{.5pc}]
%=====================================================================
%                           Figures
%=====================================================================
\unitlength=1mm
\RequirePackage[font=small,labelsep=period,center,tableposition=top]
               {caption}
\AtBeginDocument{\renewcommand{\figurename}{Черт.}}
%=====================================================================
%Useful abbreviations for multiletter commands. Their usage is optional!
%=====================================================================
\newcommand{\mc}{\multicolumn}
\newcommand{\cl}{\centerline}
\newcommand{\ol}{\overline}
\newcommand{\ds}{\displaystyle}
\newcommand{\la}{\langle}
\newcommand{\ra}{\rangle}
\newcommand{\bc}{\begin{center}}
\newcommand{\ec}{\end{center}}
\newcommand{\ba}{\begin{array}}
\newcommand{\ea}{\end{array}}
\newcommand{\bt}{\begin{tabular}}
\newcommand{\et}{\end{tabular}}
\newcommand{\beq}{\begin{equation}}
\newcommand{\eeq}{\end{equation}}
\newcommand\ph{\hphantom}
\newcommand\lb{\linebreak}
\newcommand\pb{\pagebreak}
%=====================================================================
%                        New commands
%=====================================================================
\newcommand{\up}[2]{\raisebox{#1}[0pt][0pt]{#2}}
\newcommand{\ga}{\ensuremath{\alpha}}             %алфа
\newcommand{\gb}{\ensuremath{\beta}}              %бета   
\newcommand{\gd}{\ensuremath{\delta}}             %делта 
\newcommand{\gl}{\ensuremath{\lambda}}            %ламбда
\newcommand{\eps}{\ensuremath{\varepsilon}}       %епсилон 
\newcommand{\gf}{\ensuremath{\varphi}}            %фи 
\newcommand{\gs}{\ensuremath{\sigma}}             %сигма
\newcommand\go{\ensuremath{\omega}}               %омега  
\newcommand\gO{\ensuremath{\Omega}}               %Омега
\newcommand\calA{\ensuremath{\mathscr{A}}}        %ръкописно A
\newcommand\frA{\ensuremath{\mathfrak{A}}}        %готическо A изглежда като а със завъртулка
\newcommand\calB{\ensuremath{\mathfrak{B}}}       %готическо B
\newcommand\calC{\ensuremath{\mathcal{C}}}        %калиграфско C
\newcommand\scrC{\ensuremath{\mathscr{C}}}        %ръкописно C
\newcommand\bbC{\ensuremath{\mathbf{C}}}          %болд C изглежда кухо
\newcommand\bbD{\ensuremath{\mathbf{D}}}          %болд D изглежда кухо
\newcommand\bbE{\ensuremath{\mathbf{E}}}          %болд E изглежда кухо
\newcommand\calF{\ensuremath{\mathfrak{F}}}       %готическо F
\newcommand\bbI{\ensuremath{\mathbf{I}}}          %болд I изглежда кухо
\newcommand\scrL{\ensuremath{\mathscr{L}}}        %ръкописно L
\newcommand\bbM{\ensuremath{\mathbf{M}}}          %болд M изглежда кухо
\newcommand\calP{\ensuremath{\mathscr{P}}}        %ръкописно P
\newcommand\bbP{\ensuremath{\mathbf{P}}}          %болд P изглежда кухо
\newcommand\bbQ{\ensuremath{\mathbf{Q}}}          %болд Q изглежда кухо
\newcommand{\R}{\ensuremath{\mathbf{R}}}          %болд R изглежда кухо множеството на реалните числа
\newcommand{\N}{\ensuremath{\mathbb{N}}}          %кухо N множеството на целите числа
\newcommand\bx{\ensuremath{\mathbf{x}}}           %болд x
\newcommand{\const}{\ensuremath{\mathrm{const}}}  %константа
\newcommand\OFP{\ensuremath{(\gO,\calF,\bbP)}}    %вероятностно пространство
\newcommand\mdot{\mathbin{.}}
\DeclareMathOperator{\sign}{sign}
\newcommand\te{т.\,е. }                           %т.е.
\newcommand\enl{\enlargethispage}
\newcommand\es{\varnothing}                       %Празното множество
\newcommand\wt{\widetilde}                        %Широка вълничка
\newcommand\simP{\overset{\bbP}{\sim}}
\let\angle=\sphericalangle
\newcommand\uup[2][1.2ex]{\raisebox{#1}[0pt][0pt]{#2}}
\newcommand\tup[2][c]{\bt{@{}#1@{}}#2\et}
\newcommand\dok{\textbf{Доказателство.} }
\newcommand\ins{\emph{Упътване}. }
\newcommand\sol{\emph{Решение}. }
\newcommand\question{\emph{Въпрос}. }
\newcommand\ans{\emph{Отговор}. }
\newcommand\otg{Отг. }
%=====================================================================
\renewcommand{\topfraction}{.99}
\renewcommand{\bottomfraction}{.99}
\renewcommand{\textfraction}{.01}
%=====================================================================
%                        Theorems
%=====================================================================
\newtheoremstyle{bg}% name
  {0pt}%       Space above
  {0pt}%       Space below
  {}%          Body font
  {\parindent}%Indent amount (empty = no indent, \parindent = para indent)
  {}%          Thm head font
  {.}%         Punctuation after thm head
  { }%         Space after thm head: " " = normal interword space;
        %       \newline = linebreak
  {}%          Thm head spec (can be left empty, meaning `normal')
\theoremstyle{bg}
\newtheorem{pr}{}%\label{pr:1.1}
%
\newtheoremstyle{bgbf}% name
  {0pt}%       Space above
  {0pt}%       Space below
  {}%          Body font
  {\parindent}%Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%         Punctuation after thm head
  { }%         Space after thm head: " " = normal interword space;
        %       \newline = linebreak
  {}%          Thm head spec (can be left empty, meaning `normal')
\theoremstyle{bgbf}
%\newtheorem{dfn}{Определение}%\label{dfn:1.1}
%
\newtheoremstyle{bgit}% name
  {0pt}%       Space above
  {0pt}%       Space below
  {}%          Body font
  {\parindent}%Indent amount (empty = no indent, \parindent = para indent)
  {\itshape}%  Thm head font
  {.}%         Punctuation after thm head
  { }%         Space after thm head: " " = normal interword space;
        %       \newline = linebreak
  {}%          Thm head spec (can be left empty, meaning `normal')
\theoremstyle{bgit}
%\newtheorem{note}{Забележка}%\label{note:1.2}
%\newtheorem*{Note}{Забележка}
%\newtheorem{cor}{Следствие}%\label{cor:1.1}
%\newtheorem*{Cor}{Следствие}
%
\newtheoremstyle{bgem}% name
  {0pt}%       Space above
  {0pt}%       Space below
  {\itshape}%          Body font
  {\parindent}%Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}%  Thm head font
  {.}%         Punctuation after thm head
  { }%         Space after thm head: " " = normal interword space;
        %       \newline = linebreak
  {}%          Thm head spec (can be left empty, meaning `normal')
\theoremstyle{bgem}
%\newtheorem{thm}{Теорема}%\label{thm:1.1}
%\newtheorem*{Theorem}{Теорема}
%\newtheorem{lemma}{Лема}%\label{l:1.1}
%
\newtheoremstyle{bgfns}% name
  {1ex}%       Space above
  {1ex}%       Space below
  {}%{\footnotesize}%Body font
  {\parindent}%Indent amount (empty = no indent, \parindent = para indent)
  {\itshape}%  Thm head font
  {.}%         Punctuation after thm head
  { }%         Space after thm head: " " = normal interword space;
        %       \newline = linebreak
  {}%          Thm head spec (can be left empty, meaning `normal')
\theoremstyle{bgfns}
%\newtheorem{ex}{Пример}%\label{ex:1.2.3}
%\newtheorem*{Ex}{Пример}%
%
\newenvironment{examples}{\par\smallskip\begin{footnotesize}\emph{Примери.}}
                         {\par\end{footnotesize}}
\newenvironment{problems}[1][Задачи]
               {\par\bigskip\cl{\textbf{#1}}%\markright{#1}
                \def\sctntitle{#1}
                \ifthenelse{\equal{\sctntitle}{Задачи}}%
                           {\relax}%
                           {\pagestyle{prob}}%
                \setcounter{pr}{0}\setcounter{equation}{0}\par\bigskip%
                \addcontentsline{toc}{section}{\hskip\cftsecnumwidth\,#1}}%
               {\par}%
\newenvironment{ena}{\begin{enumerate}[\indent a)]}{\end{enumerate}}
%=====================================================================
%\renewcommand{\cftsecpresnum}{\S~}
%\renewcommand{\cftchappresnum}{\chaptername~}
%\settowidth{\cftchapnumwidth}{\chaptername~IV}
%\cftpagenumbersoff{part}
\graphicspath{{./Figs/}}
\renewcommand\thefigure{\arabic{figure}}
\def\@removefromreset#1#2{\let\@tempb\@elt
   \expandafter\let\expandafter\@tempa\csname c@#1\endcsname
   \def\@elt##1{\expandafter\ifx\csname c@##1\endcsname\@tempa\else
         \noexpand\@elt{##1}\fi}%
   \expandafter\edef\csname cl@#2\endcsname{\csname cl@#2\endcsname}%
   \let\@elt\@tempb}
\@removefromreset{figure}{chapter}
\DeclareMathOperator{\cov}{cov}
\endinput
