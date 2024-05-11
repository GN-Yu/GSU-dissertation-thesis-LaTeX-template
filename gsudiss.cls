%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        gsudiss.sty (July 2006)----Varendra Das, GSU
%        das@chara.gsu.edu
%        This style file should be used for the on-line submission of
%        your dissertation.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This Dissertation style file was developed for the College Arts &
% Sciences department, Georgia State University, by Varendra Das, for
% graduation during the Summer, 2006. This file is made up of various
% macros and packages to make the outline and formatting of your
% dissertation easier. It is by no means \applicable to the entire
% Georgia State System. Those of you who want to use latex to prepare
% your dissertation, and who are not from the College of Arts &
% Sciences, however, can use this style file as a guide to make their
% own. This file is developed to allow a wide range of formating
% options, but users should bare in mind that the dissertation guide
% allows limited formatting, other than that which is used in the
% default dissertation.tex file. Note: This style file does not guarantee the
% satisfaction of all requirements specified by the College of Arts and
% Sciences, Georgia State University. Styles change on a yearly basis
% and it is up to you (the writer or author) to follow all the
% guidelines specified in the ``Dissertation Preparation Guideline'' for
% the College of Arts and Sciences, and any other formatting or
% requirements specified by your department.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% The packages below are required for the normal running of this style
% file and should not be deleted or commented out, unless you know
% exactly what you are doing.
\PassOptionsToClass{openany}{report}
\NeedsTeXFormat{LaTeX2e}[2005/07/01]
\ProvidesClass{gsudiss}[2006/07/01]
\typeout{}
\typeout{++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++}
\typeout{Dissertation class file (gsudiss.cls) version 1.00, July 2006}
\typeout{for Georgia State University Ph.D. dissertations.}
\typeout{This class file was developed to conform to the requirements}
\typeout{of the Graduate Office for the College of Arts and Sciences}
  \typeout{at Georgia State University for the year 2006. Since the}
\typeout{requirements change slightly from year to year, it is up to the}
\typeout{writer/author of his/her dissertation to make sure that such}
\typeout{requirements are always met. The author of this class file}
\typeout{will not accept any responsibility for failed requirements}
\typeout{due to the usage of this class file.}
\typeout{++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++}
\typeout{URL: http://www.chara.gsu.edu/(tilde)das/gsudiss.cls}
\typeout{email: das@chara.gsu.edu}
\typeout{}

\RequirePackage{calc}
\RequirePackage{setspace}
\RequirePackage{ifthen}
\let\lspace\gsuspacing
\def\abbrevskip{2.000}
\def\printcertifypage{no}
\def\draftmode{no}
\def\certifypage{}
\def\print@draft{}
\def\fontify{}
\def\geo{no}
\def\onlinesubmission{yes}
\def\chapterpage@number{bottom}
\DeclareOption{online}{%
  \def\onlinesubmission{yes}
  \def\chapterpage@number{top}}
\newlength{\linespace}
\newlength{\addedspace}
\DeclareOption{dayroman}{%
  \def\fontify{day}}
\DeclareOption{bookman}{%
  \def\fontify{pbk}}
\DeclareOption{chancery}{%
  \def\fontify{pzc}}
\DeclareOption{courier}{%
  \def\fontify{pcr}}
\DeclareOption{helvetica}{%
  \def\fontify{phv}}
\DeclareOption{palatino}{%
  \def\fontify{ppl}}
\DeclareOption{newcent}{%
  \def\fontify{pnc}}
\DeclareOption{times}{%
  \def\fontify{ptm}}
\DeclareOption{charter}{%
  \def\fontify{bch}}
\DeclareOption{certify}{%
  \def\printcertifypage{no}}
\DeclareOption{drafts}{%
  \def\draftmode{yes}}
\DeclareOption{pagenumtop}{%
  \ifthenelse{\equal{\onlinesubmission}{yes}}
  {\def\chapterpage@number{top}}{}}
\DeclareOption{pagenumbottom}{%
  \ifthenelse{\equal{\onlinesubmission}{no}}
  {\def\chapterpage@number{bottom}}{}}
\DeclareOption{pagenumnone}{%
  \ifthenelse{\equal{\onlinesubmission}{no}}
  {\def\chapterpage@number{none}}{}}
\DeclareOption{gsu}{%
  \setlength{\linespace}{14.5pt}
  \let\lspace\gsuspacing\def\abbrevskip{2.000}}
\DeclareOption{double}{%
  \setlength{\linespace}{9.5pt}
  \let\lspace\doublespacing\def\abbrevskip{1.655}}
\DeclareOption{oneandhalf}{%
  \setlength{\linespace}{3.7pt}
  \let\lspace\onehalfspacing\def\abbrevskip{1.241}}
\DeclareOption{single}{%
  \setlength{\linespace}{0.pt}
  \let\lspace\singlespacing\def\abbrevskip{1.000}}
\DeclareOption{11pt}{\PassOptionsToClass{11pt}{report}}
\DeclareOption{12pt}{\PassOptionsToClass{12pt}{report}}
\DeclareOption{doubleside}{%
  \ifthenelse{\equal{\onlinesubmission}{yes}}
  {\def\geo{yes}\PassOptionsToClass{openany}{report}}{}
}
%%%%%%%%%%%%%%%%%%%
\PassOptionsToClass{openany}{report}
\PassOptionsToClass{hidelinks}{report}
%%%%%%%%%%%%%%%%%%
\ProcessOptions
\LoadClass{report}

\newif\ifelvpt
\ifcase \@ptsize \or \elvpttrue
\fi

\ifthenelse{\equal{\geo}{yes}}{\RequirePackage[twoside]{geometry}}
{\RequirePackage{geometry}}
\geometry{letterpaper,%
  bindingoffset=0.0in,left=1.0in,right=1.in,%
  width=6.in,includemp,marginparwidth=0.in,marginparsep=0.in,%
  top=1.5in,bottom=1.0in,headsep=0.375in,headheight=0.125in}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage{tabto}
\RequirePackage{xspace}
\RequirePackage{relsize}
\RequirePackage{color}

\ifelvpt
  \ifthenelse{\equal{\lspace}{\gsuspacing}}
  {\setlength{\linespace}{10.pt}\def\abbrevskip{1.718}}{}
  \ifthenelse{\equal{\lspace}{\doublespacing}}
  {\setlength{\linespace}{8.3pt}\def\abbrevskip{1.618}}{}
  \ifthenelse{\equal{\lspace}{\onehalfspacing}}
  {\setlength{\linespace}{2.8pt}\def\abbrevskip{1.213}}{}
  \ifthenelse{\equal{\lspace}{\singlespacing}}
  {\setlength{\linespace}{0.pt}\def\abbrevskip{1.000}}{}
\fi

\newenvironment{squeeze}[1]{%
  \par
  \begingroup
  \setlength{\@tempdima}{\baselinestretch pt * \real{#1}}
  \setstretch{\strip@pt\@tempdima} %
}{%
  \restore@spacing
}

\ifthenelse{\equal{\draftmode}{yes}}
{\def\printdraft#1{\def\print@draft{#1}}}
{\def\printdraft#1{}}

\RequirePackage[titles]{tocloft}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand{\cftchapleader}{\bfseries\cftdotfill{\cftchapdotsep}}
\renewcommand{\cftbeforechapskip}{\linespace}
\renewcommand{\cftbeforesecskip}{0.7\linespace}
\renewcommand{\cftbeforesubsecskip}{0.4\linespace}
\renewcommand{\cftbeforesubsubsecskip}{0.2\linespace}
\renewcommand{\cftbeforefigskip}{0.7\linespace}
\renewcommand{\cftbeforetabskip}{0.7\linespace}

\RequirePackage[toc,page]{appendix}
\let\appendicesnew=\appendices
\let\endappendicesnew=\endappendices

\let\appendixnew\appendix
\renewenvironment{appendix}{%
  \renewcommand{\appendixpagename}{APPENDIX}
  \renewcommand{\appendixtocname}{APPENDIX}
  \appendixpage
    \renewcommand\thesection{\@Alph\c@section}%
  \appendixnew}{}

\newif\if@mainmatter \@mainmattertrue
\newcommand\frontmatter{%
%  \cleardoublepage
  \@mainmatterfalse
  \lspace
  \pagenumbering{roman}}

\newcommand\mainmatter{%
%  \cleardoublepage
  \@mainmattertrue
  \lspace
  \pagenumbering{arabic}}

\newenvironment{midpage}{\vspace*{\fill}}{\vspace*{\fill}}

\renewenvironment{quotation}[1][0.7]
 {\newcommand\textwidthfactor{#1}\startquotation}
 {\stopquotation}

\newcommand{\startquotation}[1][1.5]{%
  \@ifnextchar[{\startquotation@ii[#1]}{\startquotation@ii[#1][c]}%]
}
\def\startquotation@ii[#1][#2]{%
  \@ifnextchar[{\startquotation@iii[#1][#2]}{\startquotation@iii[#1][#2][]}%]
}
\def\startquotation@iii[#1][#2][#3]{%
  \ifthenelse{\equal{#2}{f}}{\def\justify{}}{}
  \ifthenelse{\equal{#2}{l}}{\let\justify\raggedright}{}
  \ifthenelse{\equal{#2}{r}}{\let\justify\raggedleft}{}
  \ifthenelse{\equal{#2}{c}}{\let\justify\centering}{}
  \ifthenelse{\equal{#3}{}}{\let\qfont\normalfont}{\def\qfont{\fontfamily{#3}\selectfont}}
%  \cleardoublepage
  \thispagestyle{empty}
  \if@twoside
    \addtocounter{page}{-2}
  \else
    \addtocounter{page}{-1}
  \fi
  \begin{midpage}
    \begin{center}
      \begin{minipage}[t]{\textwidthfactor\textwidth}
        \setstretch{#1}\justify\qfont
}

\newcommand{\stopquotation}{%
\end{minipage}
\end{center}
\end{midpage}\clearpage}

\newcommand{\chapternumsize}[1]{%
  \let\chapternumbersize #1}

\newcommand{\chapterheadsize}[1]{%
  \let\chapterheadingsize #1}

\newcommand{\chaptertitlesize}[1]{%
  \let\chaptertitleheadsize #1}

\newcommand{\beforechapterheadname}[1]{%
  \renewcommand{\chaptertitlename}{#1}}

\newcommand{\afterchapterheadname}[1]{%
  \def\afterchaptername{#1}}

\newcommand{\chapterheadpos}[1]{%
  \ifthenelse{\equal{#1}{right}}{\let\chapterheadposition\filleft}{}
  \ifthenelse{\equal{#1}{left}}{\let\chapterheadposition\filright}{}
  \ifthenelse{\equal{#1}{center}}{\let\chapterheadposition\filcenter}{}}

\newcommand{\chaptertitlepos}[1]{%
  \ifthenelse{\equal{#1}{right}}{\let\chaptertitleposition\filleft}{}
  \ifthenelse{\equal{#1}{left}}{\let\chaptertitleposition\filright}{}
  \ifthenelse{\equal{#1}{center}}{\let\chaptertitleposition\filcenter}{}}

\newcommand{\chapterheadverticalspace}[1]{%
  \newlength{\chapterheadspace}
  \ifthenelse{\equal{\onlinesubmission}{yes}}
  {\setlength{\chapterheadspace}{-4.2em}}{\setlength{\chapterheadspace}{#1}}}

\newcommand{\chapterbetweentitlespace}[1]{%
  \newlength{\chapterbetweentitle}
  \setlength{\chapterbetweentitle}{#1}}

\newcommand{\titleheadverticalspace}[1]{%
  \newlength{\titleheadspace}
  \setlength{\titleheadspace}{#1}}

\newcommand{\sectiontitlesize}[1]{%
  \let\sectionheadsizes #1}

\newcommand{\sectiontitlepos}[1]{%
  \ifthenelse{\equal{#1}{right}}{\let\sectionheadposition\filleft}{}
  \ifthenelse{\equal{#1}{left}}{\let\sectionheadposition\filright}{}
  \ifthenelse{\equal{#1}{center}}{\let\sectionheadposition\filcenter}{}}

\newcommand{\sectiontitleverticalspace}[1]{%
  \newlength{\sectionheadspace}
  \setlength{\sectionheadspace}{#1}}

\newcommand{\subsectiontitlesize}[1]{%
  \let\subsectionheadsizes #1}

\newcommand{\subsectiontitlepos}[1]{%
  \ifthenelse{\equal{#1}{right}}{\let\subsectionheadposition\filleft}{}
  \ifthenelse{\equal{#1}{left}}{\let\subsectionheadposition\filright}{}
  \ifthenelse{\equal{#1}{center}}{\let\subsectionheadposition\filcenter}{}}

\newcommand{\subsectiontitleverticalspace}[1]{%
  \newlength{\subsectionheadspace}
  \setlength{\subsectionheadspace}{#1}}

\newcommand{\subsubsectiontitlesize}[1]{%
  \let\subsubsectionheadsizes #1}

\newcommand{\subsubsectiontitlepos}[1]{%
  \ifthenelse{\equal{#1}{right}}{\let\subsubsectionheadposition\filleft}{}
  \ifthenelse{\equal{#1}{left}}{\let\subsubsectionheadposition\filright}{}
  \ifthenelse{\equal{#1}{center}}{\let\subsubsectionheadposition\filcenter}{}}

\newcommand{\subsubsectiontitleverticalspace}[1]{%
  \newlength{\subsubsectionheadspace}
  \setlength{\subsubsectionheadspace}{#1}}

\newcommand{\prettify}[1]{%
  \ifthenelse{\equal{\onlinesubmission}{yes}}
  {\def\formatting{}}{\def\formatting{\fontfamily{#1}\selectfont}}}

%%%%%%%%%%%%%%%%%%%%
\newlength{\extraSpace}
\setlength{\extraSpace}{2.5em} % Adjust the value as needed
%%%%%%%%%%%%%%%%%%%%

\RequirePackage[pagestyles]{titlesec}
\setcounter{secnumdepth}{3}
\newpagestyle{main}[]{
  \sethead[][][]{\print@draft}{}{\thepage}}
\pagestyle{main}
\renewpagestyle{plain}[]{
  \ifthenelse{\equal{\chapterpage@number}{top}}
  {\setfoot[][][]{}{}{}\sethead[][][]{\print@draft}{}{\thepage}}{}
  \ifthenelse{\equal{\chapterpage@number}{bottom}}
  {\setfoot[][][]{}{\smash{\raisebox{\footskip}{\thepage}}}{}\sethead[][][]{\print@draft}{}{}}{}
  \ifthenelse{\equal{\chapterpage@number}{none}}
  {\setfoot[][][]{}{\smash{\raisebox{\footskip}{\thepage}}}{}\sethead[][][]{\print@draft}{}{}}{}}

\renewcommand*\chapter{\if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{plain}%
  \ifthenelse{\equal{\chapterpage@number}{bottom}}
  {\enlargethispage{-\footskip}}{}
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@schapter}

\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
  \refstepcounter{chapter}%
  \typeout{\@chapapp\space\thechapter.}%
  \ifthenelse{\equal{\chapterpage@number}{none}}
  {\thispagestyle{empty}}{}
  \ifthenelse{\equal{\appendixpagename}{Appendix}}
  {\renewcommand{\thefigure}{A.\arabic{figure}}
    \renewcommand{\thetable}{A.\arabic{table}}
    \def\thechapter{}\def\chaptertitlename{}\def\afterchaptername{}
    \addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}#1}}
  {\addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}#1}}%
  \else
  \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \if@twocolumn
  \@topnewpage[\@makechapterhead{#2}]%
  \else
  \@makechapterhead{\formatting#2}%
  \@afterheading
  \fi}

\def\@schapter#1{\if@twocolumn
  \@topnewpage[\@makeschapterhead{#1}]%
  \else
  \ifthenelse{\equal{\chapterpage@number}{none}}
  {\enlargethispage{-\footskip}}{}
  \@makeschapterhead{\formatting#1}%
  \@afterheading
  \fi}

\newcommand{\setfigname}[1]{%
  \ifthenelse{\equal{\onlinesubmission}{yes}}
  {\renewcommand{\figurename}{Figure}}
  {\renewcommand{\figurename}{#1}}}

\newcommand{\settabname}[1]{%
  \ifthenelse{\equal{\onlinesubmission}{yes}}
  {\renewcommand{\tablename}{Table}}
  {\renewcommand{\tablename}{#1}}}

% Different font in captions
\newcommand{\setcapfont}[1]{%
  \ifthenelse{\equal{\onlinesubmission}{yes}}
  {\newcommand{\captionfonts}{\normalfont}}
  {\newcommand{\captionfonts}{\fontfamily{#1}\selectfont}}}

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{{\captionfonts #1: #2}}%
  \ifdim \wd\@tempboxa >\hsize
    {\captionfonts #1: #2\par}
  \else
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

% Change the title font type by adding commands before \chaptertitleheadsize (or equivalent).
% For \chapter I have \bfseries (boldface) which is the default

\titleformat{\chapter}[display]
{\chapterheadingsize}
{\chapterheadposition\bfseries\chaptertitlename\hspace{0em}
{\chapternumbersize\thechapter}\ \afterchaptername}{\chapterbetweentitle}
{\chaptertitleposition\bfseries\chaptertitleheadsize\singlespace}[]

% For numberless \chapter (the Dedication/Acknowledgements/ToC title) I have \bfseries (boldface).  This does NOT seem to affect the title or abstract displayed.

\titleformat{name=\chapter,numberless}[display]
{\chapterheadingsize}
{\color{white}\chapterheadposition\chaptertitlename\hspace{0em}
  {\chapternumbersize\thechapter}\ \afterchaptername}{\chapterbetweentitle}
{\chaptertitleposition\bfseries\chaptertitleheadsize\singlespace}[]

\titlespacing*{\chapter}{0pt}{\chapterheadspace}{\titleheadspace}

\titlespacing*{name=\chapter,numberless}{0pt}{\chapterheadspace}{\titleheadspace}

% For \section I have \bfseries (boldface)

\titleformat{\section}{\singlespace\sectionheadposition\bfseries\sectionheadsizes\formatting}
{\sectionheadsizes\thesection}{0.5em}{}

\titlespacing*{\section}{0pt}{1em}{\sectionheadspace}

% For \subsection I have \bfseries\itshape (boldface italics)

\titleformat{\subsection}{\singlespace\subsectionheadposition\bfseries\itshape\subsectionheadsizes\formatting}
{\thesubsection}{0.5em}{}

\titlespacing*{\subsection}{0pt}{1em}{\subsectionheadspace}

% For \subsubsection I have \itshape (italics)

\titleformat{\subsubsection}{\singlespace\itshape\subsectionheadsizes\formatting}
{\thesubsubsection}{0.5em}{}

\titlespacing*{\subsubsection}{0pt}{1em}{\subsubsectionheadspace}

% For \paragraph I have \mdseries (normal font).  Note that \paragraph does not come with numbering, you'll either have to hand-number, or overwrite some core LaTeX packages to make a \subsubsubsection.

\titleformat{\paragraph}{\singlespace\mdseries\subsectionheadsizes\formatting}
{\theparagraph}{0.5em}{}

\titlespacing*{\paragraph}{0pt}{1em}{\subsectionheadspace}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PRELIMINARY DATA (AND/OR THEIR DEFAULTS) FOR DISSERTATION %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\author{%
  \@ifnextchar({\author@i}{\author@i(The author's name is required)}%)
}
\def\author@i(#1){%
  \def\writer{#1}
}

\def\title{%
  \@ifnextchar({\title@i}{\title@i(The title of the Dissertation is required)}%)
}
\def\title@i(#1){%
  \def\titlediss{\formatting#1}
}

\def\titlesize{%
  \@ifnextchar({\titlesize@i}{\titlesize@i()}%)
}
\def\titlesize@i(#1){%
  \@ifnextchar({\titlesize@ii(#1)}{\titlesize@ii(#1)()}%)
}
\def\titlesize@ii(#1)(#2){%
  \ifthenelse{\equal{#1}{}}{\let\titlefontsize\LARGE}
  {\ifthenelse{\equal{#2}{}}{\let\titlefontsize\LARGE}
    {\def\titlefontsize{\fontsize{#1}{#2}\selectfont}}}}

% \def\department{%
%   \@ifnextchar({\department@i}{\department@i(The department's name is required)}%)
% }
% \def\department@i(#1){%
%   \def\departmentname{#1}
% }

% \def\departmenttitle{%
%   \@ifnextchar({\departmenttitle@i}{\departmenttitle@i(The title of
%     your head of department is required)}%)
% }
% \def\departmenttitle@i(#1){%
%   \def\departmenttitlename{#1}
% }

\def\graduationyear{%
  \@ifnextchar({\graduationyear@i}{\graduationyear@i(\number\year)}%)
}
\def\graduationyear@i(#1){%
  \def\graduation{#1}
}

\def\graduationmonth{%
  \@ifnextchar({\graduationmonth@i}{\graduationmonth@i(August)}%)
}
\def\graduationmonth@i(#1){%
  \def\graduate{#1}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        Process information for Committee Certification page        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\signline{%
  \rule{0.5\paperwidth}{0.1pt}}

\def\committee{%
  \@ifnextchar({\committee@i}{\committee@i(Albert Einstein [supervisor])}%)
}
\def\committee@i(#1){%
  \@ifnextchar[{\committee@ii(#1)}{\committee@ii(#1)[]}%]
}
\def\committee@ii(#1)[#2]{%
  \@ifnextchar({\committee@iii(#1)[#2]}{\committee@iii(#1)[#2](Marie Curie)}%)
}
\def\committee@iii(#1)[#2](#3){%
  \@ifnextchar({\committee@iv(#1)[#2](#3)}{\committee@iv(#1)[#2](#3)(Neils Bohr)}%)
}
\def\committee@iv(#1)[#2](#3)(#4){%
  \@ifnextchar({\committee@v(#1)[#2](#3)(#4)}{\committee@v(#1)[#2](#3)(#4)(Alvin Das)}%)
}
\def\committee@v(#1)[#2](#3)(#4)(#5){%
  \@ifnextchar({\committee@vi(#1)[#2](#3)(#4)(#5)}{\committee@vi(#1)[#2](#3)(#4)(#5)(Albert Einstein)}%)
}
\def\committee@vi(#1)[#2](#3)(#4)(#5)(#6){%
  \@ifnextchar({\committee@vii(#1)[#2](#3)(#4)(#5)(#6)}{\committee@vii(#1)[#2](#3)(#4)(#5)(#6)()}%)
}
\def\committee@vii(#1)[#2](#3)(#4)(#5)(#6)(#7){%
  \@ifnextchar({\committee@viii(#1)[#2](#3)(#4)(#5)(#6)(#7)}{\committee@viii(#1)[#2](#3)(#4)(#5)(#6)(#7)()}%)
}
\def\committee@viii(#1)[#2](#3)(#4)(#5)(#6)(#7)(#8){%
  \@ifnextchar[{\committee@ix(#1)[#2](#3)(#4)(#5)(#6)(#7)(#8)}{\committee@ix(#1)[#2](#3)(#4)(#5)(#6)(#7)(#8)[Isaac Newton (chair of dept.)]}%]
}
\def\committee@ix(#1)[#2](#3)(#4)(#5)(#6)(#7)(#8)[#9]{%

  \def\supervisor{#1}

    \def\committeemembers{\hspace{1.6in}
%    \centerline{\parbox[t]{0.2\textwidth}{\setstretch{1} Major Professor:\\Committee:}
    \parbox[t][6.5cm][t]{\textwidth}{%
    \centerline{\parbox[t]{0.2\textwidth}{\raggedleft \setstretch{2} Committee Chair:\\\vspace{2.5em}Committee:}
%      \hspace{1cm}\parbox[t]{0.3\textwidth}{\setstretch{1}
      \hspace{0.001cm} \parbox[t]{0.3\textwidth}{\raggedleft \setstretch{2}        { #1}\\ [\extraSpace]\ifthenelse{\equal{#2}{}}{}{{ #2}\\}{ #3}\\{#4}\\{ #5}\\{ #6}
        \ifthenelse{\equal{#7}{}}{}{\\{#7}}\ifthenelse{\equal{ #8}{}}{}{\\{#8}}}}\vspace{1cm}}}


  \def\trick{%
    \ifthenelse{\equal{#2}{}}{\setlength{\addedspace}{1.3cm}}
    {\setlength{\addedspace}{1.cm}}
    \ifthenelse{\equal{#7}{}}{}{\addtolength{\addedspace}{-0.38cm}}
    \ifthenelse{\equal{#8}{}}{}{\addtolength{\addedspace}{-0.38cm}}}

  % \def\signaturelines{%
  %   \begin{center}
  %     \signline\\
  %     {Dr. #1}, Chair\\[0.4cm]
  %     \signline\\
  %     \ifthenelse{\equal{#2}{}}{}{{Dr. #2}, Chair\\[0.4cm]\signline\\}
  %     {Dr. #3}, Member\\[0.4cm]
  %     \signline\\
  %     {Dr. #4}, Member\\[0.4cm]
  %     \signline\\
  %     {Dr. #5}, Member\\[0.4cm]
  %     \signline\\
  %     {Dr. #6}, Member\\[0.4cm]
  %     \signline\\
  %     \ifthenelse{\equal{#7}{}}{}{{Dr. #7}, Member\\[0.4cm]\signline\\}
  %     \ifthenelse{\equal{#8}{}}{}{{Dr. #8}, Member\\[0.4cm]\signline\\}
  %     Date\\[0.4cm]
  %     \signline\\
  %     {Dr. #9}, \departmenttitlename\\
  %     \departmentname
  %   \end{center}}
    }

%%%%%%%%%%% Definitions of front matter%%%%%%%%%%%%%%%%%%

\def\certifywords{
  \ifthenelse{\equal{\onlinesubmission}{yes}}
  {\centerline{A Dissertation Submitted in Partial Fulfillment of
    the Requirements for the Degree of}}
  {\centerline{A Dissertation Submitted in Partial Fulfillment of
    the Requirements for the Degree of}}
  \centerline{Doctor of Philosophy}
  \centerline{in the College of Arts and Sciences}
  \centerline{Georgia State University}}

\def\certifyword{
  \centerline{A Dissertation Submitted in Partial Fulfillment of
    the Requirements for the Degree of}
  \centerline{Doctor of Philosophy}
  \centerline{in the College of Arts and Sciences}
  \centerline{Georgia State University}}

% \def\approval{\\\parbox[t]{\textwidth}{\setstretch{1}
\def\approval{\\\parbox[b]{\textwidth}{\setstretch{2}
    Electronic Version Approved:\\\\\\
    Office of Graduate Services\\
    College of Arts and Sciences\\
    Georgia State University\\
    \graduate\ \graduation}}

%------------------------Committee Certification Page---------------------
\ifthenelse{\equal{\printcertifypage}{yes}}{
  \def\certifypage{\pagenumbering{gobble}
    \enlargethispage{2cm}
    \trick
    \begin{center}
      \begin{minipage}[]{\textwidth}
        \begin{center}
          \parbox[]{\textwidth}{\setstretch{1.1}\centering\titlefontsize\titlediss\vspace*{\addedspace}}
          \parbox[]{\textwidth}{\setstretch{1}\certifyword\vspace*{\addedspace}}
          \parbox[]{\textwidth}{\setstretch{1.2}\centering\graduation\\by\\{\writer}\\committee:\vspace*{\addedspace}}
          % \parbox[]{\textwidth}{\setstretch{1}\signaturelines}
        \end{center}
      \end{minipage}
    \end{center}
%    \cleardoublepage
}{}}

% %------------------------Abstract Head------------------------------------
% \renewenvironment{abstract}{
%   \begin{center}
%      {\chaptertitleheadsize\formatting ABSTRACT \vspace{0.2in}}
%   \end{center}
% }{}

% %------------------------Abstract Page------------------------------------
% \def\abstractpage{\pagenumbering{gobble}
%   \begin{center}
%     \parbox[]{\textwidth}{\setstretch{2}\centering\titlefontsize\titlediss}
%   \end{center}
%   \vspace{0.4in}
%   \centerline{by} \vspace*{0.5in}
%   \centerline{\writer} \vspace*{0.5in}
%   \centerline{Under the Direction of \supervisor, PhD}
%   \vspace{1.0in}
%   \begin{abstract}
%     \input{Frontmatter/abstract}
%   \end{abstract}\\[0.5in]
%   \noindent \parbox[t]{0.25\textwidth}{\setstretch{1} INDEX WORDS:} \hspace{3pt}
%   \parbox[t]{0.75\textwidth}{\setstretch{1}\input{Frontmatter/index-words}}
%  % \cleardoublepage
% }

%------------------------Title Page---------------------------------------
\def\titlepage{\pagenumbering{gobble}
  \begin{center}
    \parbox[]{\textwidth}{\setstretch{2}\centering\titlefontsize\titlediss}
  \end{center}
  \vspace*{1.5in}
  \centerline{by}
  \vspace*{1.5in}
  \centerline{\writer}
  \vspace*{2.0in}
  \certifywords
%  \vspace*{1.5in}
  \centerline{\graduation}
%  \cleardoublepage
}

%------------------------Copyright Page-----------------------------------
\def\copyrightpage{\pagenumbering{gobble}
  \vspace*{0.7\textheight}
  \begin{center}
    \parbox[]{\textwidth}{\setstretch{1}
      \begin{center}Copyright by\\Your Name\\\graduation\end{center}}
  \end{center}
%  \cleardoublepage
}

%------------------------Approval Page------------------------------------
\def\approvalpage{\pagenumbering{gobble}
  \begin{center}
    \parbox[]{\textwidth}{\setstretch{2}\centering\titlefontsize\titlediss}
  \end{center}
  \vspace*{0.5in}
  \centerline{by}
  \vspace*{0.5in}
  \centerline{\writer}
  \vspace*{1in}
  \committeemembers
  \approval
%  \cleardoublepage
}

%------------------------Dedication Page----------------------------------

\def\dedicationpage{%
  \if@twoside
    \pagenumbering{roman}\setcounter{page}{5}
  \else
    \pagenumbering{roman}\setcounter{page}{4}
  \fi
  \IfFileExists{Frontmatter/dedication.tex}
  {\chapter*{DEDICATION}\input{Frontmatter/dedication}}{\typeout{The file
      "dedication.tex" could not be found; I will continue without
      it.}}}

%------------------------Acknowledgments----------------------------------

\def\acknowledgmentpage{%
  \IfFileExists{Frontmatter/acknowledgments.tex}
  {\chapter*{ACKNOWLEDGMENTS}
    \addcontentsline{toc}{chapter}{ACKNOWLEDGMENTS}
    \input{Frontmatter/acknowledgments}}
  {\typeout{The file "acknowledgments.tex" could not be found; I will continue
      without it.}}}

%------------------------Table of Contents--------------------------------
\renewcommand\tableofcontents{%
  \if@twocolumn
  \@restonecoltrue\onecolumn
  \else
  \@restonecolfalse
  \fi
  \chapter*{\contentsname
    \@mkboth{%
      \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
  \begin{singlespacing}
    \@starttoc{toc}%
  \end{singlespacing}
  \if@restonecol\twocolumn\fi}

%------------------------List of Figures----------------------------------
\renewcommand\listoffigures{%
  \if@twocolumn
  \@restonecoltrue\onecolumn
  \else
  \@restonecolfalse
  \fi
  \chapter*{\listfigurename}%
  \addcontentsline{toc}{chapter}{\listfigurename}
  \@mkboth{\MakeUppercase\listfigurename}%
  {\MakeUppercase\listfigurename}%
  \begin{singlespacing}
    \@starttoc{lof}%
  \end{singlespacing}
  \if@restonecol\twocolumn\fi}

%------------------------List of Tables-----------------------------------
\renewcommand\listoftables{%
  \if@twocolumn
  \@restonecoltrue\onecolumn
  \else
  \@restonecolfalse
  \fi
  \chapter*{\listtablename}%
  \addcontentsline{toc}{chapter}{\listtablename}
  \@mkboth{%
    \MakeUppercase\listtablename}%
  {\MakeUppercase\listtablename}%
  \begin{singlespacing}
    \@starttoc{lot}%
  \end{singlespacing}
  \if@restonecol\twocolumn\fi}

%------------------------List of Abbreviations----------------------------
\def\loaname{LIST OF ABBREVIATIONS}
\def\listofabbreviations{}
\newcommand{\sepabbrev}[1]{}
\newcommand{\setloaname}[1]{%
  \def\loaname{#1}}
\IfFileExists{abbreviations.tex}
{\RequirePackage{acronym}
  \renewcommand{\listofabbreviations}{%
    \chapter*{\loaname}
    \addcontentsline{toc}{chapter}{\loaname}
    \begin{acronym}
      \input{abbreviations}
    \end{acronym}}}
{\typeout{The file "abbreviations.tex" could not be found; I will continue
    without it.}}

\ifthenelse{\equal{\onlinesubmission}{no}}
{\ifthenelse{\equal{\fontify}{pbk}}
{\RequirePackage{bookman}}{}}{}

\ifthenelse{\equal{\onlinesubmission}{no}}
{\ifthenelse{\equal{\fontify}{ppl}}
{\RequirePackage{mathpazo}}{}}{}

\ifthenelse{\equal{\onlinesubmission}{no}}
{\ifthenelse{\equal{\fontify}{pnc}}
{\RequirePackage{newcent}}{}}{}

\ifthenelse{\equal{\onlinesubmission}{no}}
{\ifthenelse{\equal{\fontify}{ptm}}
{\RequirePackage{mathptmx}}{}}{}

\ifthenelse{\equal{\onlinesubmission}{no}}
{\ifthenelse{\equal{\fontify}{bch}}
{\RequirePackage{charter}}{}}{}

\ifthenelse{\equal{\onlinesubmission}{no}}
{\ifthenelse{\equal{\fontify}{phv}}
{\RequirePackage[scaled]{helvet}
  \renewcommand{\familydefault}{\sfdefault}}{}}{}

\ifthenelse{\equal{\onlinesubmission}{no}}
{\ifthenelse{\equal{\fontify}{pcr}}
{\RequirePackage{courier}
  \renewcommand{\familydefault}{\sfdefault}}{}}{}

\ifthenelse{\equal{\onlinesubmission}{no}}
{\ifthenelse{\equal{\fontify}{pzc}}
{\RequirePackage{chancery}}{}}{}

\ifthenelse{\equal{\onlinesubmission}{no}}
{\ifthenelse{\equal{\fontify}{day}}
{\renewcommand{\rmdefault}{dayrom}
  \usepackage[T1]{fontenc}
  \usepackage{textcomp}}{}}{}
