\documentclass[
  % Replace oneside by twoside if you are printing your thesis on both sides
  % of the paper, leave as is for single sided prints or for viewing on screen.
  oneside,
  11pt, a4paper,
  footinclude=true,
  headinclude=true,
  cleardoublepage=empty
]{scrbook}
\usepackage[linedheaders,parts,pdfspacing]{classicthesis}
\let\bf=\bfseries
\let\rm=\rmfamily
\let\tt=\ttfamily
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
%
% Packages
%
\usepackage[utf8x]{inputenc}
\usepackage{multicol}
\usepackage{etex}
\usepackage{graphicx} % includes usepackage[all]{xy}
\usepackage{www}
\usepackage{fleqn}
\usepackage{hyperref}
\usepackage{myisolatin1}
%usepackage{bookman}
%usepackage{times}
\usepackage{palatino}
%usepackage{a4}
\usepackage{latexsym}
%------ using array.sty -----------------------------------------------------
\usepackage{array}
\newcolumntype{X}{>{\rule{0pt}{1.0em}}c<{\rule[-0.6em]{0pt}{0pt}}}
\newcolumntype{Y}{>{\rule{10pt}{0pt}}c<{\rule{10pt}{0pt}}}
\def\rr#1{\rule{0pt}{1.2em}#1\rule[-0.9em]{0pt}{0pt}}
%--------------
\hyphenation{%
par-a-digm
par-a-digms
}
%--------------
\usepackage{amsmath}
\allowdisplaybreaks % allow page breaks inside equations
%--------------
\usepackage{amsfonts}
\newcommand{\FSy}[0]{\mathit{FS}}  % FS needed in the introduction
\newcommand{\FT}[0]{\mathit{FT}}  % for uniform mathit formating
\def\pow#1{\mathbb{P}#1}
\def\lexord#1#2{#1\mathbin;#2}
\def\N{\mathbb{N}\index{Números naturais ($I\!\!N$)}}
%--------------
\newcommand{\one}{\cellcolor{gray!20}1}
\def\implies{\mathbin{\Rightarrow}}
\def\either#1#2{\alt{#1}{#2}}
%def\bind{\mathbin{{>\hskip-1ex>\hskip-.4ex=}}}
%def\plus{\mathbin{\dagger}}
\def\for#1#2{\mathsf{for} \ #1 \ #2}
%newenvironment{lcbr}{\left\{\begin{array}{l}}{\end{array}\right.}
%---------------
\usepackage{exercisebk}
\usepackage{ifthenelse}
\usepackage{alltt}
\usepackage{jnoSmallSlidesAux}
\usepackage{jnoxy}
\usepackage{pdbc}
\def\resolucao#1{\relax}
%---------------
\def\lUMLclass#1#2#3#4{
\rnode{#1}{
\mbox{
\begin{tabular}{||l||}\hline
\multicolumn{1}{||c||}{\textbf{#2}}
\\\hline
#3
\\\hline
#4
\\\hline
\end{tabular}
} } }
%def\comp{\mathbin{\stackrel{\mbox{\LARGE .}}{~}}}
%let\equiv=\leftrightarrow
\def\conc{\mathbin{+\!\!\!+}}
\def\source#1{\rnode{NA}{\pscirclebox[linecolor=red]{#1}}}
\def\target#1{\rnode{NB}{\pscirclebox[linecolor=red]{#1}}\nccurve[linecolor=red,angleA=-30,angleB=-150]{->}{NA}{NB}}
\def\bloco#1#2#3#4{\rnode{#1}{\colorbox{#2}{\makebox[#3\unitlength]{\rule[-.55em]{0pt}{1.5em}#4}}~}}
\def\mycbox#1{\colorbox{white}{\begin{tabular}{c}~#1~\end{tabular}}}
\def\ADJnode#1#2{\ovalnode[fillstyle=solid,fillcolor=yellow]{#1}{\black #2}}
\def\ADJlarc#1#2#3#4#5{\nccurve[linecolor=red,angleA=#1,angleB=#2]{->}{adj:#3}{adj:#4}\tlput{{\red #5}}}
\def\ADJarcA#1#2#3#4#5{\nccurve[linecolor=red,angleA=#1,angleB=#2]{->}{adj:#3}{adj:#4}\taput{{\red #5}}}
\def\ADJarcB#1#2#3#4#5{\nccurve[linecolor=red,angleA=#1,angleB=#2]{->}{adj:#3}{adj:#4}\tbput{{\red #5}}}
\def\ADJarcL#1#2#3#4#5{\nccurve[linecolor=red,angleA=#1,angleB=#2]{->}{adj:#3}{adj:#4}\tlput{{\red #5}}}
\def\ADJarcR#1#2#3#4#5{\nccurve[linecolor=red,angleA=#1,angleB=#2]{->}{adj:#3}{adj:#4}\trput{{\red #5}}}
\def\mnode#1#2{\rnode{#1}{\rule[-.3em]{0pt}{1.3em}~#2~}}
\def\arur#1#2#3{\nccurve[linecolor=red,angleA=90,angleB=-90]{->}{#1}{#2}\trput{{\small #3}}}
\def\arul#1#2#3{\nccurve[linecolor=red,angleA=90,angleB=-90]{->}{#1}{#2}\tlput{{\small #3}}}
\def\arra#1#2#3{\nccurve[linecolor=red,angleA=0,angleB=180]{->}{#1}{#2}\taput{{\small #3}}}
\def\arrb#1#2#3{\nccurve[linecolor=red,angleA=0,angleB=180]{->}{#1}{#2}\tbput{{\small #3}}}
\def\arla#1#2#3{\nccurve[linecolor=red,angleB=0,angleA=180]{->}{#1}{#2}\taput{{\small #3}}}
\def\arlb#1#2#3{\nccurve[linecolor=red,angleB=0,angleA=180]{->}{#1}{#2}\tbput{{\small #3}}}
\def\arl#1#2#3{\ncline[linecolor=red]{->}{#1}{#2}\taput{{\small #3}}}
\def\ardl#1#2#3{\nccurve[linecolor=red,angleA=-90,angleB=90]{->}{#1}{#2}\tlput{{\small #3}}}
\def\ardr#1#2#3{\ncline[linecolor=red]{->}{#1}{#2}\trput{{\small #3}}}
\def\ardl#1#2#3{\ncline[linecolor=red]{->}{#1}{#2}\tlput{{\small #3}}}

\def\pred#1{\unary{pred}{#1}}
\def\sq#1{\unary{sq}{#1}}
\def\distance#1{\unary{distance}{#1}}
\def\twice#1{\unary{twice}{#1}}

\def\true{\textsc{true}}
\def\false{\textsc{false}}
\def\nil{\textsc{nil}}
\let\land=\wedge
\def\muF{\fun T}
\def\T{\fun T}
\def\B{\fun B}
\def\tff#1{\ap{\T^2}{#1}}
\def\lred#1#2#3{\leq}
\def\arLaw#1#2#3#4#5{
\xymatrix{
        #1      \ar@@/^1pc/[rr]^-{#4} &        #5 &
        #2      \ar@@/^1pc/[ll]^-{#3}
}}

\input{hylo}
%--------------------------------
%include polycode.fmt
%include lhsmacros.sty
%format for f i = "\for{" f "}{" i "}"
%format FSy = "\FSy "
%format fSt = "\fun{St}"
%format (fun (f)) = "\fun{" f "}"
%format in_T = inT "_{" fT "}"
%format in_U = inT "_{" fU "}"
\def\lfdep#1#2#3{\xymatrix{ #3 & #1 \ar@@{->>}[l]_-{#2} }}
\def\rfdep#1#2#3{\xymatrix{ #1\ar@@{->>}[r]^-{#2}&#3}}
%format (lfdep (a) (f) (b)) = "\lfdep{" a "}{" f "}{" b "}"
%format (rfdep (a) (f) (b)) = "\rfdep{" a "}{" f "}{" b "}"
%---- undoing / changing --------
%%format (crflx (p)) = "\mathopen{\langle}" p "\mathclose{\rangle}"
%format ap = "\mathit{ap}"
%format fst = "\mathsf{fst}"
%format snd = "\mathsf{snd}"
%format IO  = "\fun{IO}"
\def\ker#1{\mathsf{ker}\;#1}
\def\img#1{\mathsf{img}\;#1}
%--------------------------------
%format fT1 = "\fun T_1 "
%format fB1 = "\fun B_1 "
%format fB2 = "\fun B_2 "
%format fT2 = "\fun T_2 "
%format outT1 = "\mathsf{out}_1"
%format outT2 = "\mathsf{out}_2"
%format inT1 = "\mathsf{in}_1"
%format inT2 = "\mathsf{in}_2"
%format (arIso (t) (ft) (f) (g)) = "\arIso{" t "}{" ft "}{" f "}{" g "}"

%
% Document Title
%
\title
{
Program Design by Calculation
}
\author
{
    J.N. Oliveira
    \thanks
    {
    Dep.\ Inform\'{a}tica, Universidade do Minho,
    Campus de Gualtar, 4700 Braga, Portugal.
    {\sc Email}: {\tt jno@@di.uminho.pt}.
    }
}

\date\today

\begin{document}

\input{pdbc.tpg}

\newpage~ \thispagestyle{empty}%\newpage

\pagenumbering{roman}
\setcounter{page}{1}
\tableofcontents                   % _.toc file

\begin{multicols}{2}
\listofexercises                   % _.loe file
\end{multicols}

\pagenumbering{arabic}
\setcounter{page}{0}
\clearpage

\chapter*{Preamble}
%
\addcontentsline{toc}{chapter}{Preamble}
%
This textbook, which has arisen from the author's research and teaching experience,
has been in preparation for many years.
Its main aim is to draw the attention of software practitioners to a calculational
approach to the design of software artifacts ranging from simple algorithms
and functions to the specification and realization of information systems.

Put in other words, the book invites software designers to raise standards and
adopt mature development techniques found in other engineering disciplines,
which (as a rule) are rooted on a sound mathematical basis.
\emph{Compositionality} and \emph{parametricity} are central to the whole discipline,
granting scalability from school desk exercises to large problems in an industry setting.

It is interesting to note that while coining the phrase \emph{software engineering}
in the 1960s, our colleagues of the time were already promising such high quality standards.
In March, 1967, ACM President Anthony Oettinger delivered an address in which he said \cite{Oe67}:
\begin{quote}\small\em
"(...) the scientific, rigorous component of computing, is more like \textbf{mathematics}
than it is like \textbf{physics}" (...) Whatever it is, on the one hand it
has components of the purest of mathematics and on the other hand of the
dirtiest of engineering.
\end{quote}

As a discipline, software engineering was announced at the Garmisch NATO
conference in 1968, from whose report \cite{NATO68} the following excerpt is quoted:
\begin{quote}\small\em
In late 1967 the Study Group recommended the holding of a working conference
on Software Engineering. The phrase `software engineering' was deliberately
chosen as being provocative, in implying the need for software manufacture
to be based on the types of theoretical foundations and practical disciplines,
that are traditional in the established branches of engineering.
\end{quote}
Provocative or not, the need for sound theoretical foundations has clearly
been under concern since the very beginning of the discipline --- exactly fifty
years ago, at the time of writing. However, how
``scientific'' do such foundations turn out to be,
now that five decades have since elapsed?\footnote{
The title of a communication of another ACM President, Vinton Cerf (2012),
does not sound particularly optimistic \cite{Ce12}.
}

Thirty years later (1997), Richard Bird and Oege de Moore published a textbook \cite{BM97}
in the preface of which C.A.R.\ Hoare writes:
\begin{quote}\em\small
      Programming notation can be expressed by
      \aspas{\textbf{formul\ae} and \textbf{equations} (...) which share the
      \textbf{elegance} of those
      which underlie \textbf{physics} and \textbf{chemistry}
or any other branch of basic science}.
\end{quote}
The formul\ae\ and equations mentioned in this quotation
are those of a discipline known as the \emph{Algebra
of Programming}. Many others have contributed to this
body of knowledge, notably Roland Backhouse and his colleagues
at Eindhoven and Nottingham, see e.g.\ \cite{ABHVW92,Ba04a},
Jeremy Gibbons and Ralf Hinze at Oxford
see e.g.\ \cite{Hi1_}, among many others. Unfortunately,
references \cite{ABHVW92,Ba04a} are still unpublished.

When the author of this draft textbook decided to teach
\emph{Algebra of Programming} to 2nd year students of
the Minho degrees in computer science, back to 1998,
he found textbook \cite{BM97} too difficult for the students
to follow, mainly because of its too explicit categorial
(allegorical) flavour. So he decided to start writing
slides and notes helping the students to read the book.
Eventually, such notes became chapters \ref{ch:990122a}
to \ref{ch:050419a} of the current version of the monograph.
The same procedure was taken when teaching the relational approach of \cite{BM97}
to 4th year students (master level), see chapters \ref{ch:120411a} to \ref{ch:180828d}.

This draft book is incomplete, all subsequent chapters being still in
\emph{slide form}\footnote{See e.g.\ see technical report \cite{Ol15c}.
The third part will address a linear algebra of programming intended for
quantitative reasoning about software. This is even less stable, but some 
papers exist already about the topic, starting from \cite{Ol12a},
and a typed-matrix library written in Haskell \cite{SO20}.}.
Such half-finished chapters are omitted from the current print-out.
Altogether, the idea is to show that software engineering and, in particular,
computer programming can adopt the \emph{scientific method} as other branches
of engineering do. Somehow, it's like following in the footsteps of those
who marveled at the power of algebraic reasoning in the remote past, in different
contexts and disciplines:
\begin{quote}\emph{
``(...) De manera, que quien sabe por Algebra,
sabe scientificamente}
[In this way, who knows by Algebra knows scientifically]. Pedro Nunes, 1567 \cite{Nu67}
\end{quote}

\section*{Acknowledgements}
The draft of this "book" has been available online for many years, during which time the author has received suggestions, comments, typos and so on, for which he is very grateful. Special thanks are due to Tom Verhoeff (University of Eindhoven, NL), for his careful reading and meticulous suggestions for improvement.

\vskip 1cm
\noindent
University of Minho, Braga, September 2022

\vskip 2em

\hskip-2em \includegraphics[width=0.5\textwidth]{sign.jpg}

\vskip 2em

\noindent José N.\ Oliveira


%\CUT{

\chapter{Introduction}
%fbox{This introductory chapter is not given in the current version of this textbook.}
%This  \doc\ has to do with the theory and practice of software engineering.
This \doc\ is concerned with
% {sustainable} foundations for the foundations of one of the
a major topic in software engineering: that of designing \emph{correct} computer
programs in the first place.
% What do we mean by ``sustainable'' and ``correct'' in this context?
% To begin with, let us inquire into the phrase
Let us begin by inquiring into the phrase \emph{software engineering} itself.
Or even deeper into the word \emph{software} itself.

Producing software is today an industrial activity that, according to \href{https://evansdata.com/press/viewRelease.php?pressID=278}{Evans Data Corporation}, involves more than 25 million developers. How did all this activity start? How productive is this industry? How relevant is it?

\section{A bit of archaeology}
The following chart \footnote{Credits: adapted from Nelmia Robotics Insight, 2015.} gives the timeline of the four industrial revolutions that have changed human civilization in the last centuries:
\begin{center}
	\includegraphics[width=0.90\textwidth]{ind40a.jpg}
\end{center}

This tells that, from the late 18c mechanical lines powered by steam and water streams, and through the late 19c mass production lines enabled by electrical power, one reaches the mid 20c third revolution in which electronics and IT automation start to play a role. The role of software in industry started here, when dedicated electronics started to be replaced by devices that could be programmed and tailored to the specific tasks required.

Software had already proved its power during the second world war, in the
military domain. However, it did not start there. It actually emerged from
the theoretical work of two mathematicians, Alan Turing (1912-1954) and
Alonzo Church (1903-1995). In fact, classical computing is rooted in mathematical
abstractions that led in particular
to the \emph{Turing machine} \cite{Tu36} --- which is still regarded
as the canonical abstract notion of a programmable computer --- and to the
$\lambda$-\emph{calculus} \cite{Ch36} --- a mathematical system that provided the basis
for the so-called functional programming paradigm.

The step from abstraction to reality was made possible by advances in physics,
such as the invention of triodes (1912) and then of transistors (1948),
a path that eventually lead to the integrated circuits that are the basis of the \emph{in silico} technology of today \cite{Ne09,Ro04,La13}.

Once such devices were first employed to store information in realistic situations, it became clear that further abstraction was required. This led to the explicit adoption of formal logic, a very important abstraction still in use today. As the aphorism says, \emph{``logic is the language of computing''}.

The birth of software as an independent technology took place in the 1950s.\footnote{The first programming language, Fortran, appeared in 1953.}
But it soon was faced with a crisis because an effective discipline of programming
was lacking.
In fact, software must have surprised the industrial scene of the 1950s as something of an \emph{``enfant terrible"}.
\emph{Hardware} and other ``traditional'' industrial
\emph{products} were fabricated according to well established laws of \emph{physics} and principles of \emph{engineering}.
By contrast, \emph{software} was not governed by the laws of physics: it did not weigh,
did not smell, did not warm up/cool down, it was chemically neutral and it did not wear. In his 1967 address, ACM President Anthony Oettinger said \cite{Oe67}:
\begin{quote}\em\small
"(...) the scientific, rigorous component of computing, is more like \emph{mathematics} than it is like {physics".}
\end{quote}
In spite of the tremendous progress in programming language design that took place throughout the 1960s
--- which witnessed the birth of what many regarded as the first \emph{open source} project,
the Algol family of languages
--- the crisis went on.
Still Oettinger:
\begin{quote}\em\small
"It is a matter of \emph{complexity}. Once you start putting thousands
of these instructions together you create a \emph{monster} which is
\emph{unintelligible} to anyone save its creator and, most of the time,
unfortunately even to the creator."
\end{quote}

\paragraph{Software engineering}
The term \emph{software engineering} appeared in the late 1960s and
was the subject of a conference supported by NATO that took place in Garmisch,
Germany in 1968. The participants of this conference expressed concerns and called
for stronger theoretical foundations \cite{NATO68}:
\begin{quote}\small\em
The phrase `software engineering' was deliberately
chosen as being pro\-vocative, in implying the need for software manufacture
to be based on the types of theoretical foundations and practical disciplines,
that are traditional in the established branches of engineering.
\end{quote}
Many took the provocation seriously and embarked on researching so-called \emph{formal methods} for developing code from formal specifications, notably Edsger Dijkstra (1930-2002), Tony Hoare (1934-), Niklaus Wirth (1934-) and Robert Floyd (1936-2001), all from the Algol development group and all Turing Awardees.
This resulted in the birth of the principles of \emph{structured programming} \cite{Di76,Wi76} that became popular in the 1970s and reached the software industry in the form of a new, industry-strong language, Pascal, which evolved from the Algol culture.

In spite of these developments, the 1968 crisis was (and still is not...) over yet.
The ever increasing complexity of the software that the IT sector requires programmers to build every day leads to unsafe code due to the widespread use of \emph{ad hoc} methods, instead of the mathematically sound methods anticipated by its founding fathers.
The main problem with such informal methods is that
% the problem with software engineering is that
quality control is based on \emph{testing} software artifacts \emph{after} they have been built, and not on ensuring quality in a stepwise manner, as advocated by academia since the 1970s.

Oettinger's suggestion that software is, in a sense, \emph{mathematics in motion}, was not accepted by a community that had been engaged in applying ``traditional'' engineering principles long before. As these are as applicable to the software \emph{process} as in other disciplines, many researchers, teachers and practitioners were led into equating software engineering with the software development process itself. This is no doubt a very important aspect of the problem but tends to leave the study of the \emph{software product} itself out of focus:
\begin{eqnarray*}
	\mbox{ \emph{Software} ~
	}
\begin{lcbr}
	\mbox{ \emph{Process} ---
		\raisebox{-1.1ex}{\includegraphics[width=4ex]{tick.png}}
	}
\\
\\
	\mbox{ \emph{Product} ---
		\raisebox{-1ex}{\includegraphics[width=4ex]{qmark.jpg}}
	}
\end{lcbr}
\end{eqnarray*}
Fancy a chemical plant working in a perfect production line but in which
nobody knows about the Lavoisier principle, the Mendeliev periodic table, the laws
of chemical reactions and so on.

By and large, this is still the kind of
software industry that we have today, unfortunately. In a sense, managers
and developers {pretend} that {software production} is not affected by its
\emph{special} \emph{nature} and move on. 
More and more sophisticated tools have been developed to support software design
(IDEs, for instance)
and everything seems to be in full swing. But when one listens
to those on the ground, things look anything but good. The illusion is still due
to progress, which is indeed fabulous, in the hardware arena.\footnote{
See for instance, the talk \emph{Preventing the Collapse of Civilization} by Jonathan Blow (Thekla, Inc)
available on \href{https://www.youtube.com/watch?v=ZSRHeXYDLko&t=5s}{Youtube} (2019).}

\paragraph{Understanding computer programs}
Today's widespread research on the mathematical meaning of software originated
from the pioneering works of Floyd and Hoare \cite{Fl67,Ho69} (among others
less known) in the late 1960s.\footnote{But note that Turing had himself
already done similar but less known work back to 1949 \cite{Jo14}.} But these
efforts had to wait for many years before the proposed techniques for program
correctness proof were generally acclaimed and incorporated in tools that
are more and more widespread today.

Nearly a decade later, John Backus read, in his Turing Award Lecture, a
revolutionary paper \cite{Ba78} about how he envisaged the future of computing
and software. This paper proclaimed conventional command-oriented programming
languages obsolete because of their inefficiency arising from retaining,
at a high-level, the so-called \aspas{memory access bottleneck} of the underlying
computation model --- the well-known {\em von Neumann} architecture. Alternatively,
the (at the time already mature) {\em functional programming} style was put
forward for two main reasons. Firstly, because of its potential for concurrent
and parallel computation, which Backus envisaged as the future of computing. Secondly --- and Backus emphasis was really put
on this ---, because of its strong mathematical basis.

Backus' {\em algebra of (functional) programs} was providential in alerting
computer programmers that {computer languages} alone are insufficient, and
that only languages that  exhibit an {\em algebra} or \emph{calculus} for
reasoning about the objects they purport to describe will be useful in the long run.

The impact of Backus' first argument in the computing science and computer
architecture communities was considerable, in particular if assessed in quality
rather than quantity and in addition to the almost contemporary {\em structured
programming} trend. By contrast, his second (theoretical) argument for changing
computer programming was by and large ignored. Only the self-named {\em algebra
of programming} research minority pursued in this direction.

\paragraph{Towards an algebra of programming}
Even among those who defended mathematical approaches to software comprehension
and development, consensus was rare about whether one should stay with imperative
programming tamed by logical reasoning (namely by using Hoare Logic) or move even further into the realm
of algebraic functional programming. At the same time, the vast majority
of programmers regarded all such efforts useless because the maths was too
low level and got convoluted every time one tried to apply the available
theories to practical case studies.

Indeed, in a relatively recent article \cite{DBLP:journals/computer/Parnas10}, David Parnas questions
% the traditional use of
such
% formal
methods,
% in software development,
which he regards still unfit
% considers an underdeveloped body of knowledge and therefore of little hope
for the software industry:
% as expected, therefore one might consider it underdeveloped and the argument for this judgement was given in a recent article \cite{DBLP:journals/computer/Parnas10}. There the
% Parnas confronts the reader with the following statement, at some stage:
\begin{quote}\small\em
We must learn to use mathematics in software
development, but we need to question, and be prepared to
discard, most of the methods that we have been discussing and promoting for all these years.
\end{quote}
At the core of Parnas objections lies the contrast
% core of the reasoning is the counterpoint
between the current ad-hoc (re)invention of burdening mathematical notation and
less known, elegant concepts that are neglected,
often for cultural reasons or (lack of) background.

The question is: {what is it that tells ``good'' and ``bad'' methods apart?}
As Parnas writes, \emph{there is a disturbing gap between software development and traditional engineering disciplines}.
In such disciplines one finds a successful, well-established
mathematical background
% taught regularly at every higher-education institute,
essentially made of calculus,
% (derivatives and integrals),
linear algebra and probability theory.

Central to engineering mathematics is the construction
of sets of simultaneous equations as models of physical systems
(e.g.\ circuits, etc),
\begin{eqnarray}
\left\{\begin{array}{cccccccccccccc}
	a_{11}x_{1} + a_{12}x_{2} + a_{1m}x_{m} &=& b_1
\\
\vdots & \vdots & \vdots
\\
	a_{n1}x_{1} + a_{n2}x_{2} + a_{nm}x_{m} &=& b_n
\end{array}
\right.
	\label{eq:110114a}
\end{eqnarray}
that is, formul\ae\ of the form
\begin{eqnarray}
	\rcb\forall
		{i}{1\leq i\leq n}
		{\sum_{j=1}^{m} a_{ij}x_j = b_i}
	\label{eq:110114b}
\end{eqnarray}

The maturity of traditional engineering mathematics can be appreciated from the fact
that such (often very {large}) sets of equations do not intimidate engineers, thanks to
the \emph{matrix} and \emph{vector} concepts: grouping all coefficients $a_{ij}$
of (\ref{eq:110114a}) in a matrix $A$,
variables $x_j$ in a vector $X$ and values $b_i$ in a vector $B$, (\ref{eq:110114a}) becomes
\begin{eqnarray*}
	A \comp X &=& B
\end{eqnarray*}
where operator $(\comp)$ denotes matrix multiplication. Backhouse \cite{Ba04a} writes:
\begin{quote}\em
In this way a set of equations has been reduced to a single equation.
This is a tremendous improvement in concision that does not incur any loss
of precision!
\end{quote}
That is to say, such notation scales up and \emph{quantity} does not disturb \emph{quality}.

Another sign of maturity arises from the use of mathematical transformations,
such as e.g.\ the Laplace transform \cite{Kr88} which changes the
``mathematical space'' so as to convert ``difficult'' sets of equations
(e.g.\ differential) into ``easy'' ones (e.g.\ polynomial),
whose solutions are mapped back to the original problem domain by
the converse transform. Once again, complexity is controlled via
effective mathematical techniques.

One may wonder about parallels to these techniques in mathematical methods
for software design, in their use of formal logics. Do such logics scale
up to very large sets of clauses issued by proof obligation generators, for
instance?  Is there a \emph{linear algebra} for logic and set theory? Is
there a logic equivalent to a \emph{matrix}?

While the answer to the first question is \emph{poorly!}, those to the other
questions are affirmative: \emph{yes, there are!}
% but it is not mainstream in the community.
Quoting \cite{DBLP:journals/computer/Parnas10} once again:
\begin{quote}\small\em
There is an alternative. Some researchers have been studying the use of
relational methods in computer science; (...)
% they note that the effect of a terminating program could be described by a relation on states and that
the well-known laws of relational algebra
can serve as the axiomatic basis for programming. The axioms of relational
algebra are simple and universal.
% They do not embody the characteristics of any particular type of program and can be used with any set of primitive programs.
This approach seems to have been neglected by most “mainline” researchers in the area of formal methods.
\end{quote}

Binary relations are Boolean matrices, thus providing a straight parallel
with linear algebra. And relational composition of two relations $R$ and
$S$, usually denoted by a similar multiplicative term $R\comp S$, provides
another one. In set theory, this relational operator is defined indirectly
as follows, assuming the \emph{set-of-pairs} understanding of binary relations:
pair $(b,c)$ is in $R\comp S$ iff
%\(
%	b (R\comp S) c
%\)
% holds wherever
there exist one or more mediating $a$ such that % conjunction
% \(
%	b R a \land a S c
% \)
$(b,a) \in R$ and $(a,c) \in S$.

If we look at one of the first definitions of this combinator,
due to
Charles %Sanders
Peirce (1839-1914) and explained in \cite{Mad91}, we realize that it computes
inner products like those of (\ref{eq:110114b}), where multiplication (restricted
to $0$s and $1$s) captures logical conjunction and addition (resp.\ summation)
captures disjunction (resp.\ existential quantification), if clipped at $1$.
Thereafter, relation union $R \cup S$ is nothing but index-wise Boolean matrix
addition and the distributive laws
\begin{eqnarray*}
	R \comp (S \cup T) &=& (R \comp S) \cup (R \comp T)
\\
	(S \cup T) \comp R &=& (S \comp R) \cup (T \comp R)
	%label{eq:110118b}
\end{eqnarray*}
arise from the \emph{bilinearity} of the underlying matrix algebra. Confirming
the analogy, Gunther Schmidt's book on \emph{relational mathematics} \cite{Sc10}
makes extensive use of matrix notation, concepts and operations in
relation algebra.

\paragraph{Further developments} % --- Towards program calculation
Meanwhile, category theory \cite{Ma71} was born, emphasizing the description
of mathematical concepts in terms of abstract \emph{arrows} (morphisms) and
\emph{diagrams}, thus unveiling a compositional, abstract language of universal
\emph{combinators} that is inherently \emph{generic} and \emph{pointfree}.

The category of sets and functions immediately provided a basis for pointfree
functional reasoning, but this was by and large ignored by Backus
in his FP algebra of programs \cite{Ba78}. In any case, Backus's landmark
FP paper was the first to show how relevant this reasoning style could be
to programming. This happened four decades ago.

A bridge between the two pointfree schools --- the relational and the categorical ---
was eventually established by Freyd and Scedrov \cite{FS90} in their proposal
of the concept of an \emph{allegory}, which instantiates to \emph{typed} relation algebra.
The pointfree algebra of programming (AoP) as it is understood today \cite{BM97} stems
directly from \cite{FS90}.

In the early 1990s, the Gro\-ningen-Eindhoven MPC group led by Backhouse
\cite{ABHVW92} contributed decisively to the AoP by structuring relation
algebra in terms of easy-to-apprehend \emph{rules} that make relational reasoning
closer to school algebra. Think for instance of the following rule to reason about whole division of two natural numbers,
\begin{eqnarray}
	z \times y \leq x \wider\equiv z \leq x \div y
	~~~~~~~~~~(y>0)
	\label{eq:080105c'}
%
\end{eqnarray}
assumed universally quantified in all its variables.
Pragmatically, it expresses a ``shunting'' rule which enables one to exchange
between a whole division at the upper side of an
% $(\leq)$
inequality and a
multiplication at the lower side.
Many properties of $(\times)$ and $(\div)$ can be inferred from (\ref{eq:080105c'}),
for instance $(x \div y) \times y \leq x$ --- just replace $z$ by
$x \div y$ and simplify~\footnote{Rule (\ref{eq:080105c'}) \emph{connects}
division to multiplication, the latter helping to reason about the former.
Functions connected in this way are said to be \emph{adjoints}: multiplication
is adjoint of division. Equivalences of this kind are scalable, powerful devices
known in mathematics as Galois connections.}.

In 1997 --- two decades after two landmark textbooks of the golden age of structured programming \cite{Di76,Wi76} --- Bird and Moor published a textbook \cite{BM97} on how to use relational algebra to synthesise recursive programs from relational specifications, inaugurating a new discipline, called \emph{Algebra of Programming}. In the preface of the book, computer science pioneer Tony Hoare writes:
\begin{quote}\em\small
      Programming notation can be expressed by
      \aspas{\textbf{formul\ae} and \textbf{equations} (...) which share the
      \textbf{elegance} of those
      which underlie \textbf{physics} and \textbf{chemistry}
or any other branch of basic science}.
\end{quote}

The five decade long aim of calculating software was achieved, but only partly.
The book mostly covers calculating functional programs from relational specifications,
or imperative programs with a purely functional semantics. Moreover, the
techniques proposed were regarded as difficult and the book did not have
the impact of, for instance, Dijkstra's \cite{Di76} and Wirth's \cite{Wi76} textbooks two decades earlier.

\section{The future ahead}
At the time of writing a new industrial revolution is under way --- and in
a rather singular way. It is depicted in the rightmost block in the picture
we have already seen:
\begin{center}
	\includegraphics[width=0.90\textwidth]{ind40b.jpg}
\end{center}
This trend has become known as \emph{Industry 4.0} --- the \emph{fourth} industrial revolution --- and is to rely on highly {sophisticated} software on an {unprecedented scale}.

Its main singularity resides in the fact that this is the first time a new
industrial revolution happens solely (or mostly) relying on software advances
--- in machine learning, robotics, security, reliability and so on. Billions
of lines of code will be written every day and never was software \emph{correctness}
and \emph{robustness} as  essential as nowadays.

Concerning the challenges ahead, here is a quotation from a \href{https://www.toptal.com/robotics/programming-a-robot-an-introductory-tutorial}{Robot Programming Tutorial}:
\begin{quote}\small\em
``The fundamental challenge of all \emph{robotics} is this: It is impossible to ever know the true state of the \emph{environment}.
A \emph{robot} can \emph{only guess} the state of the real world based on measurements returned by its \emph{sensors}."
\end{quote}
So the robot software programmer will need to live with the \emph{abstract} view of the environment captured by the robot's sensors. Indeed, it would be impossible (and useless) for the robot software to cope with a 100\% view of its environment.

\paragraph{Abstraction}
Abstract view? % Again frightened by this word, \emph{abstraction}?
Beware that software lives on \emph{abstraction} by definition, even before
the world became robot-dependent:
\begin{quote}\em\small
"The purpose of \emph{abstraction} is not to be \emph{vague}, but to
create a new semantic level in which one can be \emph{absolutely precise}."
(E.\ Dijkstra)
\end{quote}
Indeed, working with too concrete models of reality is one of the main defects
of much software that has been written (and is still to be written, unfortunately).

Is the colour of your students' hair relevant for their assessment in your
course? Surely not, thus no such column in the exams spreadsheet. But there you are:
you've just lost (better: deliberately ignored) one particular attribute of your students! This means that
your spreadsheet already contains an \emph{abstract} view of them.

The challenge is therefore to keep those attributes that are needed for the software to operate \emph{and only those}. In some sense, programming is in this respect the \emph{art of going abstract}!

\paragraph{Compositionality}
Many software \emph{monsters} had been written already when, in 1967, Oettinger delivered his speech. The problem is that many, many more were created since, in spite of the availability of increasingly powerful languages with sophisticated abstraction mechanisms.

	It is commonplace to say that today's programmers write poorly concurrent code. This is actually worse: they still write poorly structured \emph{sequential} code because they were not trained in the \emph{art of compositionality} early enough in their background. And so they find it hard to design a piece of software in terms of collaborative, small units, each doing its own job. Let alone other forms of composition in which such components operate concurrently, in a parallel way.

\paragraph{Type-oriented programming}
How does one ensure that cooperating software components are compatible with
each other and work without damaging one another? The obvious answer is:
just in the same way as, for instance, one cannot physically connect a USB
cable to a 220V outlet --- the interfaces are physically different and
do not allow it.

\begin{center}
	\includegraphics[width=0.30\textwidth]{incompatible.jpg}
\end{center}

At the software level, such interfaces are known as \emph{types} and the associated
safety mechanism known as \emph{type checking}. Type theory has developed
immensely in recent years and is a fast evolving field of computer science
nowadays. The moral is that every computation, piece of data etc.\ should
have a \emph{formal type}. Types permit (automatic) \emph{checking} before
\emph{building}. Doing software without types is like doing \emph{biology}
without a post-Linnaean \emph{taxonomy}. But beware: much software running
today is still {untyped} or too {weakly typed}.

\paragraph{Contract-oriented programming}
In the meantime, static type checking has evolved from ensuring \emph{static}
types (at compile-time) to ensuring that desirable properties are maintained
at run-time, leading to extended (or \emph{dynamic}) type checking. Such
dynamic types are known also as \emph{contracts}. The advice is that, as in the regular functioning of any {society}, programming should be based on \emph{formal contracts} \cite{Mey92,JLX03} validated by the underlying {maths} and supported by dedicated
toolsets.
\begin{center}
	\includegraphics[width=0.30\textwidth]{contract.jpg}
\end{center}
This discipline ensures {safety} and {security} and is essential to \emph{safety-critical} equipment operation.

\paragraph{Parametricity and scalability}
Adaptability is a much valued feature in classical engineering.
Adaptable design is a paradigm that extends the intended utility of products and designs beyond the initial, intended setting. Adaptability aims at reusing the same “design” for the creation of different products.

The mathematical essence of software enables particularly interesting forms of adaptability.
Software engineers faced with a ``new" problem tend to reuse (by copying, pasting and modifying) previously developed code. Quite often, a component is copied, renamed and little more is needed. This means that the original code and the modified one are abstractly the same. For instance, determining the length of a list does not depend on the kind of elements kept in the list. Furthermore, length-of-a-list is but an instance of a more general problem, that of counting the number of items in a finite data structure, independently of its topology. This feature of software is termed \emph{parameterization} and has been known for a long time \cite{DM82}.

Software developers should be trained to appreciate writing \emph{parametric}, reusable
code --- that is, \emph{generic} code which is automatically \emph{instantiated} in
particular situations. This is not only intellectually rewarding but also
brings elegance and economy into programming. So-called \emph{polymorphic
types} do this automatically and there is a nice theory behind them called
\emph{parametric polymorphism} \cite{MR91,Wa89}. So nice that one can derive \emph{properties} of one's code even \emph{before} \emph{writing it} \cite{MSSV14},

It is no wonder that parametricity promotes code reuse and makes software solutions more robust and truly scalable.

\section{Summary}
The starting point of the section above was the realization that, with software
taking over all fields of (what used to be solely) human activity, the challenges
to be faced in the future by software designers are enormous. Insecurity,
risk of malfunction/failure in increasingly complex systems will reach unprecedented levels.

This was followed by listing some technical ingredients for good software design that are regarded as useful to mitigate the complexity that lies ahead --- considering software as a \emph {product} and ignoring (intentionally) its development process, which is a distinct problem.

Even though the average software designer will agree on the relevance of such design principles, these tend to be overlooked or poorly adopted (if not at all ignored) by programmers lacking the required background knowledge.

Several decades of teaching experience of the author of this text suggest that there is
a proper timing for acquiring such background knowledge: this should take
place in the early phases of graduate education, at the same time students
face other ``theoretical subjects" in the fields of physics and maths, for
instance. Doing it later is unfortunately too late. On the other hand, not
every programming paradigm is suitable for such training. Again based on
experience, it has become clear that \emph{functional programming} (FP) provides
an easier vehicle for students to understand and apply such basic principles.
This calls for a \emph{functional-first} academic syllabus.

A traditional obstacle to teaching FP in the past was the inefficiency of
the functional languages available at the time. But, thanks to tremendous advances in the field in the last decades, this is no longer a (very serious) problem.

Another piece of resistance in the minds of students has been the feeling that FP is not main stream in industry. But this is changing steadily, with more and more software companies switching (at least in part) to FP in areas such as finance application design, data science or domains where high levels of safety and security are at target.

The main point of functional-first syllabi is that switching to \emph{thinking
functionally} can be a tremendous effort for students addicted to the atomicity
of the one-instruction-at-a-time programming paradigm.
By contrast, the converse switch from functional to imperative or object-oriented programming is not so demanding. FP calls for a good, overall perception of the whole picture and
for a clear insight on how data flows throughout the designed artifact. Moreover, since
functions can lose information, there is always a ``proper place" in the
pipeline for a particular function to be inserted.

Atomicity or structuralism also impacts the way programmers validate their software. FP promotes a ``correct-by-construction" approach to programming that promises significant reduction in development costs by avoiding dependence on testing and debugging. Rather than \emph{unit testing} focussing on particular components, FP tests are usually expressed in terms of desirable properties involving several functions at the same time. It is thus no wonder that tools such as e.g. QuickCheck started in the FP field \cite{CH00}.\footnote{The shortcomings of testing are well-known. It is hopelessly inadequate in situations such as concurrency (where scenarios are often impossible to reproduce) and with very large input spaces (such as robots and autonomous cars with video sensors).}

Structural design, data-flow awareness and less dependence on testing also promote a solid FP background towards new, emerging programming paradigms such as reversible and quantum computing \cite{NBO21}. For instance, while classical memory access does not harm the data, reading quantum data dramatically spoils the quantum effect. From this perspective, addiction to the edit-run-debug vicious development cycle can substantially reduce the proficiency of a ``conventional" programming mind once faced with such new technologies.

Functional programming and FP calculi alone are, however, not enough. Problem specifications as a rule involve functions but \emph{are} not functions in themselves. Thus, a strictly functional algebra of programs cannot fully bridge the specification-level to the implementation-level, compromising the ``correct-by-construction" desideratum. There are two options there: either start from specifications expressed in first-order logic and somehow derive functional implementations from them; or extend the \emph{pointfree} calculus of functions so that the specifications themselves can also be written in the same style.

\section{Why this book?}
The well-known aphorism \emph{"functions are special cases of relations"} is the main guideline for the second alternative --- extend the calculus of functions towards a calculus of relations --- and such is the principle behind texbook \cite{BM97} and the current ``book". This explains the two parts \emph{Calculating with Functions} (part \textsc{\ref{pt:20200908b}})
and \emph{Calculating with Relations} (part \textsc{\ref{pt:20200908c}}).

When the author of this draft textbook decided to teach the
{algebra of programming} to 2nd year computer science students, back to 1998, he found textbook \cite{BM97} too difficult for the
students to follow, mainly because of its too explicit categorial (allegorical)
flavour. So he decided to start writing slides and notes helping the students
to read the book. Eventually, such notes became chapters \ref{ch:990122a}
to \ref{ch:050419a} of the current version of this monograph. The same procedure
was taken when teaching the relational approach of \cite{BM97} at master
level, see chapters \ref{ch:120411a} to \ref{ch:990126i}.

Another motivation in complementing \cite{BM97} is to give a wider perception
of the usefulness of relational algebra in calculating software that is \emph{data
intensive}. Indeed, relations are as effective in describing algorithms as
they are in describing data, which sanctions the “equation”
\begin{quote}
\emph{Algorithms + Data Structures = Programs} \cite{Wi76}
\end{quote}
with nice theoretical homogeneity.
%
This homogeneity can be found in tools such as Alloy \cite{Jac12}, for instance,
which has been used in the lab part of the courses mentioned above along
with Haskell.

There is a promised third part, \emph{Calculating with Matrices}
(part \textsc{\ref{pt:20200922a}})
which will evolve naturally from the first two, heading towards \emph{quantitative}
aspects of software design. In the age of data mining and machine learning
it is very important to bring type safety and calculational design to these
subjects, and standard relational database theory "\`a la Codd" \cite{Ma83}
is not enough, as is explained in \cite{OM17} for instance. Typed linear
algebra, which is also making a contribution to probabilistic programming
\cite{MuO15} seems to be a promise in such direction, but some consolidation
of this kowledge needs to take place before it can be brought into the classroom.

\iffalse % NO CHAP 1 YET
\paragraph{Divide \& conquer metaphor}
We have developed a sound theory for (safe) \emph{guessing} called \textsc{abstract interpretation} --- widely used in tools nowadays.
We learned to better understand and take advantage of this `\emph{quinta essentia}' of \emph{programming}.
%the policy of maintaining control over one's subordinates or subjects by encouraging dissent between them.

	\includegraphics[width=0.80\textwidth]{dc.jpg}

Thanks to \emph{D\&C} our programs have become \emph{parallel}. Think of
\emph{Google}, \emph{cloud} computing, ...

\defbox{
The restriction to {cata, ana, hilo}-morphisms is for the formal specification of The 90s, like the ban on "go-to" s in the structured programming of the 70s.
}


Functions are special cases of relations that are mathematically rich and
particularly simple to understand: for |R, S := f, g| above, where |f| and
|g| are suitably typed functions, |f . g| means function \emph{composition}:
\begin{quote}
|(f.g)x=f(g x)|
\end{quote}
This forms the basis of a whole discipline in \emph{compositionality} in
functional programming, making this style one of the most solid paradigms
in software design.

The main purpose of this  \doc\ is
% to shift from such ``in-the-large'' application of relational algebra to the ``in-the -small'' calculation of
to show the application of calculational techniques to software verification.

It follows a pedagogical plan
\fbox{TBC}

% studies in software design.
\fbox{Just a few notes --- not given in the current version of this textbook}

|for i=1 to 4 do { industry(i); }|

\F
\section{Book Structure}
\F
\section{How to Read This Book}
\F
Chapters \ref{ch:050419a} and \ref{sec:050419b} are transitional..... \F
Concerning software `engineering':

\section{Global picture}
Concerning software `engineering':\footnote{Credits: Zhenjiang Hu, NII, Tokyop JP.}
\emskip
\begin{center}
	{\includegraphics[width=1.0\textwidth]{hu.jpg}}
\end{center}
%\end{slide}

\section{Brief introduction to FM}

\begin{description}
\item[Science]
	Science is about understanding how \textbf{things} work
\item[Engineering]
	This is about ensuring that some \textbf{desirable things} happen repetitively and \textbf{reliably}.
\end{description}
Theodore Von Karman, an aerospace engineer quoted in \red\url{http://www.discoverengineering.org}\black, puts it in this way:
\begin{quote}
	\emph{``\textbf{Scientists} discover the world that exists; \textbf{engineers} create the world that never was.''}
\end{quote}
In both cases:
	Need for scientific \textbf{methods}.

\section{Have you ever used a FM?}
Of course you have! Check this:
\begin{itemize}
\item
\textbf      {A problem}
\begin{quote}
My three children were born at a 3 year interval rate.
Altogether, they are as old as me.
I am 48. How old are they?
\end{quote}
\item
\textbf{A model}
\begin{eqnarray*}
	|x + (x + 3) + (x + 6) = 48|
\end{eqnarray*}
--- maths description of the problem.
\item
\textbf      {Some calculations}
\begin{eqnarray*}
\start
		3x + 9 = 48
	%
	\just\equiv{ "al-djabr" rule}
	%
		3x =  48 - 9
	%
	\just\equiv{ "al-hatt" rule }
	%
		x =  16 - 3
	%
\end{eqnarray*}
\item
\textbf      {The solution}
\begin{eqnarray*}
	x &=& 13
\\
	x + 3 &=& 16
\\
	x + 6 &=& 19
\end{eqnarray*}
\end{itemize}

"Al-djabr" rule ?  "al-hatt" rule ?
\begin{center}
	\includegraphics[width=0.8\textwidth]{aldjabr.jpg}
\end{center}
These rules that you have used so many times were discovered by Persian mathematicians,
notably by Al-Huwarizmi (9c AD).\footnote{
The term ``\textbf{algebra}" stems from "\textbf{al-djabr}" and \emph{"\textbf{algarismo}"} from \textbf{Al-Huwarizmi}.}
% You should read Pedro Nunes (1502-1578) \emph{Libro de Algebra en Arithmetica y Geometria} dated 1567 \ldots

\section{Software problems}
Now, suppose the \textbf{problem} was
\begin{quote}
I have a class of students. Please write a program to list the students ordered by
their marks.
\end{quote}
Is there a mathematical \textbf{model} for this problem?

Yes, of course there is --- see below:
\begin{code}
sort atmost (cap (syd bag bag)(syd true sorted))
   where
     sorted = ... marks ...
     bag = ....
\end{code}
But,
\begin{itemize}
\item	what do |cap X Y|, |syd f g| ... mean here?
\item	Is there an ``\textbf{algebra}'' for such symbols?
\end{itemize}
Yes --- Wait and see :-)

\paragraph{FM --- scientific software design}
\xymatrix{
	\fcolorbox{black}{myGray}{\makebox(32,20)[cc]{What}}
		\ar@@/^4pc/[dd]^-{calculate}
&&
	specification
&
	(model)
\\
	\fcolorbox{black}{myGray}{\makebox(32,20)[cc]{Why}}
		\ar[u]
&&
	justification
\\
	\fcolorbox{black}{myGray}{\makebox(32,20)[cc]{How}}
		\ar@@/^4pc/[uu]^-{analyse}
		\ar[u]
&&
	implementation
&
	(program)
}

\paragraph{FM --- simplified life-cycle}
\begin{eqnarray*}
\xymatrix{
	client's\ problem
		\ar[r]
&
	\fcolorbox{black}{myGray}{Requirements}
		\ar[d]_{specify}
\\
&
	\fcolorbox{black}{myGray}{Specification}
		\ar@@/^2pc/[r]^-{model\ check}
		\ar[d]_{calculate}
&
	\fcolorbox{black}{myGray}{Model\ (Alloy)}
		\ar@@/^2pc/[l]^-{revise}
\\
&
	\fcolorbox{black}{myGray}{Implementation}
		\ar[d]_{encode}
\\
	designed\ solution
&
	\fcolorbox{black}{myGray}{Code}
		\ar[l]
}
\end{eqnarray*}

\paragraph{Notation matters!}
Taken from Cliff B.\ Jones 1980 \cite{Jo80}:
\begin{center}
	\includegraphics[scale=.50]{cartoon.jpg}
\end{center}

\section{Well-known FM notations / tools / resources}
Just a sample, as there are many  --- follow the links (in alphabetic order):
\emskip
\textbf{Notations:}
\begin{itemize}
\item	\href{http://alloy.mit.edu/alloy/book.html}{Alloy}
\item	\href{http://www.methode-b.com/}{B-Method}
\item	\href{http://www.eecs.ucf.edu/~leavens/JML//index.shtml}{JML}
\item	\href{http://www.mcrl2.org/web/user_manual/index.html}{mCRL2}
\item	\href{http://www.adacore.com/sparkpro}{SPARK-Ada}
\item	\href{http://lamport.azurewebsites.net/tla/hyperbook.html}{TLA+}
\item	\href{https://web-beta.archive.org/web/20080828013815/http://www.vdmportal.org}{VDM}
\item	\href{http://spivey.oriel.ox.ac.uk/mike/zrm/}{Z}
\end{itemize}
\textbf{Tools:}
\begin{itemize}
\item	\href{http://alloy.mit.edu/alloy/download.html}{Alloy 4}
\item	\href{https://coq.inria.fr/}{Coq}
\item	\href{http://frama-c.com/}{Frama-C}
\item	\href{http://nusmv.fbk.eu/}{NuSMV}
\item	\href{http://overturetool.org}{Overture}
\end{itemize}
\textbf{Resources:}
\begin{itemize}
\item	\href{http://www.fmeurope.org/}{Formal Methods Europe}
\item	\href{http://formalmethods.wikia.com/wiki/VL}{Formal Methods wiki (Oxford)}
\end{itemize}

\CUT{
O mundo antropisado tende a transformar-se sempre que uma descoberta científica potencia novas formas de empreendedorismo. Mas nem sempre uma novidade científica ou técnica está suficientemente amadurecida para alavancar o negócio que a sua aplica\-ção prática promete. É então comum passar-se por um período de ``stress'' tecnológico em que a oferta do cientista fica aquém da procura do empresário. A pressão de se chegar rapidamente ao mercado (``time to market'') cria a necessidade de improvisar tecnologia e recorrer à ``navegação à vista'', tal como a faziam os mareantes do séc.\ XIV na ausência de uma verdadeira ciência náutica, pressionados pela necessidade de chegar o mais depressa possível a novas terras e a mercados virgens. Não raro, a teoria é aplicada numa fase incipiente, ainda afectada por incoerências que dificultam a sua cabal utilização. Em Portugal, já no séc. XVI o cosmógrafo-mor do reino Pedro Nunes, catedrático em Coimbra, não hesitava em dar aulas aos pilotos enquanto aperfeiçoava a base matemática das técnicas que lhes ensinava. E ficou para a história alguma crispação entre o teórico, o matemático --- que nunca navegou --- e os homens do mar a quem ele confiava as recomendações que iam emergindo dos seus cálculos.

Many years passed, \emph{navigation} has become a trivial activity: everybody
is able to \emph{visit} every corner of the world just by clicking the mouse on a lap-top computer. Trading is performed electronically.
The advent of home computing and world-wide network facilities has brought
computer software unprecedented relevance in everybody's life,
from home banking and electronic shopping to the upsurge of
electronic democracy.

However, is the technology underlying such wonderful advances reliable enough?
The more our lifes rely on machines, the more dependent we are on their well behaviour and reliability. Aren't we facing new risks?

\mbox{news headlines}

The recent collapse of the Portuguese MoEducation school teacher allocation system, a ``national'' problem later to be solved by a small software house which claims to use formal methods in their normal practice, has driven the country's attention to the need for better trained software engineers. Skills as basic as the ability to think and reason in terms of abstract models and the effective use of mathematics and algorithmic science in normal, daily business practice are on demand.

The development of computer software has always been a %mind bewildering
contradictory activity. In the mid 1960s, a \aspas{software crisis} was identified which drew attention to the poor technical sophistication of the (then emerging) software technology. % discipline of programming.
Many years passed, the theoretical advances in programming science --- which has become a stable discipline meanwhile --- are still by and large ignored by the ever growing community of programmers.

Time-to-market is among the main factors enforcing \emph{ad hoc} programming
practice.
%which is reaching the status of a proper programming discipline under the \emph{extreme programming} heading \cite{}.
However, a quick market entails indirect costs such as
% Difficult project management, late delivery,
permanent risk, poor quality and low reliability of the produced code,
and hard maintenance.
% are among the negative implications of the time-to-market strategy.

The situation is no better in education: software design remains among the very few topics which many engineering departments still accept to address with little (if any) scientific basis. This book is intended to contribute

\F
Software industry has always been an area of successful business,
albeit technically under-developed and affected
by a so-called "software crisis" since the early 1960s.
With the advent of the recent world economical crisis,
it has become clear that quality will play a more a more prominent
role in the software artifact market.
In fact, the apparent miracle of producing technology on a
ill scientific basis is no longer possible,
and quality at low-cost can only be attained if software is produced on a
sound formal basis.

The main target of so-called formal methods for software design
is to drive software production into good engineering standards,
in contrast with the traditional view that computer programming is
but an ad hoc activity.
\F

\section{Why Program Design by Calculation?}
%\section{Problem-solving strategy}
\small
Software technology is becoming a mature discipline in its (however late)
adoption of the \textbf{universal problem solving} strategy (UPS) which one is taught at school:
\begin{itemize}
\item \textbf{understand} your problem
\item build a mathematical \textbf{model} of it
\item \textbf{reason} in such a model
\item upgrade your model, if necessary
\item \textbf{calculate} a final solution and implement it.
\end{itemize}
%%\end{slide}

%\section{School maths UPS example}
The problem:
\begin{quote}\em
My three children were born at a 3 year interval rate.
Altogether, they are as old as me.
I am 48. How old are they?
\end{quote}
The model:
{\yellow
\begin{eqnarray*}
x + (x + 3) + (x + 6)
&=&
48
\end{eqnarray*}
}
The calculation:

\small
The calculation:
{\yellow
\begin{eqnarray*}
&&
3x + 9 = 48
%
\just\equiv{ ``al-djabr'' rule}
%
3x =  48 - 9
%
\just\equiv{ ``al-hatt'' rule }
%
x =  16 - 3
%
\end{eqnarray*}
}
The solution:%
{\yellow%
\begin{eqnarray*}
x &=& 13
\\
x + 3 &=& 16
\\
x + 6 &=& 19
%
\end{eqnarray*}
}
%%\end{slide}

%\section{UPS sophistication}
\small
Only the underlying mathematics changes:
\begin{itemize}
\item from simple \textbf{arithmetics} at primary school to
\item systems of \textbf{linear} equations, then to
\item \textbf{differential/integral} equations
\item eventually: \textbf{software} calculi
\end{itemize}
Useful calculation rules are forever, e.g.:
\begin{eqnarray*} \yellow
x - \source z \leq y
&
\equiv
&
x \leq \target z + y
\end{eqnarray*}
cf.\ Al-Khowarizm's \emph{al-jabr} rule (9c)
\\
Galois connections (19c),
etc
%%\end{slide}
}%

\fi % NO CHAP 1 YET

\part{Calculating with Functions}\label{pt:20200908b}

\chapter{An Introduction to Pointfree Programming}\label{ch:990122a}

Everybody is familiar with the concept of a \emph{function}
since the school desk.
The functional intuition traverses mathematics from end to end because
it has a solid semantics rooted on a well-known mathematical system
--- the class of \aspas{all} sets and set-theoretical functions.

Functional programming literally means \aspas{programming with functions}.
Programming languages such as \lisp\ or \haskell\ allow us to program with
functions. However, the functional intuition is far more reaching than producing
code which runs on a computer. Since the pioneering work of John McCarthy
--- the inventor of \lisp\ --- in the early 1960s, one knows that other branches
of programming can be structured, or expressed functionally. The idea of
producing programs by \emph{calculation}, that is to say, that of calculating
efficient programs out of abstract, inefficient ones has a long tradition
in functional programming.

This \doc\ is structured around the idea that functional programming
can be used as a basis for teaching programming as a whole,
from the successor function $n \mapsto n + 1$ to large information
system design.\footnote{This idea addresses programming in a broad sense,
including for instance \emph{reversible} and \emph{quantum programming},
where functional programming already plays leading roles \cite{MB01,MHT04,GLRSV13}.}

This chapter provides a light-weight introduction to the theory of functional
programming. The main emphasis is on \emph{compositionality}
--- one of the main advantages of ``thinking functionally'' --- by explaining
how to construct new functions out of other functions using a minimal set
of predefined functional \emph{combinators}.
This leads to a programming style that is \emph{point free} in the sense
that function descriptions dispense with variables (also known as \emph{points}).

Several technical issues are deliberately ignored and deferred to later chapters.
Most programming examples will be provided in the \haskell\ functional
programming language.
Appendix \ref{ch:Set.hs}
includes the listings of some \haskell\ modules
that complement the \hugs{\textsc{Haskell} Standard Prelude}
% (which is based very closely on the \emph{Standard Prelude} for \haskell\ 1.4.)
and help to \aspas{animate} the main concepts introduced in this chapter.

\section{Introducing functions and types} \label{sec:180409b}

The definition of a function
\begin{eqnarray}
f: \rarrow A {} B
\label{eq:980824a}
\end{eqnarray}
can be regarded as a kind of \aspas{process} abstraction:
it is a \aspas{black box} which produces an output once it is supplied with an
input:
\begin{center}
\begin{picture}(230,50)(-110,-25)
%thicklines
\put(-40,-25){\framebox(80,50){$f$}}
\put(-70,0){\vector(1,0){30}}
\put(+40,0){\vector(1,0){30}}
\put(-90,0){\makebox(0,0){|x ins A|}}
\put(+100,0){\makebox(0,0){|(f x) ins B|}}
\end{picture}
\end{center}
The box isn't really necessary to convey the abstraction and a single labelled arrow
suffices:
\begin{center}
|longrarrow A f B|
\end{center}
This simplified notation focusses on what is indeed relevant about
$f$ --- that it  can be regarded as a kind of \aspas{contract}:
\begin{quote}
$f$ \emph{commits itself} to producing a $B$-value provided it is supplied with an $A$-value.
\end{quote}
How is such a value produced? In many situations one wishes to ignore this
because one is just \emph{using} function $f$.
In others, however,
one may want to inspect the internals of the \aspas{black box}
in order to know the function's \emph{computation rule}.
For instance,
\begin{eqnarray*}
|succ| &:& \rarrow \N {} \N
\\
|succ n| &\deff& n + 1
\end{eqnarray*}
expresses the computation rule of the \emph{successor} function
--- the function |succ| which finds \aspas{the next natural number} ---
in terms of natural number addition and of natural number $1$.
What we above meant by a \aspas{contract} corresponds to the \emph{signature}
of the function, which is expressed by arrow \( \rarrow \N {} \N\) in the case
of |succ| and which,
by the way, can be shared by other functions, \eg\
\(
\sq n \deff n^2
\).

In programming terminology one says that |succ| and $\sq{}$ have the same
\aspas{type}. Types play a prominent r\^ole in functional programming
(as they do in other programming paradigms).
Informally, they provide the \aspas{glue},
or interfacing material,
for putting functions together to obtain more complex functions.
Formally, a \aspas{type checking} discipline can be
expressed in terms of compositional rules which check for functional
expression wellformedness.

It has become standard to use arrows to denote function signatures
or function types, recall (\ref{eq:980824a}).
%In this \doc\ the following variants will be used interchangeably to denote the fact that function $f$ accepts arguments of type $A$ and produces results of type $B$:
To denote the fact that function |f| accepts arguments of type |A| and produces
results of type B, we will use the following interchangeable notations:
\(
f : \rarrow A{}B
\),
\(
f : \larrow A{}B
\),
\(
\larrow A{f}B
\) or
\(
\rarrow A{f}B
\).
This corresponds to writing |f :: a -> b| in the \haskell\ functional programming
language, where type variables are denoted by lowercase letters.
$A$ will be referred to as the \emph{domain} of $f$ and
$B$ will be referred to as the \emph{codomain} of $f$.
Both $A$ and $B$ are symbols or expressions which denote sets of values,
most often called \emph{types}.

\section{Functional application}\label{sec:990105a}
What do we want functions for?
If we ask this question to a physician or engineer the answer is very likely
to be: one wants functions for modelling and reasoning
about the behaviour of real things. % or phenomena.

For instance, function
\(
\distance t = 60 \times t
\)
could be written by a school physics student to model the distance
(in, say, kilometers) a car will drive (per hour) at
average speed $60 km/hour$. When questioned about how far the car has gone
in 2.5 hours, such a model provides an immediate answer: just evaluate
\(
\distance{2.5}
\)
to obtain $150km$.

So we get a na\"ive purpose of functions:
we want them to be \emph{applied} to arguments in order to obtain results.
Functional \emph{application} is denoted by juxtaposition,
\eg\ $\ap f a$ for
\(
\larrow A{f}B
\) and
\(
        a \in A
\),
and associates to the left:
\(
\ap{\ap{f} x} y
\)
denotes
\(
\ap{(\ap{f} x)} y
\)
rather than
\(
\ap{f}{(\ap x y)}
\).

\section{Functional equality and composition}
Application is not everything we want to do with functions.
Very soon our physics student will be able to talk about properties of
the $\distance{}$ model,
for instance that (linear) property
\begin{eqnarray}
\distance{(2 \times t)} = 2 \times (\distance{t})     \label{eq:981211a}
\end{eqnarray}
holds.
Later on,
we could learn from her or him that the same property can be restated as
\(
\distance{(\twice t)} = \twice{(\distance{t})}
\),
by introducing function
\(
\twice{x} \deff 2 \times x
\).
Or even simply as
\begin{eqnarray}
	\distance{} \comp \twice{} = \twice{} \comp \distance{}
	\label{eq:981211b}
\end{eqnarray}
where \aspas{$\comp$} denotes function-arrow chaining,
as suggested by drawing
\begin{eqnarray}
\xymatrix@@R=2ex{
        \R      \ar[d]_-{\distance{}}      &
        \R	\ar[l]_-{\twice{}}
                \ar[d]^-{\distance{}}
\\
        \R                              &
        \R	\ar[l]^-{\twice{}}
					\label{eq:981211c}
}
\end{eqnarray}
where both space and time are modelled by real numbers in $\R$.

This trivial example illustrates some relevant facets of the functional
programming paradigm.
Which version of the property presented above is \aspas{better}?
the version explicitly mentioning variable $t$ and requiring parentheses
(\ref{eq:981211a})?
the version hiding variable $t$ but resorting to function $twice$
(\ref{eq:981211b})?
or even diagram (\ref{eq:981211c}) alone?

Expression (\ref{eq:981211b}) is clearly more compact than (\ref{eq:981211a}).
The trend for notation economy and compactness is well-known throughout
the history of mathematics. In the 16th century, for instance, algebrists would
write
%
% Ve85 p.150
%
\emph{12.cu.\~p.18.ce.\~p.27.co.\~p.17}
for what is nowadays written as
\(
12x^3+18x^2+27x+17
\).
We may find such \emph{syncopated} notation odd, but we should not forget that
at its time it was replacing even more obscure and lengthy expression denotations.

Why do people look for compact notations?
A compact notation leads to shorter documents
(less lines of code in programming)
in which patterns are easier to identify and to reason about.
Properties can be stated in clear-cut, one-line long equations which are
easy to memorize.
And diagrams such as (\ref{eq:981211c}) can be easily drawn which enable us to
visualize maths in a graphical format.

Some people will argue that such a compact \aspas{pointfree} notation
(that is, the notation that hides variables,
or function \aspas{definition points})
is too cryptic to be useful as a practical programming medium.
In fact,
pointfree programming languages such as Iverson's \textsc{Apl} or Backus' FP
have been more respected than loved by the programmers community.
Virtually all commercial programming languages require variables and so
implement the more traditional \aspas{pointwise} notation.

Throughout this \doc\ we will adopt both, depending upon the context.
Our chosen programming medium --- \haskell\ --- blends the pointwise and
pointfree programming styles in a quite successful way.
%
In order to switch from one to the other, we need two \aspas{bridges}:
one lifting equality to the functional level and the other lifting function application.

Concerning equality, note that the \aspas{$=$} sign in
(\ref{eq:981211a}) differs from that in (\ref{eq:981211b}):
while the former states that two real numbers are the same number,
the latter states that two $\larrow{\R}{}{\R}$
functions are the same function.
Formally, we will say that two functions
\(
f,g : \larrow A{}B
\)
are equal if they agree at pointwise-level, that is\footnote{Quantified notation
|rcb forall x P Q| means: ``\emph{for all |x| in the range |P|, |Q| holds}",
where |P| and |Q| are logical expressions involving |x|. (See appendix \ref{ch:180926a} for more details.)
This notation will be used sporadically in the first part of this \doc.}
\begin{eqnarray}
f = g & \iff & \rcb\forall a {a\in A}{\ap f a ~ =_B ~ \ap g a}
\label{eq:060128a}
\end{eqnarray}
where $=_B$ denotes equality at $B$-level. Rule (\ref{eq:060128a}) is known as \emph{extensional equality}.

Concerning application, the pointfree style replaces it by the more generic
concept of functional \emph{composition} suggested by function-arrow chaining:
wherever two functions are such that the target type of one of them,
say
\(
        \larrow A{g}B
\)
is the same as the source type of the other,
say
\(
        \larrow B{f}C
\),
then another function can be defined,
\(
        \larrow A{|f . g|}C
\),
called the \emph{composition} of $f$ and $g$, or \aspas{$f$ after $g$},
which \aspas{glues} $f$ and $g$ together:
\begin{eqnarray}
\ap{(f \comp g)}a & = & \ap{f}{(\ap g a)}	\label{eq:990115c}
\end{eqnarray}
This situation is pictured by the following arrow-diagram
\begin{eqnarray}
\xymatrix{
B
	\ar[d]_-{f}
&
A
	\ar[l]_-{g}
	\ar[dl]^-{f \comp g}
\\
C
}
\end{eqnarray}
or by block-diagram
\begin{center}
\begin{picture}(280,45)(-90,-25)
%thicklines
\put(-70,0){\vector(1,0){30}}
\put(-40,-20){\framebox(60,40){|g|}}
\put(-80,0){\makebox(0,0){$a$}}
%
\put(+20,0){\vector(1,0){40}}
\put(+37,7){\makebox(0,0){$\ap g a$}}
%
\put(60,-20){\framebox(60,40){$f$}}
\put(+120,0){\vector(1,0){30}}
\put(+170,0){\makebox(0,0){$\ap{f}{(\ap g a)}$}}
\end{picture}
\end{center}
%
Therefore,
the type-rule associated to functional composition can be expressed
as follows:\footnote{This and other type-rules to come adopt the usual ``fractional"
layout, reminiscent of that used in school arithmetics for addition, subtraction, etc.}
\begin{eqnarray*}
        \begin{array}{c}
        \larrow B f C
        \\ \larrow A g B
        \\ \hline
~       \larrow A{f \comp g}{C} ~
        \end{array}
\end{eqnarray*}

Composition is certainly the most basic of all functional combinators.
It is the first kind of \aspas{glue} that comes to mind when programmers
need to combine, or chain functions (or processes) to obtain more elaborate
functions (or processes).\footnote{
It even has a place in scripting languages such as \unix's shell, where
\texttt{f || g} is the shell counterpart of $g \comp f$,
for appropriate \aspas{processes} $f$ and $g$.}
This is because of one of its most relevant properties,
\begin{eqnarray}
(f \comp g) \comp h &=& f \comp (g \comp h)
\label{eq:698x}
\end{eqnarray}
depicted by diagram \rule{8em}{0pt}\(
\vcenter{
\xymatrix@@R=2.5ex@@C=5em{
&
D
	\ar[dl]_{|g.h|}
	\ar[d]^{|h|}
\\
B
	\ar[d]_{|f|}
&
A
	\ar[l]_{|g|}
	\ar[dl]^{|f.g|}
\\
C
}}\)
\\
which shares the pattern of, for instance
\begin{eqnarray*}
(a + b) + c &=& a + (b + c)
\end{eqnarray*}
and so is called the \emph{associative} property of composition.
This enables us to move parentheses around in pointfree expressions involving
functional compositions, or even to omit them altogether, for instance by writing
\(
        f \comp g \comp h \comp i
\)
as an abbreviation of
\(
        ((f \comp g) \comp h) \comp i
\),
or of
\(
        (f \comp (g \comp h)) \comp i
\),
or of
\(
        f \comp ((g \comp h) \comp i)
\),
\etc\
For a chain of $n$-many function compositions the notation
\(
\bullet_{i = 1}^{n} f_i
\)
will be acceptable as abbreviation of
\(
f_1 \comp (\cdots) \comp f_n
\).

\section{Identity functions}
How free are we to fulfill the \aspas{give me an $A$ and I will give you a $B$}
contract of equation (\ref{eq:980824a})?
In general, the choice of $f$ is not unique.
Some $f$s will do as little as possible while others will laboriously compute
non-trivial outputs.
At one of the extremes, we find functions which \aspas{do nothing} for us,
that is, the added-value of their output when compared to their input amounts
to very little:
\(
\ap f a = a
\).
In this case $B=A$, of course,
and $f$ is said to be the \emph{identity} function on $A$:
\begin{eqnarray}
\begin{array}{rcl}
id_A &:& \larrow A {} A
\\
\ap{id_A}a &\deff& a
\end{array}	\label{eq:990124a}
\end{eqnarray}

Note that every type $X$ \aspas{has} its identity $id_X$.
Subscripts will be omitted wherever implicit in the context.
For instance, the arrow notation
\(
\larrow\N{id}\N
\)
saves us from writing $id_{\N}$.
So, we will often refer to \aspas{the} identity function
rather than to \aspas{an} identity function.

How useful are identity functions?
At first sight, they look fairly uninteresting.
But the interplay between composition and identity,
captured by the following equation,
\begin{eqnarray}
f \comp id = id \comp f = f		\label{eq:981211d}
\end{eqnarray}
will be appreciated later on. This property shares the
pattern of, for instance,
\begin{eqnarray*}
        a + 0 = 0 + a = a
\end{eqnarray*}
which we are all familiar with.
This is why we say that |id| is the \emph{unit} (\emph{identity}) of composition.
Pictured in a diagram, (\ref{eq:981211d}) looks like this:
\begin{eqnarray}
\xymatrix{
        A
		\ar[d]_-{f}
&
        A      \ar[l]_-{id}
               \ar[dl]^-{f}
               \ar[d]^-{f}
\\
        B                              &
        B      \ar[l]^-{id}
}
        \label{eq:981211e}
\end{eqnarray}
Comparing diagrams (\ref{eq:981211c}) and (\ref{eq:981211e}),
the latter is interesting in the sense that it is \emph{generic}, holding for every |f|.
Diagrams of this kind are very common and express important (and rather 'natural') properties
of functions, as we shall see further on.
\jnowarning{verificar promessa!}

\section{Constant functions}
Opposite to the identity functions, which do not lose any information, we
find functions which lose all (or almost all) information. Regardless of
their input, the output of these functions is always the same value.

Let $C$ be a nonempty data domain and let $c\in C$.
Then we define the \emph{everywhere $c$} function as follows,
for arbitrary $A$:
\begin{eqnarray}
   \begin{array}{rcl}
        \kons c &:& \rarrow A {} C
\\      \ap{\kons c}a &\deff& c
   \end{array} \label{eq:Kons}
\end{eqnarray}
\esp
The following property defines constant functions at pointfree level,
\begin{eqnarray}
\kons c \comp f &=& \Kons c
\end{eqnarray}
and is depicted by a diagram similar to (\ref{eq:981211e}):
\begin{eqnarray}
\xymatrix{
        C      \ar[d]_-{id}		&
        A      \ar[l]_-{\kons c}
               \ar[dl]^-{|const c|}
               \ar[d]^-{f}
\\
        C				&
        B      \ar[l]^-{\kons c}
}
                                                \label{eq:981219a}
\end{eqnarray}
Clearly, |const c . f = const c . g|, for any |f,g|, meaning that any difference
that may exist in behaviour between such functions is lost.

Note that, strictly speaking, symbol $\kons c$ denotes two different functions
in diagram (\ref{eq:981219a}): one, which we should have written ${\kons c}_A$,
accepts inputs from $A$ while the other,
which we should have written ${\kons c}_B$,
accepts inputs from $B$:
\begin{eqnarray}
        \kons c_B \comp f &=& \Kons c_A		\label{eq:698d}
\end{eqnarray}
This property will be referred to as the constant-\emph{fusion} property.

As with identity functions,
subscripts will be omitted wherever implicit in the context.

\begin{exercise}% suggested by alhassy@gmail.com: Also earlier you pause to mention the definiteness of (the) identity function, perhaps include a remark or ask the reader to check that any other function with that computation rule is necessarily id. This way the reader will need to use the extensionality principle given earlier.
Use (\ref{eq:060128a}) to show that |f . h = h . f = f| has the unique solution |h=id|, cf.\
(\ref{eq:981211d}).\footnote{This textbook follows the convention that free variables such as |f| above are always assumed universally quantified. Thus what is to be shown above is: |rcb forall (h,f) () (f . h = h . f = f <=> h = id|.}
\end{exercise}

\begin{exercise}\label{ex:const}
The \hugs{\textsc{Haskell} Prelude} provides for constant functions:
you write
\ensuremath{\mathsf{const}\;\Varid{c}}
for $\kons c$.
Check that \hugs{\textsc{Haskell}} assigns the same type to expressions
|f . (myconst c)| and |myconst (f c)|,
for every \ensuremath{\Varid{f}} and \ensuremath{\Varid{c}}.
What else can you say about these functional expressions? Justify.\footnote{The properties of Haskell's higher order function $\mathsf{const}$ will be dealt with in more detail later in exercise \ref{ex:181103a}.}
\end{exercise}

\section{Monics and epics}\label{sec:mon&epi}
Identity functions and constant functions are limit points of the
functional spectrum with respect to information preservation.
All the other functions are in between:
they lose \aspas{some} information,
which is regarded as uninteresting for some reason.
This remark supports the following
aphorism about a facet of {functional programming}: it is the \emph{art}
of transforming or losing information in a controlled and precise way.
That is to say,
the art of constructing the exact observation of data which fits in a particular
context or requirement.

How do functions lose information?
Basically in two different ways: they may be \aspas{blind} enough to
confuse different inputs, by mapping them onto the same output,
or they may ignore values of their codomain.
For instance,
$\kons c$ confuses \emph{all} inputs by mapping them all onto $c$.
Moreover,
it ignores all values of its codomain apart from $c$.

Functions which do not confuse inputs are called \emph{monics}
(or \emph{injective} functions) and obey the following property:
$\larrow A{f}B$ is \emph{monic} if, for every pair of functions
$\larrow C{h,k}A$,
if $f\comp h=f\comp k$ then $h=k$, \cf\ diagram
\[
\xymatrix{%
   B & A \ar[l]_-{f} & C \ar@@<-2pt>[l]_-{h} \ar@@<2pt>[l]^-{k}
}
\]
(we say that $f$ is \aspas{post-cancellable}).
%
It is easy to check that \aspas{the} identity function % $id$
is monic, since
\begin{eqnarray*}
\start
	|id.h=id.k|
%
\just\equiv{|id| is unit of composition (\ref{eq:981211d})}
%
	|h = k|
%
\end{eqnarray*}
which trivializes $id \comp h = id \comp k \implies h = k$.
By contrast, any constant function $\kons c$ is {not} monic:
\begin{eqnarray*}
& &     \kons c \comp h = \Kons c \comp k \implies h = k
%
\just\equiv{by (\ref{eq:698d})}
%
        \kons c = \Kons c \implies h = k
%
\just\equiv{function equality is reflexive}
%
        \true \implies h = k
%
\just\equiv{predicate logic}
%
        h = k
\end{eqnarray*}
So the implication does not hold in general (only if $h = k$).

Functions which do not ignore values of their codomain are called \emph{epics} (or \emph{surjective} functions) and obey the following property:
$\larrow B{f}A$ is \emph{epic} if, for every pair of
functions $\larrow A{h,k}C$,
if $h\comp f=k\comp f$ then $h=k$, \cf\ diagram
\[
\xymatrix{
   C & \ar@@<2pt>[l]^-{h} \ar@@<-2pt>[l]_-{k} A & \ar[l]^-{f} B
}
\]
(we say that $f$ is \aspas{pre-cancellable}).
%
As expected, identity functions are epic:
\begin{eqnarray*}
& &     h \comp id = k \comp id \implies h = k
%
\just\equiv{by (\ref{eq:981211d})}
%
        h = k \implies h = k
%
\just\equiv{predicate logic}
%
    \true
\end{eqnarray*}

\begin{exercise}
Under what circumstances is a constant function epic? Justify.
\end{exercise}

\section{Isos}\label{sec:Isos}
A function $\larrow A f B$ which is both monic and epic is said to be \emph{iso}
(an isomorphism, or a bijective function).
In this situation, $f$ always has a \emph{converse} (or \emph{inverse}) $\rarrow B{f°}A$,
which is such that
\begin{eqnarray}
          f\comp f° =  id_B &\land& f°\comp f = id_A
\label{eq:060912a}
\end{eqnarray}
(\ie\ $f$ is {\em invertible}).

Isomorphisms are very important functions because they convert data from
one \aspas{format}, say $A$, to another format, say $B$,
without losing information.
So $f$ and and $f°$
are faithful protocols between the two formats $A$ and $B$.
Of course,
these formats contain the same \aspas{amount} of information,
although the same data adopts a different \aspas{shape} in each of them.
In mathematics, one says that $A$ is \emph{isomorphic} to $B$ and one
writes
\(
A \iso B
\)
to express this fact.

Isomorphic data domains are regarded as \aspas{abstractly} the same.
Note that, in general, there is a wide range of isos between two isomorphic
data domains.
For instance,
let |fun Weekday| be the set of weekdays,
\begin{eqnarray*}
\lefteqn{
	|fun Weekday| =
}\\ & &
	|{Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday}|
\end{eqnarray*}
and let symbol $\fun 7$ denote the set $\enset{1,2,3,4,5,6,7}$,
which is the \emph{initial segment} of $\N$ containing exactly seven elements.
The following function $f$,
which associates each weekday with its \aspas{ordinal} number,
\begin{quote}
|f : (fun Weekday) -> (fun 7)|
\\
|f Monday = 1|
\\
|f Tuesday = 2|
\\
|f Wednesday = 3|
\\
|f Thursday = 4|
\\
|f Friday = 5|
\\
|f Saturday = 6|
\\
|f Sunday = 7|
\end{quote}
is iso (guess |conv f|).
Clearly,
$\ap f d = i$  means \aspas{$d$ is the $i$-th day of the week}.
But note that function
\(
\ap g d \deff rem(\ap f d,7) + 1
\)
is also an iso between $\fun{Weekday}$ and $\fun 7$.
While $f$ regards $Monday$ the first day of the week,
$g$ places $Sunday$ in that position.
Both $f$ and $g$ are witnesses of isomorphism
\begin{eqnarray}
|fun Weekday| &\iso& |fun 7|
\label{eq:990115f}
\end{eqnarray}

Isomorphisms are quite flexible in pointfree reasoning. If,
for some reason, |conv f| is found handier than isomorphism |f| in the reasoning,
then the shunting rules
\begin{eqnarray}
\start
|f . g = h| \wider{\wider\equiv} |g = (conv f).h|
\label{eq:180211i}
\more
|g . f = h| \wider{\wider\equiv} |g = h . (conv f)|
\label{eq:180211j}
\end{eqnarray}
can be of help.

Finally, note that all classes of functions referred to so far
--- constants, identities, epics, monics and isos ---
are closed under composition,
that is,
the composition of two constants is a constant,
the composition of two epics is epic,
\etc

\section{Gluing functions which do not compose --- products}\label{sec:990115a}
Function composition has been presented above as a basis for
gluing functions together in order to build more complex functions.
However,
not every two functions can be glued together by composition.
For instance,
functions
\(
f : \larrow C{}A
\)
and
\(
        g : \larrow C{}B
\)
do not compose with each other because the domain of one of them is not
the codomain of the other.
However, both $f$ and $g$ share the same domain $C$.
So,
something we can do about gluing $f$ and $g$ together is to draw a diagram
expressing this fact, something like
\begin{eqnarray*}
        \xymatrix{
        A & & B
        \\ & C \ar[ul]^{f} \ar[ur]_{g}
}
\end{eqnarray*}

Because $f$ and $g$ share the same domain,
their outputs can be paired, that is,
we may write ordered pair $\pair{\ap f c,\ap g c}$ for each $c \in C$.
Such pairs belong to the Cartesian product of $A$ and $B$,
that is,
to the set
      \begin{eqnarray*}
           A \times B &\deff& \setdef{|(a,b)|}{|a ins A && b ins B|}
      \end{eqnarray*}
So we may think of the operation which pairs the outputs of $f$ and $g$
as a new function combinator $\split f g$ defined as follows:
\begin{equation}\label{eq:960923d}
\begin{array}{rcl}
\split f g &:& \rarrow C {} {A \times B}
\\
\ap{\split f g}c &\deff& \tuple{\ap f c, \ap g c}
\end{array}
\end{equation}

Traditionally, the pairing combinator $\split f g$ is
pronounced \aspas{$f$ \emph{split} $g$} (or \aspas{pair $f$ and $g$})
and can be depicted by the following \aspas{block},
or \aspas{data flow} diagram:
\begin{center}
\begin{picture}(170,100)(00,00)
\put(  0,50){\makebox(0,0){$c$}}
\put( 10,50){\line(1,0){30}}
\put( 40,70){\vector(1,0){30}}
\put( 40,30){\vector(1,0){30}}
\put( 40,30){\line(0,1){40}}
%
\put( 70,55){\framebox(50,30){$f$}}
\put( 70,15){\framebox(50,30){$g$}}
%
\put(120,70){\vector(1,0){30}}
\put(120,30){\vector(1,0){30}}
\put(160,70){\makebox(0,0){$\ap f c$}}
\put(160,30){\makebox(0,0){$\ap g c$}}
\end{picture}
\end{center}

\noindent
Function $\split f g$ keeps the information of both $f$ and $g$
in the same way Cartesian product $A \times B$ keeps the information of
$A$ and $B$.
So,
in the same way $A$ data or $B$ data can be retrieved from
$A \times B$ data via the implicit \emph{projections} $\p1$ or $\p2$,
       \begin{equation}\label{eq:59b}
          \xymatrix{A & A \times B \ar[l]_{\p1} \ar[r]^{\p2} & B }
       \end{equation}

\noindent
defined by
\begin{eqnarray*}
       \p1\tuple{a,b} = a & \hbox{and} &
       \p2\tuple{a,b} = b
\end{eqnarray*}
$f$ and $g$ can be retrieved from $\split f g$ via the same projections:
\begin{eqnarray}
	\p1 \comp \split f g  = f & \hbox{and} & \p2 \comp \split f g = g	\label{eq:700l} %= \label{eq:980411a}
\end{eqnarray}
This fact (or pair of facts) will be referred to as the
\emph{$\times$-cancellation} property and is illustrated in the following
diagram which puts everything together:
\begin{eqnarray}
\xymatrix{
        A
&
	A \times B
		\ar[l]_{\p1}
		\ar[r]^{\p2}
&
	B
\\
&
	C
		\ar[ul]^{f}
		\ar[u]^{\split f g}
		\ar[ur]_{g}
}	\label{eq:990115d}
\end{eqnarray}

\noindent
In summary, the type-rule associated to the \aspas{split} combinator is expressed by
\begin{eqnarray*}
\begin{array}{c}
        \larrow C f A
\\ \larrow C g B
\\ \hline
~       \larrow C{\split f g}{A \times B}	~
\end{array}
\end{eqnarray*}

A \emph{split} arises wherever two
functions do not compose but share the same domain.
What about gluing two functions which fail such a requisite,
\eg\
\begin{eqnarray*}
        \begin{array}{c}
        \larrow C f A
        \\
\larrow D g B
        \\ \hline
        \ldots ?
        \end{array}
\end{eqnarray*}
The $\split f g$ \emph{split} combination does not work any more.
Nevertheless, a way to \aspas{bridge} the domains of $f$ and $g$,
$C$ and $D$ respectively,
is to regard them as targets of the projections $\p1$ and $\p2$ of $C \times D$:
\begin{eqnarray*}
        \xymatrix{
           A & A \times B \ar[l]_{\p1} \ar[r]^{\p2} & B
        \\ C \ar[u]^{f} &
           C \times D \ar[l]_{\p1} \ar[r]^{\p2} &
           D \ar[u]^{g}
}
\end{eqnarray*}
From this diagram $\split{f \comp \p1}{g \comp \p2}$ arises
\begin{eqnarray*}
\xymatrix@@C=7em{
        A
&	A \times B
		\ar[l]_{\p1} \ar[r]^{\p2}
&	B
\\
&	C \times D	\ar[ul]^{f \comp \p1}
		\ar[ur]_{g \comp \p2}
		\ar[u]^{\split{f \comp \p1}{g \comp \p2}}
}
\end{eqnarray*}
mapping $C \times D$ to $A \times B$.
It corresponds to the \aspas{parallel} application of $f$ and $g$ which is
suggested by the following data-flow diagram:
\begin{center}
\begin{picture}(150,100)(00,00)
\put( 10,70){\makebox(0,0){$c$}}
\put( 10,30){\makebox(0,0){$d$}}
\put( 20,70){\vector(1,0){30}}
\put( 20,30){\vector(1,0){30}}
%
\put( 50,55){\framebox(50,30){$f$}}
\put( 50,15){\framebox(50,30){$g$}}
%
\put(100,70){\vector(1,0){30}}
\put(100,30){\vector(1,0){30}}
\put(140,70){\makebox(0,0){$\ap f c$}}
\put(140,30){\makebox(0,0){$\ap g d$}}
\end{picture}
\end{center}
%
Functional combination $\split{f \comp \p1}{g \comp \p2}$ appears so often
that it deserves special notation --- it will be expressed by $f \times g$.
So, by definition, we have
\begin{eqnarray}
f \times g &\deff& \split{f \comp \p1}{g \comp \p2} \label{eq:960923c}
\end{eqnarray}
which is pronounced \aspas{product of $f$ and $g$} and has typing-rule
\begin{eqnarray}
        \begin{array}{c}
        \larrow C f A
        \\
        \larrow D g B
        \\ \hline
        \larrow{C \times D}{f \times g}{A \times B}
        \end{array}
\label{eq:990112d}
\end{eqnarray}
Note the overloading of symbol \aspas{$\times$},
which is used to denote both Cartesian product and functional product.
This choice of notation will be fully justified
\jnowarning{verificar promessa!}
later on.

What is the interplay among functional combinators
$f \comp g$ (composition),
$\split f g$ (\emph{split}) and $f \times g$ (product) ?
Composition and \emph{split} relate to each other via the following property,
known as $\times$-\emph{fusion}:\footnote{Note how this law can be regarded as
a pointfree rendering of (\ref{eq:960923d}).}
\begin{eqnarray}
        \xymatrix{
A
&
A \times B
	\ar[l]_{\p1}
	\ar[r]^{\p2}
&
B
\\
&
C
	\ar[ul]^{g}
	\ar[u]^{\split g h}
	\ar[ur]_{h}
\\
&
D
	\ar[uul]^{g \comp f}
	\ar[u]^{f}
	\ar[uur]_{h \comp f}
}
&&
\const{g,h} \comp f = \const{g \comp f,h \comp f}
			        \label{eq:702e} %=\label{eq:970511b}
\end{eqnarray}
This shows that \emph{split} is right-distributive with respect to composition.
Left-distri\-butivity does not hold but there is something we can say about
\(
 f \comp \split g h
\)
in case $f = i \times j$:
\begin{eqnarray*}
& &     (i \times j) \comp \split g h
%
\just={by (\ref{eq:960923c})}
%
\split{i \comp \p1}{j \comp \p2} \comp \split g h
%
\just={by $\times$-fusion (\ref{eq:702e})}
%
\split{(i \comp \p1) \comp \split g h}
      {(j \comp \p2) \comp \split g h}
%
\just={by (\ref{eq:698x})}
%
\split{i \comp (\p1 \comp \split g h)}
      {j \comp (\p2 \comp \split g h)}
%
\just={by $\times$-cancellation (\ref{eq:700l})}
%
        \split{i \comp g}{j \comp h}
\end{eqnarray*}
The law we have just derived is known as $\times$-\emph{absorption}.
(The intuition behind this terminology is that
\aspas{\emph{split} absorbs $\times$}, as a special kind of fusion.)
It is a consequence of $\times$-fusion and $\times$-cancellation and
is depicted as follows:
\begin{eqnarray}
        \xymatrix{
   A & A \times B \ar[l]_{\p1} \ar[r]^{\p2} & B
\\ D \ar[u]^{i} &
   D \times E \ar[l]_{\p1} \ar[r]^{\p2} \ar[u]^{i \times j} &
   E \ar[u]^{j}
        \\ & C \ar[ul]^{g} \ar[u]^{\const{g,h}} \ar[ur]_{h}
}
&&	(i \times j) \comp \const{g,h} = \const{i \comp g,j \comp h}
\label{eq:970511c}
\end{eqnarray}
This diagram provides us with two further results about products and
projections which can be easily justified:
\begin{eqnarray}
i \comp \p1 &=& \p1 \comp (i \times j)		\label{eq:980115d}
\\
j \comp \p2 &=& \p2 \comp (i \times j)		\label{eq:980116a}
\end{eqnarray}

Two special properties of $f \times g$ are presented next.
The first one
expresses a kind of \aspas{bi-distribution} of $\times$ with respect to
composition:
\begin{eqnarray}
        (g \comp h) \times (i \comp j) &=&
	(g \times i) \comp (h \times j)			\label{eq:705h}
\end{eqnarray}
We will refer to this property as the \emph{$\times$-functor property}.
The other property,
which we will refer to as the \emph{$\times$-functor-id property},
has to do with identity functions:
\begin{eqnarray}
        id_A \times id_B &=& id_{A \times B}		\label{eq:705j}
\end{eqnarray}
These two properties will be identified as the \emph{functorial properties} of
product.
Once again, this choice of terminology will be explained later on.

Let us finally analyse the particular situation in which a \emph{split}
is built involving projections $\p1$ and $\p2$ only.
These exhibit interesting properties, for instance
\(
\split{\p1}{\p2} = id
\).
This property is known as $\times$-\emph{reflection} and is depicted as
follows:\footnote{For an explanation of the word ``\emph{reflection}" in the name chosen
for this law (and for others to come) see section \ref{sec:UnivProps} later on.}
\begin{eqnarray}
        \xymatrix{
        A & A \times B \ar[l]_{\p1} \ar[r]^{\p2} & B
        \\ & A \times B \ar[ul]^{\p1} \ar[u]^{id_{A \times B}} \ar[ur]_{\p2}
}
&&
        \const{\p1,\p2} = id_{A \times B}		\label{eq:703a}
\end{eqnarray}

What about $\split{\p2}{\p1}$?
This corresponds to a diagram
\begin{eqnarray*}
        \xymatrix{
        B & B \times A \ar[l]_{\p1} \ar[r]^{\p2} & A
        \\ & A \times B \ar[ul]^{\p2} \ar[u]^{\split{\p2}{\p1}} \ar[ur]_{\p1}
}
\end{eqnarray*}
which looks very much the same if submitted to a $180^o$ clockwise rotation
(thus $A$ and $B$ swap with each other).
This suggests that |swap| --- the name we adopt for $\split{\p2}{\p1}$,
\begin{eqnarray}
	|swap| \deff \split{\p2}{\p1}
	\label{eq:220913b}
\end{eqnarray}
--- is its own inverse;
this is checked easily as follows:
\begin{eqnarray*}
& &     |swap . swap|
%
\just={ (\ref{eq:220913b}) }
%
        \split{\p2}{\p1} \comp |swap|
%
\just={by $\times$-fusion (\ref{eq:702e})}
%
        \split{\p2 \comp |swap|}{\p1 \comp |swap|}
%
\just={definition of |swap| twice}
%
        \split{\p2 \comp \split{\p2}{\p1}}
      {\p1 \comp \split{\p2}{\p1}}
%
\just={by $\times$-cancellation (\ref{eq:700l})}
%
        \split{\p1}{\p2}
%
\just={by $\times$-reflection (\ref{eq:703a})}
%
        id
\end{eqnarray*}
%
Therefore, |swap| is iso and establishes the following isomorphism
\begin{eqnarray}
        \arIso{|A >< B|}{|B><A|}{|swap|}{|swap|}
	\label{eq:A1'}
\end{eqnarray}
which is known as the \emph{commutative property} of product.

The \aspas{product datatype} $A \times B$ is essential to information
processing and is available in virtually every programming language.
In \haskell\ one writes |(A,B)| to denote $A \times B$,
for $A$ and $B$ two predefined datatypes,
|fst| to denote $\p1$ and
|snd| to denote $\p2$.
In the C programming language this datatype is called the
\aspas{struct datatype},
\begin{code}
struct {
   A first;
   B second;
};
\end{code}
while in \pascal\ it is called the \aspas{record datatype}:
\begin{code}
record
  first: A;
  second: B
end
\end{code}
%
Isomorphism (\ref{eq:A1'}) can be re-interpreted in this context as a
guarantee that
\emph{one does not lose (or gain) anything in swapping fields in
record datatypes}.
C or \pascal\ programmers know also that record-field nesting has the same status,
that is to say that, for instance, datatype
\begin{code}
record
    f: A;
    s: record
           f: B;
           s: C;
       end
end;
\end{code}
is abstractly the same as
\begin{code}
record
    f: record
           f: A;
           s: B
       end;
    s: C;
end;
\end{code}

In fact, this is another well-known isomorphism,
known as the \emph{associative property} of product:
\begin{eqnarray}
A \times (B \times C) & \iso & (A \times B) \times C
\label{eq:timesAss}
\end{eqnarray}
This is established by
\(
\larrow{(A \times B) \times C}{assocr}{A \times (B \times C)}
\),
which is pronounced \aspas{associate to the right} and is defined by
\begin{eqnarray}
|assocr| &\deff& |split (p1.p1) (p2 >< id)|
\label{eq:990112b}
\end{eqnarray}

Appendix \ref{ch:Set.hs} lists an extension to
the \hugs{\textsc{Haskell} Standard Prelude}
% called \texttt{Set.hs},
that makes isomorphisms such as |swap| and |assocr| available.
In this module, the concrete syntax chosen for $\split f g$ is \verb! split f g !
and the one chosen for $f \times g$ is \verb!f >< g!.

\begin{exercise}
Rely on (\ref{eq:960923c}) to prove properties (\ref{eq:705h}) and (\ref{eq:705j}).
\end{exercise}

\section{Gluing functions which do not compose --- coproducts}
\label{sec:990115b}
The \emph{split} functional combinator arose in the previous section as
a kind of glue for combining two functions which do not compose but share the
same domain.
The \aspas{dual} situation of two non-composable functions
\(
        f : \larrow A{}C
\)
and
\(
        g : \larrow B{}C
\)
which however share the same codomain is depicted in
\begin{eqnarray*}
        \xymatrix{
        A \ar[dr]_{f} & & B \ar[dl]^{g}
        \\ & C
}
\end{eqnarray*}
It is clear that the kind of glue we need in this case should make it possible
to
apply $f$ in case we are on the \aspas{$A$-side} or to
apply $g$ in case we are on the \aspas{$B$-side} of the diagram.
Let us write $\alt f g$ to denote the new kind of combinator.
Its codomain will be $C$. What about its domain?

We need to describe the datatype which is \aspas{either an $A$ or a $B$}.
Since $A$ and $B$ are sets, we may think of $A \cup B$ as such a datatype.
This works in case $A$ and $B$ are disjoint sets,
but wherever the intersection $A \cap B$ is non-empty it is undecidable
whether a value $x\in A \cap B$ is an
\aspas{$A$-value} or a \aspas{$B$-value}.
In the limit, if $A=B$ then $A \cup B = A = B$,
that is to say,
we have not invented a new datatype at all.
These difficulties can be circumvented by resorting to \emph{disjoint union},
\begin{eqnarray*}
|A+B| &\deff& |cup {i1 a || a ins A} {i2 b || b ins B}|
\end{eqnarray*}
assuming the ``tagging" functions
\begin{eqnarray}
          \ap{i_1}a = \tuple{t_1,a} &,& \ap{i_2}b = \tuple{t_2,b} \label{eq:60c}
\end{eqnarray}
with types\footnote{
The tagging functions $i_1$ and $i_2$ are usually referred to as the \emph{injections} of the disjoint union.}
\(
        \xymatrix{
          A \ar[r]^{i_1} & A + B & B \ar[l]_{i_2}
}
\).
Knowing the exact values of tags $t_1$ and $t_2$
is not essential to understanding the concept of a disjoint union.
It suffices to know that $i_1$ and $i_2$ tag differently ($t_1\neq t_2$) and consistently.

The values of $A + B$ can be thought of as \aspas{copies} of $A$ or $B$ values
which are \aspas{stamped} with different tags in order to guarantee
that values which are simultaneously in $A$ and $B$ do not get mixed up.
For instance, the following realizations of $A+B$ in the C programming language,
%format _data = " data "
\begin{code}
struct {
    int tag; /* 1,2 */
    union {
       A ifA;
       B ifB;
    } _data;
 };
\end{code}
or in \pascal,
\begin{code}
record
    case tag: integer
    of x =
      1: (P:A);
      2: (S:B)
end;
\end{code}
adopt integer tags.
In the \hugs{\textsc{Haskell} Standard Prelude},
% which is based very closely on the \emph{Standard Prelude} for \haskell\ 1.4.,
the $A+B$ datatype is realized by
\begin{quote}\tt\small
\begin{verbatim}
data Either a b = Left a | Right b
\end{verbatim}
\end{quote}
So, \verb!Left! and \verb!Right! can be thought of as the injections
$i_1$ and $i_2$ in this realization.

At this level of abstraction,
disjoint union $A+B$ is called the \emph{coproduct} of $A$ and $B$,
on top of which we define the new combinator $\alt{f}{g}$
(pronounced \aspas{either $f$ or $g$}) as follows:
\begin{eqnarray}
\begin{array}{rcl}
\alt{f}{g} &:& \rarrow{A + B}~C
\\
\ap{\alt{f}{g}}x &\deff& \CONDX{x=\ap{i_1}a}{\ap f a}{x=\ap{i_2}b}{\ap g b}
\end{array}
\label{eq:000606a}
\end{eqnarray}

\noindent
As we did for products, we can express all this in a diagram:
\begin{eqnarray}
\xymatrix{
	A
		\ar[r]^{i_1}
		\ar[dr]_{f}
&
	A+B
		\ar[d]^{\alt f g}
&
        B
		\ar[l]_{i_2}
		\ar[dl]^{g}
\\
&
	C
}	\label{eq:990115e}
\end{eqnarray}

It is interesting to note how similar this diagram is to the one
drawn for products
--- one just has to reverse the arrows,
replace projections by injections and the \emph{split} arrow by the
\emph{either} one.
This expresses the fact that \emph{product} and \emph{coproduct} are
\emph{dual} mathematical constructs
(compare with \emph{sine} and \emph{cosine} in trigonometry).
This duality is of great conceptual economy because everything we can say
about product $A \times B$ can be rephrased to coproduct $A+B$.
For instance,
we may introduce the sum of two functions $f+g$ as the notion dual to
product $f \times g$:
\begin{eqnarray}
        f + g &\deff& \alt{i_1 \comp f}{i_2 \comp g} \label{eq:703d}
\end{eqnarray}
The following list of $+$-laws provides eloquent evidence of this duality:

\law{701c}{
        $+$-cancellation
}{
        \xymatrix{
        A \ar[r]^{i_1} \ar[dr]_{g} &
        A+B \ar[d]^{\alt g h} &
        B \ar[l]_{i_2} \ar[dl]^{h}
        \\ & C
}
}{
        \alt g h \comp i_1 = g \makebox[1em]{,} \alt g h \comp i_2 = h
}

\law{703b}{
$ + $-reflection
}{
        \xymatrix{
  A \ar[r]^{i_1} \ar[dr]_{i_1} & A + B \ar[d]^{id_{A + B}} &
  B \ar[l]_{i_2} \ar[dl]^{i_2}
        \\ & A + B
}
}{
\alt{i_1}{i_2} = id_{A + B}
}

\law{+-fusion}{
$   +   $-fusion
}{
        \xymatrix{
        A \ar[r]^{i_1} \ar[dr]_{g} \ar[ddr]_{f\comp g} & A+B \ar[d]^{\alt g h} &
        B \ar[l]_{i_2} \ar[dl]^-{h} \ar[ddl]^{f\comp h}
        \\ & C \ar[d]^{f}
        \\ & D
}
}{
f \comp \alt g h = \alt{f \comp g}{f \comp h}
}

\law{+-absorption}{
        $+$-absorption
}{
        \xymatrix{
   A \ar[r]^{i_1} \ar[d]_{i} & A+B \ar[d]_{i+j} & B \ar[l]_{i_2} \ar[d]^{j} &
        \\ D \ar[r]^{i_1} \ar[dr]_{g} & D+E \ar[d]^{\alt g h} &
   E \ar[l]^{i_2} \ar[dl]^{h}
        \\ & C
}
}{
        \alt g h \comp (i + j)  = \alt{g \comp i}{h \comp j}
}

\law{706b}{
        $+$-functor
}{
}{
(g \comp h) + (i \comp j) = (g + i) \comp (h + j)
}

\law{706d}{
        $+$-functor-id
}{
}{
        id_A + id_B = id_{A + B}
}

\esp
In summary,
the typing-rules of the \emph{either} and \emph{sum} combinators
are as follows:
\begin{eqnarray}
        \begin{array}{c}
           \larrow A f C
        \\ \larrow B g C
        \\ \hline
~       \larrow {A+B}{\alt f g}C       ~
        \end{array}
&&
        \begin{array}{c}
        \larrow A f C
        \\
        \larrow B g D
        \\ \hline
        \larrow{A + B}{f + g}{C + D}
        \end{array}
\label{eq:990112c}
\end{eqnarray}

\begin{exercise}
By analogy (duality) with |swap|, show that $\alt{i_2}{i_1}$ is its
own inverse and so that fact
\begin{eqnarray}
A + B  & \iso &  B + A		\label{eq:A1"}
\end{eqnarray}
holds.
\end{exercise}

\begin{exercise}
Dualize (\ref{eq:990112b}),
that is,
write the iso which witnesses fact
\begin{eqnarray}
A + (B + C) & \iso & (A + B) + C	\label{eq:A6}
\end{eqnarray}
from right to left.
Use the \texttt{either} syntax available from the
\hugs{\textsc{Haskell} Standard Prelude} to encode this iso in \haskell.
\end{exercise}

\section{Mixing products and coproducts}\label{sec:990112a}
Datatype constructions $A \times B$ and $A + B$ have been introduced above
as devices required for expressing the codomain of \emph{splits}
($A \times B$)
or the domain of \emph{eithers}
($A + B$).
Therefore, a function mapping values of a coproduct
(say $A + B$) to values of a product (say $A'\times B'$) can be expressed
alternatively as an \emph{either} or as a \emph{split}.
In the first case, both components of the  \emph{either} combinator are
\emph{splits}.
In the latter,
both components of the \emph{split} combinator are \emph{eithers}.

This exchange of format in defining such functions is known as the
\emph{exchange law}. It states the functional equality which follows:
\begin{eqnarray}
        \alt{\split f g}{\split h k} &=&
        \split{\alt f h}{\alt g k}		\label{eq:701d}
\end{eqnarray}
It can be checked by type-inference that both the left-hand side and
the right-hand side expressions of this equality have type
\(
\larrow{A + C}{}{B \times D}
\),
for
\(
\larrow A f B
\),
\(
\larrow A g D
\),
\(
\larrow C h B
\)
and
\(
\larrow C k D
\), cf.\ diagram:
\begin{eqnarray*}
\xymatrix{
	A
		\ar[r]^{i_1}
		\ar[d]_{f}
		\ar[drr]_{h}
&
	A+C
&
	C
		\ar[dll]_{g}
		\ar[d]^{k}
		\ar[l]_{i_2}
\\
	B
&
	B\times D
		\ar[l]^{\p1}
		\ar[r]_{\p2}
&
	D
}
\end{eqnarray*}

An example of a function which is in the exchange-law format is
isomorphism
\begin{eqnarray}
\longlarrow{(A \times B) + (A \times C)}{|undistr|}{A \times (B+C)}
\label{eq:990112f}
\end{eqnarray}
(pronounce |undistr| as \aspas{un-distribute-right})
which is defined by
\begin{eqnarray}
|undistr| &\deff& \alt{id \times i_1}{id \times i_2}
\label{eq:990115a}
\end{eqnarray}
and witnesses the fact that product distributes through coproduct:
\begin{eqnarray}
A \times (B+C) & \iso & (A \times B) + (A \times C)	\label{eq:A4}
\end{eqnarray}

In this context,
suppose that we know of three functions
\(
        \larrow A f D
\),
\(
        \larrow B g E
\)
and
\(
        \larrow C h F
\).
By (\ref{eq:990112c}) we infer
\(
        \larrow{B+C}{g+h}{E+F}
\).
Then, by (\ref{eq:990112d}) we infer
\begin{eqnarray}
        \longlarrow{A \times(B+C)}{f \times (g+h)}{D\times(E+F)}
\label{eq:990112e}
\end{eqnarray}
So, it makes sense to combine products and sums of functions
and the expressions which denote such combinations have the same
\aspas{shape} (or symbolic pattern)
as the expressions which denote their domain and range
--- the $\ldots \times (\cdots+\cdots)$ \aspas{shape} in this example.
In fact,
if we \emph{abstract} such a pattern via some symbol,
say $\fun F$
--- that is,
if we define
%
\def\fF#1#2#3{#1 \times (#2 + #3)}
\def\fG#1#2#3{(#1 \times #2) + (#1 \times #3)}
%
\begin{eqnarray*}
\fun F(\alpha,\beta,\gamma) &\deff& \fF\alpha\beta\gamma
\end{eqnarray*}
--- then we can write
\(
        \longlarrow{\fun F(A,B,C)}{\fun F(f,g,h)}{\fun F(D,E,F)}
\)
for (\ref{eq:990112e}).

This kind of abstraction works for every combination of products and
coproducts.
For instance,
if we now abstract the right-hand side of (\ref{eq:990112f}) via pattern
\begin{eqnarray*}
        \fun G(\alpha,\beta,\gamma) &\deff& \fG\alpha\beta\gamma
\end{eqnarray*}
we have
\(
        \fun G(f,g,h) = \fG f g h
\),
a function which maps
\(
        \fun G(A,B,C) = \fG A B C
\)
onto
\(
        \fun G(D,E,F) = \fG D E F
\).
All this can be put in a diagram
\begin{eqnarray*}
\xymatrix{
        \fun F(A,B,C) \ar[d]_-{\fun F(f,g,h)}      &
        \fun G(A,B,C) \ar[l]_-{|undistr|}
                      \ar[d]^-{\fun G(f,g,h)}
\\
        \fun F(D,E,F)                   &
        \fun G(D,E,F) % \ar[l]^-{|undistr|}
}
\end{eqnarray*}
which unfolds to
\begin{eqnarray}
\xymatrix{
        \fF A B C \ar[d]_-{\fF f g h}      &
        \fG A B C \ar[l]_-{|undistr|}
                  \ar[d]^-{\fG f g h}
\\
        \fF D E F                   &
        \fG D E F % \ar[l]^-{|undistr|}
}	\label{eq:990115b}
\end{eqnarray}
once the $\fun F$ and $\fun G$ patterns are instantiated.
An interesting topic which stems from (completing) this diagram will
be discussed in the next section.

\begin{exercise}
Apply the \emph{exchange law} to |undistr|.
\end{exercise}

\begin{exercise}		\label{ex:704(i)}
Complete the \aspas{?}s in diagram
\begin{eqnarray*}
        \xymatrix{
           &
   ? \ar[dl]_{\alt x y} \ar[d]^{id + id \times f} &
\\
   ? & ? \ar[l]^{\alt k g}
}
\end{eqnarray*}
and then solve the implicit equation for $x$ and $y$.
\end{exercise}

\begin{exercise}
Repeat exercise \ref{ex:704(i)} with respect to diagram
\begin{eqnarray*}
        \xymatrix{
           ? \ar[r]^{h + \split i j} \ar[dr]_{x + y} &
   ? \ar[d]^{id + id \times f}
        \\
           & ?
}
\end{eqnarray*}
\end{exercise}

\begin{exercise} %quest{cp1213q01b}
Show that
\(
\split {\alt f h \comp (\p1+\p1)} {\alt  g k \comp (\p2+\p2)}
\)
reduces to
$\alt{f \times g}{h\times k}$.
\end{exercise}

\section{Elementary datatypes}\label{sec:180211b}
So far we have talked mostly about arbitrary datatypes represented by capital
letters $A$, $B$, \etc\
(lowercase \texttt{a}, \texttt{b}, \etc\ in the \haskell\ illustrations).
We also mentioned $\R$, |Bool| and $\N$ and,
in particular,
the fact that we can associate to each natural number $n$ its
\emph{initial segment} $\fun n = \enset{1,2,\ldots,n}$.
We extend this to $\N_0$ by stating $\fun 0 = \enset{}$ and,
for $n>0$,
$\fun{n+1} = \enset{n+1} \cup \fun n$.

Initial segments can be identified with enumerated types
and are regarded as primitive datatypes in our notation.
We adopt the convention that primitive datatypes are written in the
\emph{sans serif} font and so,
strictly speaking,
$\fun n$ is distinct from $n$: the latter denotes a natural number
while the former denotes a datatype.

\subsection*{Datatype 0}
Among such enumerated types,
$\fun 0$ is the smallest because it is empty.
This is the \texttt{Void} datatype in \haskell,
which has no constructor at all.
Datatype $\fun 0$ (which we tend to write simply as $0$)
may not seem very \aspas{useful} in practice but it is of theoretical interest.
For instance,
it is easy to check that the following \aspas{obvious} properties hold,
\begin{eqnarray}
A + 0       & \iso & A		\label{eq:55f}
\\
A \times 0  & \iso & 0		\label{eq:960115a}
\end{eqnarray}
where the second is actually an equality: |A><0=0|.

\subsection*{Datatype 1}
Next in the sequence of initial segments we find $\fun 1$,
which is singleton set $\enset 1$.
How useful is this datatype?
Note that every datatype $A$ containing exactly one element is isomorphic
to $\enset 1$,
\eg\ $A = \enset{\nil}$, $A = \enset{0}$, $A = \enset{1}$, $A = \enset{\false}$,
\etc.
We represent this class of singleton types by $1$.

Recall that isomorphic datatypes have the same expressive power and so are
\aspas{abstractly identical}.
So, the actual choice of inhabitant for datatype $1$ is irrelevant,
and we can replace any particular singleton set by another without losing
information.
This is evident from the following, observing isomorphism,
\begin{eqnarray}
A \times 1  & \iso & A		\label{eq:A3}
\end{eqnarray}
which can be read informally as follows:
if the second component of a record (\aspas{struct}) cannot change,
then it is useless and can be ignored.
Selector $\p1$ is, in this context, an iso mapping the left-hand side
of (\ref{eq:A3}) to its right-hand side.
Its inverse is $\split{id}{\kons c}$ where $c$ is a particular choice of
inhabitant for datatype $1$.

In summary,
when referring to datatype $1$ we will mean an arbitrary singleton type,
and there is a unique iso (and its inverse) between two such singleton types.
The \haskell\ representative of $1$ is datatype \texttt{()},
called the \emph{unit type},
which contains exactly constructor \texttt{()}.
It may seem confusing to denote the type and its unique inhabitant by the same
symbol but it is not, since \haskell\ keeps track of types and constructors
in separate symbol sets.

Note that any function of type |A->1| is bound to be a constant function.
This function, usually called the ``bang", or "sink" function,
is denoted by an exclamation mark:
\begin{eqnarray}
	|rarrow A bang 1|
\label{eq:180211c}
\end{eqnarray}
Clearly, it is \emph{the unique} function of its type. (Can you write a different one,
of the same type?)

Finally, what can we say about $1 + A$?  Every function
\(
\larrow {1 + A}f B
\)
observing this type is bound to be an \emph{either}
\(
        \alt{\kons{b_0}}{g}
\)
for $b_0 \in B$ and $\larrow A g B$.
This is very similar to the handling of a pointer in C or \pascal:
we \aspas{pull a rope} and either we get nothing ($1$) or we get something
useful of type $B$.
In such a programming context
\aspas{nothing} above means a predefined value $\nil$.
This analogy supports our preference in the sequel for $\nil$ as canonical
inhabitant of datatype $1$.
In fact, we will refer to $1 + A$ (or $A + 1$) as the \aspas{pointer to $A$}
datatype.
This corresponds to the \texttt{Maybe} type constructor of the
\hugs{\textsc{Haskell} Standard Prelude}.

\subsection*{Datatype 2}
Let us inspect the $1 + 1$ instance of the \aspas{pointer} construction just
mentioned above.
Any observation $\larrow{1+1}f B$ can be decomposed in two constant
functions:
\(
        f = \alt{\kons{b_1}}{\Kons{b_2}}
\).
Now suppose that $B = \enset{b_1,b_2}$ (for $b_1\neq b_2$).
Then
\(
        1 + 1 \iso B
\)
will hold, for whatever choice of inhabitants $b_1$ and $b_2$.
So we are in a situation similar to $1$: we will use symbol $2$ to represent
the abstract class of all such $B$s containing exactly two elements.
Therefore, we can write:
\begin{eqnarray*}
        1 + 1 & \iso & 2
\end{eqnarray*}
Of course,
\(
	|Bool| = \enset{\true,\false}
\)
and
initial segment $\fun 2 = \enset{1,2}$ are in this abstract class.
In the sequel we will show some preference for the particular choice of
inhabitants
\(
        b_1 = \true
\)
and
\(
        b_2 = \false
\),
which enables us to use symbol $2$ in places where
\(
        \fun{Bool}
\)
is expected. Clearly,
\begin{eqnarray}
        2 \times A & \iso & A + A
\label{eq:051018a}
\end{eqnarray}

\begin{exercise} \label{ex:200205e}
Derive the isomorphism
\begin{eqnarray}
\longlarrow{(B \times A) + (C \times A)}{|undistl|}{|(B+C)><A|}
\label{eq:180211a}
\end{eqnarray}
from |undistr| (\ref{eq:990112f}) and other isomorphisms studied thus far.
\end{exercise}

\begin{exercise}% \quest{cp1718q18}
Use the exchange law to infer |undistl = split (p1 -||- p1) (either p2 p2)| from
the outcome of exercise \ref{ex:200205e}.
\def\resolucao{Tem-se:
\begin{eqnarray*}
\start
	|undistl = either ( i1 >< id ) ( i2 >< id )|
%
\just\equiv{|f><g = split (f.p1)(g.p2)| ; identidade}
%
	|undistl = either (split (i1.p1) p2) (split (i2.p1) p2)|
%
\just\equiv{ lei da troca}
%
	|undistl = split (either (i1.p1) (i2.p1)) (either p2 p2)|
%
\just\equiv{ |f + g = either (i1.f)(i2.g)|}
%
	|undistl = split (p1 -||- p1) (either p2 p2)|
%qed
\end{eqnarray*}
}
\end{exercise}

\begin{exercise}\label{ex:180211f}
Furthermore, show that (\ref{eq:051018a}) follows from (\ref{eq:180211a}) and,
on the practical side,
relate \haskell\ expression
\begin{quote}\small
\begin{verbatim}
either (split (const True) id) (split (const False) id)
\end{verbatim}
\end{quote}
to the same isomorphism (\ref{eq:051018a}).
% by applying the \emph{exchange law} (\ref{eq:701d}).
\end{exercise}

\section{Natural properties}\label{sec:180211e}
Let us resume discussion about |undistr| and the two other functions in
diagram (\ref{eq:990115b}).
What about using |undistr| itself to close this diagram, at the bottom?
Note that definition (\ref{eq:990115a}) works for $D$, $E$ and $F$ in the
same way it does for $A$, $B$ and $C$.
(Indeed, the particular choice of symbols $A$, $B$ and $C$ in (\ref{eq:990112f})
was rather arbitrary.)
Therefore, we get:
\begin{eqnarray*}
\xymatrix{
        \fF A B C \ar[d]_-{\fF f g h}      &
        \fG A B C \ar[l]_-{|undistr|}
                  \ar[d]^-{\fG f g h}
\\
        \fF D E F                   &
        \fG D E F \ar[l]^-{|undistr|}
}
\end{eqnarray*}
which expresses a very important property of |undistr|:
\begin{eqnarray}
        ( \fF f g h ) \comp |undistr| &=& |undistr| \comp ( \fG f g h )
\label{eq:080314a}
\end{eqnarray}

This is called the \emph{natural} property of |undistr|.
This kind of property (often called \aspas{\emph{free}} instead of \aspas{\emph{natural}})
is not a privilege of |undistr|.
As a matter of fact, every function interfacing patterns like |fF| or |fG|
above will exhibit its own \emph{natural} property.
Furthermore,
we have already quoted \emph{natural} properties without mentioning it.
Recall (\ref{eq:981211d}), for instance.
This property (establishing $id$ as the \emph{unit} of composition)
is, after all, the \emph{natural} property of $id$.
In this case we have
\(
\ap{\fun F}\alpha =
\ap{\fun G}\alpha =
\alpha
\),
as can be easily observed in diagram (\ref{eq:981211e}).

In general, \emph{natural} properties are described by diagrams in which
two \aspas{copies} of the operator of interest are drawn as horizontal
arrows:
%
\def\fF#1{\ap{\fun F}{#1}}
\def\fG#1{\ap{\fun G}{#1}}
%
\begin{eqnarray}
\xymatrix{
A \ar[d]_-{f}		&
	\fF A \ar[d]_-{\fF f}	&
        \fG A \ar[l]_-{\phi}
              \ar[d]^-{\fG f}
\\
B &
\fF B &
        \fG B \ar[l]^-{\phi}
}	\label{eq:990115h}
&&
        ( \fF f ) \comp \phi = \phi \comp ( \fG f )
\end{eqnarray}
Note that $f$ is universally quantified,
that is to say,
the \emph{natural} property holds for every $f : \larrow A {} B$.

Diagram (\ref{eq:990115h}) corresponds to unary patterns $\fun F$ and $\fun G$.
As we have seen with |undistr|,
other functions ($g$,$h$ \etc) come into play for multiary patterns.
%
\jnowarning{verificar promessa!}
%
A very important r\^ole will be assigned throughout this \doc\
to these $\fun F, \fun G$, \etc\ \aspas{shapes} or patterns which are shared
by pointfree functional expressions and by their domain and codomain
expressions.
From chapter \ref{ch:990115a} onwards we will refer to them by
their proper name --- \aspas{functor} --- which is standard in mathematics
and computer science.
Then we will also explain the names assigned to properties such as,
for instance, (\ref{eq:705h}) or (\ref{eq:706b}).

\begin{exercise}
Show that (\ref{eq:980115d}) and (\ref{eq:980116a}) are \emph{natural}
properties.
Dualize these properties.
\textbf{Hint}: recall diagram (\ref{eq:+-absorption}).
\end{exercise}

\begin{exercise}
Establish the \emph{natural} properties of the |swap| (\ref{eq:A1'})
and |assocr| (\ref{eq:990112b}) isomorphisms.
\end{exercise}

\begin{exercise}% cp1112q01
Draw the natural property of function
\(
\phi = |swap . (id >< swap)|
\)
as a diagram, that is, identify |fF| and $\g$ in (\ref{eq:990115h})
for this case.

% cp1112q01
Do the same for
\(
\phi = |coswap . (swap + swap)|
\)
where $|coswap| = \alt{i_2}{i_1}$.
\end{exercise}

\section{Universal properties}\label{sec:UnivProps}
%
Functional constructs \( \split f g \) and \( \alt f g \)
--- and their derivatives |f><g| and |f+g| ---
provide good illustration about what is meant by a \emph{program combinator}
in a compositional approach to programming: the combinator is put forward
equipped with a concise \emph{set of properties} which enable programmers
to transform programs, reason about them and perform useful calculations.
This leads to a scientific \emph{programming methodology}.

Such properties bear standard names such as
\emph{cancellation}, \emph{reflection}, \emph{fusion}, \emph{absorption} \etc.
Where do these names come from? As a rule, for each combinator to be defined one
has to define suitable constructions at \aspas{interface}-level
\footnote{
In the current context, \emph{programs} \aspas{are} functions and
program-\emph{interfaces} \aspas{are} the datatypes involved in
functional signatures.
}, \eg\ \( A \times B \) and \( A +  B \).
These are not chosen or invented at random: each is defined in a way such that
the associated combinator is uniquely defined. This is assured by a so-called
\emph{universal property} from which the others can be derived.

Take product $A \times B$, for instance. Its universal property states that,
for each pair of arrows \( \larrow C f A \) and \( \larrow C g B \),
there exists an arrow \( \larrow C {\split f g} {A \times B} \) such that
%
\begin{eqnarray}
k = \split f g & \equivalent &
        \left\{
                \begin{array}{rcl}
                        \p1 \comp k = f
	\\
                        \p2 \comp k = g
                \end{array}
        \right.
                        \label{eq:splitUniv}
\end{eqnarray}

\noindent
holds --- recall diagram (\ref{eq:990115d}) ---
for all \( \larrow C k {A \times B} \).

Note that (\ref{eq:splitUniv}) is an \emph{equivalence}, implicitly stating that
\( \split f g \) is the \emph{unique} arrow satisfying the property on the
right. In fact, read (\ref{eq:splitUniv}) in the $\implies$ direction and
let $k$ be $\split f g$.
Then \( \p1 \comp \split f g = f \) and \( \p2 \comp \split f g = g \) will
hold, meaning that \( \split f g \) effectively obeys the property on the right.
In other words, we have derived $\times$-cancellation (\ref{eq:700l}).
Reading (\ref{eq:splitUniv}) in the $\implied$ direction we understand that,
if some $k$ satisfies such properties, then it \aspas{has to be} the same arrow
as \( \split f g \).

The relevance of universal property (\ref{eq:splitUniv}) is that it offers
a way of \emph{solving equations} of the form |k = split f g|.
Take for instance the following exercise: can the identity be expressed,
or ``reflected", using this combinator? We just solve the equation |id = split f g|
for |f| and |g|:
\begin{eqnarray*}
\start
	|id = split f g|
%
\just\equiv{ universal property (\ref{eq:splitUniv}) }
%
        |lcbr(
		p1 . id = f
	)(
		p2 . id = g
	)|
%
\just\equiv{by (\ref{eq:981211d})}
%
        |lcbr(
		p1 = f
	)(
		p2 = g
	)|
%
\end{eqnarray*}
The equation has the unique solution |f=p1| and |g=p2| which, once substituted in the
equation itself, yield
\begin{eqnarray*}
id = \split{\p1}{\p2}
\end{eqnarray*}
i.e., nothing but the $\times$-reflection law (\ref{eq:703a}).

All other laws can be calculated from the universal property in a similar way.
For instance, the $\times$-fusion (\ref{eq:702e}) law is obtained by solving
the equation |k = split f g| again for |f| and |g|, but this time fixing
|k = split i j . h|, assuming |i|, |j| and |h| given:\footnote{Solving
equations of this kind is reminiscent of many similar calculations carried out
in school maths and physics courses. The spirit is the same. The difference
is that this time one is not calculating water pump debits, accelerations,
velocities, or other physical entities: the solutions of our equations are
(just) functional \emph{programs}.}
%
\begin{eqnarray*}
\start
\split i j \comp h = \split f g
%
\just\equiv{ universal property (\ref{eq:splitUniv}) }
%
        \left\{
                \begin{array}{rcl}
                        \p1 \comp (\split i j \comp h) = f
                \\
                        \p2 \comp (\split i j \comp h) = g
                \end{array}
        \right.
%
\just\equiv{composition is associative (\ref{eq:698x})}
%
        \left\{
                \begin{array}{rcl}
                        (\p1 \comp \split i j) \comp h = f
                \\
                        (\p2 \comp \split i j) \comp h = g
                \end{array}
        \right.
%
\just\equiv{ by $\times$-cancellation (derived above) }
%
        \left\{
                \begin{array}{rcl}
                        i \comp h = f
                \\
                        j \comp h = g
                \end{array}
        \right.
%
\end{eqnarray*}
Substituting the solutions |f=i.h| and |g=j.h| in the equation, we get the |><|-fusion
law: $ \split i j \comp h = \split{i \comp h}{j \comp h}$.

It will take about the same effort to derive \emph{split} structural equality
\begin{eqnarray}
\split i j = \split f g & \equivalent &
        \left\{
                \begin{array}{rcl}
                        i = f
                \\
                        j = g
                \end{array}
        \right.
                        \label{eq:splitStEq}
\end{eqnarray}
from universal property (\ref{eq:splitUniv}) --- just let $k=\split i j$ and solve.

Similar arguments can be built around coproduct's universal property,
%
\begin{eqnarray}
k = \alt f g & \equivalent &
        \left\{
                \begin{array}{rcl}
                        k \comp i_1 = f
                \\
                        k \comp i_2 = g
                \end{array}
        \right.
                        \label{eq:eitherUniv}
\end{eqnarray}
from which structural equality of \emph{either}s can be inferred,
%
\begin{eqnarray}
\alt i j = \alt f g & \equivalent &
        \left\{
                \begin{array}{rcl}
                        i = f
                \\
                        j = g
                \end{array}
        \right.
                        \label{eq:eitherStEq}
\end{eqnarray}
as well as the other properties we know about this combinator.

As a final check on the calculational power of universal properties, let
us go back to isomorphism (\ref{eq:A1'}) and, instead of \emph{guessing}
that |swap| is its own inverse, solve the equation
\begin{eqnarray*}
	|split p2 p1 . k = id| 
\end{eqnarray*}
for \emph{unknown} |k|:
\begin{eqnarray*}
\start
	|split p2 p1 . k = id|
%
\just\equiv{ |><|-fusion (\ref{eq:702e}) }
%
	|split(p2 . k) ( p1 . k) = id|
%
\just\equiv{ |><|-universal (\ref{eq:splitUniv}) }
%
	|lcbr(p2 . k = p1) ( p1 . k = p2)|
%
\just\equiv{ trivial }
%
	|lcbr(p1 . k = p2) ( p2 . k = p1)|
%
\just\equiv{ |><|-universal (\ref{eq:splitUniv}) }
%
	|k = split p2 p1|
\end{eqnarray*}
The unique solution to the equation indeed is |k=swap| (\ref{eq:220913b}), as expected.

\emskip

\begin{exercise}
Show that |assocr| (\ref{eq:990112b}) is iso by solving the equation
\(
|assocr . assocl = id|
\)
for |assocl|.
\textbf{Hint}: do not ignore the role of universal property (\ref{eq:splitUniv}) in the calculation.
\end{exercise}

\begin{exercise}
%quest{cp1011q01-modificada}
Prove the equality:
\(
|either(split f (const k))(split g (const k))|
\wider =
|split (either f g)(const k)|
\)
\end{exercise}

\begin{exercise}
Derive	$+$-cancellation (\ref{eq:701c}),
$+$-reflection (\ref{eq:703b}) and
$+$-fusion (\ref{eq:+-fusion})
from universal property (\ref{eq:eitherUniv}).
%
Then derive the \emph{exchange law} (\ref{eq:701d}) from the universal property
of product (\ref{eq:splitUniv}) or coproduct (\ref{eq:eitherUniv}).
\end{exercise}

\begin{exercise}
Function $coassocr = \alt{id+i_1}{i_2 \comp i_2}$ is a witness of
isomorphism $(A+B)+C \cong A + (B+C)$, from left to right.
% Isso fez-se com base no respectivo diagrama.
Calculate its converse $coassocl$
by solving the equation
\begin{eqnarray}
\underbrace{\alt x {\alt y z}}_{coassocl}{} \comp coassocr
%underbrace{\alt{id+i_1}{i_2 \comp i_2}}_{coassocr}
=
id
\end{eqnarray}
for $x$, $y$ and $z$.
\end{exercise}

\begin{exercise} %quest{cp1213q02}
Let $\delta$ be a function of which you know that
$\p1 \comp \delta=id$ e $\p2\comp\delta=id$ hold.
Show that necessarily $\delta$ satisfies the natural property
$(f \times f)\comp\delta=\delta\comp f$.
\end{exercise}

\begin{exercise}
Infer the most general type of |alpha = split i1 p1| and, from it, the natural property of |alpha|.
\def\resolucao{
|split i1 p1 :: (A><B) -> (((Either (A><B) C))><A)|
}
\end{exercise}

\section{Guards and McCarthy's conditional}
\noindent\hskip-1ex\mbox{
\begin{minipage}{0.50\textwidth}
\rule{2ex}{0pt}
Most functional programming languages and notations cater for
pointwise conditional expressions of the form
\begin{eqnarray}
|if p x then g x else h x|
\label{eq:180211d}
\end{eqnarray}
which evaluates to |g x| in case |p x| holds and to |h x| otherwise,
that is
\[
\COND{\ap p x}{\ap g x}{\ap h x}
\]
given some predicate
\(
	|larrow A p Bool|
\),
some \aspas{then}-function
\(
\larrow{A}{g}{B}
\)
and some \aspas{else}-function
\(
\larrow{A}{h}{B}
\).
% $\fun{Bool}$ is the primitive datatype containing truth values \( \false \) and \( \true \).
\\\rule{2ex}{0pt}
Can (\ref{eq:180211d}) be written in the pointfree style?
\end{minipage}
}\mbox{
\begin{minipage}{0.4\textwidth}
\unitlength=0.1\textwidth
\makebox(10,12){
\unitlength=0.75mm
\ifthenelsepic
}
\end{minipage}
}
\vskip 1ex
The drawing above is an attempt to express such a conditional expression as a
``block"-diagram. Firstly, the input |x| is copied, the left copy being passed to
predicate |p| yielding the Boolean |p x|. One can easily define this part
using |copy = split id id|.

The informal part of the diagram is the
$T$-$F$ ``switch": it should channel |x| to |g| in case |p x| switches the
$T$-output, or channel |x| to |h| otherwise.

At first sight, this $T$-$F$ gate should be of type |Bool >< A -> A >< A|.
But the output cannot be |A><A|, as |f| or |g| act in \emph{alternation},
not in \emph{parallel} --- it should rather be |A+A|, in which case the last step
is achieved just by running |either g h|. How does one switch from
our starting product-based model of conditionals to a coproduct-based one?

The key observation is that the type |Bool >< A| marked by the dashed
line in the block-diagram is isomorphic to |A+A|, recall (\ref{eq:051018a}).
That is, the information captured by the pair |(p x , x) ins Bool>< A|
can be converted into a unique |y ins A + A| without loss of information.
Let us define a new combinator for this, denoted |grd p|:
\begin{eqnarray}
        (p?)a &=& \COND{\ap p a}{\ap{i_1}a}
			{\ap{i_2}a}
\label{eq:990126c}
\end{eqnarray}
We call $\larrow A{p?}{A+A}$ a \emph{guard}, or better, the guard associated
to a given predicate |larrow A p Bool|.
In a sense, guard $p?$ is more \aspas{informative} than $p$ alone:
it provides information about the outcome of testing $p$ on some input $a$,
encoded in terms of the coproduct injections
($i_1$ for a \emph{true} outcome and $i_2$ for a \emph{false} outcome,
respectively) without losing the input $a$ itself.

Finally, the composition |either g h . (grd p)|, depicted in the following diagram
\begin{eqnarray*}
\xymatrix{
&
A
	\ar[d]_{|p?|}
\\
A
	\ar[dr]_{|g|}
	\ar[r]^{|i1|}
&
A+A
	\ar[d]||(.45)*{|either g h|}
&
A
	\ar[dl]^{|h|}
	\ar[l]_{|i2|}
\\
&
B
}
\end{eqnarray*}
has (\ref{eq:180211d}) as pointwise meaning.
It is a well-known functional combinator termed \aspas{McCarthy conditional}\footnote{
After John McCarthy, the computer scientist who first defined it.}
and usually denoted by the expression
\(
       p \rightarrow g, h
\).
Altogether, we have the definition
\begin{eqnarray}
        p \rightarrow g, h &\deff& \alt g h \comp p?	\label{eq:McCarthy}
\end{eqnarray}
which suggests that, to reason about conditionals, one may seek help in the
algebra of coproducts. Indeed,
% They can, provided we introduce the so-called \aspas{McCarthy conditional} functional form which is defined by a definition we can understand provided we know the meaning of the \aspas{$p?$} construct. Every predicate $p$ gives birth to its own guard $p?$ which, at point-level, is defined as follows:
the following fact,
\begin{eqnarray}
        f \comp (p \rightarrow g, h) &=&
p \rightarrow f \comp g , f \comp h	\label{eq:McCarthyFusion}
\end{eqnarray}
which we shall refer to as the \emph{first McCarthy's conditional fusion law}\footnote{For the second one go to exercise \ref{ex:mpi0001q01}.}, is nothing but an immediate consequence of $+$-fusion (\ref{eq:+-fusion}).

We shall introduce and define instances of predicate $p$ as long as they are
needed.
A particularly important assumption of our notation should,
however,
be mentioned at this point:
we assume that, for every datatype $A$, the equality predicate
$\larrow{A \times A}{=_A}{|Bool|}$ is defined
in a way which guarantees three basic properties:
reflexivity ($a=_Aa$ for every $a$),
transitivity ($a=_Ab$ and $b=_Ac$ implies $a=_Ac$)
and symmetry ($a=_Ab$ iff $b=_Aa$).
Subscript $A$ in $=_A$ will be dropped wherever implicit in the context.

In \haskell\ programming, the equality predicate for a type becomes available
by declaring the type as an instance of class \texttt{Eq},
which exports equality predicate \texttt{(==)}.
This does not, however, guarantee the reflexive, transitive and symmetry
properties, which need to be proved by dedicated mathematical arguments.

We close this section with an illustration of how \emph{smart} pointfree algebra
can be in reasoning about functions that \emph{one does not actually define explicitly}.
It also shows how relevant the \emph{natural properties} studied in section \ref{sec:180211e}
are. The issue is that our definition of a guard (\ref{eq:990126c}) is pointwise
and most likely unsuitable to prove facts such as, for instance,
\begin{eqnarray}
        p? \comp f  &=& (f + f) \comp (p \comp f)?	\label{eq:020112a}
\end{eqnarray}
Thinking better,
instead of \aspas{inventing} (\ref{eq:990126c}), we might (and perhaps should!) have
defined
\begin{eqnarray}
\myxym{
|A|
	\ar[r]^-{|split p id|}
	\ar@@/_1pc/[rr]_-{|grd p|}
&
|2 >< A|
	\ar[r]^-{|alpha|}
&
|A+A|
}
\label{eq:180211g}
\end{eqnarray}
which actually expresses rather closely our strategy of switching from products to
coproducts in the definition of |((grd p))|. Isomorphism |alpha| (\ref{eq:051018a}) is the subject of exercise
\ref{ex:180211f}. Do we need to define it explicitly? Perhaps not: from its type,
|2 >< A -> A + A|, we immediately infer its natural (or ``free") property:
\begin{eqnarray}
|alpha . (id >< f) = (f + f) . alpha|
\label{eq:180211h}
\end{eqnarray}
It turns out that this
is the \emph{knowledge} we need about |alpha| in order to prove (\ref{eq:020112a}),
as the following calculation shows:
\begin{eqnarray*}
\start
        |p? . f|
%
\just={ (\ref{eq:180211g}) ; |split p id . f = split (p.f) f| }
%
        |alpha.(split (p.f) f)|
%
\just={ |><|-absorption (\ref{eq:970511c}) }
%
        |alpha.(id >< f).(split (p.f) id)|
%
\just={ free theorem of |alpha| (\ref{eq:180211h}) }
%
        |(f+f).alpha.(split (p.f) id)|
%
\just={ (\ref{eq:180211g}) again }
%
        |(f+f).(grd(p.f))|
\qed
\end{eqnarray*}
Other examples of this kind of reasoning, based on natural (free) properties of isomorphisms
--- and often on \aspas{shunting} them around using laws (\ref{eq:180211i},\ref{eq:180211j})
---  will be given later in this \doc.

The less one has to write to solve a problem, the better.
One saves time and one's brain, adding to productivity.
This is often called \emph{elegance} when applying a scientific method.
(Unfortunately, be prepared for much lack of it in the software engineering field!)

\begin{exercise}\label{ex:080407b}
Prove that the following equality between two conditional expressions
\begin{eqnarray*}
        &&	|k(if p x then f x else h x, if p x then g x else i x)|
\\
&=&	|if p x then k(\ap f x, \ap g x) else k(h x, i x)|
\end{eqnarray*}
holds by rewriting it in the pointfree style
(using the McCarthy's conditional combinator)
and applying the \emph{exchange law} (\ref{eq:701d}), among others.
\end{exercise}

\begin{exercise}\label{ex:mpi0001q01}
Prove the \emph{first McCarthy's conditional fusion law} (\ref{eq:McCarthyFusion}).
Then, from (\ref{eq:McCarthy}) and property (\ref{eq:020112a}), infer
the second such law:
\begin{eqnarray}
        (p \rightarrow f, g) \comp h
 &=&
        (p \comp h) \rightarrow (f \comp h), (g \comp h)
\label{eq:051018b}
\end{eqnarray}
\CUT{
%
\begin{eqnarray*}
        (p \rightarrow f, g) \comp h
%
\just\equiv{definição do {combinador condicional} de McCarthy}
%
        (\alt f g \comp p?) \comp h
%
\just\equiv{composição é associativa}
%
        \alt f g \comp (p? \comp h)
%
\just\equiv{propriedade (\ref{eq:020112a}) }
%
        \alt f g \comp (h + h) \comp (p \comp h)?
%
\just\equiv{absorção-$+$ (\ref{eq:+-absorption})}
%
        \alt{f \comp h}{ g \comp h} \comp (p \comp h)?
%
\just\equiv{definição do {combinador condicional} de McCarthy}
%
        (p \comp h) \rightarrow (f \comp h), (g \comp h)
%
\end{eqnarray*}
}
\end{exercise}

\begin{exercise} %quest{cp0607q02}
Prove that property
\begin{eqnarray}
\split{f}{(\mcond p q h)} &=& \mcond p{\split f q}{\split f h}
\label{eq:070531a}
\end{eqnarray}
and its corollary
\begin{eqnarray}
|((cond p g h)) >< f| &=& |cond (p.p1) (g><f) (h><f)|
\label{eq:150704a}
\end{eqnarray}
hold, assuming the basic fact:
\begin{eqnarray}
	\mcond p f f &=& f
	\label{eq:180904b}
\end{eqnarray}
\vskip -1em
\end{exercise}

\begin{exercise}
%quest{cp1718q01}
Define |p(x,y)=x>y| and the maximum of two integers, |m(x,y)|, by:
\begin{eqnarray*}
	|m| & = & |cond p p1 p2|
	%label{eq:180626a}
\end{eqnarray*}
Then show that
\begin{eqnarray*}
|succ.m=m.(succ><succ)|
\end{eqnarray*}
holds, by using the McCarthy conditional fusion-laws and basic arithmetics.
\end{exercise}

\section{Gluing functions which do not compose --- exponentials} \label{seq:080612d}
Now that we have made the distinction between the pointfree and pointwise
functional notations reasonably clear,
it is instructive to revisit section \ref{sec:990105a}
and identify \emph{functional application} as the \aspas{bridge}
between the pointfree and pointwise worlds.
However,
we should say \aspas{a bridge} rather than \aspas{the bridge},
for in this section we enrich such an interface with another
\aspas{bridge} which is very relevant to programming.

Suppose we are given the task to combine two functions, one binary
\(
\larrow{C \times A} f B
\)
and the other unary:
\(
\larrow A g D
\).
It is clear that none of the combinations
$f \comp g$,
$\split f g$ or
$\alt f g$ is well-typed.
So,
$f$ and $g$ cannot be put together directly ---
they require some extra interfacing.

Note that $\split f g$ would be well-defined in case the $C$ component of
$f$'s domain could be somehow \aspas{ignored}. Suppose that, in some particular
context, the first argument of $f$ happens to be \aspas{irrelevant}, in the
sense that it can be frozen to some particular |sbs c 0 ins C|. It is easy
to derive from |f| a new function
\begin{eqnarray}
|sbs f (sbs c 0)| &:& \rarrow A {} B
	\nonumber
	\\
\ap{|sbs f (sbs c 0)|}a &\deff& |f(sbs c 0,a)|
\end{eqnarray}
that combines nicely with $g$ via the \emph{split} combinator:
|split (sbs f (sbs c 0)) g| is well-defined and bears type |rarrow A () (B >< D)|.
For instance, suppose that $C=A$ and $f$ is the equality predicate $=$ on $A$.
Then $\rarrow A{|sbs (=) (sbs c 0)|}{\fun{Bool}}$ is the \aspas{equal to |sbs c 0|} predicate on
$A$ values:
\begin{eqnarray}
        |((sbs (=)(sbs c 0))) a| &\deff& |a = sbs c 0|                   \label{eq:eqTest}
\end{eqnarray}
As another example,
recall function $twice$ (\ref{eq:981211b})
which could be defined as $\times_2$ using the new notation.

Let us now look at notation |sbs f (sbs c 0)| more carefully.
Similar to functional application, notation |sbs f (sbs c 0)| interfaces the pointfree and the
pointwise levels --- it involves a function ($f$) and a particular value
(|sbs c 0|). Moreover, for any other |c ins C|, function
\(
        \rarrow{C \times A} f B
\),
will lead to another function |sbs f c  : A -> B|. That is to say, |f| generates
a \emph{family} of functions of type |A ->B|, one per each first argument |c|.
Such a family is of type |C -> (A -> B)|. Put in other words, such a {family} is a
\emph{function that outputs functions!} 

Functions of this kind are called \emph{higher-order} functions. Anticipating that 
there will be higher-order functions that will not only output but also input functions,
there is a piece of notation that will prove useful:
\begin{eqnarray}
              B^A &\deff& \setdef{g}{g : \larrow A {} B }
\end{eqnarray}
There are strong reasons to adopt this $B^A$ \emph{exponential} notation to
the detriment of the more obvious $B \leftarrow A$ or $A \rightarrow B$ alternatives,
as we shall see shortly.

The $B^A$ exponential datatype is therefore inhabited by functions from
$A$ to $B$,
that is to say, functional declaration $g : \larrow A {} B$ means the same as
$g \in B^A$.
And what do we want functions for?
We want to apply them.
So it is natural to introduce the \emph{apply} operator
%
\begin{eqnarray}
\arrayin{
&&	ap : \larrow{B^A \times A}{ap}{B}
\\
&&	ap(f,a) \deff \ap f a
}
\label{eq:170204a}
\end{eqnarray}
that applies a function $f$ to an argument $a$.

Back to our generic binary function
\(
\larrow{C \times A} f B
\),
let us now focus on the operation that,
for every $c \in C$,
produces $f_c \in B^A$.
This can be regarded as a function of signature
\(
\larrow C {} {B^A}
\)
that expresses $f$ as a $C$-indexed family of functions of
signature $\larrow A{}B$, as already hinted above.
We will denote such higher-order function by $\trans f$
(read $\trans f$ as \aspas{$f$ transposed}).
Intuitively, we want $f$ and $\trans f$ to be related to each other by the
following property:
\begin{eqnarray}
f(c,a) &=& |((curry f c)) a|  	\label{eq:990108a}
\end{eqnarray}
%
Given $c$ and $a$,
both expressions denote the same value.
But, in a sense, $\trans f$ is more tolerant than $f$: while the latter
is binary and requires \emph{both} arguments $\pair{c,a}$
to become available before application,
the former is happy to be provided with $c$ first and with $a$ later on,
if actually required by the evaluation process.

Similarly to $A \times B$ and $A + B$,
exponential $B^A$ involves a universal property,
%
\begin{eqnarray}
k = \trans f & \equivalent & f = ap \comp (k \times id)
\label{eq:transUniv}
\end{eqnarray}
from which laws for cancellation, reflection and fusion can be derived:

\law{999f}{
        Exponentials cancellation
}{
        \xymatrix{
B^A
&
B^A \times A
	\ar[r]^{ap}
&
B
\\
C
	\ar[u]^{\trans f}
&
C \times A
	\ar[u]^{\trans f \times id}
	\ar[ru]_{f}
}
}{
        f = ap \comp (\trans f \times id)
}

\law{exp-reflex}{
        Exponentials reflection
}{
        \xymatrix{
           B^A & B^A \times A \ar[r]^{ap} & B
        \\ B^A \ar[u]^{id_{B^A}} &
           B^A \times A \ar[u]^{id_{B^A} \times id_A} \ar[ru]_{ap}
}
}{
        \trans{ap} = id_{B^A}
}

\law{exp-fusion}{
Exponentials fusion
}{
        \xymatrix{
   B^A & B^A \times A \ar[r]^{ap} & B
\\ C   \ar[u]^{\trans{g}} &
   C   \times A \ar[u]^{\trans{g} \times id} \ar[ru]^{g}
\\ D   \ar[u]^{f} &
   D   \times A \ar[u]^{f \times id} \ar[ruu]_{g\comp(f \times id)}
}
}{
\trans{g\comp(f \times id)} = \trans{g} \comp f
}
Note that the cancellation law is nothing but fact (\ref{eq:990108a})
written in the pointfree style.

Is there an absorption law for exponentials? The answer is affirmative but
first we need to introduce a new functional combinator which arises as the
transpose of $f \comp ap$ in the following diagram:
\begin{eqnarray*}
\xymatrix{
D^A \times A	\ar[r]^{ap}
&	D
\\	B^A \times A	\ar[u]^{\trans{f \comp ap}\times id}
		\ar[r]^{ap}
&	B   \ar[u]^{f}
}
\end{eqnarray*}
We shall denote this by $f^A$ and its type-rule is as follows:
\begin{eqnarray*}
        \begin{array}{c}
        \larrow B f C
        \\ \hline
        \larrow{B^A}{f^A}{C^A}
        \end{array}
\end{eqnarray*}
It can be shown that,
once $A$ and  $\larrow B f C$ are fixed,
$f^A$ is the function which accepts some input function
$\larrow{A}{g}{B}$ as argument and produces function $f \comp g$ as result
(see exercise \ref{ex:991120a}).
So $f^A$ is the \aspas{compose with $f$} functional combinator:
\begin{eqnarray}
        (f^A)g &\deff& f \comp g		\label{eq:990209a}
\end{eqnarray}
That is,
\begin{eqnarray}
	|expn f A = (f .)|
\end{eqnarray}
Now we are ready to understand the laws which follow:
\esp

\law{999h}{
Exponentials absorption
}{
        \xymatrix{
           D^A & D^A \times A \ar[r]^{ap} & D
\\ B^A \ar[u]^{f^A} & B^A \ar[u]^{f^A \times id} \times A \ar[r]^{ap} &
   B   \ar[u]^{f}
        \\ C   \ar[u]^{\trans{g}} &
           C   \times A \ar[u]^{\trans{g} \times id} \ar[ru]^{g}
}
}{
\trans{f \comp g} = f^A \comp \trans g
}{
}
\noindent Note how, from this, we also get
\begin{eqnarray}
 |expn f A = curry(f . ap)|
	\label{eq:200205d}
\end{eqnarray}
Thus  (\ref{eq:999h}) can also be written
\begin{eqnarray}
	|curry( f. g) = curry (f . ap) . (curry g)|
	\label{eq:200205b}
\end{eqnarray}
%
\law{expFun}{
        Exponentials-functor
}{
}{
        (g \comp h)^A = g^A \comp h^A
}

\law{expFunId}{
        Exponentials-functor-id
}{
}{
        id^A = id
}

\paragraph{Why the exponential notation.}
To conclude this section we need to explain why we have adopted the
apparently esoteric $B^A$ notation for the \aspas{function from $A$ to $B$}
data type. This is the opportunity to relate what we have seen above with
two (higher order) functions which are very familiar to functional programmers.
In the \haskell\ Prelude they are defined thus:
\begin{code}
_curry() :: ((a,b) -> c) -> (a -> b -> c)
_curry f a b = f (a,b)

_uncurry() :: (a -> b -> c) -> (a,b) -> c
_uncurry f (a,b) = f a b
\end{code}
In our notation for types, |_curry()| maps functions in function space $C^{A
\times B}$ to functions in $(C^B)^A$; and |_uncurry()| maps functions from
the latter function space to the former.

Let us calculate the meaning of |_curry()| by removing variables from its
definition:
\begin{eqnarray}
\start
	\overbrace{(\underbrace{|_curry f|}_{|curry f|}\ a)}^g b =|f(a,b)|
	\label{eq:220912a}
%
\just\equiv{ introduce |g|}
%
g\ b \wider= f(a,b)
	\nonumber
%
\just\equiv{since $g\ b=ap(g,b)$ (\ref{eq:170204a}) }
%
ap(g,b) \wider= f(a,b)
	\nonumber
%
\just\equiv{ |g= curry(f) a| ; |id x = x|}
%
ap(|curry f|\ a, id\ b) \wider= f(a,b)
	\nonumber
%
\just\equiv{ product of functions: $(f\times g)(x,y)=(f\ x, g\ y)$}
%
ap((|curry f| \times id)(a,b)) \wider= f(a,b)
	\nonumber
%
\just\equiv{ composition }
%
(ap\comp (|curry f| \times id))(a,b) \wider= f(a,b)
	\nonumber
%
\just\equiv{ extensionality (\ref{eq:060128a}), i.e.\ removing points |a| and |b|}
%
ap\comp (|curry f| \times id) \wider= f
	\nonumber
\end{eqnarray}
From the above we infer that the definition of |_curry()| is a re-statement of the cancellation law (\ref{eq:999f}).
That is,
\begin{eqnarray}
        |_curry f| &\deff& |trans f|		\label{eq:990112a}
\end{eqnarray}
and |_curry()| is transposition in \haskell-speak.\footnote{This terminology widely adopted in other functional languages.}

Below we do the same for the definition of |_uncurry()|:
\begin{eqnarray*}
\start
	|underbrace(_uncurry f) k (a,b) = (f a) b|
%
\just\equiv{ introduce |k| ; (\ref{eq:170204a}) }
|
	k (a,b) = ap(f a, b)
|
\just\equiv{ product of functions etc. as in the calculation of (\ref{eq:220912a}) }
|
	k (a,b) = (ap. (f >< id))(a,b)
|
\just\equiv{ extensionality (\ref{eq:060128a}) }
%
|k = ap. (f >< id)|
%
\just\equiv{ universal property (\ref{eq:transUniv}) }
%
|f = curry k|
%
\just\equiv{ expand |k| }
%
|f = curry ((_uncurry f))|
%
\end{eqnarray*}
We conclude that |_uncurry()| is the inverse of transposition, that is, of |_curry()|.
We shall use the abbreviation |uncurry f| for |_uncurry f|,
whereby the above equality is written |f = curry (uncurry f)|.
It can also be checked that |f = uncurry (curry f)| also holds,
instantiating |k| above by |uncurry (curry f)|:
\begin{eqnarray*}
\start
|uncurry (curry f) = ap. (curry f >< id)|
%
\just\equiv{ cancellation (\ref{eq:999f}) }
%
|uncurry (curry f) = f|
\qed
\end{eqnarray*}
So |_uncurry()| --- i.e.\ |uncurry ((_))| --- and |_curry()| --- i.e.\ |curry ((_))|
---
are inverses of each other,
\begin{eqnarray}
	g=\trans f & \biimplies & \hat g = f
	\label{eq:180804a}
\end{eqnarray}
leading to isomorphism
\begin{eqnarray*}
A \to C^B & \iso & A \times B \to C
\end{eqnarray*}
which can also be written as
\begin{eqnarray}
\myxym{
(C^B)^A \ar@@/^1pc/[rr]^-{|_uncurry()|} & \iso & C^{A \times B} \ar@@/^1pc/[ll]^-{|_curry()|}
}
\label{eq:fac22-decorated}
\end{eqnarray}
decorated with the corresponding witnesses.\footnote{Writing |curry f| (resp.\ |uncurry f|) or |_curry f| (resp.\ |_uncurry f|)
is a matter of taste: the latter are more in the tradition of functional programming and help when the functions have to be
named; the former save ink in algebraic expressions and calculations.}

%For instance,
%the fusion law (\ref{eq:exp-fusion}) can be re-written as
%\begin{eqnarray*}
%	\curry{(g\comp(f \times id))} = \curry{g} \comp f
%\end{eqnarray*}
%and so on.

Isomorphism (\ref{eq:fac22-decorated}) is at the core of the theory and practice of functional programming.
It clearly resembles a well known equality concerning numeric exponentials,
\(
       b^{c \times a} = {(b^a)}^c
\).
Moreover, other known facts about numeric exponentials,
\eg\
\(
       a^{b + c} = a^b \times a^c
\)
or
\(
       {(b \times c)}^a = b^a \times c^a
\)
also find their counterpart in functional exponentials.
The counterpart of the former,
\begin{eqnarray}
              A^{B + C} & \iso & A^B \times A^C           \label{eq:fac24}
\end{eqnarray}
arises from the uniqueness of the \emph{either} combination:
every pair of functions
\(
\pair{f,g} \in A^B \times A^C
\)
leads to a unique function
\(
\alt f g \in A^{B + C}
\)
and vice-versa, every function in
\(
A^{B + C}
\)
is the \emph{either} of some function in $A^B$ and of another in $A^C$.

The function exponentials counterpart of the second fact about
numeric exponentials above is
\begin{eqnarray}
{(B \times C)}^A \iso B^A \times C^A			\label{eq:fac21}
\end{eqnarray}
This can be justified by a similar argument concerning the uniqueness of
the \emph{split} combinator $\split f g$.

What about other facts valid for numeric exponentials such as
\(
a^0 = 1
\)
and
\(
1^a = 1
\)?
The reader is invited to go back to section \ref{sec:180211b} and recall what $0$ and $1$ mean as datatypes:
the empty (void) and singleton datatypes, respectively.
Our counterpart to $a^0 = 1$ then is
\begin{eqnarray}
A^0         & \iso & 1		\label{eq:fac25}
\end{eqnarray}
where $A^0$ denotes the set of all functions from the empty set to some $A$.
What does (\ref{eq:fac25}) mean?
It simply tells us that there is only one function in such a set ---
the empty function mapping \aspas{no} value at all.
This fact confirms our choice of notation once again
(compare with \( a^0 = 1 \) in a numeric context).

Next, we may wonder about facts
\begin{eqnarray}
       1^A & \iso  & 1			\label{eq:fac23}
\\
       A^1 & \iso  & A			\label{eq:fac20}
\end{eqnarray}
which are the functional exponentiation counterparts of
\(
        1^a = 1
\)
and
\(
        a^1 = a
\).
Fact (\ref{eq:fac23}) is valid:
it means that there is only one function mapping $A$ to
some singleton set $\enset c$ --- the constant function $\kons c$.
There is no room for another function in $1^A$ because only $c$ is
available as output value. Our standard denotation for such a unique function
is given by (\ref{eq:180211c}).

Fact (\ref{eq:fac20}) is also valid:
all functions in $A^1$ are (single valued) constant functions and there are as
many constant functions in such a set as there are elements in $A$.
These functions are often called (abstract) ``points" because of the 1-to-1 mapping between
$A^1$ and the elements (points) in |A|.

\begin{exercise}
Prove the equality
\(
	|curry(f.(g><h))|
	=
	|curry(ap.(id><h)).(curry f).g|
\)
using the laws of explonentials and products.
\resolucao{
\begin{eqnarray*}
\start
	|curry(f.(g><h))|
%
\just={}
%
	|curry(f.(id><h)).g|
%
\just={}
%
	|curry(ap.(id><h).(curry f >< id)).g|
%
\just={}
%
	|curry(ap.(id><h)).(curry f).g|
%qed
\end{eqnarray*}
}
\end{exercise}

\begin{exercise}
Relate the isomorphism involving generic elementary type $2$
\begin{eqnarray}
        A \times A & \iso & A^2
\label{eq:170429b}
\end{eqnarray}
to the expression |\f->(f True, f False)| written in \haskell\ syntax.
\end{exercise}

\begin{exercise} \label{ex:170430b}
Consider the witnesses of isomorphism (\ref{eq:fac21})
\begin{eqnarray*}
\xymatrix{
%
|Exp ((B><C)) A| \ar@@/^1pc/[rr]^-{|unpair|} & \iso & |Exp B A >< Exp C A| \ar@@/^1pc/[ll]^-{|pair|}
}
%label{eq:140323b}
\end{eqnarray*}
defined by:
\begin{quote}
\ensuremath{\mathsf{pair}\;(\Varid{f},\Varid{g})\mathrel{=}\conj{\Varid{f}}{\Varid{g}}}
\\
\ensuremath{\mathsf{unpair}\;\Varid{k}\mathrel{=}(\p1 \comp \Varid{k},\p2 \comp \Varid{k})}
\end{quote}
Show that \ensuremath{\mathsf{pair} \comp \mathsf{unpair}\mathrel{=}{id}} and \ensuremath{\mathsf{unpair} \comp \mathsf{pair}\mathrel{=}{id}} hold.
\end{exercise}

\begin{exercise}
Show that the following equality
\begin{eqnarray}
|curry f a = f . (split (const a) id)|
\label{eq:140701a}
\end{eqnarray}
holds.
\end{exercise}

\begin{exercise}
%quest{cp1415q13}
Prove the equality
\(
|(const g) = curry(g.p2)|
\)
knowing that
\begin{eqnarray}
|curry p2=const id|
\label{eq:150711b}
\end{eqnarray}
holds.
\end{exercise}

%\begin{exercise}
%Load the code of section \ref{ch:Set.hs}
%into the \hugs{\textsc{Haskell}} interpreter and check the types assigned to the
%following functional expressions:
%\begin{quote}\small
%\begin{verbatim}
%    curry ap
%    \f -> ap . (f >< id)
%    uncurry . curry
%\end{verbatim}
%\end{quote}
%Which of these is functionally equivalent to the \texttt{uncurry} function and why?
%Which of these are functionally equivalent to identity functions?
%Justify.
%\end{exercise}

\section{Finitary products and coproducts}
In section \ref{sec:990115a} it was suggested that product could be regarded
as the abstraction behind data-structuring primitives such as
\texttt{struct} in C or \texttt{record} in \pascal.
Similarly, coproducts were suggested in section \ref{sec:990115b}
as abstract counterparts of C unions or \pascal\ variant records.
For a finite $A$, exponential $B^A$ could be realized as an \emph{array}
in any of these languages.
These analogies are captured in table \ref{tab:svpln}.

In the same way
C \texttt{struct}s and \texttt{union}s may contain finitely many entries,
as may \pascal\ (variant) records,
product $A \times B$ extends to finitary product
$A_1 \times \ldots \times A_n$,
for  $n\in\N$,
also denoted by $\Pi_{i=1}^{n} A_i$,
to which as many projections $\p{i}$ are associated as the number $n$
of factors involved.
Of course, \emph{splits} become $n$-ary as well
\[
\const{f_1, \ldots, f_n} : \larrow B {} {A_1 \times \ldots \times A_n}
\]
for
\(
f_i : \larrow B {} {A_i}
\),
\(
i = 1,n
\).

Dually, coproduct $A + B$ is extensible to the finitary sum
$A_1 + \cdots + A_n$, for $n\in\N$,
also denoted by $\sum_{j=1}^{n} A_j$,
to which as many injections $i_j$ are assigned as the number $n$
of terms involved.
Similarly,
\emph{eithers} become $n$-ary
\[
        \Alt{f_1, \ldots, f_n} : \rarrow {A_1 + \ldots + A_n} {} B
\]
for
\(
        f_i : \larrow {A_i} {} B
\),
\(
        i = 1,n
\).

\subsection*{Datatype $n$}
Next after $2$, we may think of $3$ as representing
the abstract class of all datatypes containing exactly three elements.
Generalizing,
we may think of $n$ as representing
the abstract class of all datatypes containing exactly $n$ elements.
Of course,
initial segment $\fun n$ will be in this abstract class.
(Recall (\ref{eq:990115f}), for instance:
both $\fun{Weekday}$ and $\fun 7$ are abstractly represented by $7$.)
Therefore,
\begin{eqnarray*}
        n & \iso & \underbrace{1 + \cdots + 1}_n
\end{eqnarray*}
and
\begin{eqnarray}
    \underbrace{A \times \ldots \times A}_n &\iso & A^n \label{eq:331f} \\
    \underbrace{A + \ldots + A}_n &\iso & n \times A    \label{eq:331g}
\end{eqnarray}
hold.

\begin{table}
\def\it{\scriptsize\ttfamily}
\def\textlang{English}
\def\setcalc{\textbf{Abstract notation}}
{\footnotesize\centering \getTab{svpln-aux} }
\caption{Abstract notation versus programming language data-structures.\label{tab:svpln}}
\end{table}

\begin{exercise}
On the basis of table \ref{tab:svpln},
encode |undistr| (\ref{eq:990115a}) in C or \pascal.
Compare your code with the \haskell\ pointfree and pointwise equivalents.
\end{exercise}

\section{Initial and terminal datatypes}
All properties studied for binary \emph{splits} and binary \emph{eithers}
extend to the finitary case.
For the particular situation $n=1$, we will have
\(
        \const f = \Alt f = f
\)
and $\p1=i_1=id$,
of course.
For the particular situation $n=0$,
finitary products \aspas{degenerate} to $1$ and
finitary coproducts \aspas{degenerate} to $0$.
So diagrams (\ref{eq:990115d}) and (\ref{eq:990115e}) are reduced to
\begin{eqnarray*}
\xymatrix{
        1		     && 0 \ar[d]^-{\Alt{}}
\\
        C \ar[u]^-{\const{}} && C
}
\end{eqnarray*}
%
The standard notation for the empty \emph{split}
\(
        \const{}
\)
is
\(
        \bang_C
\),
where subscript $C$ can be omitted if implicit in the context.
By the way, this is precisely the only function in $1^C$, recall (\ref{eq:fac23}) and (\ref{eq:180211c}).
Dually,
the standard notation for the empty \emph{either}
\(
        \Alt{}
\)
is
\(
        ?_C
\),
where subscript $C$ can also be omitted.
By the way, this is precisely the only function in $C^0$, recall (\ref{eq:fac25}).

In summary, we may think of $0$ and $1$ as, in a sense,
the \aspas{extremes} of the whole datatype spectrum.
For this reason they are called \emph{initial} and \emph{terminal},
respectively.
We conclude this subject with the presentation of their main properties
which, as we have said,
are instances of properties we have stated for products and coproducts.
\esp

\law{999b}{
Initial datatype reflection
}{
\xymatrix{ 0 \ar@@(ur,ul)_{?_0=id_0} }
}{
?_0 = id_0
}

\law{999c}{
Initial datatype fusion
}{
%	\xymatrix{ 0 \ar@@/^/[dd]^{?_B} \ar[d]_{?_A} \\ A \ar[d]_f \\ B }
	\xymatrix{ 0 \ar[d]_{?_A} \ar[dr]^{?_B} \\ A \ar[r]_f & B }
}{
f \comp ?_A = ?_B
}
\\
\law{999d}{
Terminal datatype reflection
}{
\xymatrix{ 1 \ar@@(ur,ul)_{!_1=id_1} }
}{
!_1 = id_1
}

\law{999e}{
Terminal datatype fusion
}{
\xymatrix{ 1
	\\ A \ar[u]_{!_A} & B \ar[l]^f \ar[ul]_{!_B} }
}{
 !_A \comp f = !_B
}

\begin{exercise}		\label{ex:713(i)}
Can the properties
\begin{eqnarray*}
\start
|
	either bang bang = bang
|
\more
|
	? = split (?) (?)
|
\end{eqnarray*}
be derived from the \emph{exchange law} (\ref{eq:701d})? Justify.
% to empty products and empty coproducts, \ie\ $1$ and $0$.
\end{exercise}

\section{Sums and products in \haskell}\label{sec:990123a}
We conclude this chapter with an analysis of
the main primitive available in \haskell\ for creating datatypes:
the \texttt{data} declaration.
Suppose we declare
\begin{code}
        data CostumerId = P Int | C Int
\end{code}
meaning to say that,
for some company,
a client is identified either by its passport number or by its credit card
number, if any.
What does this piece of syntax precisely mean?

If we enquire the \hugs{\textsc{Haskell} interpreter} about what it knows about
\texttt{CostumerId},
the reply will contain the following information:
\begin{quote}\small
\begin{verbatim}
Main> :i CostumerId
-- type constructor
data CostumerId

-- constructors:
P :: Int -> CostumerId
C :: Int -> CostumerId
\end{verbatim}
\end{quote}

In general, let $A$ and $B$ be two known datatypes. Via declaration\small
%
\begin{eqnarray}
\texttt{
        data C = C1 A || C2 B
}	\label{eq:991013a}
\end{eqnarray}
%
\normalsize one obtains from
\hugs{\textsc{Haskell}}
a new datatype $C$ equipped with constructors
\(
\larrow A {C1} C
\)
and
\(
\larrow B {C2} C
\),
in fact the only ones available for constructing values of $C$:
\begin{eqnarray*}
        \xymatrix{
        A \ar[dr]_{C1} & & B \ar[dl]^{C2}
        \\ & C
}
\end{eqnarray*}
This diagram leads to an obvious instance of coproduct diagram
(\ref{eq:990115e}),
\begin{eqnarray*}
        \xymatrix{
        A \ar[r]^{i_1} \ar[dr]_{C1} &
        A+B \ar[d]^{\alt{C1}{C2}} &
        B \ar[l]_{i_2} \ar[dl]^{C2}
        \\ & C
}
\end{eqnarray*}
describing that a \texttt{data} declaration in \haskell\ means the
\emph{either} of its constructors.

Because there are no other means to build $C$ data, it follows that $C$ is
isomorphic to $A + B$.
So
\(
\alt{C1}{C2}
\)
has an inverse, say $inv$, which is such that
\(
inv \comp \alt{C1}{C2} = id
\).
How do we calculate $inv$?
Let us first think of the generic situation of a function
\(
\larrow C f D
\)
which observes datatype $C$:
\begin{eqnarray*}
        \xymatrix{
        A \ar[r]^{i_1} \ar[dr]_{C1} & A+B \ar[d]^{\alt{C1}{C2}} &
        B \ar[l]_{i_2} \ar[dl]^-{C2}
        \\ & C \ar[d]^{f}
        \\ & D
}
\end{eqnarray*}
This is an opportunity for \emph{$+$-fusion} (\ref{eq:+-fusion}),
whereby we obtain
\begin{eqnarray*}
        f \comp \alt{C1}{C2} &=& \alt{f \comp C1}{f \comp C2}
\end{eqnarray*}
Therefore,
the observation will be fully described provided we explain how $f$ behaves
with respect to $C1$
--- \cf\ $f \comp C1$ --- and with respect to $C2$
--- \cf\ $f \comp C2$.
This is what is behind the typical \emph{inductive} structure of
pointwise $f$,
which will be made of two and only two clauses:
\begin{eqnarray*}
&& f : \rarrow C {} D
\\
&& f(\ap{C1}a) = \ldots
\\
&& f(\ap{C2}b) = \ldots
\end{eqnarray*}

Let us use this in calculating the inverse $inv$ of $\alt{C1}{C2}$:
\begin{eqnarray*}
& &     inv \comp \alt{C1}{C2} = id
%
\just\equiv{by \emph{$+$-fusion} (\ref{eq:+-fusion})}
%
\alt{inv \comp C1}{inv \comp C2} = id
%
\just\equiv{by \emph{$+$-reflection} (\ref{eq:703b})}
%
\alt{inv \comp C1}{inv \comp C2} = \alt{i_1}{i_2}
%
\just\equiv{\emph{either} structural equality (\ref{eq:eitherStEq}) }
inv \comp C1 = i_1 \wedge inv \comp C2 = i_2
\end{eqnarray*}
Therefore:
\begin{eqnarray*}
&& inv : \rarrow C {} {A+B}
\\
&& inv(\ap{C1}a) = \ap{i_1}a
\\
&& inv(\ap{C2}b) = \ap{i_2}b
\end{eqnarray*}
In summary, $C1$ is a \aspas{renaming} of injection $i_1$,
$C2$ is a \aspas{renaming} of injection $i_2$ and $C$ is a \aspas{renamed} replica
of $A+B$:
\begin{eqnarray}
	\longlarrow {A+B} {\alt{C1}{C2}} C
	\label{eq:181228a}
\end{eqnarray}
$\alt{C1}{C2}$ is called the \emph{algebra} of datatype $C$ and its inverse
$inv$ is called the \emph{coalgebra} of $C$. The algebra contains the
constructors $C1$ and $C2$ of type $C$, that is, it is used to \aspas{build}
$C$-values. In the opposite direction, co-algebra $inv$ enables us
to \aspas{destroy} or observe values of $C$:
%
\begin{eqnarray*}
\xymatrix{
        C	\ar@@/^1pc/[rr]^-{inv} &
        \iso &
        A + B	\ar@@/^1pc/[ll]^-{\alt{C1}{C2}}
}
\end{eqnarray*}
%
Algebra/coalgebras also arise about product datatypes.
For instance, suppose that one wishes to describe datatype $Point$ inhabited
by pairs $\pair{x_0, y_0}$, $\pair{x_1, y_1}$ (\etc) of Cartesian coordinates of
a given type, say $A$. Although $A \times A$ equipped with projections $\p1,\p2$
\aspas{is} such a datatype, one may be interested in a suitably named replica
of $A \times A$ in which points are built explicitly by some constructor
(say $Point$) and observed by dedicated selectors (say $x$ and $y$):
%
\begin{eqnarray}
        \xymatrix{
  A
& A \times A
\ar[l]_{\p1} \ar[r]^{\p2}
\ar[d]^{Point}
& A
\\
& Point
\ar[ul]^{x}
\ar[ur]_{y}
}
\end{eqnarray}
%
This gives birth to the algebra $Point$ and the coalgebra $\split x y$ of datatype
$Point$:
%
\begin{eqnarray*}
\xymatrix{
        Point		\ar@@/^1pc/[rr]^-{\split x y} &
        \iso &
        A \times A	\ar@@/^1pc/[ll]^-{Point}
}
\end{eqnarray*}
In \haskell\ one writes
\begin{code}
data Point a = Point { x :: a, y :: a }
\end{code}
but be warned that \haskell\ delivers |Point| in curried form:
\begin{code}
Point :: a -> a -> Point a
\end{code}
Finally, what is the \aspas{\haskell-equivalent} to handling a \emph{pointer} in (say) C?
This corresponds to $A=1$ in (\ref{eq:181228a}),
\begin{eqnarray*}
	\longlarrow {1+B} {\alt{C1}{C2}} C
\end{eqnarray*}
and to the following \haskell\ declaration:
\begin{code}
        data C = C1 () | C2 B
\end{code}
Note that \haskell\ allows for a more programming-oriented alternative
in this case,
in which the unit type |()| is eliminated:
\begin{code}
        data C = C1 | C2 B
\end{code}
The difference is that here |C1| denotes an inhabitant of $C$
(and so a clause $f(\ap{C1}a) = \ldots$ is rewritten to $\ap f{C1} = \ldots$)
while above |C1| denotes a (constant) function $\larrow 1 {C1} C$.
Isomorphism (\ref{eq:fac20}) helps in comparing these two
alternative situations.

\section{Exercises}

\begin{exercise}\label{ex:990122a}
Let $A$ and $B$ be two disjoint datatypes, that is,
\(
A \cap B = \emptyset
\)
holds.
Show that isomorphism
\begin{eqnarray}
        A \cup B &\iso& A + B			\label{eq:fac27}
\end{eqnarray}
holds.
\textbf{Hint}: define
\(
\larrow {A + B}{i}{A \cup B}
\)
as
\(
i = \alt{emb_A}{emb_B}
\)
for $\ap{emb_A}a=a$ and $\ap{emb_B}b=b$,
and find its inverse.
By the way,
why didn't we define $i$ as simply as $i\deff \alt{id_A}{id_B}$?
\end{exercise}

\begin{exercise}
Knowing that a given function \ensuremath{\mathsf{xr}} satisfies property
\begin{eqnarray}
\ensuremath{\mathsf{xr} \comp \conj{\conj{\Varid{f}}{\Varid{g}}}{\Varid{h}}\mathrel{=}\conj{\conj{\Varid{f}}{\Varid{h}}}{\Varid{g}}}
\label{eq:140511a}
\end{eqnarray}
for all \ensuremath{\Varid{f}}, \ensuremath{\Varid{g}} and \ensuremath{\Varid{h}}, derive from (\ref{eq:140511a})
the definition of \ensuremath{\mathsf{xr}}:
\begin{eqnarray}
\ensuremath{\mathsf{xr}\mathrel{=}\conj{\p1 \times {id}}{\p2 \comp \p1}}
\label{eq:140515e}
\end{eqnarray}
\end{exercise}

\begin{exercise}\label{ex:mpi9899q18}
Let |distr| (read: \emph{\uk{distribute right}}) be the bijection which
witnesses isomorphism
\(
A \times (B+C) \iso A \times B + A \times C
\).
Fill in the \aspas\ldots in the diagram which follows so that it describes
bijection |distl| (red: \emph{\uk{distribute left}}) which witnesses isomorphism
\(
(B+C) \times A  \iso B \times A + C \times A
\):
\begin{eqnarray*}
        \xymatrix{
        (B+C) \times A \ar[r]^-{|swap|} \ar@@/_1pc/[rrr]_-{|distl|} &
        \cdots \ar[r]^-{|distr|} &
        \cdots \ar[r]^-{\cdots} &
        B \times A + C \times A
}
\end{eqnarray*}
\end{exercise}

\begin{exercise}
In the context of exercise \ref{ex:mpi9899q18}, prove
\begin{eqnarray}
        \alt g h \times f &=& \alt{g \times f}{h \times f} \comp |distl|
        \label{eq:686j}
\end{eqnarray}
knowing that
\begin{eqnarray}
        f \times \alt g h &=& \alt{f \times g}{f \times h} \comp |distr|
\end{eqnarray}
\jnowarning{cf pag 686 e BM97 Ex.2.38}
holds.
\end{exercise}

\begin{exercise}
%related to quest{cp1415q02}
Noting the following consequence of (\ref{eq:686j}),
\begin{eqnarray*}
\start
        |ap.(either g h >< id) = ap . (either (g >< id)(h >< id)) . distl|
\end{eqnarray*}
find |g| and |h| such that |ap . (either (g >< id)(h >< id)) = id|. Conclude that
\begin{eqnarray}
	|curry distl = either (curry i1)(curry i2)|
	\label{eq:200205a}
\end{eqnarray}
Draw the type diagram of |curry distl|.
\end{exercise}

\begin{exercise}
%quest{cp0910q01}
The arithmetic law $(a+b)(c+d)=(ac+ad)+(bc+bd)$ corresponds to
the isomorphism
\begin{eqnarray*}
\xymatrix{
(A+B)\times(C+D)
&
\iso
&
(A×C+A×D)+(B×C+B×D)
\ar@@/^1.5pc/[ll]^{h=\either{\either{i_1\times i_1}{i_1\times i_2}}{\either{i_2\times i_1}{i_2\times i_2}}}
}
\end{eqnarray*}
%\begin{code}
%h :: Either (Either (a, c) (a, d)) (Either (b, c) (b, d)) -> (Either a b, Either c d)
%h = either(either(i1><i1)(i1><i2))(either(i2><i1)(i2><i2))
%\end{code}
From universal property (\ref{eq:eitherUniv}) infer the following
definition of function $h$, written in Haskell syntax:
%h1 :: Either (Either (a, c) (a, d)) (Either (b, c) (b, d)) -> (Either a b, Either c d)
\begin{quote}\small
\begin{verbatim}
h(Left(Left(a,c))) = (Left a,Left c)
h(Left(Right(a,d))) = (Left a,Right d)
h(Right(Left(b,c))) = (Right b,Left c)
h(Right(Right(b,d))) = (Right b,Right d)
\end{verbatim}
\end{quote}
\end{exercise}

\begin{exercise}
%quest{cp0607q17}
Every C programmer knows that a ``|struct| of pointers"
\begin{eqnarray*}
(A+1)×(B+1)
\end{eqnarray*}
offers a data type which represents both product $A× B$ (|struct|)
and coproduct $A +B$ (|union|), alternatively.
%
Express in pointfree notation the isomorphisms $i_1$ to $i_5$ of
\begin{eqnarray*}
\xymatrix@@R=1em{
(A+1)×(B+1)
&	((A+1)×B)+((A+1)×1)
	\ar[l]_-{i_1}
\\
&
(A×B+1×B)+(A×1+1×1)
	\ar[u]_-{i_2}
\\
&	(A×B+B)+(A+1)
	\ar[u]_-{i_3}
\\
(A×B+(B+A))+1
	\ar[r]_-{i_5}
&	A×B+(B+(A+1))
	\ar[u]_-{i_4}
}
\end{eqnarray*}
which witness the observation above.
\end{exercise}

\begin{exercise}
%quest{cp0910q01}
Prove the following property of McCarthy conditionals:
\begin{eqnarray}
\mcond{p}{f\comp g}{h\comp k} &=& \alt f h \comp (\mcond p {i_1\comp g}{i_2\comp k})
\label{eq:070531a-duplicated-label-check!}
\end{eqnarray}
\end{exercise}

\begin{exercise}
%quest{cp1213q03a}
Assuming the fact
\begin{eqnarray}
(\grd p + \grd p)\comp \grd p &=& (i_1+i_2)\comp \grd p
\end{eqnarray}
show that nested conditionals can be simplified:
\begin{eqnarray}
\mcond p {(\mcond p f g)}{(\mcond p h k)} &= &  \mcond p f k
\end{eqnarray}
\end{exercise}

\begin{exercise}\label{ex:991120a}
Show that
\(
\ap{(\trans{f \comp ap})}g = f \comp g
\)
holds, \cf\ (\ref{eq:990209a}).
\end{exercise}

\begin{exercise}
%quest{cp1112q06} \CUT{exponenials --- cf. 2010}
Consider the higher-order isomorphism $flip$ defined as follows:
%\begin{code}
%flip           :: (a -> b -> c) -> b -> a -> c
%flip f x y      = f y x
%\end{code}
%troca a ordem dos argumentos de uma função. É fácil de ver que ||flip|| é um isomorfismo de exponenciais:
\begin{eqnarray*}
\xymatrix@@C=2ex@@R=1pt{
(C^B)^A &\iso& C^{A\times B} &\iso & C^{B\times A} &\iso & (C^A)^B
\\
f       &\mapsto& \uncurry f &\mapsto & \uncurry f . |swap| &\mapsto & \trans{\uncurry f \comp |swap|} = flip\ f
}
\end{eqnarray*}
%
% flip f = curry(uncurry f . swap)
%
%Apresente justificações para os passos seguintes do cálculo desse isomorfismo a partir da sua definição ao ponto (\emph{pointwise}):
Show that
\(
flip\ f\ x\ y = f\ y\ x
\).
%\begin{eqnarray*}
%&&
%	||flip f x y      = f y x||
%%
%\cjust\equiv{}
%%
%	||ap(flip f x,y)      = ap(f y,x)||
%%
%\cjust\equiv{}
%%
%	||(ap.(flip f >< id))(x,y)      = (ap.(f >< id))(y,x)||
%%
%\cjust\equiv{}
%%
%	||ap.(flip f >< id) = ap.(f >< id) . swap||
%%
%\cjust\equiv{}
%%
%	||flip f = curry(ap.(f >< id).swap)||
%%
%\cjust\equiv{}
%%
%	||flip f = curry(ap.(curry (uncurry f) >< id).swap)||
%%
%\cjust\equiv{}
%%
%	||flip f = curry(uncurry f.swap)||
%%
%\end{eqnarray*}
\end{exercise}

\begin{exercise}\label{ex:080407a}
Let \( \rarrow C {\mathsf{const}} {C^A} \) be the function of exercise \ref{ex:const},
that is,
\(	\ap{\mathsf{const}} c =  {\kons c}_A	\).
Which fact is expressed by the following diagram featuring $\mathsf{const}$?
\begin{eqnarray}
\myxym{
C
	\ar[r]^-{\mathsf{const}}
	\ar[d]_-{f}
&
C^A
	\ar[d]^-{f^A}
\\
B
	\ar[r]_-{\mathsf{const}}
&
B^A
}
\end{eqnarray}
Write it at point-level and describe it by your own words.
\end{exercise}

\begin{exercise}
%quest{cp1213q04}
%fbox{4	Exponenciação	}
%A função ||p2 : A >< B -> B|| é binária e, como tal, faz sentido a sua versão ``curried'' ||curry p2 : A -> (B -> B)||. Usando as leis da exponenciação mostre que, qualquer que seja ||f||,
Show that
\(
\trans{\p2}\comp f = \trans{\p2}
\)
holds for every $f$.
Thus $\trans{\p2}$ is a constant function --- which one?
%\resolucao{Tem-se (preencher justificações):
%\begin{eqnarray*}
%&&
%	||curry p2.f||
%%
%\cjust\equiv{}
%%
%	||curry (p2.(f><id))||
%%
%\cjust\equiv{}
%%
%	||curry (id.p2)||
%%
%\cjust\equiv{}
%%
%	||curry p2||
%\end{eqnarray*}
%Por análise de tipos, teremos que ||(curry p2 a) : B -> B||, qualquer que seja
%||a||. Ora a única função que conseguimos polimorficamente
%garantir como resultado é ||id:B->B||. Logo, ||curry p2 = const id||.
%E. de facto: ||p2(a,b)=b|| é equivalente a ||(curry p2 a) b = b||, isto é: ||curry p2 a|| = $\lambda b.b$ = ||id||.
%}
\end{exercise}

\begin{exercise}
Establish the difference between the following two declarations in \haskell,
\begin{code}
   data D = D1 A | D2 B C
   data E = E1 A | E2 (B,C)
\end{code}
for |A|, |B| and |C| any three predefined types.
Are $D$ and $E$ isomorphic? If so, can you specify and encode the corresponding
isomorphism?
\end{exercise}

\section{Bibliography notes}
A few decades ago John Backus read, in his Turing Award Lecture, a revolutionary paper \cite{Ba78}.
This paper proclaimed conventional command-oriented programming languages
obsolete because of their inefficiency arising from retaining, at a high-level,
the so-called \aspas{memory access bottleneck} of the underlying
computation model --- the well-known {\em von Neumann} architecture.
Alternatively,
the (at the time already mature)
{\em functional programming} style was put forward for two main reasons.
Firstly,
because of its potential for concurrent and parallel computation.
Secondly --- and Backus emphasis was really put on this ---,
because of its strong algebraic basis.

Backus {\em algebra of (functional) programs} was providential in
alerting computer programmers that {computer languages} alone are
insufficient,
and that only languages which exhibit an {\em algebra} for reasoning
about the objects they purport to describe will be useful in the long run.

The impact of Backus first argument in the computing science and
computer architecture communities was considerable,
in particular if assessed in quality rather than quantity
and in addition to the almost contemporary {\em structured programming} trend
\footnote{Even the C programming language and the \unix\ operating
system,
with their implicit functional flavour,
may be regarded as subtle outcomes of the \aspas{going functional} trend.
}.
By contrast,
his second argument for changing computer programming was by and large ignored,
and only the so-called {\em algebra of programming} research minorities
pursued in this direction.
However, the advances in this area throughout the last two decades are
impressive and can be fully appreciated by reading a textbook written
relatively recently by Bird and de Moor \cite{BM97}.
A comprehensive review of the voluminous literature available in this area
can also be found in this book.

Although the need for a pointfree algebra of programming was first identified
by Backus,
perhaps influenced by Iverson's \textsc{Apl} growing popularity in the USA
% \cite{Iv}
at that time,
the idea of reasoning and using mathematics to transform programs
is much older and can be traced to the times of McCarthy's work on the
foundations of computer programming \cite{Mc63},
of Floyd's work on program meaning \cite{Fl67}
and of Paterson and Hewitt's \emph{comparative schematology} \cite{PH70}.
Work of the so-called \emph{program transformation} school was already very
expressive in the mid 1970s, see for instance references \cite{BD77}.

The mathematics adequate for the effective integration of these related but
independent lines of thought was provided by the categorial approach of
Manes and Arbib compiled in a textbook \cite{MA86} which has very strongly
influenced the last decade of 20th century theoretical computer science.

A so-called MPC (\aspas{Mathematics of Program Construction})
community has been among the most active in producing an
integrated body of knowledge on the algebra of programming
which has found in functional programming
an eloquent and paradigmatic medium.
Functional programming
has a tradition of absorbing fresh results from
theoretical computer science, algebra and category theory.
Languages such as \haskell\ \cite{Bi98} have been competing to
integrate the most recent developments and therefore are excellent
\emph{prototyping} vehicles in courses on program
calculation, as happens with this \doc.

For fairly recent work on this topic see e.g.\ \cite{GH11,Hi13,HWG15,Gi16}.

\chapter{Recursion in the Pointfree Style}\label{ch:990115a}
How useful from a programmer's point of view
are the abstract concepts presented in the previous chapter?
%
Recall that a table was presented --- table \ref{tab:svpln} ---
which records an analogy between abstract type notation
and the corresponding data-structures available in common,
imperative languages.

This analogy will help in showing how to extend the abstract notation studied
thus far towards a most important field of programming: \emph{recursion}.
This, however, will be preceeded by a simpler introduction to the subject
rooted on very basic and intuitive notions of mathematics.

\section{Motivation}\label{sec:120409a}
Where do algorithms come from? From human imagination only?
Surely not --- they actually emerge from mathematics.
In a sense, in the same way one may say that hardware follows the
laws of physics (e.g.\ semiconductor electronics)
one might say that software is governed by the laws of mathematics.

This section provides
a naive introduction to algorithm analysis and synthesis by showing
how a quite elementary class of algorithms --- equivalent to
for-loops in C or any other imperative language --- arise from
elementary properties of the underlying maths domain.
%We also show how to calculate such for-loops from systems of equations emerging from primitive recursive functional definitions of operations of interest.

We start by showing how the arithmetic operation of
multiplying two natural numbers (in $\N_0$) is a for-loop which emerges
solely from the algebraic properties of multiplication:
\begin{eqnarray}
\begin{lcbr}
\begin{array}{l}
a\times 0 = 0
\\
a\times 1 = a
\\
a\times (b+c) = a\times b+a\times c
\end{array}
\end{lcbr}
\end{eqnarray}
These properties are known as the \emph{absorption}, \emph{unit} and \emph{distributive} properties of
multiplication, respectively.

%are enough for deriving programs involving addition and multiplication.
Start by making $c:=1$ in the third (distributive) property, obtaining
%
\(
a \times (b+1) \wider= a \times b + a \times 1
\),
and then simplify. The second clause is useful in this simplification but
it is not required in the final system of two equations,
\begin{eqnarray}
\begin{lcbr}
\begin{array}{l}
a\times 0 =0
\\
a\times (b+1) = a\times b+a
\end{array}
\end{lcbr}
\label{eq:120327a}
\end{eqnarray}
since it is derivable from the remaining two, for $b:=0$ and property $0+a=a$ of addition.

System (\ref{eq:120327a}) \emph{is already} a runnable program in a functional language
such as Haskell (among others).
The moral of this trivial exercise is that
programs \emph{arise} from the underlying maths, instead of being \emph{invented}
or coming out of the blue. Novices in functional programming do this kind of reasoning
all the time without even noticing it, when writing their first programs. For instance,
the function which computes discrete exponentials will scale up the
same procedure, thanks to the properties
\begin{eqnarray*}
\begin{lcbr}
\begin{array}{l}
a ^ 0 = 1
\\
a ^ 1 = a
\\
a ^ {b+c} = a ^ b \times a ^ c
\end{array}
\end{lcbr}
\end{eqnarray*}
where the program just developed for multiplication can be re-used,
and so and so on.

Type-wise, the multiplication algorithm just derived for natural numbers
is not immediate to generalize. Intuitively, it will diverge for $b$ a
negative integer and for $b$ a real number less than $1$, at least.
Argument $a$, however, does not seem to be constrained.

Indeed, the two arguments $a$ and $b$ will have different types in general.
Let us see why and how. Starting by looking at infix operators $(\times)$ and $(+)$ as
\emph{curried} operators --- recall section \ref{seq:080612d} ---
% which is what they are in Haskell, cf.\ e.g.\ type ||(*) :: (Num a) => a -> a -> a||.
we can resort to the corresponding \emph{sections} and write:
%\footnote{
%	% it actually is and abstract its section $(a\times)$, the \emph{``multiply by $a$''} unary function:
%Recall that section $(a\times)$ --- respectively $(a+)$ --- abbreviates $\trans{(\times)}a$ --- respectively $\trans{(+)}a$.}:
\begin{eqnarray}
\begin{lcbr}
\begin{array}{l}
(a\times) 0 =0
\\
(a\times) (b+1) = (a+)((a\times) b)
\end{array}
\end{lcbr}
\label{eq:120327b}
\end{eqnarray}
It can be easily checked that
\begin{eqnarray}
(a\times) &=& \for {(a+)} 0
\label{eq:150316d}
\end{eqnarray}
by introducing a \textbf{for-loop} combinator given by
\begin{eqnarray}
\begin{lcbr}
\begin{array}{l}
\for f i\ 0 = i
\\
\for f i\ (n+1) = f\ (\for f i\ n)
\end{array}
\end{lcbr}
\label{eq:110305a}
\end{eqnarray}
where $f$ is the loop-body and $i$ is the initialization value.
In fact, $(\for f i) n = f^n\ i$, that is, $f$ is iterated $n$ times over the
initial value $i$.

For-loops are a primitive construct available in many programming languages. In C,
for instance, one will write something like
\begin{quote}\small
\begin{verbatim}
int mul(int a, int n)
{
  int s=0; int i;
  for (i=1; i<n+1; i++) { s += a; }
  return s;
};
\end{verbatim}
\end{quote}
for (the uncurried version of) loop $\for {(a+)} {0}$.

To better understand this construct let us remove variables from both equations
in (\ref{eq:120327b}) by lifting function application to
function composition and lifting $0$ to the ``everywhere $0$'' (constant) function:
% and introducing additive sections as well:
\begin{eqnarray*}
\begin{lcbr}
\begin{array}{l}
(a\times) \comp \kons 0 = \kons 0
\\
(a\times) \comp (+1) = (+a) \comp (a\times)
\end{array}
\end{lcbr}
\end{eqnarray*}
Using the \emph{junc} (``either'') pointfree combinator
we merge the two equations into a single one,
\begin{eqnarray*}
\junc{(a\times) \comp \kons 0}{(a\times) \comp (+1)}
& = &
\junc{\kons 0}{(+a) \comp (a\times)}
\end{eqnarray*}
--- thanks to the Eq-$+$ rule (\ref{eq:eitherStEq})  ---
then single out the common factor $(a\times)$ in the left hand side,
\begin{eqnarray*}
(a\times) \comp \junc{\kons 0}{(+1)}
& = &
\junc{\kons 0}{(+a) \comp (a\times)}
\end{eqnarray*}
--- thanks to $+$-fusion (\ref{eq:+-fusion}) ---
and finally do a similar \emph{fission} operation on the other side,
\begin{eqnarray}
(a\times) \comp \junc{\kons 0}{(+1)}
& = &
\junc{\kons 0}{(+a)} \comp (id+ (a\times))
\label{eq:110401a}
\end{eqnarray}
--- thanks to $+$-absorption (\ref{eq:+-absorption}).
% both granted by well-known properties of the algebra of programming.
% the junc-combinator.

As we already know, equalities of compositions are nicely drawn as diagrams.
That of (\ref{eq:110401a}) is as follows:
\begin{eqnarray*}
\xymatrix@@C=4em{
	{\N_0}
		\ar[d]_-{(a\times)}
&
	A + {\N_0}
		\ar[d]^{id+(a\times)}
		\ar[l]_{\junc{\kons 0}{(+1)}}
\\
	\N_0 & A+{\N_0} \ar[l]^-{\junc{\kons 0}{(+a)}}
}
\end{eqnarray*}
Function $(+1)$ is the successor function |succ| on natural numbers.
Type $A$ is any (non-empty)
type. For the particular case of $A = 1$, the diagram is more interesting,
as $\junc{\kons 0}{|succ|}$ becomes an isomorphism, telling a \emph{unique}
way of building natural numbers:\footnote{This is nothing but a re-statement of the well-known
\emph{Peano} axioms for the natural numbers. Giuseppe Peano (1858-1932) was a famous Italian
mathematician.}
\begin{quote}\em
Every natural number in $\N_0$ either is $0$ or the successor of another natural number.
\end{quote}
We will denote such an isomorphism
by $in$ and its converse by $out$ in the following version of the same diagram
\begin{eqnarray*}
\xymatrix{
	{\N_0}
	\ar@@/^1pc/[rr]^-{out=\conv{in}}
	\ar[d]_-{(a\times)}
	&
		\iso
		&
		1+ {{\N_0}}
	\ar[d]^{id+(a\times)}
	\ar@@/^1pc/[ll]^-{in=\junc{\kons 0}{|succ|}}
	\\
		\N_0
		&
		&
		1+ {\N_0}
	\ar@@/^1pc/[ll]^-{\junc{\kons 0}{(+a)}}
}
\end{eqnarray*}
capturing both the isomorphism and the $(a\times)$ recursive function. By
solving the isomorphism equation $out \comp in=id$ we easily obtain the definition
of $out$, the converse of $in$~\footnote{Note how the singularity of type
$1$ ensures $out$ a function: what would the outcome of $out\ 0$ be
should $A$ be arbitrary?}:
   \begin{eqnarray*}
&& out\ 0 = i_1 ()
\\
	&& out(n+1) = i_2\ n
	\end{eqnarray*}
Finally, we generalize the target $\N_0$ to any non-empty type $B$, $(+a)$
to any function $\rarrow BgB$ and $0$ to any constant $k$ in $B$ (this is
why $B$ has to be non-empty).
%
The corresponding generalization of $(a\times)$ is denoted by $f$ below:
\begin{eqnarray*}
\xymatrix{
{\N_0}
\ar@@/^1pc/[rr]^-{out=\conv{in}}
\ar[d]_-{f}
&
	\iso
	&
	1+ {{\N_0}}
\ar[d]^{id+f}
\ar@@/^1pc/[ll]^-{in=\junc{\kons 0}{|succ|}}
\\
	B
	&
	&
	1+ {B}
\ar@@/^1pc/[ll]^-{\junc{\kons k}{g}}
}
\end{eqnarray*}

It turns out that, given $k$ and $g$, there is a unique solution to the equation
(in $f$) captured by the diagram:
\(
f \comp in = \junc{\kons k}{g} \comp (id +f)
\). We know this solution already, recall (\ref{eq:110305a}):
\begin{eqnarray*}
f & = & \for g k
\end{eqnarray*}
As we have seen earlier on, solution uniqueness is captured by universal properties.
In this case we have the following property, which we will refer to by writing
``for-loop-universal'':
\begin{eqnarray}
f = \for g k & \wider\equiv & f \comp in = \junc{\kons k}{g} \comp (id +f)
\label{eq:110401b}
\end{eqnarray}

From this property it is possible to infer a basic theory of for-loops. For
instance, by making $f=id$ and solving the for-loop-universal equation
(\ref{eq:110401b}) for $g$ and $k$ we obtain the reflection law:
\begin{eqnarray}
\for {|succ|} 0 &=& id
\end{eqnarray}
This can be compared with the following (useless) program in C:
\begin{quote}\small
\begin{verbatim}
int id(int n)
{
  int s=0; int i;
  for (i=1;i<n+1;i++) {s += 1;}
  return s;
};
\end{verbatim}
\end{quote}
(Clearly, the value returned in \texttt s is that of input \texttt n.)

More knowledge about for-loops can be extracted from (\ref{eq:110401b}).
Later on we will show that these constructs are special cases of a more general
concept termed \emph{catamorphism}.\footnote{See e.g.\ section \ref{sec:991127a}.}
In the usual "\emph{banana-bracket}" notation of catamorphisms, to be introduced later,
the for-combinator will be written:
\begin{eqnarray}
	|for g k = cata(either (const k) g)|
	\label{eq:for-as-cata}
\end{eqnarray}

In the sequel, we shall study the (more general) theory of {catamorphisms}
and come back to for-loops as an instantiation. Then we will understand how
more interesting for-loops can be synthesized, for instance those handling
more than one ``global variable'', thanks to catamorphism theory (for instance,
the mutual recursion laws).

As a generalization of what we have just seen happening between for-loops and
natural numbers, it will be shown that a catamorphism is intimately connected
to the data-structure it processes, for instance a finite list (sequence)
or a binary tree. A good understanding of such structures is therefore required.
We proceed to studying the list data structure first, wherefrom trees stem
as natural extensions.

\begin{exercise}
Addition is known to be associative ($a+(b+c)=(a+b)+c$) and have unit $0$ ($a+0=a$).
Following the same strategy that was adopted above for $(a \times)$, show that
\begin{eqnarray}
(a+) &=& \for {|succ|} {a}
\label{eq:120328a}
\end{eqnarray}
\end{exercise}

\begin{exercise}
The following \emph{fusion}-law
\begin{eqnarray}
h \comp (\for g k) = \for j (h\ k) & \implied & h \comp g = j \comp h
\label{eq:150316c}
\end{eqnarray}
can be derived from universal-property  (\ref{eq:110401b}) \footnote{
A generalization of this property will be derived in section \ref{sec:F-catas}.}.
Since $(a+) \comp id = (a+)$, provide an alternative derivation of (\ref{eq:120328a})
%\begin{eqnarray*}
%(a+) &=& \for {|succ|} {a}
%\end{eqnarray*}
using the fusion-law above.
\end{exercise}

\begin{exercise}\label{ex:cp1314q11}
From (\ref{eq:150316d}) and fusion-law (\ref{eq:150316c}) infer:
|(a*) . succ = for (a+) a|.
\end{exercise}

\begin{exercise} \label{ex:q:cp1213q06}
Show that $f = \for{\kons k} k$ and
          $g = \for {id} k$ are the same program (function).
\end{exercise}

\begin{exercise}
Generic function $k = \for f i$ can be encoded in the syntax of C by writing
\begin{quote}\small
\begin{verbatim}
int k(int n) {
  int r=i;
  int x;
  for (x=1;x<n+1;x++) {r=f(r);}
  return r;
};
\end{verbatim}
\end{quote}
for some predefined $f$. Encode the functions $f$ and $g$ of exercise \ref{ex:q:cp1213q06}
in C and inspect their operational behaviour.
\end{exercise}

\section{From natural numbers to finite sequences}
Let us consider a very common data-structure in programming: \aspas{linked-lists}.
In \pascal\ one will write
\begin{quote}\small
\begin{verbatim}
L = ^N;
N = record
  first: A;
  next: ^N
end;
\end{verbatim}
\end{quote}

\noindent
to specify such a data-structure \texttt{L}.
This consists of a pointer to a \emph{node} (\texttt{N}),
where a node is a record structure which puts some predefined type $A$
together with a pointer to another node,
and so on.
In the C programming language,
every $x\in L$ will be declared as \verb!L x!
in the context of datatype definition
\begin{quote}\small
\begin{verbatim}
typedef struct N {
     A first;
     struct N *next;
} *L;
\end{verbatim}
\end{quote}
and so on.

\begin{figure}
\centering
	\includegraphics[width=0.7\textwidth]{ll.png}
	\caption{\small Linked-list representation of the finite sequence |[1,2,3]|.}
\end{figure}

What interests us in such \aspas{first year programming course} datatype
declarations? Records and pointers have already been dealt with in table
\ref{tab:svpln}. So we can use this table to find the abstract version of
datatype $L$, by replacing pointers by the \aspas{$1+\cdots$} notation and
records (\emph{structs}) by the \aspas{$\ldots \times \ldots$} notation:
   \begin{eqnarray}
   \left\{
   \begin{array}{rcl}
   L & = & 1 + N \\
 N & = & A \times (1 + N)
 \end{array}
 \right.					\label{eq:990122a}
 \end{eqnarray}

 We obtain a system of two equations on unknowns $L$ and $ N$,
 in which $L$'s dependence on $ N$ can be removed by substitution:
 \begin{eqnarray*}
 & &
 \left\{
 \begin{array}{rcl}
 L & = & 1 + N \\
       N & = & A \times (1 + N)
       \end{array}
       \right.
       %
       \just\equiv{substituting $L$ for $1 + N$ in the second equation}
       %
       \left\{
       \begin{array}{rcl}
       L & = & 1 + N \\
	     N & = & A \times L
	     \end{array}
	     \right.
	     %
	     \just\equiv{substituting $A \times L$ for $ N$ in the first equation}
	     %
	     \left\{
	     \begin{array}{rcl}
	     L & = & 1 + A \times L\\
		   N & = & A \times L
		   \end{array}
		   \right.
		   \end{eqnarray*}
		   %
		   System (\ref{eq:990122a}) is thus equivalent to:
		   \begin{eqnarray}
		   \left\{
		   \begin{array}{rcl}
		   L & = & 1 + A \times L \\
N & = & A \times (1 + N)
\end{array}
\right.	\label{eq:991026a}
\end{eqnarray}

\noindent
Intuitively, $L$ abstracts the \aspas{possibly empty} linked-list of elements
of type $A$,
while $N$ abstracts the \aspas{non-empty} linked-list of elements
of type $A$.
Note that $L$ and $N$ are independent of each other,
but also that each depends on itself.
Can we solve these equations in a way such that we obtain \aspas{solutions}
for $L$ and $N$, in the same way we do with school equations such as,
for instance,
\begin{equation}\label{eq:990122c}
x = 1 + \frac{x}{2} ~~~~~~~~~~~~~~~?
\end{equation}

Concerning this equation,
let us recall how we would go about it in school mathematics:
\begin{eqnarray*}
&&
x=1+ \frac x 2
%
\just\equiv{adding $- \frac x 2$ to both sides of the equation}
%
x - \frac x 2 = 1+ \frac x 2 - \frac x 2
%
\just\equiv{$- \frac x 2$ cancels $\frac x 2$}
%
x - \frac x 2 = 1
%
\just\equiv{multiplying both sides of the equation by $2$ \etc\ }
%
2 \times x - x = 2
%
\just\equiv{subtraction}
%
x = 2
\end{eqnarray*}

We very quickly get solution $x=2$.
However, many steps were omitted from the actual calculation.
This unfolds into the longer sequence of more elementary steps which follows,
in which notation $a-b$ abbreviates $a +(-b)$ and $\frac a b$ abbreviates
$a \times \frac 1 b$, for $b \neq 0$:
\begin{eqnarray*}
&&
x=1+ \frac x 2
%
\just\equiv{adding $- \frac x 2$ to both sides of the equation}
%
x - \frac x 2 = (1+ \frac x 2) - \frac x 2
%
\just\equiv{$+$ is associative}
%
x - \frac x 2 = 1+ (\frac x 2 - \frac x 2)
%
\just\equiv{$- \frac x 2$ is the additive inverse of $\frac x 2$}
%
x - \frac x 2 = 1 + 0
%
\just\equiv{$0$ is the unit of addition}
%
x - \frac x 2 = 1
%
\just\equiv{multiplying both sides of the equation by $2$}
%
2 \times (x - \frac x 2) = 2 \times 1
%
\just\equiv{$1$ is the unit of multiplication}
%
2 \times (x - \frac x 2) = 2
%
\just\equiv{multiplication distributes over addition}
%
2 \times x - 2 \times \frac x 2 = 2
%
\just\equiv{$2$ cancels its inverse $\frac 1 2$ }
%
2 \times x - 1 \times x = 2
%
\just\equiv{multiplication distributes over addition}
%
(2 - 1) \times x = 2
%
\just\equiv{$2-1=1$ and $1$ is the unit of multiplication}
%
x = 2
\end{eqnarray*}

Back to (\ref{eq:991026a}), we would like to submit each of the equations, \eg
\begin{eqnarray}
L & = & 1 + A \times L				 \label{eq:990122b}
\end{eqnarray}
to a similar reasoning.
Can we do it?
The analogy which can be found between this equation and (\ref{eq:990122c})
goes beyond pattern similarity.
From chapter \ref{ch:990122a} we know that
many properties required in the reasoning above hold in the context of
(\ref{eq:990122b}),
provided the \aspas{=} sign is replaced by the \aspas{$\iso$} sign,
that of set-theoretical isomorphism.
Recall that,
for instance,
{$+$ is associative} (\ref{eq:A6}),
{$0$ is the unit of addition} (\ref{eq:55f}),
{$1$ is the unit of multiplication} (\ref{eq:A3}),
{multiplication distributes over addition} (\ref{eq:A4}) \etc\
	Moreover,
the first step above assumed that addition is compatible (monotonic) with
respect to equality,
\[
\begin{array}{ccc}
a&=&b\\
   c&=&d\\ \hline
   a+c&=&b+d
   \end{array}
   \]
   a fact which still holds when numeric equality gives place to isomorphism
   and numeric addition gives place to coproduct:
   \[
   \begin{array}{ccc}
   A&\ \iso &B\\
	   C&\ \iso &D\\ \hline
	   A+C&\ \iso &B+D
	   \end{array}
	   \]
--- recall (\ref{eq:990112c}) for isos $f$ and $g$.

Unfortunately,
the main steps in the reasoning above are concerned with two
basic \emph{cancellation properties}
\begin{eqnarray*}
x+b = c &\equiv& x = c-b
\\
x \times b = c &\equiv& x = \frac c b  ~~~~~~ (b\neq 0)
\end{eqnarray*}
which hold about numbers but do not hold about datatypes.
In fact, neither products nor coproducts have arbitrary inverses
\footnote{%
	   The initial and terminal datatypes do have inverses
		   --- $0$ is its own \aspas{additive inverse} and
		   $1$ is its own \aspas{multiplicative inverse} ---
		   but not all the others.
},
and so we cannot \aspas{calculate by cancellation}.
How do we circumvent this limitation?

Just think of how we would have gone about (\ref{eq:990122c}) in case we did not
know about the \emph{cancellation properties}:
we would be bound to the $x$ by $1+ \frac x 2$ substitution
plus the other properties.
By performing such a substitution over and over again we would obtain\ldots

\begin{eqnarray*}
&&	x = 1 + \frac x 2
%
\just\equiv{$x$ by $1+ \frac x 2$ substitution followed by simplification}
%
x = 1 + \frac {1 + \frac x 2} 2 = 1 + \frac 1 2 + \frac x 4
%
\just\equiv{the same as above}
%
x = 1 + \frac 1 2 + \frac {1 + \frac x 2} 4
= 1 + \frac 1 2 + \frac 1 4 + \frac x 8
%
\just\equiv{over and over again, $n$-times}
%
\cdots
%
\just\equiv{simplification}
%
x = \sum_{i=0}^n \frac 1 {2^i} + \frac x {2^{n+1}}
%
\just\equiv{sum of $n$ first terms of a geometric progression }
%
x = (2 - \frac 1 {2^{n}}) + \frac x {2^{n+1}}
%
\just\equiv{let $n\rightarrow\infty$}
%
x = (2 - 0) + 0
%
\just\equiv{ simplification }
%
x = 2
%
\end{eqnarray*}

Clearly,
this is a much more complicated way of finding solution $x=2$ for
equation (\ref{eq:990122c}).
But we would have loved it in case it were the only known way,
and this is precisely what happens with respect to (\ref{eq:990122b}).
In this case we have:
\begin{eqnarray*}
&&      L = 1 + A \times L
%
\just\equiv{substitution of $1 + A \times L$ for $L$}
%
L = 1 + A \times (1 + A \times L)
%
\just\equiv{distributive property (\ref{eq:A4}) }
%
L \iso 1 + A \times 1 + A \times (A \times L)
%
\just\equiv{ unit of product (\ref{eq:A3}) and associativity of product
	(\ref{eq:timesAss})}
%
	L \iso 1 + A + (A \times A) \times L
%
\just\equiv{ by (\ref{eq:fac25}), (\ref{eq:fac20}) and (\ref{eq:331f})}
%
	L \iso A^0 + A^1 + A^2 \times L
%
\just\equiv{another substitution as above and similar simplifications}
%
	L \iso A^0 + A^1 + A^2 + A^3 \times L
%
\just\equiv{after $(n+1)$-many similar steps}
%
	L \iso \sum_{i=0}^n A^{i} + A^{n+1} \times L
%
	\end{eqnarray*}

Bearing a large $n$ in mind,
let us deliberately (but temporarily) ignore term $A^{n+1} \times L$.
Then $L$ will be isomorphic to the sum of $n$-many contributions $A^i$,
	%
	\begin{eqnarray*}
	L \iso \sum_{i=0}^n A^{i}
	\end{eqnarray*}
	%
	each of them consisting of $i$-long tuples, or \emph{sequences},
of values of $A$.
(Number $i$ is said to be the \emph{length} of any sequence in $A^i$.)
Such sequences will be denoted by enumerating their elements between
square brackets,
for instance the \emph{empty sequence}
\(
\emptyseq
\)
which is the only inhabitant in $A^0$,
the two element sequence
\(
\enseq{a_1,a_2}
\)
which belongs to $A^2$ provided $a_1,a_2\in A$,
and so on.
Note that all such contributions are mutually disjoint,
that is,
\(
A^i \cap A^j = \emptyset
\)
wherever $i\neq j$.
(In other words,
a sequence of length $i$ is never a sequence of length $j$, for $i\neq j$.)
If we join all contributions $A^i$ into a single set,
we obtain the set of all \emph{finite sequences} on $A$,
denoted by $\Seq A$ and defined as follows:
   \begin{eqnarray}
   \Seq A &\deff& \bigcup_{i\geq 0} A^{i}
   \end{eqnarray}

The intuition behind taking the limit in the numeric calculation above
was that term $\frac x {2^{n+1}}$ was getting smaller and smaller
as $n$ went larger and larger and, \aspas{in the limit},
it could be ignored.
By analogy,
taking a similar limit in the calculation just sketched above will mean
that, for a \aspas{sufficiently large} $n$,
the sequences in $A^n$ are so long that it is very unlikely that we will ever
use them!
So,
for
\(
n\rightarrow\infty
\)
we obtain
\begin{eqnarray*}
L &\iso& \sum_{i=0}^\infty A^{i}
\end{eqnarray*}
Because
\(
\sum_{i=0}^\infty A^{i}
\)
is isomorphic to
\(
\bigcup_{i=0}^\infty A^{i}
\)
(see exercise \ref{ex:990122a}),
we finally have:
\begin{eqnarray*}
L &\iso& \Seq A
\end{eqnarray*}

All in all,
we have obtained $\Seq A$ as a solution to equation (\ref{eq:990122b}).
In other words, datatype $L$ is isomorphic to the datatype which contains
all finite sequences of some predefined datatype $A$.
This corresponds to the \haskell\ \texttt{[a]} datatype,
in general.
Recall that we started from the \aspas{linked-list datatype} expressed in
\pascal\ or C.
In fact,
wherever the C programmer thinks of linked-lists,
the \haskell\ programmer will think of finite sequences.

But, what does equation (\ref{eq:990122b}) mean in fact?
Is $\Seq A$ the only solution to this equation?
Back to the numeric field,
we know of equations which have more than one solution
--- for instance
\(
x= \frac{x^2+3}{4}
\),
which admits two solutions $1$ and $3$
---,
which have no solution at all
--- for instance
\(
x= x + 1
\) (in |Nat0|)
---,
or which admit an infinite number of
--- for instance
\(
x= x
\).

We will address these topics in the next section, which is concerned with
\emph{inductive} datatypes and --- more generally ---
in chapter \ref{ch:990126i},
%
\jnowarning{verificar promessa!}
%
where the formal semantics of recursion will be made explicit.
This is where the \aspas{limit} constructions used informally in this
section will be shown to make sense.

\section{Introducing inductive datatypes}
Datatype $L$ as defined by (\ref{eq:990122b}) is said to be \emph{recursive}
because $L$ \aspas{recurs} in the definition of $L$ itself
\footnote{%
	By analogy, we may regard (\ref{eq:990122c})
		as a \aspas{recursive definition} of number $2$.
}.
From the discussion above,
it is clear that set-theoretical equality \aspas{$=$} in this equation
should give place to set-theoretical isomorphism (\aspas{$\iso$}):
\begin{eqnarray}
L & \iso & 1 + A \times L                              \label{eq:990122d}
\end{eqnarray}
Which isomorphism
\(
	\larrow{1 + A \times L}{in}{L}
\)
do we expect to witness (\ref{eq:990122d})?
This will depend on which particular solution to (\ref{eq:990122d})
we are thinking of. So far we have seen only one, $\Seq A$.
By recalling the notion of \emph{algebra} of a datatype
(section \ref{sec:990123a}) we may rephrase the question as:
which algebra
\[
\larrow{1 + A \times \Seq A}{in}{\Seq A}
\]
do we expect to witness the tautology which arises from (\ref{eq:990122d})
by replacing unknown $L$ with solution $\Seq A$,
that is
\begin{eqnarray*}
\Seq A & \iso & 1 + A \times \Seq A ~~~~~~~~~~~~~~~?
\end{eqnarray*}
It will have to be of the form
\(
in = \alt{in_1}{in_2}
\)
as depicted by the following diagram:
\begin{eqnarray}
\xymatrix{
	1 \ar[r]^{i_1} \ar[dr]_{in_1} &
		1 + A \times \Seq A \ar[d]^{in} &
		A \times \Seq A \ar[l]_{i_2} \ar[dl]^{in_2}
	\\ & \Seq A
}	\label{eq:990123a}
\end{eqnarray}
Arrows $in_1$ and $in_2$ can be guessed rather intuitively:
$in_1 = \kons\emptyseq$,
which will express the \aspas{$\nil$ pointer} by the empty sequence,
at $\Seq A$ level,
and $in_2 = cons$,
where $cons$ is the standard \aspas{left append} sequence constructor,
which we for the moment introduce rather informally as follows:
\begin{eqnarray}
\begin{array}{l}
	cons : \rarrow {A \times \Seq A}{}{\Seq A}
\\
	cons(a,\enseq{a_1,\ldots,a_n}) = \enseq{a,a_1,\ldots,a_n}
	\end{array}
	\end{eqnarray}
In a diagram:
	\begin{eqnarray}
	\xymatrix{
		1 \ar[r]^{i_1} \ar[dr]_{\kons\emptyseq} &
			1 + A \times \Seq A \ar[d]^{\alt{\kons\emptyseq}{cons}} &
			A \times \Seq A \ar[l]_{i_2} \ar[dl]^{cons}
		\\ & \Seq A
	}	\label{eq:990126k}
\end{eqnarray}

Of course, for $in$ to be iso it needs to have an inverse,
call it $out$, such that
\begin{eqnarray*}
	out \comp in = id
\end{eqnarray*}
Then:
\begin{eqnarray*}
\start
	out \comp in = id
%
\just\equiv{$in = \alt{\kons\emptyseq}{cons}$; |+|-reflexion }
%
	out \comp \alt{\kons\emptyseq}{cons} = |either i1 i2|
%
\just\equiv{coproduct laws}
%
	\begin{lcbr}
		out \comp {\kons\emptyseq} = |i1|
\\
		out \comp cons = |i2|
	\end{lcbr}
\end{eqnarray*}
Another way to define $out$ uses a McCarthy conditional
\begin{eqnarray}
	out &\deff& (!+ \split{\hd{}}{\tl{}}) \comp (=_{\emptyseq}?)
	\label{eq:990126b}
\end{eqnarray}
where sequence operators $\hd{}$ (\emph{head of a nonempty sequence})
and $\tl{}$ (\emph{tail of a nonempty sequence})
are (again informally) described as follows:
\begin{eqnarray}
\begin{array}{l}
\hd{} : \rarrow {\Seq A}{}{A}
\\
\hd{\enseq{a_1, a_2,\ldots,a_n}} = a_1
\end{array}
\end{eqnarray}

\begin{eqnarray}
\begin{array}{l}
\tl{} : \rarrow {\Seq A}{}{\Seq A}
\\
\tl{\enseq{a_1,a_2,\ldots,a_n}} = \enseq{a_2,\ldots,a_n}
\end{array}
\end{eqnarray}

\noindent
Showing that $in$ and $out$ are each other inverses is not a hard task either:
\jnowarning{REFAZER este calculo !}
\begin{eqnarray*}
& &     in \comp out = id
%
\just\equiv{definitions of $in$ and $out$}
%
\alt{\kons\emptyseq}{cons} \comp
(!+ \split{\hd{}}{\tl{}}) \comp (=_{\emptyseq}?) = id
%
\just\equiv{$+$-absorption (\ref{eq:+-absorption}) and (\ref{eq:698d})}
%
\alt{\kons\emptyseq}{cons \comp \split{\hd{}}{\tl{}}} \comp
(=_{\emptyseq}?) = id
%
\just\equiv{property of sequences: $cons(\hd s, \tl s)=s$}
%
\alt{\kons\emptyseq}{id} \comp
(=_{\emptyseq}?) = id
%
\just\equiv{ going pointwise (\ref{eq:990126c}) }
%
\COND{\ap{=_{\emptyseq}}a}
{\ap{\alt{\kons\emptyseq}{id}}(\ap{i_1}a)}
{\ap{\alt{\kons\emptyseq}{id}}(\ap{i_2}a)}
= a
%
\just\equiv{ $+$-cancellation (\ref{eq:701c}) }
%
\COND{\ap{=_{\emptyseq}}a}
{\ap{\kons\emptyseq}a}
{\ap{id}a}
= a
%
\just\equiv{ $a=\emptyseq$ in one case and identity function (\ref{eq:990124a}) in the other }
%
\COND{a=\emptyseq}
{a}
{a}
= a
%
\just\equiv{ property $(p \rightarrow f, f) = f$ holds }
%
a = a
%
\end{eqnarray*}


A comment on the particular choice of terminology above:
symbol $in$ suggests that we are going inside, i.e.\ constructing (synthesizing)
values of $\Seq A$;
symbol $out$ suggests that we are going out,
or destructing (analyzing) values of $\Seq A$.
We shall often resort to this duality in the sequel.

Are there more solutions to equation (\ref{eq:990122d})?
In trying to implement this equation,
a \haskell\ programmer could have written,
after the declaration of type $A$,
the following datatype declaration:
\begin{code}
	data L = Nil () | Cons (A,L)
\end{code}
which, as we have seen in section \ref{sec:990123a},
can be written simply as
\begin{code}
	data L = Nil | Cons (A,L)
\end{code}
and generates diagram
\begin{eqnarray}
\xymatrix{
1 \ar[r]^{i_1} \ar[dr]_{\kons{Nil}} &
	1 + A \times L \ar[d]^{in'} &
	A \times L \ar[l]_{i_2} \ar[dl]^{Cons}
\\ & L
}
\end{eqnarray}
leading to algebra
\(
in' = \alt{\kons{Nil}}{Cons}
\).

\haskell\ seems to have generated another solution for the equation,
which it calls $L$.
To avoid the inevitable confusion between this symbol denoting
the newly created datatype and symbol $L$ in equation (\ref{eq:990122d}),
which denotes a mathematical variable,
let us use symbol $\fun T$ to denote the former
($\fun T$ stands for \aspas{type}).
%
\jnowarning{ fun L da proxima vez?}%
%
This can be coped with very simply by writing |fT| instead of $L$
above: %in (\ref{eq:720j}):
	\begin{eqnarray}
	|data T = Nil || Cons (A,T)|
	\label{eq:990123b}
\end{eqnarray}
In order to make $\fun T$ more explicit,
we will write $in_{\fun T}$ instead of $in'$.

Some questions naturally arise at this point.
First of all, what is datatype $\fun T$? What are its inhabitants?
Next, is
   \(
   \larrow{1 + A \times \fun T}{in_{\fun T}}{\fun T}
   \)
   an iso or not?

\haskell\ will help us to answer these questions.
Suppose that \( A \) is a primitive numeric datatype,
and that we add \texttt{deriving Show} to (\ref{eq:990123b})
so that we can \aspas{see} the inhabitants of the $\fun T$ datatype.
The information associated to $\fun T$ is thus:
\begin{quote}\small
\begin{verbatim}
Main> :i T
-- type constructor
data T

-- constructors:
Nil :: T
Cons :: (A,T) -> T

-- instances:
instance Show T
instance Eval T
\end{verbatim}
\end{quote}
By typing \texttt{:t Nil}
\begin{quote}\small
\begin{verbatim}
Main> :t Nil
Nil :: T
\end{verbatim}
\end{quote}
we confirm that \( Nil \) is itself an inhabitant of \( \fun T \), and by typing \texttt{:t Cons}
\begin{quote}\small
\begin{verbatim}
Main> :t Cons
Cons :: (A, T) -> T
\end{verbatim}
\end{quote}
we realize that $Cons$ is not so (as expected),
but it can be used to build such inhabitants, for instance:
\begin{quote}\small
\begin{verbatim}
Main> Cons(1,Nil)
Cons (1,Nil) :: T
\end{verbatim}
\end{quote}
or
\begin{quote}\small
\begin{verbatim}
Main> Cons(2,Cons(1,Nil))
Cons (2,Cons (1,Nil)) :: T
\end{verbatim}
\end{quote}
\etc\
	We conclude that \emph{expressions} involving $Nil$ and $Cons$ are
	inhabitants of type \( \fun T \).
	Are these the \emph{only} ones?
	The answer is \emph{yes} because,
	by design of the \haskell\ language, the constructors of type \( \fun T \)
will remain fixed once its declaration is interpreted,
that is,
no further constructor can be added to \( \fun T \).
Does $in_{\fun T}$ have an inverse?
Yes, its inverse is coalgebra
\begin{eqnarray}
\begin{array}{rcl}
&& out_{\fun T} : \rarrow {\fun T} {} {1 + A \times {\fun T}}
\\
	&& \ap{out_{\fun T}}{Nil} = \ap{i_1}{\nil}
	\\
		&& {out_{\fun T}}(Cons(a,l)) = {i_2}\pair{a,l}
		\end{array}		\label{eq:990126a}
		\end{eqnarray}
		which can be straightforwardly encoded in \haskell\ using the \texttt{Either}
		realization of $+$
		(recall sections \ref{sec:990115b} and \ref{sec:990123a}):
\begin{code}
out_T :: T -> Either_ () (A,T)
out_T Nil = Left ()
out_T (Cons(a,l)) = Right(a,l)
\end{code}
In summary, isomorphism
\begin{eqnarray}
\xymatrix{
	\fun T			\ar@@/^1pc/[rr]^-{out_{\fun T}}
	&	\iso
		&	1 + A \times \fun T	\ar@@/^1pc/[ll]^-{in_{\fun T}}
}
\end{eqnarray}
holds,
where datatype $\fun T$ is inhabited by symbolic expressions which
we may visualize very conveniently as trees,
for instance
\begin{eqnarray*}
\mbox{
	\begin{picture}(150, 95)(0,0)
		\put(30,50){\circle*{5}}
	\put(60,80){\circle*{5}}
	\put(60,80){\line(-1,-1){30}}
	\put(60,80){\line( 1,-1){30}}
	\put(90,50){\circle*{5}}
	\put(90,50){\line(-1,-1){30}}
	\put(90,50){\line( 1,-1){30}}
	\put(60,20){\circle*{5}}
	\put(120,20){\circle*{5}}
	%
		\put(60, 10){\makebox(0,0){$1$}}
	\put(120,10){\makebox(0,0){$Nil$}}
	\put(60, 90){\makebox(0,0){$Cons$}}
	\put(30, 40){\makebox(0,0){$2$}}
	\put(100,50){$Cons$}
	\end{picture}
}
\end{eqnarray*}
picturing expression \( Cons(2,Cons(1,Nil)) \).
$Nil$ is the empty tree and $Cons$ may be regarded as the operation which
adds a new root and a new branch, say $a$, to a tree $t$:
\begin{eqnarray*}
\mbox{
	\begin{picture}(250, 95)(-100,0)
		\put(90,50){\circle*{5}}
	\put(90,50){\line(-1,-1){30}}
	\put(90,50){\line( 1,-1){30}}
	\put(90,35){\makebox(0,0){$t$}}
	\put(60,20){\line( 1,0){60}}
	%
		\put(-30,50){\circle*{5}}
	\put(-30,50){\line(-1,-1){30}}
	\put(-30,50){\line( 1,-1){30}}
	\put(-30,35){\makebox(0,0){$t$}}
	\put(-60,20){\line( 1,0){60}}
	%
		\put(60,80){\circle*{5}}
	\put(60,80){\line(-1,-1){30}}
	\put(60,80){\line( 1,-1){30}}
	\put(30,50){\circle*{5}}
	%
		\put(-60, 50){\makebox(0,0){$Cons(a,$}}
				\put( -5, 50){\makebox(0,0){$)~~=$}}
	%
		\put(60, 90){\makebox(0,0){$Cons$}}
	\put(30, 40){\makebox(0,0){$a$}}
	\end{picture}
}
\end{eqnarray*}

The choice of symbols \texttt T, \texttt{Nil} and \texttt{Cons} was rather
arbitrary in (\ref{eq:990123b}).
Therefore, an alternative declaration such as,
for instance,
\begin{eqnarray}
	|data U = Stop || Join (A,U)|
	\label{eq:991120a}
\end{eqnarray}
would have been perfectly acceptable,
generating another solution for the equation under algebra
\( \alt{\kons{Stop}}{Join}\).
It is easy to check that (\ref{eq:991120a}) is but a renaming
of $Nil$ to $Stop$ and of $Cons$ to $Join$.
Therefore,
both datatypes are isomorphic, or \aspas{abstractly the same}.

Indeed,
any other datatype $X$ \emph{inductively} defined by a constant
and a binary constructor accepting $A$ and $X$ as parameters
will be a solution to the equation.
Because we are just renaming symbols in a consistent way,
all such solutions are abstractly the same.
All of them capture the abstract notion of a \emph{list} of symbols.

We wrote \aspas{inductively} above because the set of all
expressions (trees) which inhabit the type is defined by induction.
Such types are called \emph{inductive} and we shall have a lot more to
say about them in chapter \futureref{ch:990126i}.
%
      \jnowarning{verificar promessa!}
%

\begin{exercise}
Obviously,
\begin{verbatim}
either (const []) (:)
\end{verbatim}
does not work as a \haskell\ realization of the mediating arrow in
diagram (\ref{eq:990126k}).
What do you need to write instead?
%
% either (const []) (uncurry (:))
%
\end{exercise}

\section{Observing an inductive datatype}\label{sec:990126g}
%
\def\A{\N_0}%
%
Suppose that one is asked to express a particular \emph{observation} of
an inductive such as $\fun T$ (\ref{eq:990123b}),
that is,
a function of signature
\(
\larrow{\fun T} f B
\)
for some target type $B$.
Suppose,
for instance,
that \( A \) is $\A$ (the set of all non-negative integers)
and that we want to add all elements which occur in a
$\fun T$-list.
Of course, we have to ensure that addition is available in $\A$,
\begin{eqnarray*}
&&	add : \rarrow {\A \times \A} {}\A
\\
&&	add(x,y) \deff x + y
\end{eqnarray*}
and that $0\in\A$ is a value denoting \aspas{the addition of nothing}.
So constant arrow
\(
\larrow 1 {\kons 0} \A
\)
is available.
Of course,
\(
add(0,x)=add(x,0)=x
\)
holds, for all $x\in\A$.
This property means that $\A$, together with operator $add$ and constant $0$,
forms a \emph{monoid},
a very important algebraic structure in computing which
will be exploited intensively later in this \doc.
\jnowarning{verificar promessa!}
The following arrow \aspas{packaging} $\A$, $add$ and $\kons 0$,
\begin{eqnarray}
\longlarrow {1 +\A \times\A} {\alt{\kons 0}{add}} {\A}
\label{eq:721f}
\end{eqnarray}
is a convenient way to express such a structure.
Combining this arrow with the algebra
\begin{eqnarray}
\larrow {1 + \A \times{\fun T}}{in_{\fun T}}{\fun T}
\label{eq:991115d}
\end{eqnarray}
which defines $\fun T$, and the function $f$ we want to define,
the target of which is $B=\A$, we get the almost closed diagram
which follows, in which only the dashed arrow is yet to be filled in:
\begin{eqnarray}
\xymatrix{
\fun T \ar[d]_{f} && 1 + \A \times \fun T \ar[ll]_{in_{\fun T}}
\ar@@{.>}[d]_{}
\\
\A && 1 + \A \times \A\ar[ll]^{\alt{\kons 0}{add}}
}
\label{eq:721g}
\end{eqnarray}
We know that
\(
in_{\fun T} = {\alt{\kons{Nil}}{Cons}}
\).
A pattern for the missing arrow is not difficult to guess:
in the same way $f$ bridges $\fun T$ and $\A$ on the left-hand side, it will do
the same job on the right-hand side. So pattern $\cdots + \cdots \times f$
comes to mind
(recall section \ref{sec:990112a}),
where the \aspas{$\cdots$} are very naturally filled in by identity functions.
All in all, we obtain diagram
\begin{eqnarray}
\xymatrix{
	\fun T \ar[d]_{f} &&& 1 +\A \times \fun T \ar[lll]_{\alt{\kons{Nil}}{Cons}}
	\ar[d]^{id+id \times f}
	\\
		\A            &&& 1 +\A \times\A \ar[lll]^{\alt{\kons 0}{add}}
}
\label{eq:721x}
\end{eqnarray}
which pictures the following property of $f$
\begin{eqnarray}
f \comp \alt{\kons{Nil}}{Cons} &=& \alt{\Kons 0}{add} \comp (id+id \times f)
\label{eq:722a}
\end{eqnarray}
and is easy to convert to pointwise notation:
\begin{eqnarray*}
&&	f \comp \alt{\kons{Nil}}{Cons} =
\alt{\kons 0}{add} \comp (id+id \times f)
%
\just\equiv{ (\ref{eq:+-fusion}) on the lefthand side,
	(\ref{eq:+-absorption}) and identity $id$ on the righthand side }
	%
	\alt{f \comp \kons{Nil}}{f \comp Cons} =
	\alt{\kons 0}{add \comp (id \times f)}
	%
	\just\equiv{\emph{either} structural equality (\ref{eq:eitherStEq}) }
	%
	\left\{\begin{array}{l}
	f \comp \kons{Nil} = \Kons 0
	\\
		f \comp Cons = add \comp (id \times f)
		\end{array}\right.
		%
		\just\equiv{going pointwise}
		%
		\left\{\begin{array}{l}
		(f \comp \kons{Nil})x = \ap{\Kons 0}x
		\\
			(f \comp Cons)\pair{a,x}= (add \comp (id \times f))\pair{a,x}
			\end{array}\right.
			%
			\just\equiv{ composition (\ref{eq:990115c}), constant (\ref{eq:Kons}),
				product (\ref{eq:960923c}) and definition of $add$ }
				%
				\left\{\begin{array}{l}
				\ap f {Nil} = 0
				\\
					f(Cons(a,x)) = a + \ap f x
					\end{array}\right.
					\end{eqnarray*}

					Note that we could have used $out_{\fun T}$ in diagram (\ref{eq:721g}),
					\begin{eqnarray}
					\xymatrix{
						\fun T \ar[rr]^{out_{\fun T}} \ar[d]_{f} && 1 + \A \times \fun T
							\ar[d]^{id+id \times f}
						\\
							\A && 1 + \A \times \A\ar[ll]^{\alt{\kons 0}{add}}
						\label{eq:990126e}
					}
\end{eqnarray}
obtaining another version of the \emph{definition} of $f$,
  \begin{eqnarray}
  f &=& \alt{\kons 0}{add} \comp (id+id \times f) \comp out_{\fun T}
  \end{eqnarray}
  which would lead to exactly the same pointwise recursive definition:
  \begin{eqnarray*}
  &&	f = \alt{\kons 0}{add} \comp (id+id \times f) \comp out_{\fun T}
  %
  \just\equiv{ (\ref{eq:+-absorption}) and identity $id$ on the righthand side }
  %
  f = \alt{\kons 0}{add \comp (id \times f)} \comp out_{\fun T}
  %
  \just\equiv{going pointwise on $out_{\fun T}$ (\ref{eq:990126a}) }
  %
  \left\{\begin{array}{l}
  \ap f {Nil} = (\alt{\kons 0}{add \comp (id \times f)} \comp out_{\fun T})Nil
  \\
	  f(Cons\pair{a,x})= (\alt{\kons 0}{add \comp (id \times f)} \comp out_{\fun T})\pair{a,x}
	  \end{array}\right.
	  %
	  \just\equiv{definition of $out_{\fun T}$ (\ref{eq:990126a})}
	  %
	  \left\{\begin{array}{l}
	  \ap f {Nil} = (\alt{\kons 0}{add \comp (id \times f)} \comp i_1)Nil
	  \\
		  f(Cons\pair{a,x})= (\alt{\kons 0}{add \comp (id \times f)} \comp i_2)\pair{a,x}
		  \end{array}\right.
		  %
		  \just\equiv{ $+$-cancellation (\ref{eq:701c}) }
		  %
		  \left\{\begin{array}{l}
		  \ap f {Nil} = \ap{\kons 0}{Nil}
		  \\
			  f(Cons\pair{a,x})= \ap{(add \comp (id \times f))}{\pair{a,x}}
			  \end{array}\right.
			  %
			  \just\equiv{ simplification }
			  %
			  \left\{\begin{array}{l}
			  \ap f {Nil} = 0
			  \\
				  f(Cons\pair{a,x})= a + \ap f x
				  \end{array}\right.
				  \end{eqnarray*}

Pointwise $f$ mirrors the structure of type $\fun T$ in having as many definition clauses as constructors in $\fun T$. Such functions are said to be defined \emph{by induction on} the structure of their input type. If we repeat this calculation for $\Seq\A$ instead of $\fun T$, that is, for
\[
out = (!+ \split{\hd{}}{\tl{}}) \comp (=_{\emptyseq}?)
\]
--- recall (\ref{eq:990126b}) ---
taking place of $out_{\fun T}$,
we get a \aspas{more algorithmic} version of $f$:
\begin{eqnarray*}
&&	f = \alt{\kons 0}{add} \comp (id+id \times f) \comp
(!+ \split{\hd{}}{\tl{}}) \comp (=_{\emptyseq}?)
%
\just\equiv{ $+$-functor (\ref{eq:706b}), identity and $\times$-absorption (\ref{eq:970511c}) }
%
f = \alt{\kons 0}{add} \comp (!+\split{\hd{}}{f \comp \tl{}}) \comp
(=_{\emptyseq}?)
%
\just\equiv{ $+$-absorption (\ref{eq:+-absorption}) and constant $\kons 0$ }
%
f = \alt{\kons 0}{add \comp \split{\hd{}}{f \comp \tl{}}} \comp
(=_{\emptyseq}?)
%
\just\equiv{going pointwise on guard $=_{\emptyseq}?$ (\ref{eq:990126c}) and simplifying }
%
\ap f l = \COND{l=\emptyseq}
{\ap{\kons 0}{l}}
{\ap{(add \comp \split{\hd{}}{f \comp \tl{}})}{l}}
%
\just\equiv{ simplification }
%
\ap f l = \COND{l=\emptyseq}
{0}
{\hd l + f(\tl l)}
%
\end{eqnarray*}

\noindent
The outcome of this calculation can be encoded in \haskell\ syntax as
\begin{code}
f l | l == []   = 0
    | otherwise = head l + f (tail l)
\end{code}
or
\begin{code}
f l = if l == [] then 0 else head l + f (tail l)
\end{code}
both requiring the equality predicate |==| and destructors
|head| and |tail|.

\section{Synthesizing an inductive datatype}
The issue which concerns us in this section dualizes what we have just
dealt with: instead of analyzing or \emph{observing} an inductive
type such as $\fun T$ (\ref{eq:990123b}),
we want to be able to synthesize (generate) particular inhabitants of $\fun T$.
In other words,
we want to be able to specify functions with signature
\(
\rarrow B f {\fun T}
\)
for some given source type $B$.
Let $B=\N_0$ and suppose we want $f$ to generate,
for a given natural number $n>0$,
the list containing all numbers less or equal to $n$ in decreasing order
\[
Cons(n,Cons(n-1,Cons(\ldots,Nil)))
\]
or the empty list \(Nil\),
in case $n=0$.

Let us try and draw a diagram similar to (\ref{eq:990126e})
applicable to the new situation.
In trying to \aspas{re-use} this diagram, it is immediate that arrow $f$
should be reversed. Bearing duality in mind,
we may feel tempted to reverse all arrows just to see what happens.
Identity functions are their own inverses,
and $in_{\fun T}$ takes the place of $out_{\fun T}$:
\begin{eqnarray*}
\xymatrix{
\fun T && 1 + \A \times \fun T \ar[ll]_{in_{\fun T}}
\\
	\A \ar[u]^{f} \ar@@{.>}[rr]_{} && 1 + \A \times \A \ar[u]_{id+id \times f}
}
\end{eqnarray*}
Interestingly enough,
      the bottom arrow is the one which is not obvious to reverse,
      meaning that we have to \aspas{invent} a particular destructor of $\A$,
      say
      \[
      \rarrow\A g {1 +\A \times \A}
      \]
      fitting in the diagram and \emph{generating} the particular computational
      effect we have in mind.
      Once we do this, a recursive definition for $f$ will pop out immediately,
      \begin{eqnarray}
      f &=& in_{\fun T} \comp (id+id \times f) \comp g
      \label{eq:990126h}
      \end{eqnarray}
      which is equivalent to:
      \begin{eqnarray}
      f &=& \alt{\kons{Nil}}{Cons \comp (id \times f)} \comp g
      \label{eq:990126f}
      \end{eqnarray}
      Because we want $\ap f 0 = Nil$ to hold,
      $g$ (the actual generator of the computation) should distinguish input $0$ from
      all the others.
      One thus decomposes $g$ as follows,
      \begin{eqnarray*}
      \xymatrix{
	      \A	\ar[r]^{=_0?}
	      \ar@@/_1pc/[rr]_-{g}
	      &	\A + \A \ar[r]^{!+h}
	      &	 1 + \A \times\A
      }
\end{eqnarray*}
leaving $h$ to fill in. This will be a \emph{split} providing,
on the lefthand side, for the value to be $Cons$'ed to the output and,
on the righthand side, for the \aspas{seed} to the next recursive call.
Since we want the output values to be produced contiguously and in decreasing
order,
we may define
\(
h = \split{id}{\pred{}}
\)
where, for $n>0$,
%
\begin{eqnarray}
\pred{n} \deff n - 1
\end{eqnarray}
%
computes the \emph{predecessor} of $n$.
Altogether, we have synthesized
\begin{eqnarray}
g &=& (!+\split{id}{\pred{}}) \comp (=_0?)	\label{eq:991115a}
\end{eqnarray}
Filling this in (\ref{eq:990126f}) we get
\begin{eqnarray*}
&&	f = \alt{\kons{Nil}}{Cons \comp (id \times f)} \comp
(!+\split{id}{\pred{}}) \comp (=_0?)
%
\just\equiv{ $+$-absorption (\ref{eq:+-absorption}) followed by $\times$-absorption (\ref{eq:970511c}) \etc }
%
f = \alt{\kons{Nil}}{Cons \comp \split{id}{f \comp \pred{}}} \comp(=_0?)
%
\just\equiv{going pointwise on guard $=_0?$ (\ref{eq:990126c}) and simplifying }
%
\ap f n = \COND{n=0}{Nil}{Cons(n,\ap f{(n-1)})}
\end{eqnarray*}
which matches the function we had in mind:
\begin{code}
f n
    | n == 0    = Nil
    | otherwise = Cons(n,f(n-1))
\end{code}

We shall see briefly that the constructions of the $f$ function
adding up a list of numbers in the previous section and,
in this section, of the $f$ function generating a list of numbers
are very standard in algorithm design and can be broadly generalized.
Let us first introduce some standard terminology.

\section{Introducing (list) catas, anas and hylos}\label{sec:991127a}
Suppose that,
back to section \ref{sec:990126g},
we want to \emph{multiply}, rather than add,
the elements occurring in lists of type $\fun T$ (\ref{eq:990123b}).
How much of the program synthesis effort presented there can be reused in the
design of the new function?

It is intuitive that only the bottom arrow
\(
\longlarrow {1 +\A \times\A} {\alt{\kons 0}{add}} {\A}
\)
of diagram (\ref{eq:990126e})
needs to be replaced,
because this is the only place where we can specify that target datatype
\(\N_0\) is now regarded as the carrier of another
(multiplicative rather than additive) monoidal structure,
\begin{eqnarray}
\longlarrow {1 +\A \times\A} {\alt{\kons 1}{mul}} {\A}
\label{eq:991115b}
\end{eqnarray}
for $mul(x,y) \deff x ~ y$.
We are saying that the argument list is now to be reduced by the multiplication
operator and that output value $1$ is expected as the result of
\aspas{nothing left to multiply}.

Moreover, in the previous section we might have wanted our number-list
generator to produce the list of even numbers smaller than a given number,
in decreasing order (see exercise \ref{ex:991120b}).
Intuition will once again help us in deciding that
only arrow $g$ in (\ref{eq:990126h}) needs to be updated.

The following diagrams generalize both constructions by leaving such bottom
arrows unspecified,
\begin{eqnarray}
\xymatrix{
\fun T \ar[rr]^{out_{\fun T}} \ar[d]_{f} && 1 + \A \times \fun T
	\ar[d]^{id+id \times f}
\\
	B && 1 + \A \times  B\ar[ll]^{g}
}
&&
\xymatrix{
\fun T && 1 + \A \times \fun T \ar[ll]_{in_{\fun T}}
\\
B \ar[u]^{f} \ar[rr]_{g} && 1 + \A \times  B \ar[u]_{id+id \times f}
}	\label{eq:991106a}
\end{eqnarray}
and express their duality (\cf\ the directions of the arrows).
It so happens that, for each of these diagrams,
$f$ is uniquely dependent on the $g$ arrow,
that is to say, each particular instantiation of $g$ will determine
the corresponding $f$.
So both $g$s can be regarded as \aspas{seeds} or \aspas{genetic material}
of the $f$ functions they uniquely define
\footnote{
The theory which supports the statements of this paragraph will not be
dealt with until chapter \futureref{ch:990126i}.
%
\jnowarning{verificar promessa!}
%
}.

\paragraph{Catas and anas}
Following the standard terminology,
we express these facts by writing $f=\scata g$ with respect to the
lefthand side diagram and by writing $f=\sana g$ with respect to the
righthand side diagram.
Read $\scata g$ as \aspas{the $\fun T$-\emph{catamorphism} induced by $g$}
and $\sana g$ as \aspas{the $\fun T$-\emph{anamorphism} induced by $g$}.
This terminology is derived from the Greek words
$\kappa\alpha\tau\alpha$ (cata) and
$\alpha\nu\alpha$ (ana) meaning,
respectively,
\aspas{downwards} and \aspas{upwards}
(compare with the direction of the $f$ arrow in each diagram).
The exchange of parentheses \aspas{$(~)$} and \aspas{$[~]$} in
double parentheses \aspas{$\scata~$} and \aspas{$\sana~$} is aimed at
expressing the duality of both concepts.

We shall have a lot to say about catamorphisms and anamorphisms of a given
type such as $\fun T$. For the moment,
it suffices to say that
\begin{itemize}
\item
the $\fun T$-catamorphism induced by
\(
\larrow {1+\A \times B} g B
\)
is the unique function
\(
\larrow {\fun T} {\scata g} B
\)
which obeys to property (or is defined by)
\begin{eqnarray}
\scata g &=& g \comp (id+id \times \scata g) \comp out_{\fun T}
\end{eqnarray}
which is the same as
\begin{eqnarray}
\scata g \comp in_{\fun T} &=& g \comp (id+id \times \scata g)
\end{eqnarray}
\item
given
\(
\rarrow B g {1+\A \times B}
\)
the $\fun T$-anamorphism induced by $g$ is the unique function
\(
\rarrow B {\sana g} {\fun T}
\)
which obeys to property (or is defined by)
\begin{eqnarray}
\sana g &=& in_{\fun T} \comp (id+id \times \sana g) \comp g
\label{eq:070429a}
\end{eqnarray}
\end{itemize}

From (\ref{eq:991106a}) it can be observed that ${\fun T}$ can act as a
mediator between any $\fun T$-anamorphism and any $\fun T$-catamorphism,
that is to say,
\(
\larrow {\fun T} {\scata g} B
\)
composes with
\(
\larrow C {\sana h} {\fun T}
\),
for some
\(
\rarrow C h {1 +\A \times C}
\).
In other words,
a $\fun T$-catamorphism call always observe (consume) the output of a
$\fun T$-anamorphism.
The latter produces a list of $\A$s which is consumed by the former.
This is depicted in the diagram which follows:
\begin{eqnarray}
\xymatrix{
	B && 1 + \A \times B \ar[ll]_{g}
	\\
		\fun T \ar[u]^{\scata g} &&
		1 + \A \times \fun T \ar[ll]_{in_{\fun T}} \ar[u]_{id+id \times \scata g}
	\\
		C \ar[u]^{\sana h} \ar[rr]_{h} &&
		1 + \A \times C \ar[u]_{id+id \times \sana h}
}	\label{eq:991106b}
\end{eqnarray}
What can we say about the
\(
\scata g \comp \sana h
\)
composition?
It is a function from $ C $ to $ B $ which
resorts to $\fun T$ as an \emph{intermediate} data-structure and can be subject
to the following calculation (\cf\ outermost rectangle in (\ref{eq:991106b})):
%
\begin{eqnarray*}
&&
\scata g \comp \sana h =
g \comp (id+id \times \scata g) \comp (id+id \times \sana h) \comp h
%
\just\equiv{ $+$-functor (\ref{eq:706b}) }
%
\scata g \comp \sana h =
g \comp ((id \comp id) + (id \times \scata g) \comp (id \times \sana h))
 \comp h
%
\just\equiv{ identity and $\times$-functor (\ref{eq:705h}) }
%
\scata g \comp \sana h =
g \comp (id + id \times \scata g \comp \sana h) \comp h
%
\end{eqnarray*}
This calculation shows how to define
$ \longlarrow B {\scata g \comp \sana h} C $ in one go,
that is to say, doing without any intermediate data-structure:
\begin{eqnarray}
\xymatrix{
	B
		&&	1 + \A \times B \ar[ll]_{g}
	\\
		C	\ar[u]^{\scata g \comp \sana h}
	\ar[rr]_{h}
	&&
		1 + \A \times C	\ar[u]_{id+id \times \scata g \comp \sana h}
}
\end{eqnarray}
As an example,
   let us see what comes out of \( \scata g \comp \sana h \) for $h$ and $g$
   respectively given by (\ref{eq:991115a}) and (\ref{eq:991115b}):
   %
   \begin{eqnarray*}
   &&
   \scata g \comp \sana h =
   g \comp (id + id \times \scata g \comp \sana h) \comp h
   %
   \just\equiv{ \( \scata g \comp \sana h \) abbreviated to $f$ and
	   instantiating $h$ and $g$ }
	   %
f = \alt{\kons 1}{mul} \comp (id + id \times f) \comp
(!+\split{id}{\pred{}}) \comp (=_0?)
%
\just\equiv{ $+$-functor (\ref{eq:706b}) and identity }
%
f = \alt{\kons 1}{mul} \comp
(!+(id \times f) \comp \split{id}{\pred{}}) \comp (=_0?)
%
\just\equiv{ $\times$-absorption (\ref{eq:970511c}) and identity }
%
f = \alt{\kons 1}{mul} \comp
(!+ \split{id}{f \comp \pred{}}) \comp (=_0?)
%
\just\equiv{ $+$-absorption (\ref{eq:+-absorption}) and constant $\kons 1$ (\ref{eq:698d}) }
%
f = \alt{\kons 1}{mul \comp \split{id}{f \comp \pred{}}} \comp (=_0?)
%
\just\equiv{ McCarthy conditional (\ref{eq:McCarthy}) }
%
f = (=_0?) \rightarrow \kons 1 , mul \comp \split{id}{f \comp \pred{}}
%
\end{eqnarray*}
Going pointwise, we get --- via (\ref{eq:McCarthy}) ---
%
\begin{eqnarray*}
\ap f 0 &=&
\alt{\kons 1}{mul \comp \split{id}{f \comp \pred{}}} (\ap{i_1}0)
%
\just={ $+$-cancellation (\ref{eq:701c}) }
%
\ap{\kons 1}0
%
\just={ constant function (\ref{eq:Kons}) }
%
1
%
\end{eqnarray*}
and
%
\begin{eqnarray*}
f(n+1) &=&
\alt{\kons 1}{mul \comp \split{id}{f \comp \pred{}}} (i_2(n+1))
%
\just={ $+$-cancellation (\ref{eq:701c}) }
%
{mul \comp \split{id}{f \comp \pred{}}}(n+1)
%
\just={ pointwise definitions of \emph{split}, identity, predecessor and $mul$ }
%
(n+1) \times \ap f n
%
\end{eqnarray*}
In summary, $f$ is but the well-known factorial function:
\begin{eqnarray*}
\left\{\begin{array}{l}
\ap f 0 = 1
\\
	f(n+1) = (n+1) \times \ap f n
	\end{array}\right.
	\end{eqnarray*}

This result comes to no surprise if we look at diagram (\ref{eq:991106b})
for the particular $g$ and $h$ we have considered above and recall a
popular \aspas{definition} of factorial:
\begin{eqnarray}
n ! &=& \underbrace{
	n \times (n - 1) \times \ldots \times 1}_{\mbox{$n$ times}}
	\label{eq:991115c}
	\end{eqnarray}
	In fact, \( \ap{\sana h} n \) produces $\fun T$-list
\[
Cons(n,Cons(n-1,\ldots Cons(1,Nil)))
\]
as an intermediate data-structure which is consumed by \( \ap{\scata g} \),
the effect of which is but the \aspas{replacement} of $Cons$ by
$\times$ and $Nil$ by $1$, therefore accomplishing (\ref{eq:991115c})
and realizing the computation of factorial.

\paragraph{Hylos}
The moral of this example is that a function as simple as factorial can
be \emph{decomposed} into two components (producer/consumer functions) which
share a common intermediate inductive datatype. The producer function is an
anamorphism which \aspas{represents} or produces a \aspas{view} of its
input argument as a value of the intermediate datatype. The consumer function
is a catamorphism which reduces this intermediate data-structure and produces
the final result.
Like factorial,
many functions can be handsomely expressed by a \( \scata g \comp \sana h \)
composition for a suitable choice of the intermediate type, and of $g$ and $h$.

The intermediate data-structure is said to be \emph{virtual} in the sense that
it only exists as a means to induce the associated pattern of recursion and
disappears by calculation. The composition
\begin{eqnarray*}
\scata g \comp \sana h
\end{eqnarray*}
of a $\fun T$-catamorphism with a $\fun T$-anamorphism is called a
$\fun T$-\emph{hylomorphism} \footnote{
	This terminology is derived from the Greek word
		$v\lambda o\sigma$ (hylos) meaning \aspas{matter}.
		%
		%	pag 162 de BM97
}
and is denoted by \( \sshylo g h \). Because $g$ and $h$ fully determine
the behaviour of the \( \sshylo g h \) function, they can be regarded as
the \aspas{genes} of the function they define. As we shall see,
\jnowarning{verificar promessa!}
this analogy with biology will prove specially useful for algorithm analysis
and classification.

\begin{exercise}
A way of computing $n^2$,
the square of a given natural number $n$,
is to sum up the $n$ first odd numbers.
In fact,
$1^2=1$,
$2^2=1 + 3$,
$3^2=1 + 3 + 5$,
\etc,
$n^2=(2n-1) + (n-1)^2$.
Following this hint,
express function
\begin{eqnarray}
\unary{sq}{n} \deff n^2
\label{eq:991128a}
\end{eqnarray}
as a $\fun T$-hylomorphism and encode it in \haskell.
\end{exercise}

\begin{exercise}
Write function $x^n$ as a $\fun T$-hylomorphism and encode it in \haskell.
\end{exercise}

\begin{exercise}\label{ex:991120b}
The following function in \haskell\ computes the $\fun T$-sequence of all even
numbers less or equal to $n$:
\begin{code}
f n = if n <= 1 then Nil else Cons(m,f(m-2))
        where m = if even n then n else n-1
\end{code}
Find its \aspas{genetic material},
that is,
function $g$ such that f=$\sana g$ in
\begin{eqnarray*}
\xymatrix{
\fun T && 1 + \N_0\times \fun T \ar[ll]_{in_{\fun T}}
\\
	\N_0\ar[u]^{\sana g} \ar[rr]_{g}
&&	1 + \N_0\times \N_0 \ar[u]_{id+id \times \sana g}
}
\end{eqnarray*}
% g = cond (<=1) (i1.const Nil)
%                (cond even (i2. (split id (pred .pred)))
	%                (g . pred))
%g &\deff&      \leq_1 \rightarrow i_1 \comp \kons\nil,
%               i_2 \comp \split{id}{\pred{} \comp \pred{}} \comp
%               (\even{} \rightarrow id , \pred{})
\end{exercise}

\section{Inductive types more generally}
So far we have focussed our attention exclusively to a particular
inductive type $\fun T$ (\ref{eq:991115d}) ---
that of finite sequences of non-negative integers.
This is, of course, of a very limited scope. First, because one could think of
finite sequences of other datatypes, \eg\ Booleans or many others.
Second, because other datatypes such as trees, hash-tables \etc\ exist which
our notation and method should be able to take into account.

Although a generic theory of arbitrary datatypes requires a theoretical elaboration
which cannot be explained at once, we can move a step further by taking
the two observations above as starting points.
We shall start from the latter in order to talk generically about inductive
types. Then we introduce parameterization and functorial behaviour.

Suppose that, as a mere notational convention, we abbreviate every expression
of the form \aspas{\( 1 + \N_0 \times \ldots \)} occurring in the previous section
by
\aspas{\( \fun F \ldots \)},
\eg\ \( 1 + \N_0 \times B      \) by \( \ap{\fun F}{B     } \),
\eg\ \( 1 + \N_0 \times \fun T \) by \( \ap{\fun F}{\fun T} \)
\begin{eqnarray}
\xymatrix{
	\fun T		\ar@@/^1pc/[rr]^-{out_{\fun T}}
	&       \iso
		&       \ff{\fun T}	\ar@@/^1pc/[ll]^-{in_{\fun T}}
}	\label{eq:991123b}
\end{eqnarray}
\etc\
This is the same as introducing a datatype-level operator
\begin{eqnarray}
\ff X \deff 1 + \N_0 \times X	\label{eq:991123a}
\end{eqnarray}
which maps every datatype $A$ into datatype $1 + \N_0 \times A$.
Operator |fF| captures the pattern of recursion which is associated to
so-called \aspas{right} lists (of non-negative integers), that is,
lists which grow to the right.
The slightly different pattern \( \gg X \deff 1 + X \times \N_0 \) will
generate a different, although related, inductive type
\begin{eqnarray}
X & \iso 1 + X \times \N_0
\end{eqnarray}
--- that of so-called \aspas{left} lists (of non-negative integers).
And it is not difficult to think of the pattern which is merges both
right and left lists and gives rise to bi-linear lists,
better known as \emph{binary trees}:
\begin{eqnarray}
X & \iso 1 + X \times \N_0 \times X
\end{eqnarray}
One may think of many other expressions $\ff X$ and guess the inductive
datatype they generate, for instance $\ap{\fun H}X \deff \N_0 + \N_0 \times X$
generating non-empty lists of non-negative integers ($\N_0^+$).
The general rule is that,
given an inductive datatype definition of the form
\begin{eqnarray}
X & \iso & \ff X			\label{eq:336e}
\end{eqnarray}
(also called a domain equation), its pattern of recursion is captured by
a so-called \emph{functor} |fF|.

\section{Functors} \label{sec:180914a}
The concept of a functor |fF|, borrowed from category theory, is a most generic
and useful device in programming \footnote{The category theory practitioner
must be warned of the fact that the word \emph{functor} is used here in a
too restrictive way. A proper (generic) definition of a functor will be provided
later in this \doc. \jnowarning{verificar promessa!}
}.
As we have seen, |fF| can be regarded as a datatype constructor which,
given datatype $A$, builds a more elaborate datatype $\ff A$;
given another datatype $B$, builds a similarly elaborate datatype $\ff B$;
and so on.
But what is more important and has the most beneficial consequences is that,
if |fF| is regarded as a functor,
then its data-structuring effect extends smoothly to functions
in the following way:
suppose that $\larrow A f B$ is a function which observes $A$ into $B$,
which are parameters of $\ff A$ and $\ff B$, respectively.
By definition,
if |fF| is a functor then $\larrow{\ff A}{\ff f}{\ff B}$ exists for every such
$f$:
%
\begin{eqnarray*}
\xymatrix{
    A \ar[d]_{f} \ar@@{..}[r] & \ff A \ar[d]^{\ff f}
    \\
	    B            \ar@@{..}[r] & \ff B
}
\end{eqnarray*}
%
$\ff f$ extends $f$ to |fF|-structures and will, by definition, obey to two
very basic properties: it commutes with identity
\begin{eqnarray}
\ff{id_A} &=& id_{(\ff A)}	\label{eq:971218b}
\end{eqnarray}
and with composition
\begin{eqnarray}
\fun F(g \comp h) &=& (\ap{\fun F}g) \comp (\ap{\fun F}h)
\label{eq:980410a}
\end{eqnarray}

\noindent
Two simple examples of a functor follow:
\begin{itemize}
\item Identity functor: define $\ff X = X$, for every datatype $X$,
and $\ff f = f$.
Properties (\ref{eq:971218b}) and (\ref{eq:980410a}) hold trivially just
by removing symbol |fF| wherever it occurs.
\item Constant functors: for a given $C$, define $\ff X = C$
(for all datatypes $X$) and $\ff f = id_C$,
as expressed in the following diagram:
%
\begin{eqnarray*}
\xymatrix{
	A \ar[d]_{f} \ar@@{..}[r] & C\ar[d]^{id_C}
	\\
		B            \ar@@{..}[r] & C
}
\end{eqnarray*}
Properties (\ref{eq:971218b}) and (\ref{eq:980410a}) hold trivially again.
\end{itemize}

In the same way functions can be unary, binary, \etc,
   we can have functors with more than one argument. So we get binary functors
   (also called \emph{bifunctors}), ternary functors \etc.
   Of course, properties (\ref{eq:971218b}) and (\ref{eq:980410a}) have to hold
   for every parameter of an $n$-ary functor. For a binary functor $\fun B$,
   for instance, equation (\ref{eq:971218b}) becomes
   \begin{eqnarray}
   \bb{id_A}{id_B} &=& id_{\bb A B}		\label{eq:980418b}
   \end{eqnarray}
   and equation (\ref{eq:980410a}) becomes
   \begin{eqnarray}
   \bb{g \comp h}{i \comp j} &=& \bb g i \comp \bb h j \label{eq:980418c}
   \end{eqnarray}

   Product and coproduct are typical examples of bifunctors.
   In the former case one has $\bb A B = A \times B$ and $\bb f g = f \times g$
   --- recall (\ref{eq:960923c}).
   Properties (\ref{eq:705j}) and (\ref{eq:705h}) instantiate
   (\ref{eq:980418b}) and (\ref{eq:980418c}), respectively,
   and this explains why we called them the functorial properties of product.
   In the latter case,
   one has $\bb A B = A + B$ and $\bb f g = f + g$
   --- recall (\ref{eq:703d}) ---
   and functorial properties (\ref{eq:706d}) and (\ref{eq:706b}).
   Finally,
exponentiation is a functorial construction too: assuming $A$, one has
\( \ff X \deff X^A \) and \( \ff f \deff \trans{f \comp ap} \)
and functorial properties (\ref{eq:expFun}) and (\ref{eq:expFunId}).
All this is summarized in table \ref{tab:991129a}.

\begin{table}
\begin{center}
\begin{tabular}{||c||c||c||l||}\hline
\bf Data construction
&       \bf Universal construct
&       \bf Functor
&       \bf Description
\\\hline\hline
$ A \times B $
&       $ \split f g $
&       $ f \times g $
&       Product
\\\hline
$ A   +    B $
&       $ \alt   f g $
&       $ f   +    g $
&       Coproduct
\\\hline
$ B^A        $
&       $ \trans f   $
&       $ f^A        $
&       Exponential
\\\hline
\end{tabular}
\end{center}
\caption{Datatype constructions and associated operators.\label{tab:991129a}}
\end{table}

Such as functions,
functors may compose with each other in the obvious way:
the composition of |fF| and $\g$, denoted $\f \comp \g$, is defined by
\begin{eqnarray}
(\f \comp \g) X &\deff& \ff{(\gg X)}
\\
	(\f \comp \g) f &\deff& \ff{(\gg f)}
	\end{eqnarray}

	\section{Polynomial functors}
	We may put constant, product, coproduct and identity functors together to
	obtain so-called \emph{polynomial functors}, which are described by
	polynomial expressions, for instance
	\[
	\ff X = 1 + A \times X
	\]
	--- recall (\ref{eq:990122d}).
	A polynomial functor is either
	\begin{itemize}
	\item a constant functor or the identity functor, or
	\item the (finitary) product or coproduct (sum) of other polynomial functors, or
	\item the composition of other polynomial functors.
	\end{itemize}
	So the effect on arrows of a polynomial functor is computed in an easy
	and structured way, for instance:
	\begin{eqnarray*}
	\ff f   &=& (1 + A \times X)f
	%
	\just={ sum of two functors where $A$ is a constant and $X$ is a variable }
	%
	(1)f + (A \times X)f
	%
	\just={ constant functor and product of two functors }
	%
	id_1 + (A)f \times (X)f
	%
	\just={ constant functor and identity functor }
	%
	id_1 + id_A \times f
	%
	\just={ subscripts dropped for simplicity }
	%
	id + id \times f
	\end{eqnarray*}
	So,
	$1 + A \times f$ denotes the same as $id_1 + id_A \times f$,
	or even the same as $id + id \times f$ if one drops the subscripts.

	It should be clear at this point that what was referred to
	in section \ref{sec:990112a} as a \aspas{symbolic pattern} applicable to both
	datatypes and arrows is after all a functor in the mathematical sense.
	The fact that the same polynomial expression is used to denote both the data
	and the operators which structurally transform such data is of great
	conceptual economy and practical application. For instance,
	once polynomial functor (\ref{eq:991123a}) is assumed,
	the diagrams
	in (\ref{eq:991106a}) can be written as simply as
	%
	\begin{eqnarray}
	\xymatrix{
		\fun T	\ar[rr]^{out_{\fun T}}
		\ar[d]_{f}
		&&	\ff{\fun T}
		\ar[d]^{\ff f}
		\\
			B && \ff B
			\ar[ll]^{g}
	}
&&
\xymatrix{
\fun T
	&&	\ff{\fun T}
\ar[ll]_{in_{\fun T}}
\\
	B \ar[u]^{f}
\ar[rr]_{g}
&&	\ff B
	\ar[u]_{\ff f}
}
\end{eqnarray}

It is useful to know that,
   thanks to the isomorphism laws studied in chapter \ref{ch:990122a},
   every polynomial functor
   \(
{\fun F}	% : \setcat\longrightarrow \setcat
\)
may be put into the canonical form,
    \begin{equation}\label{eq:336d}
    \begin{array}{rcl}
    \ap{\fun F}X &\cong& C_0 +
    (C_1\times X) +
    (C_2\times X^2) +
    \cdots +
    (C_n \times X^n)\\
    & =   & \sum_{i=0}^{n} C_i \times X^i
    \end{array}
    \end{equation}
    and that
{\em Newton's binomial formula}
\begin{eqnarray}
(A+B)^n &\iso& \sum_{p=0}^{n} {}^nC_p \times A^{n-p} \times B^p
\label{eq:newton}
\end{eqnarray}
can be used in such conversions.
These are performed up to isomorphism,
      that is to say,
      after the conversion one gets a different but isomorphic datatype.
      Consider, for instance, functor
      \[	\ff X \deff A \times (1 + X)^2
      \]
      (where $A$ is a constant datatype) and check the following reasoning:
      %
      \begin{eqnarray*}
      \ff X
      &=&	A \times (1 + X)^2
      %
      \just\iso{ law (\ref{eq:331f}) }
%
A \times ((1 + X) \times (1 + X))
%
\just\iso{ law (\ref{eq:A4}) }
%
A \times ((1 + X) \times 1 + (1 + X) \times X))
%
\just\iso{ laws (\ref{eq:A3}), (\ref{eq:A1'}) and (\ref{eq:A4}) }
%
A \times ((1 + X) + (1 \times X + X \times X))
%
\just\iso{ laws (\ref{eq:A3}) and (\ref{eq:331f}) }
%
A \times ((1 + X) + (X + X^2))
%
\just\iso{ law (\ref{eq:A6}) }
%
A \times (1 + (X + X) + X^2)
%
\just\iso{ canonical form obtained via laws (\ref{eq:A4}) and (\ref{eq:331g}) }
%
\underbrace{A}_{C_0} +
\underbrace{A \times 2}_{C_1} \times X +
\underbrace{A}_{C_2} \times X^2
%
\end{eqnarray*}

\begin{exercise}
Synthesize the isomorphism
\begin{eqnarray*}
\larrow{A \times (1 + X^2)}{\nu}{A + A \times 2 \times X + A \times X^2}
\end{eqnarray*}
implicit in the above reasoning.
\end{exercise}

\section{Polynomial inductive types}
An inductive datatype is said to be \emph{polynomial} wherever its pattern
of recursion is described by a polynomial functor,
that is to say,
wherever |fF| in equation (\ref{eq:336e}) is polynomial.
For instance,
datatype $\fun T$ (\ref{eq:991115d}) is polynomial ($n=1$) and its associated
polynomial functor is canonically defined with coefficients
$C_0=1$ and
$C_1=\N_0$.
% and, for $i>1$, $C_i=0$.
For reasons that will become apparent later on,
we shall always impose $C_0 \neq 0$ to hold in a \emph{polynomial} datatype
expressed in canonical form.
%
\jnowarning{verificar promessa!}%

Polynomial types are easy to encode in \haskell\ wherever the associated
functor is in canonical polynomial form, that is, wherever one has
\begin{eqnarray}
\xymatrix{
	\fun T
		&       \iso
		&       \sum_{i=0}^{n} C_i \times {\fun T}^i	\ar@@/^1pc/[ll]^-{in_{\fun T}}
}	\label{eq:991127a}
\end{eqnarray}
Then we have
\[
in_{\fun T} \deff \Alt{f_1, \ldots, f_n}
\]
where, for |i=0,n|,
$f_i$ is an arrow of type $\larrow {C_i \times {\fun T}^i}{}{\fun T}$.
Since $n$ is finite,
one may expand exponentials according to (\ref{eq:331f}) and encode this in
\haskell\ as follows:
\begin{code}
data T =
         C0 C0 |
         C1 (C1,T) |
         C2 (C2,(T,T)) | ... |
         Cn (Cn,(T, ..., T))
\end{code}
Of course the choice of symbol \texttt{Ci} to realize each $f_i$
is arbitrary \footnote{
A more traditional (but less close to (\ref{eq:991127a}))
encoding will be
\begin{code}
data T = C0 C0 | C1 C1 T | C2 C2 T T | ... | Cn Cn T ... T
\end{code}
delivering every constructor in curried form.}.
Several instances of polynomial inductive types (in canonical form)
will be mentioned in section \ref{sec:polyCat}.
Section \ref{sec:conversion} will address the conversion between
inductive datatypes induced by so-called \emph{natural transformations}.

The concepts of catamorphism, anamorphism and hylomorphism introduced in
section \ref{sec:991127a} can be extended to arbitrary polynomial types.
We devote the following sections to explaining catamorphisms in the
polynomial setting. Polynomial anamorphisms and hylomorphisms will not be
dealt with until chapter \ref{ch:990126i}.

\section{\textsf F-algebras and \textsf F-homomorphisms}
Our interest in polynomial types is basically due to the fact that,
for polynomial |fF|,
equation (\ref{eq:336e}) always has a particularly
interesting solution which corresponds to our notion of a recursive
datatype.

In order to explain this,
we need two notions which are easy to understand: first, that of an
\emph{|fF|-algebra}, which simply is any function $\alpha$ of signature
\(
\larrow {\ff A} \alpha A
\).
$A$ is called the \emph{carrier} of |fF|-algebra $\alpha$ and contains the
values which $\alpha$ manipulates by computing new $A$-values out of existing
ones,
according to the |fF|-pattern (the \aspas{type} of the algebra).
As examples,
consider \( \alt{\kons 0}{add} \) (\ref{eq:721f}) and
$in_{\fun T}$ (\ref{eq:991115d}),
which are both algebras of type $\ff X = 1 + \N_0 \times X$.
The type of an algebra clearly determines its form.
For instance,
any algebra $\alpha$ of type $\ff X = 1 + X \times X$ will be
of form $\alt{\alpha_1}{\alpha_2}$,
where $\alpha_1$ is a constant and $\alpha_2$ is a binary operator.
So monoids are algebras of this type \footnote{
But not every algebra of this type is a monoid, since the type
of an algebra only fixes its syntax and does not impose any
properties such as associativity, \etc}.

Secondly, we introduce the notion of an \emph{|fF|-homomorphism} which is
but a function observing a particular |fF|-algebra $\alpha$ into another
|fF|-algebra $\beta$:
\begin{eqnarray}
\xymatrix{
	A \ar[d]_f & \ff A \ar[d]^{\ff f} \ar[l]_-\alpha
		\\
		B & \ff B \ar[l]^-\beta
}
&&	f \comp \alpha = \beta \comp (\ff f)	\label{eq:990612a}
\end{eqnarray}
Clearly,
$f$ can be regarded as a structural translation between $A$ and $B$,
that is,
$A$ and $B$ have a similar structure
\footnote{
	Cf.\ \emph{homomorphism} = \emph{homo} (the same) + \emph{morphos}
	(structure, shape).
}.
Note that --- thanks to (\ref{eq:971218b}) ---
identity functions are always (trivial) |fF|-homomorphisms
and that --- thanks to (\ref{eq:980410a}) --- these homomorphisms compose,
    that is, the composition of two |fF|-homomorphisms is
    an |fF|-homomorphism.

\section{\textsf F-catamorphisms}\label{sec:F-catas}
An |fF|-algebra can be epic, monic or both, that is, iso.
Iso |fF|-algebras are particularly relevant to our discussion because they
describe solutions to the \( X \iso \ff X \) equation (\ref{eq:336e}).
Moreover,
for polynomial |fF| a particular iso |fF|-algebra always exists,
which is denoted by
\(
	\larrow{\ff{\mu\f}}{in}{\mu\f}
\)
and has special properties. First, its carrier is the smallest among the
carriers of other iso |fF|-algebras, and this is why it is denoted by
$\mu\f$ --- $\mu$ for \aspas{minimal} \footnote{
$\mu\f$ means the least fixpoint solution of equation
	    \( X \iso \ff X \), as will be described in chapter \futureref{ch:990126i}.
}.
Second, it is the so-called \emph{initial} |fF|-algebra.
What does this mean?

It means that, for every |fF|-algebra $\alpha$
there exists one and only one |fF|-homomorphism between $in$ and $\alpha$.
This unique arrow mediating $in$ and $\alpha$ is therefore determined by
$\alpha$ itself,
and is called the \emph{|fF|-catamorphism}
generated by $\alpha$.
This construct,
which was introduced in \ref{sec:991127a},
is in general denoted by
\(
        \cata\alpha F
\):

\begin{eqnarray}
        \xymatrix{
        \mu\f \ar[d]_-{f=\cata\alpha F} &
        \ap\f{\mu\f} \ar[d]^{\ff{\cata\alpha F}} \ar[l]_-{in}
\\
        A & \ap{\f}A\ar[l]^-\alpha
}	\label{eq:990614a}
\end{eqnarray}
We will drop the |fF| subscript in \( \cata\alpha F \) wherever deducible
from the context, and often call $\alpha$ the \aspas{gene} of
\( \cata\alpha F \).

As happens with \emph{splits}, \emph{eithers} and transposes,
the uniqueness of the catamorphism construct is captured by a universal
property established in the class of all |fF|-homomorphisms:
%
\begin{eqnarray}
k = \scata\alpha & \equivalent & k \comp in = \alpha \comp \ff k
\label{eq:cataUniv}
\end{eqnarray}
%
According to the experience gathered from section \ref{sec:UnivProps} onwards,
a few properties can be expected as consequences of (\ref{eq:cataUniv}).
For instance, one may wonder about the \aspas{gene} of the identity
catamorphism. Just let $k=id$ in (\ref{eq:cataUniv}) and see what happens:
%
\begin{eqnarray*}
&&	id = \scata\alpha \equivalent id \comp in = \alpha \comp \ff{id}
%
\just={ identity (\ref{eq:981211d}) and |fF| is a functor (\ref{eq:971218b}) }
%
id = \scata\alpha \equivalent in = \alpha \comp id
%
\just={ identity (\ref{eq:981211d}) once again }
%
id = \scata\alpha \equivalent in = \alpha
%
\just={ $\alpha$ replaced by $in$ and simplifying }
%
id = \scata{in}
%
\end{eqnarray*}
Thus one finds out that the genetic material of the identity catamorphism
is the initial algebra $in$.
Which is the same as establishing the \emph{reflection property}
of catamorphisms:
%
\law{cata-reflex}{
Cata-reflection
}{
        \xymatrix{
        \mu\f \ar[d]_-{\scata{in}} &
        \ap\f{\mu\f} \ar[d]^{\ff{\scata{in}}} \ar[l]_-{in}
\\
        \mu\f & \ap\f{\mu\f} \ar[l]^-{in}
}
}{
        \scata{in} = id_{\mu\f}
}
In a more intuitive way,
one might have observed that $\scata{in}$ is,
by definition of $in$, the unique arrow mediating $\mu\f$ and itself.
But another arrow of the same type is already known:
the identity $id_{\mu\f}$. So these two arrows must be the same.

Another property following immediately from (\ref{eq:cataUniv}),
for $k=\scata\alpha$, is

\law{cata-cancel}{
        Cata-cancellation
}{
}{
        \scata\alpha \comp in = \alpha \comp \ff{\scata\alpha}
}

\noindent
Because $in$ is iso, this law can be rephrased as follows
\begin{eqnarray}
        \scata\alpha = \alpha \comp \ff{\scata\alpha} \comp out
\end{eqnarray}
where $out$ denotes the inverse of $in$:
\begin{eqnarray*}
\xymatrix{
        \mu\f           \ar@@/^1pc/[rr]^-{out} &
        \iso &
        \ff{\mu\f}     \ar@@/^1pc/[ll]^-{in}
}
\end{eqnarray*}

Now, let $f$ be |fF|-homomorphism (\ref{eq:990612a}) between |fF|-algebras
$\alpha$ and $\beta$. How does it relate to $\scata\alpha$ and $\scata\beta$?
Note that $f \comp \scata\alpha$ is an arrow mediating $\mu\f$ and $B$.
But $B$ is the carrier of $\beta$ and $\scata\beta$ is the unique arrow
mediating $\mu\f$ and $B$. So the two arrows are the same:

\law{cata-fusion}{
        Cata-fusion
}{
\xymatrix{
        \mu\f
	\ar[d]_-{\scata\alpha}
&
\ap\f{\mu\f}
	\ar[d]^{\f\scata\alpha}
	\ar[l]_-{in}
\\
        A
	\ar[d]_-{f}
&
\ff A
	\ar[l]^-\alpha
	\ar[d]^{\ff f}
\\
        B
&
\ff B \ar[l]^-\beta
}
}{
        f \comp \scata\alpha = \scata\beta
        \makebox[3em]{if}
        f \comp \alpha = \beta \comp \ff f
}
%
Of course, this law is also a consequence of the universal property,
for
\( k=f\comp\scata\alpha \):
%
\begin{eqnarray*}
%
f\comp\scata\alpha = \scata\beta
& \equivalent &
(f\comp\scata\alpha) \comp in = \beta \comp \ff{(f\comp\scata\alpha)}
%
\just\equivalent{
composition is associative and |fF| is a functor (\ref{eq:980410a}) }
%
f\comp (\scata\alpha \comp in) =
\beta \comp (\ff f) \comp (\ff{\scata\alpha})
%
\just\equivalent{ cata-cancellation (\ref{eq:cata-cancel}) }
%
f\comp \alpha \comp \ff{\scata\alpha} =
\beta \comp \ff{f} \comp \ff{\scata\alpha}
%
\just\implied{ require $f$ to be a |fF|-homomorphism (\ref{eq:990612a}) }
%
f\comp \alpha \comp \ff{\scata\alpha} =
f \comp \alpha \comp \ff{\scata\alpha}
\land
        f \comp \alpha = \beta \comp \ff f
%
\just\equivalent{ simplify }
%
       f \comp \alpha = \beta \comp \ff f
%
\end{eqnarray*}

The presentation of the \emph{absorption} property of catamorphisms
entails the very important issue of parameterization and deserves
to be treated in a separate section, as follows.

\section{Parameterization and type functors}
\label{sec:120522a}
By analogy with what we have done about \emph{splits} (product),
\emph{eithers} (coproduct) and transposes (exponential),
we now look forward to identifying |fF|-catamorphisms which exhibit functorial
behaviour.

Suppose that one wishes to square all numbers that are members of lists of
type $\fun T$ (\ref{eq:991115d}). It can be checked that
\begin{eqnarray}
\scata{\alt{\kons{Nil}}{Cons \comp (\unary{sq}{} \times id)}}
\label{eq:991128b}
\end{eqnarray}
will do this for us, where
\( \larrow{\N_0}{\unary{sq}{}}{\N_0} \) is given by (\ref{eq:991128a}).
This catamorphism,
which converted to pointwise notation is nothing but function $h$ which follows
\begin{eqnarray*}
        \left\{\begin{array}{l}
        \ap h {Nil} = Nil
        \\
        h(Cons(a,l)) = Cons(\unary{sq}{a},\ap h l)
        \end{array}\right.
\end{eqnarray*}
maps type $\fun T$ to itself.
This is because $\unary{sq}{}$ maps $\N_0$ to $\N_0$.
Now suppose that, instead of $\unary{sq}{}$, one would like to apply
a given function $\larrow{\N_0}f{B}$ (for some $B$ other than $\N_0$)
to all elements of the argument list.
It is easy to see that it suffices to replace $f$ for $\unary{sq}{}$ in
(\ref{eq:991128b}).
However, the output type no longer is $\fun T$,
but rather type
\(
\fun T' \iso 1 + B \times \fun T'
\).

Types $\fun T$ and $\fun T'$ are very close to each other.
They share the same \aspas{shape} (recursive pattern)
and only differ with respect to the type of elements --- $\N_0$ in $\fun T$ and
$B$ in $\fun T'$. This suggests that these two types can be regarded as
instances of a more generic list datatype $\fun{List}$
\begin{eqnarray}
\xymatrix{
        \ap{\fun{List}}X
&       \iso
&       1 + X \times \ap{\fun{List}}X
	\ar@@/^1pc/[ll]^-{in = \alt{\kons{Nil}}{Cons}}
}       \label{eq:999}
\end{eqnarray}
in which the type of elements $X$ is allowed to vary.
Thus one has
\(
\fun T = \ap{\fun{List}}{\N_0}
\)
and
\(
        \fun T' = \ap{\fun{List}}{B}
\).

By inspection, it can be checked that,
for every \( \larrow{A}f{B} \),
\begin{eqnarray}
\scata{\alt{\kons{Nil}}{Cons \comp (f \times id)}}
\end{eqnarray}
maps
\(
        \ap{\fun{List}}{A}
\)
to
\(
        \ap{\fun{List}}{B}
\).
Moreover,
for $f=id$ one has:
\begin{eqnarray*}
&&
\scata{\alt{\kons{Nil}}{Cons \comp (id \times id)}}
%
\just={ by the $\times$-functor-id property (\ref{eq:705j}) and identity }
%
\scata{\alt{\kons{Nil}}{Cons}}
%
\just={ cata-reflection (\ref{eq:cata-reflex}) }
%
        id
%
\end{eqnarray*}
Therefore, by defining
\begin{eqnarray*}
\ap{\fun{List}}{f}
&\deff&
\scata{\alt{\kons{Nil}}{Cons \comp (f \times id)}}
\end{eqnarray*}
what we have just seen can be written thus:
\begin{eqnarray*}
        \ap{\fun{List}}{id_A} &=& id_{\ap{\fun{List}}{A}}
\end{eqnarray*}
This is nothing but law (\ref{eq:971218b}) for |fF| replaced by $\fun{List}$.
Moreover,
it will not be too difficult to check that
\begin{eqnarray*}
        \ap{\fun{List}}{(g \comp f)} &=&
        \ap{\fun{List}}{g} \comp \ap{\fun{List}}{f}
\end{eqnarray*}
also holds --- \cf\ (\ref{eq:980410a}).
Altogether, this means that \( \fun{List} \) can be regarded as a functor.

In programming terminology one says that $\ap{\fun{List}}{X}$
(the \aspas{lists of $X$s datatype})
is \emph{parametric} and that,
by instantiating parameter $X$,
one gets ground lists such as lists of integers, booleans, \etc\
The illustration above deepens one's understanding of parameterization by
identifying the functorial behaviour of the parametric datatype along with its
parameter instantiations.

All this can be broadly generalized and leads to what is commonly known by
a \emph{type functor}.
First of all,
it should be clear that the generic format
\begin{eqnarray*}
        \fun{T} &\iso& \ff{\fun T}
\end{eqnarray*}
adopted so far for the definition of an inductive type is not sufficiently
detailed because it does not provide a parametric view of $\fun T$.
For simplicity,
let us suppose (for the moment) that only one parameter is identified in $\fun T$.
Then we may factor this out via \emph{type variable} $X$ and write
(overloading symbol $\fun T$)
\begin{eqnarray*}
\ap{\fun{T}}X &\iso& \fun B(X,\ap{\fun{T}}X)
\end{eqnarray*}
where $\fun B$ is called the type's \emph{base functor}.
Binary functor $\fun B(X,Y)$ is given this name because it is the basis of the
whole inductive type definition. By instantiation of $X$ one obtains |fF|.
In the example above,
$\bb X Y = 1 + X \times Y$ and in fact
$\ff Y = \bb{\N_0}Y = 1 + \N_0 \times Y$,
recall (\ref{eq:991123a}).
Moreover, one has
\begin{eqnarray}
        \ff f & = & \bb{id}f
\label{eq:050925a}
\end{eqnarray}
and so every |fF|-homomorphism can be written in terms of the base-functor of
|fF|,
\eg
\begin{eqnarray*}
f \comp \alpha = \beta \comp \bb{id}f
\end{eqnarray*}
instead of (\ref{eq:990612a}).

$\ap{\fun{T}}X$ will be referred to as the \emph{type functor} generated by
$\fun B$:
\begin{eqnarray*}
        \underbrace{\fun T X}_{\mbox{type functor}} & \iso &
        \underbrace{\fun B(X, \fun T X)}_{\mbox{base functor}}
\end{eqnarray*}
We proceed to the description of its functorial behaviour
--- $\ap{\fun{T}}f$ ---
for a given $\larrow{A}f{B}$. As far as typing rules are concerned,
we shall have
\begin{eqnarray*}
        \begin{array}{c}
        \larrow A f B
        \\ \hline
        \larrow{\tf A}{\tf f}{\tf B}
        \end{array}
\end{eqnarray*}
So we should be able to express $\ap{\fun{T}}f$ as a $\bb A \_$-catamorphism
$\scata g$:
%
\begin{eqnarray*}
\xymatrix{
        A \ar[d]_f
&&
        \tf A \ar[d]_{\tf f = \scata g}
&&
        \bb A {\tf A}   \ar[ll]_{in_{\tf A}}  \ar[d]^{\bb {id}{\tf f}}
\\
        B
&&
\tf B
&
&
        \bb A {\tf B}   \ar[ll]^{g}
}
\end{eqnarray*}
As we know that $in_{\tf B}$ is the standard constructor of values of type $\tf B$,
we may put it into the diagram too:
\begin{eqnarray*}
\xymatrix{        A \ar[d]_f
&&
        \tf A \ar[d]_{\tf f = \scata g}
&&
        \bb A {\tf A}   \ar[ll]_{in_{\tf A}}  \ar[d]^{\bb {id}{\tf f}}
\\
        B
&&
        \tf B
&
&
        \bb A {\tf B}	\ar[ll]^{g}	\ar@@{..}[dl]
\\
&&
&
\bb B {\tf B} \ar[ul]^{in_{\tf B}}
}
\end{eqnarray*}
The catamorphism's gene $g$ will be synthesized by filling the dashed arrow
in the diagram with the ``obvious'' $\bb f {id}$, whereby one gets
\begin{eqnarray}
\tf f & \deff & \scata{in_{\tf B} \comp \bb f {id}}
\label{eq:991129c}
\end{eqnarray}
and a final diagram, where $in_{\tf A}$ is abbreviated by $in_A$
(ibid.\ $in_{\tf B}$ by $in_B$):
\begin{eqnarray*}
\xymatrix{
        A \ar[d]_f &&&
        \tf A \ar[d]_{\tf f = \scata{in_B \comp \bb f {id}}} &
        &
        \bb A {\tf A}   \ar[ll]_{in_A}  \ar[d]^{\bb {id}{\tf f}}
\\
        B          &&& \tf B &
        \bb B {\tf B}   \ar[l]^{in_B} &
        \bb A {\tf B}   \ar[l]^{\bb f {id}}
}
\end{eqnarray*}

Next, we proceed to deriving the useful law of \emph{cata-absorption}
\begin{eqnarray}
	\scata g \comp \tf f & = & \scata{g \comp \bb f {id}}
	\label{eq:cata-absorption}
\end{eqnarray}
as consequence of the laws studied in section \ref{sec:F-catas}.
Our target is to show that,
for $k = \scata g \comp \tf f$ in (\ref{eq:cataUniv}),
one gets $\alpha = g \comp \bb f {id}$:
\begin{eqnarray*}
&&
        \scata g \comp \tf f = \scata \alpha
%
\just\equivalent{ type-functor definition (\ref{eq:991129c}) }
%
        \scata g \comp \scata{in_B \comp \bb f {id}} = \scata \alpha
%
\just\implied{ cata-fusion (\ref{eq:cata-fusion}) }
%
        \scata g \comp in_B \comp \bb f {id} = \alpha \comp \bb{id}{\scata g}
%
\just\equivalent{ cata-cancellation (\ref{eq:cata-cancel}) }
%
        g \comp \bb{id}{\scata g} \comp \bb f {id} = \alpha \comp \bb{id}{\scata g}
%
\just\equivalent{ $\fun B$ is a bi-functor (\ref{eq:980418c}) }
%
        g \comp \bb{id \comp f}{\scata g \comp id} = \alpha \comp \bb{id}{\scata g}
%
\just\equivalent{ $id$ is natural (\ref{eq:981211e}) }
%
        g \comp \bb{f \comp id}{id \comp \scata g} = \alpha \comp \bb{id}{\scata g}
%
\just\equivalent{ (\ref{eq:980418c}) again, this time from left to right }
%
        g \comp \bb f {id} \comp \bb{id}{\scata g} = \alpha \comp \bb{id}{\scata g}
%
\just\implied{ Leibniz }
%
        g \comp \bb f {id} = \alpha
%
\end{eqnarray*}
%
The following diagram pictures this property of catamorphisms:
\begin{eqnarray*}
\xymatrix{
        A \ar[d]_f &&
        \tf A \ar[d]_{\tf f} &
        &
        \bb A {\tf A}   \ar[ll]_{in_A}  \ar[d]^{\bb {id}{\tf f}}
\\
        C          &&
        \tf C           \ar[d]_{\scata{g}} &
        \bb C {\tf C}   \ar[l]^{in_C}   \ar[d]^{\bb {id}{\scata g}} &
        \bb A {\tf C}   \ar[l]^{\bb f {id}}     \ar[d]^{\bb{id}{\scata g}}
\\
                   &&
        D       &
        \bb C D \ar[l]^{g} &
        \bb A D \ar[l]^{\bb f {id}}
}
\end{eqnarray*}

It remains to show that (\ref{eq:991129c}) indeed defines a functor.
This can be verified by checking properties (\ref{eq:971218b}) and
(\ref{eq:980410a}) for $\ff{}=\tf{}$:
\begin{itemize}
\item Property \textbf{type-functor-id}, \cf\ (\ref{eq:971218b}):
\begin{eqnarray*}
&&
        \tf{id}
%
\just={ by definition (\ref{eq:991129c}) }
%
        \scata{in_B \comp \bb {id}{id}}
%
\just={ $\fun B$ is a bi-functor (\ref{eq:980418b}) }
%
        \scata{in_B \comp id}
%
\just={ identity and cata-reflection (\ref{eq:cata-reflex}) }
%
        id
%
\end{eqnarray*}
\item Property \textbf{type-functor}, \cf\ (\ref{eq:980410a}) :
\begin{eqnarray*}
&&
        \tf{(f \comp g)}
%
\just={ by definition (\ref{eq:991129c}) }
%
        \scata{in_B \comp \bb {f\comp g}{id}}
%
\just={ $id \comp id = id$ and $\fun B$ is a bi-functor (\ref{eq:980418c}) }
%
        \scata{in_B \comp \bb {f}{id} \comp \bb {g}{id} }
%
\just={ cata-absorption (\ref{eq:cata-absorption}) }
%
        \scata{in_B \comp \bb {f}{id}} \comp \tf g
%
\just={ by definition (\ref{eq:991129c}) }
%
        \tf f \comp \tf g
%
\end{eqnarray*}
\end{itemize}

\begin{exercise}\label{q:?cp1314q10?}
%fbox{ 6 cata-fusion, listas e naturais}
Function
\begin{eqnarray*}
 \mathsf{length}\mathrel{=}\mathopen{(\!||}\alt{\mathsf{zero}}{\mathsf{succ} \comp \p2}\mathclose{||\!)}
\end{eqnarray*}
counts the number of elements of a finite list.
In case the input list has one element at least it suffices to count the
elements of its tail starting with count
\ensuremath{\mathrm{1}} instead of \ensuremath{\mathrm{0}}:
\begin{eqnarray}
\ensuremath{\mathsf{length} \comp (\Varid{a}\mathbin{:})\mathrel{=}\mathopen{(\!||}\alt{\mathsf{one}}{\mathsf{succ} \comp \p2}\mathclose{||\!)}}
\label{eq:140630a}
\end{eqnarray}
Prove (\ref{eq:140630a}) knowing that
\begin{eqnarray*}
\ensuremath{\mathsf{length} \comp (\Varid{a}\mathbin{:})\mathrel{=}\mathsf{succ} \comp \mathsf{length}} %  = cata (either one (succ.p2))||
\end{eqnarray*}
follows from the definition of \ensuremath{\mathsf{length}}.
(\textbf{NB:} assume \ensuremath{\mathsf{zero}\;\anonymous \mathrel{=}\mathrm{0}} and \ensuremath{\mathsf{one}\;\anonymous \mathrel{=}\mathrm{1}}.)
\end{exercise}

\begin{exercise}\label{ex:cp1314q14}
%fbox{8 absorção cata}
Function \ensuremath{\mathsf{concat}}, extracted from Haskell's \emph{Prelude}, can be defined as list catamorphism,
%concat           :: [[a]] -> [a]
\begin{eqnarray}
\ensuremath{\mathsf{concat}\mathrel{=}\mathopen{(\!||}\alt{\mathsf{nil}}{\mathsf{conc}}\mathclose{||\!)}}
\label{eq:140612a}
\end{eqnarray}
where \ensuremath{\mathsf{conc}\;(\Varid{x},\Varid{y})\mathrel{=}\Varid{x}\mathbin{+\!\!+}\Varid{y}}, \ensuremath{\mathsf{nil}\;\anonymous \mathrel{=}[\mskip1.5mu \mskip1.5mu]},
\ensuremath{\mathsf{B}\;(\Varid{f},\Varid{g})\mathrel{=}{id}+\Varid{f} \times \Varid{g}},
 \ensuremath{\mathsf{F}\;\Varid{f}\mathrel{=}\mathsf{B}\;({id},\Varid{f})}, and
\ensuremath{\mathsf{T}\;\Varid{f}\mathrel{=}\mathsf{map}\;\Varid{f}}.
Prove property
\begin{eqnarray}
\ensuremath{\mathsf{length} \comp \mathsf{concat}\mathrel{=}\mathsf{sum} \comp \mathsf{map}\;\mathsf{length}}
\label{eq:100516a}
\end{eqnarray}
resorting to cata-fusion and cata-absorption.
\end{exercise}

\begin{exercise}
Consider the following generalization of law (\ref{eq:cata-absorption}) 
\def\topic{cata fusion etc}
%format muF = "\fun{T_1}"
%format muG = "\fun{T_2}"
%format inF = "\mathsf{in}_1"
%format inG = "\mathsf{in}_2"
\begin{eqnarray}
	|cata g . (cata (inG . alpha)) = cata (g . alpha)| & |<=.| & |fG f . alpha = alpha . fF f|
	\label{eq:231109b}
\end{eqnarray}
corresponding to the diagram:
\begin{eqnarray*}
\xymatrix{
&
        |muF| \ar[d]_{|cata(inG . alpha)|}
&
&
        |fF muF|
		\ar[ll]_{|inF|}
	\ar[d]^{|fF(cata(inG . alpha))|}
\\
&
        |muG|           \ar[d]_{\scata{g}} &
        |fG muG|
		\ar[l]^{|inG|}
		\ar[d]^{|fG (cata g)|}
&
        |fF muG|
		\ar[l]_{|alpha|}
		\ar[d]^{|fF|{\scata g}}
\\
&
        C       &
        |fG C|
		\ar[l]^{g}
&
        |fF| C \ar[l]^{|alpha|}
}
\end{eqnarray*}
Prove (\ref{eq:231109b}).
\def\resolucao{Justificar os passos que são dados no raciocínio seguinte:
\begin{eqnarray*}
\start
	|cata g . (cata (inG . alpha)) = cata (g . alpha)|
%
\cjust\implied{ cata fusion }
%
	|cata g . inG . alpha = g . alpha . fF(cata g)|
%
\cjust\equiv{ cata-cancellation }
%
	|g . fG(cata g) . alpha = g . alpha . fF(cata g)|
%
\cjust\equiv{ assumindo |fG f . alpha = alpha . fF f| }
%
	|g . alpha . fF(cata g) = g . alpha . fF(cata g)|
%
\cjust\equiv{trivial}
%
	|true|
%
\qed
\end{eqnarray*}
}
\end{exercise}

\section{A catalogue of standard polynomial inductive types}\label{sec:polyCat}
The following table contains a collection of standard polynomial inductive
types and associated base type bi-functors, which are in canonical
form (\ref{eq:991127a}).
The table contains two extra columns which may be used as bookmarks
for equations (\ref{eq:050925a}) and (\ref{eq:991129c}), respectively
\footnote{Note the abuse of notation in writing |expn f 2| as abbreviation for |f><f| and thus
|expn id 2| for |id><id|. Since |id >< id = id|, we have |expn id 2 =id|.}:
%  $(id_A)^2 = id_{(A^2)}$ one writes $id^2$ for $id$ in this table.
%
\begin{eqnarray}
\mbox{\footnotesize\hskip -3em
\begin{tabular}{||l||l||c||c||c||}\hline
\bf Description
&	$\tf X$
&	$\bb X Y$
&	$\bb {id} f$
&	$\bb f {id}$
\\\hline\hline
        \aspas{Right} Lists
&       $\ap{\fun{List}}X$
&       $1 + X \times Y$
&       $id + id \times f$
&       $id + f \times id$
\\\hline
        \aspas{Left} Lists
&       $\ap{\fun{LList}}X$
&       $1 + Y \times X$
&       $id + f \times id$
&       $id + id \times f$
\\\hline
        Non-empty Lists
&       $\ap{\fun{NList}}X$
&       $X + X \times Y$
&       $id + id \times f$
&       $f + f \times id$
\\\hline
        Binary Trees
&       $\ap{\fun{BTree}}X$
&       $1 + X \times Y^2$
&       $id + id \times f^2$
&       $id +  f \times id$
\\\hline
        \aspas{Leaf} Trees
&       $\ap{\fun{LTree}}X$
&       $X + Y^2$
&       $id + f^2$
&       $ f + id$
\\\hline
\end{tabular}
}	\label{eq:991129a}
\end{eqnarray}

All type functors $\fun T$ in this table are unary.
In general,
one may think of inductive datatypes which exhibit more than one type parameter.
Should $n$ parameters be identified in $\fun T$,
then this will be based on an $n+1$-ary base functor $\fun B$,
\cf\
\begin{eqnarray*}
\fun{T}(X_1,\ldots,X_n) &\iso&
\fun B(X_1,\ldots,X_n,\fun{T}(X_1,\ldots,X_n))
\end{eqnarray*}
So, every $n+1$-ary polynomial functor
$\fun B(X_1,\ldots,X_n,X_{n+1})$
can be identified as the basis of an inductive $n$-ary type functor
(the convention is to stick to the canonical form and reserve the last variable
$X_{n+1}$ for the \aspas{recursive call}).
While type bi-functors ($n=2$) are often found in programming,
the situation in which $n>2$ is relatively rare.
For instance,
the combination of leaf-trees with binary-trees in (\ref{eq:991129a})
leads to the so-called \aspas{full tree} type bi-functor
%
\begin{eqnarray}
\mbox{\footnotesize \hskip -3em
\begin{tabular}{||l||l||c||c||c||}\hline
\bf Description
&	$\fun T(X_1,X_2)$
&	$\fun B(X_1,X_2,Y)$
&	$\fun B(id,id,f)$
&	$\fun B(f,g,id)$
\\\hline\hline
        \aspas{Full} Trees
&       $\fun{FTree}(X_1,X_2)$
&       $X_1 + X_2 \times Y^2$
&       $id + id \times f^2$
&       $ f + g \times id$
\\\hline
\end{tabular}
}	\label{eq:991129b}
\end{eqnarray}
%
As we shall see later on,
%
\jnowarning{verificar promessa!}%
%
these types are widely used in programming.
In the actual encoding of these types in \haskell,
exponentials are normally expanded to products according to (\ref{eq:331f}),
see for instance
\begin{eqnarray}
     |data BTree a = Empty || Node(a, (BTree a, BTree a))|
\end{eqnarray}
Moreover, one may choose to curry the type constructors as in, \eg
\begin{code}
     data BTree a = Empty | Node a (BTree a) (BTree a)
\end{code}

\begin{exercise}
Write as a catamorphisms
\begin{itemize}
\item
the function which counts the number of elements of
a non-empty list (type $\fun{NList}$ in (\ref{eq:991129a})).
\item
the function which computes the maximum element of a binary-tree of
natural numbers.
\end{itemize}
\end{exercise}

\begin{exercise}\label{ex:011218a}
Let
\begin{eqnarray}
\start
	|nil _ = []|
\more
	|singl a = [a]|
	\label{eq:220913a}
\end{eqnarray}
be defined.
Characterize the function which is defined by |cata(either nil h)|
for each of the following definitions of $h$:
\begin{eqnarray}
        h(x,(y_1,y_2))	& = & y_1 \conc \enseq x \conc y_2
	\label{eq:181228e}
\\
        h		& = & \conc \comp (\singl{} \times \conc)
\\
        h		& = & \conc \comp (\conc \times \singl{}) \comp |swap|
\end{eqnarray}
Identify in (\ref{eq:991129a}) which datatypes are involved as base functors.
\end{exercise}

\begin{exercise}
Write as a catamorphism the function that computes the
\emph{tips} of a tree of type $\fun{LTree}$ (\ref{eq:991129a}),
listed from left to right.
\end{exercise}

\begin{exercise}\label{ex:cp1314q10}
Function
\begin{quote}
\ensuremath{\mathsf{mirror}\;(\Conid{Leaf}\;\Varid{a})\mathrel{=}\Conid{Leaf}\;\Varid{a}}
\\
\ensuremath{\mathsf{mirror}\;(\Conid{Fork}\;(\Varid{x},\Varid{y}))\mathrel{=}\Conid{Fork}\;(\mathsf{mirror}\;\Varid{y},\mathsf{mirror}\;\Varid{x})}
\end{quote}
which mirrors binary trees of type \ensuremath{\mathsf{LTree}\;\Varid{a}\mathrel{=}\Conid{Leaf}\;\Varid{a}\mid \Conid{Fork}\;(\mathsf{LTree}\;\Varid{a},\mathsf{LTree}\;\Varid{a})}
can be defined both as a catamorphism
\begin{eqnarray}
\ensuremath{\mathsf{mirror}} = \ensuremath{\mathopen{(\!||}\mathsf{in} \comp ({id}+\mathsf{swap})\mathclose{||\!)}}
\end{eqnarray}
and as an anamorphism
\begin{eqnarray}
\ensuremath{\mathsf{mirror}} = \ensuremath{\mathopen{[\!(}({id}+\mathsf{swap}) \comp \mathsf{out}\mathclose{)\!]}}
\end{eqnarray}
where \ensuremath{\mathsf{out}} is the converse of
\begin{eqnarray}
\ensuremath{\mathsf{in}} = \alt {\ensuremath{\Conid{Leaf}}}{\ensuremath{\Conid{Fork}}}
\end{eqnarray}
Show that both definitions are effectively the same, that is, complete
the \emph{etc} steps of the rasoning:
\begin{eqnarray*}
\start
\ensuremath{\mathsf{mirror}\mathrel{=}\mathopen{(\!||}\mathsf{in} \comp ({id}+\mathsf{swap})\mathclose{||\!)}}
%
\just\equiv{... etc ... }
%
\ensuremath{\mathsf{mirror}\mathrel{=}\mathopen{[\!(}({id}+\mathsf{swap}) \comp \mathsf{out}\mathclose{)\!]}}
\qed
\end{eqnarray*}
(\textbf{Hint}: recall that \ensuremath{\ff \Varid{f}\mathrel{=}{id}+\Varid{f} \times \Varid{f}} for this type and mind the natural property of \ensuremath{{id}+\mathsf{swap}}.)
\end{exercise}

\begin{exercise}\label{q:cp0910q12}
Let parametric type \ensuremath{\fun T } be given with base \ensuremath{\mathsf B}, that is, such that \ensuremath{\fun T \;\Varid{f}\mathrel{=}\mathopen{(\!||}\;\mathsf{in} \comp \mathsf B\;(\Varid{f},{id})\mathclose{||\!)}}.
Define the so-called \emph{triangular combinator} of \ensuremath{\fun T },  \ensuremath{\Varid{tri}\;\Varid{f}}, as follows:
\begin{eqnarray}
\ensuremath{\Varid{tri}\;\Varid{f}\mathrel{=}\mathopen{(\!||}\;\mathsf{in} \comp \mathsf B\;({id},\fun T \;\Varid{f})\mathclose{||\!)}}
\end{eqnarray}
Show that the instance of this combinator for type \ensuremath{\mathsf{LTree}\;\Varid{a}\mathrel{=}\Conid{Leaf}\;\Varid{a}\mid \Conid{Fork}\;(\mathsf{LTree}\;\Varid{a},\mathsf{LTree}\;\Varid{a})}
--- such that \ensuremath{\mathsf{in}\mathrel{=}\alt{\Conid{Leaf}}{\Conid{Fork}}} and \ensuremath{\mathsf B\;(\Varid{f},\Varid{g})\mathrel{=}\Varid{f}\mathbin{+}\Varid{g} \times \Varid{g}} ---
is the following function
\begin{quote}
\ensuremath{\Varid{tri}\mathbin{::}(\Varid{a}\to \Varid{a})\to \mathsf{LTree}\;\Varid{a}\to \mathsf{LTree}\;\Varid{a}}\\
\ensuremath{\Varid{tri}\;\Varid{f}\;(\Conid{Leaf}\;\Varid{x})\mathrel{=}\Conid{Leaf}\;\Varid{x}}\\
\ensuremath{\Varid{tri}\;\Varid{f}\;(\Conid{Fork}\;(\Varid{t},\Varid{t'}))\mathrel{=}\Conid{Fork}\;(\Varid{fmap}\;\Varid{f}\;(\Varid{tri}\;\Varid{f}\;\Varid{t}),\Varid{fmap}\;\Varid{f}\;(\Varid{tri}\;\Varid{f}\;\Varid{t'}))}
\end{quote}
written in Haskell syntax.
\end{exercise}

\begin{figure}
\centering
	\includegraphics[width=0.5\textwidth]{th.jpg}
	\caption{\small Towers of Hanoi.}
	\label{fig:181228b}
\end{figure}

\section{Hylo-factorization}
A well-known example of a hylomorphism is the algorithm that computes the
sequence of disk moves in the Towers of Hanoi puzzle:
\begin{eqnarray}
\hskip -3em
\begin{array}{l}
|hanoi(d,0) = []|
\\
|hanoi(d,n+1) = hanoi (not d,n) ++ [(d,n)] ++ hanoi (not d, n)|
\end{array}
	\label{eq:181228c}
\end{eqnarray}
Here is a nice account of this puzzle, taken from \cite{mmf2001a}:
\begin{quote}\em\small
    The Towers of Hanoi problem comes from a puzzle marketed in 1883
    by the French mathematician Édouard Lucas, under the pseudonym
    Claus. The puzzle is based on a legend according to which
    there is a temple, apparently in Bramah rather than in Hanoi as
    one might expect, where there are three giant poles fixed in the
    ground. On the first of these poles, at the time of the world's
    creation, God placed sixty four golden disks, each of different
    size, in decreasing order of size. The Bramin monks were given
    the task of moving the disks, one per day, from one pole to another
    subject to the rule that no disk may ever be above a smaller disk.
    The monks' task would be complete when they had succeeded in moving
    all the disks from the first of the poles to the second and, on
    the day that they completed their task the world would come to
    an end!

    There is a well­known inductive solution to the problem (...) % given by the pseudocode below.
    In this solution we make use of the fact
    that the given problem is symmetrical with respect to all three
    poles. Thus it is undesirable to name the individual poles. Instead
    we visualize the poles as being arranged in a circle [See figure \ref{fig:181228b}]; the problem
    is to move the tower of disks from one pole to the next pole in
    a specified direction around the circle. The code defines |H n d|§
    to be a sequence of pairs |(k,d')| where |n| is the number of disks,
    |k| is a disk number and |d| and |d'| are directions. Disks are numbered
    from 0 onwards, disk 0 being the smallest. (Assigning number 0
    to the smallest rather than the largest disk has the advantage
    that the number of the disk that is moved on any day is independent
    of the total number of disks to be moved.) Directions are boolean
    values, |true| representing a clockwise movement and |false| an anti­clockwise
    movement. The pair |(k,d')| means move the disk numbered |k| from
    its current position in the direction |d'|. (...)
    % The semicolon operator concatenates sequences together, |[]| denotes an empty sequence and [x] is a sequence with exactly one element x.
    Taking the pairs
    in order from left to right, the complete sequence (...) %H n d
    prescribes how to move the |n| smallest disks one­by­one from one pole to the
    next pole in the direction |d| following the rule of never placing
    a larger disk on top of a smaller disk.
\end{quote}
Next, here is how the same function (\ref{eq:181228c}) can be viewed as a hylomorphism:\footnote{Recall (\ref{eq:181228e}) concerning function |inord|.}
\begin{code}
hanoi = (cata inord).(ana strategy) where
   strategy(d,0) = Left ()
   strategy(d,n+1) = Right ((d,n),((not d,n),(not d,n)))
   inord  = either nil f
   f(x,(l,r))=l++[x]++r
\end{code}
This means that, for some functor |fF|,
\begin{eqnarray}
	|hanoi = inord . fF hanoi . strategy|
	\label{eq:181228d}
\end{eqnarray}
holds. The question is: which functor |fF| is capturing the \emph{recursive
pattern} of the algorithm?
%
From |strategy(d,0) = Left ()| we infer the type
\begin{quote}
|strategy : Bool >< Nat0 -> 1 + ....|.
\end{quote}
and from |strategy(d,n+1) = Right ((d,n),((not d,n),(not d,n)))| we infer
\begin{quote}
|strategy : Bool >< Nat0 -> ... + (Bool >< Nat0) >< (expn ((Bool >< Nat0)) 2)|
\end{quote}
Altogether:
\begin{eqnarray*}
\xymatrix{
	|Seq ((Bool><Nat0))|
&&
	|1+(Bool >< Nat0) >< (expn ((Seq((Bool >< Nat0)))) 2)|
		 \ar[ll]_-{|inord|}
\\
	|Bool><Nat0|
		\ar[u]^{|hanoi|}
		\ar[rr]_-{|strategy|}
&&
	|1+(Bool >< Nat0) >< (expn ((Bool >< Nat0)) 2)|
		\ar[u]_{|id+id >< (expn hanoi 2)|}
}
\end{eqnarray*}
We conclude that |fF X = 1 + (Bool >< Nat0) >< (expn X 2)|:
\begin{eqnarray*}
\xymatrix{
	|Seq ((Bool><Nat0))|
&&
	|fF(Seq((Bool >< Nat0))|
		 \ar[ll]_-{|inord|}
\\
	|Bool><Nat0|
		\ar[u]^{|hanoi|}
		\ar[rr]_-{|strategy|}
&&
	|fF(Bool >< Nat0)|
		\ar[u]_{|fF hanoi|}
}
\end{eqnarray*}
Since |fF X = fB(Y,X)| for some |fB|, we get
\begin{eqnarray*}
	|fF X = fB(Bool >< Nat0,X)|
\end{eqnarray*}
for |fB(Y,X) = 1 + Y >< (expn X 2)|. Finally, from the table in (\ref{eq:991129a}) we conclude that the
intermediate (virtual) structure of the |hanoi| hylomorphism is |BTree (Bool >< Nat0)|:

\begin{eqnarray*}
\xymatrix{
	|Seq ((Bool><Nat0))|
&&
	|fF(Seq((Bool >< Nat0))|
		 \ar[ll]_-{|inord|}
\\
	|BTree(Bool><Nat0)|
		\ar[u]^{|cata inord|}
		\ar@@/^1pc/[rr]^-{|out|}
&\iso&
	|fF(BTree(Bool><Nat0))|
		\ar[u]_{|fF(cata inord)|}
		\ar@@/^1pc/[ll]^-{|inT|}
\\
	|Bool><Nat0|
		\ar@@/^5.5pc/[uu]^-{|hanoi|}
		\ar[u]^{|ana strategy|}
		\ar[rr]_-{|strategy|}
&&
	|fF(Bool >< Nat0)|
		\ar[u]_{|fF(ana strategy)|}
		\ar@@/_5.5pc/[uu]_-{|fF hanoi|}
}
\end{eqnarray*}

\begin{exercise}
Show that (\ref{eq:181228d}) unfolds to (\ref{eq:181228c}) for |fF X = 1 + (Bool >< Nat0) >< (expn X 2)|.
\end{exercise}

\begin{exercise} \label{ex:181228f}
From the |hanoi| function (\ref{eq:181228c}) one can derive the function
that gives the total number of disk movements of the puzzle:
\begin{code}
nm 0  = 0
nm(n+1) = 2*(nm n)+1
\end{code}
That is, it is the for-loop
\begin{eqnarray}
|nm = for odd 0 where odd n = 2*n+1|
\end{eqnarray}
Show that
\begin{quote}
 |nm n = expn 2 n -1|.
\end{quote}
\textbf{Hint}: define |k n = expn 2 n -1| and solve the equation |k=for odd 0|
using the laws of catamorphisms and basic properties of arithmetics.
\end{exercise}

\begin{exercise}
From the \emph{pointwise} version on `quicksort`',
\begin{code}
qSort [] = []
qSort (h:t) = qSort [ a | a <- t , a < h ] ++ [h] ++ qSort [ a | a <- t , a >= h ]
\end{code}
infer |g| and |h| in the hylo-factorization |qSort = cata g . (ana h)|, knowing
that the intermediate structure is a |BTree| as in the case of |hanoi|.
\end{exercise}

\begin{exercise}\label{ex:181228e} Consider the well-known function which
computes the |n|-th Fibonacci number:
\begin{code}
fib 0 = 1
fib 1 = 1
fib(n+2) = fib(n+1) + fib n
\end{code}
Show that $fib$ is a hylomorphism of type $\fun{LTree}$ (\ref{eq:991129a}),
\[
fib =  \sshylo{count}{fibd}
\]
for
\begin{code}
count = either (const 1) add
add(x,y) = x+y
fibd 0 = i1 ()
fibd 1 = i1 ()
fibd(n+2) = i2(n+1,n)
\end{code}
\end{exercise}

\begin{exercise}
Consider the following definition of the factorial function,
\begin{code}
dfac 0 = 1
dfac n = hyloLTree (either id mul) dfacd (1,n)
\end{code}
where
\begin{code}
mul(x,y)=x*y
dfacd(n,m)
   | n==m      = i1 n
   | otherwise = i2 ((n,k),(k+1,m)) where k = div (n+m) 2
\end{code}
Derive from the above the corresponding (doubly recursive) pointwise definition
of |dfac|. (This is known as the \emph{double factorial} implementation of factorial.)
\end{exercise}

\begin{exercise}
The drawing below describes how the so-called \emph{merge sort} algorithm
works\footnote{Only the case of inputs with more than one element is depicted.}:
\begin{center}
\unitlength=0.1mm
\special{em:linewidth 0.1pt}
\linethickness{0.1pt}
\begin{picture}(800.00,360.00)
\put(0.00,0.00){\makebox(600,60)[cc]{|merge (mSort l1) (mSort l2)|}}
\put(0.00,0.00){\line(1,0){600.00}}
\put(0.00,0.00){\line(0,1){60.00}}
\put(0.00,60.00){\line(1,0){600.00}}
\put(600.00,0.00){\line(0,1){60.00}}
\put(0.00,90.00){\makebox(285,60)[cc]{|mSort l1|}}
\put(0.00,90.00){\line(1,0){285.00}}
\put(0.00,90.00){\line(0,1){60.00}}
\put(0.00,150.00){\line(1,0){285.00}}
\put(285.00,90.00){\line(0,1){60.00}}
\put(315.00,90.00){\makebox(285,60)[cc]{|mSort l2|}}
\put(315.00,90.00){\line(1,0){285.00}}
\put(315.00,90.00){\line(0,1){60.00}}
\put(315.00,150.00){\line(1,0){285.00}}
\put(600.00,90.00){\line(0,1){60.00}}
\put(0.00,180.00){\makebox(285,60)[cc]{$l_1$}}
\put(0.00,180.00){\line(1,0){285.00}}
\put(0.00,180.00){\line(0,1){60.00}}
\put(0.00,240.00){\line(1,0){285.00}}
\put(285.00,180.00){\line(0,1){60.00}}
\put(315.00,180.00){\makebox(285,60)[cc]{$l_2$}}
\put(315.00,180.00){\line(1,0){285.00}}
\put(315.00,180.00){\line(0,1){60.00}}
\put(315.00,240.00){\line(1,0){285.00}}
\put(600.00,180.00){\line(0,1){60.00}}
\put(0.00,270.00){\makebox(600,60)[cc]{$l$}}
\put(0.00,270.00){\line(1,0){600.00}}
\put(0.00,270.00){\line(0,1){60.00}}
\put(0.00,330.00){\line(1,0){600.00}}
\put(600.00,270.00){\line(0,1){60.00}}
\put(690.00,75.00){\makebox(100,0)[lc]{$C$ (``conquer")}}
\put(690.00,165.00){\makebox(100,0)[lc]{$B$}}
\put(690.00,255.00){\makebox(100,0)[lc]{$A$ (``divide")}}
\put(620,75){\oval(80,80)[r]}
\put(620,165){\oval(80,80)[r]}
\put(620,255){\oval(80,80)[r]}
\put(625.00,35.00){\vector(-1,0){15.00}}
\put(625.00,125.00){\vector(-1,0){15.00}}
\put(625.00,215.00){\vector(-1,0){15.00}}
\end{picture}
\end{center}
Define the function |merge| (which merges two ordered lists into a single ordered list) and then the hylomorphism in
\begin{code}
	mSort [] = []
	mSort x = hylo (either singl merge) g x
\end{code}
(find |g|) knowing that its virtual data-structure is of type |LTree|.
Note that the empty list is left out of the hylomorphism and handled separately.
Function |singl| is defined in (\ref{eq:220913a}). 
\end{exercise}

\begin{exercise}
%format Z2 = "\N_0^2"
\def\x#1#2{\noindent
\begin{minipage}[t]{0.6\textwidth} #1 \end{minipage}
\begin{minipage}[t]{0.4\textwidth} #2 \end{minipage}\\
}
Consider the histogram below corresponding to the following sequence of numbers that indicate the height of each bar:
\vskip-1ex
\x{
\begin{code}
h = [2,3,1,5,3,1]
\end{code}
We want to define a hylomorphism
\begin{code}
lhr = cataBTree conquer . anaBTree divide
\end{code}
that should calculate the rectangle with the largest area that can be included in such histograms.
(For the given histogram, we should have |lhr h = 6|.)
The diagram below depicts |lhr| as a |BTree|-hylomorphism:
}{\centering
       \raisebox{-5cm}{\includegraphics[width=0.8\textwidth]{lrh-h.png}}
}
	\begin{eqnarray*}
	\myxym{
		|Seq Nat0|
			\ar@@/^1pc/[rr]^{|divide|}
			\ar[d]_{|(ana  divide)|}
	&
	&
		|1 + Z2 >< expn (Seq Nat0) 2|
			\ar[d]^{|id + id >< expn (ana  divide) 2|}
	\\
		|BTree (Z2)|
			\ar@@/^1pc/[rr]^{|outT|}
			\ar[d]_{|(cata conquer)|}
	&
		\iso
	&
		|1 + Z2 >< expn ((BTree Z2)) 2|
			\ar@@/^1pc/[ll]^{|inT|}
			\ar[d]^{|id + id >< expn (cata conquer) 2|}
	\\
		|Nat0|
	&
	&
		|1 + Z2 >< expn Nat0 2|
			\ar@@/^1pc/[ll]^{|conquer|}
	\\
	}
	\end{eqnarray*}
Define |divide| and |conquer|.
\textbf{Hint}: the tree below is the intermediate data-structure |t = anaBTree
divides h| that is generated when the input is |h = [2,3,1,5,3,1]|. \footnote{
	This exercise is adapted from problem 84 (\href{https://leetcode.com/problems/largest-rectangle-in-histogram/}{Largest Rectangle in Histogram}) of the \href{https://leetcode.com/}{LeetCode} website.
}
\begin{center}
       \includegraphics[width=0.3\textwidth]{lrh.png}
\end{center}

\def\resolucao{
para o qual se dá também a definição de \emph{divide}:
\begin{code}
   divide [] = i1()
   divide x  = i2((m,length x), splt x) where
              m    = minimum x
              splt = (id >< drop 1) . break(==m)
\end{code}
Ter-se-á, por absorção-cata or -ana, o hilomorfismo pedido a partir de:
\begin{code}
lrh = cataBTree f . fmap (uncurry (*)) . anaBTree g where
      ---
      f = either (const 0) max3
      max3(a,(x,y)) = max a (max x y)
      ---
      g [] = i1()
      g x = i2((m,length x), splt x) where
           m = minimum x
           splt = ((id >< drop 1) . break(==m))
\end{code}
}
\end{exercise}

\section{Functors and type functors in \haskell}
The concept of a (unary) functor is provided in \haskell\ in the form of a
particular class exporting the \texttt{fmap} operator:
\begin{code}
class Functor f where
    fmap :: (a -> b) -> (f a -> f b)
\end{code}
So \texttt{fmap g} encodes $\ff g$ once we declare |fF| as an instance of class
\texttt{Functor}.
The most popular use of \texttt{fmap} has to do with \haskell\ lists, as allowed
by declaration
\begin{code}
instance Functor [] where
    fmap f []     = []
    fmap f (x:xs) = f x : fmap f xs
\end{code}
in language's \hugs{Standard Prelude}.

In order to encode the type functors we have seen so far we have to do the
same concerning their declaration. For instance, should we write
%format cataBTree = "cataBTree"
%format inBTree = "inBTree"
\begin{code}
instance Functor BTree
         where fmap f = cataBTree ( inBTree . (id -|- (f >< id)) )
\end{code}
concerning the binary-tree datatype of (\ref{eq:991129a})
and assuming appropriate declarations of \texttt{cataBTree} and
\texttt{inBTree},
then \texttt{fmap} is overloaded and used across such binary-trees.

Bi-functors can be added easily by writing
\begin{code}
class BiFunctor f where
      bmap :: (a -> b) -> (c -> d) -> (f a c -> f b d)
\end{code}

\begin{exercise}
Declare all datatypes in (\ref{eq:991129a}) in \haskell\ notation
and turn them into \haskell\ type functors, that is,
define \texttt{fmap} in each case.
\end{exercise}

\begin{exercise}
Declare datatype (\ref{eq:991129b}) in \haskell\ notation
and turn it into an instance of class \texttt{BiFunctor}.
\end{exercise}

\section{The mutual-recursion law} \label{sec:180804c}
The theory developed so far for building (and reasoning about) recursive
functions does not cope with mutual recursion. As a matter of fact, the pattern
of recursion of a given cata(ana,hylo)morphism involves only the recursive
function being defined, even though more than once, in general, as dictated
by the relevant base functor.

It turns out that rules for handling mutual recursion are surprisingly simple
to calculate. As motivation, recall section \ref{sec:990112a} where, by mixing
products with coproducts, we obtained a result --- the \emph{exchange rule}
(\ref{eq:701d}) --- which stemmed from putting together the two universal
properties of product and coproduct, (\ref{eq:splitUniv}) and (\ref{eq:eitherUniv}),
respectively.

The question we want to address in this section is of the same brand:
\emph{what can one tell about catamorphisms which output pairs of values}?
By (\ref{eq:splitUniv}), such catamorphisms are bound to be \emph{splits},
as are the corresponding \emph{genes}:\footnote{Using |fT| to denote $\muF$.}
\begin{eqnarray*}
       \xymatrix{
        |fT|  \ar[d]_-{\scata{\split h k}} &
        \ff{ |fT| } \ar[d]^{\ff{\scata{\split h k}}} \ar[l]_-{in}
\\
        A \times B & \ff{(A \times B)} \ar[l]^-{\split h k}
}
\end{eqnarray*}
As we did for the exchange rule, we put (\ref{eq:splitUniv}) and the universal
property of catamorphisms (\ref{eq:cataUniv}) against each other and calculate:
\begin{eqnarray*}
&&
	\split f g = \scata{\split h k}
%
\just\equiv{ cata-universal (\ref{eq:cataUniv}) }
%
	\split f g \comp |inT| = \split h k \comp \ff{\split f g}
%
\just\equiv{ $\times$-fusion (\ref{eq:702e}) twice }
%
\split { f \comp |inT|}{ g \comp |inT|} =
\split{ h \comp \ff{\split f g}}{k \comp \ff{\split f g}}
%
\just\equiv{ (\ref{eq:splitStEq}) }
%
	|lcbr (
		f . inT = h . fF (split f g)
	)(
		g . inT = k . fF (split f g)
	)|
%
\end{eqnarray*}
The rule thus obtained,
\begin{eqnarray}
\begin{lcbr}
%begin{array}{c}
f \comp |inT|= h \comp \ff{\split f g}
\\
        g \comp |inT|= k \comp \ff{\split f g}
%end{array}
\end{lcbr}
& \equiv &
\split f g = \scata{\split h k}
\label{eq:fokkinga}
\end{eqnarray}
is referred to as the \emph{mutual recursion law} (or as \aspas{Fokkinga's
law}) and is useful in combining two mutually recursive functions $f$ and $g$
\begin{eqnarray*}
\xymatrix{
         |fT|  \ar[d]_-{f}
&
        \ff{ |fT| } \ar[d]^{\ff{\split f g}} \ar[l]_-{in}
\\
        A
&
\ff{(A× B)} \ar[l]^-h
}
&&
       \xymatrix{
         |fT|  \ar[d]_-{g} &
        \ff{ |fT| } \ar[d]^{\ff{\split f g}} \ar[l]_-{in}
\\
        B  & \ff{(A× B)} \ar[l]^-k
}
\end{eqnarray*}
into a single catamorphism.

When applied from left to right, law (\ref{eq:fokkinga})
is surprisingly useful in optimizing recursive functions in a way which saves
redundant traversals of the input inductive type $ |fT| $.
Let us take the Fibonacci function as example:
\begin{eqnarray*}
fib \ 0 & = & 1
%label{eq:081212b}
\\
\nonumber
fib \ 1 & = & 1
%label{eq:081212c}
\\
\nonumber
fib(n+2) & = & fib(n+1) + fib\ n
%label{eq:081212a}
\end{eqnarray*}
It can be shown --- recall exercise \ref{ex:181228e} --- that $fib$ is a
hylomorphism of type $\fun{LTree}$ (\ref{eq:991129a}). This hylo-factorization
of $fib$ tells something about its internal algorithmic structure: the \emph{divide
step} $\sana{fibd}$ builds a tree whose number of leaves is a Fibonacci number;
the \emph{conquer step} $\scata{count}$ just counts such leaves.

There is, of course, much re-calculation in this hylomorphism. Can we improve its
performance? The clue is to regard the two instances of $fib$ in the recursive branch
as mutually recursive over the natural numbers.
This clue is suggested not only by $fib$ having two base cases (so, perhaps it hides
two functions) but also by the lookahead $n+2$ in the recursive clause.

We start by defining a function which reduces such a lookahead by 1,
\begin{eqnarray*}
f\ n \wider= fib(n+1)
\end{eqnarray*}
Clearly, $f(n+1) = fib(n+2) = f\ n + fib\ n$ and $f\ 0 = fib\ 1 = 1$.
Putting $f$ and $fib$ together,
% side by side,
\begin{eqnarray*}
\start\hskip -2em
|lcbr(
f 0 = 1
)(
	f(n+1) = f n + fib n
)|
\more\hskip -2em
|lcbr(
	fib 0 = 1
)(
	fib(n+1) = f n
)|
\end{eqnarray*}
we obtain two mutually recursive functions over the natural numbers ($\N_0$)
which transform into pointfree equalities
\begin{eqnarray*}
f \comp \alt{\kons 0}{suc}	&=& \alt{\kons 1}{add \comp \split f {fib}}
\\
fib \comp \alt{\kons 0}{suc}	&=& \alt{\kons 1}{f}
\end{eqnarray*}
over
\begin{equation}
        \arIso{|Nat0|}{|underbrace (1 + Nat0) (fF Nat0)|}{|in = either (const 0) suc|}{}
\label{eq:081213a}
\end{equation}
Reverse $+$-absorption (\ref{eq:+-absorption}) will further enable us to rewrite the above into
\begin{eqnarray*}
f \comp |inT| &=& \alt{\kons 1}{add} \comp \ff{\split f {fib}}
\\
        fib \comp |inT| &=& \alt{\kons 1}{\p1} \comp \ff{\split f {fib}}
\end{eqnarray*}
thus making functor $\ff f = id + f$ explicit and preparing for mutual recursion removal:
%
\begin{eqnarray*}
&&
\arrayin{
f \comp |inT| &=& \alt{\kons 1}{add} \comp \ff{\split f {fib}}
\\
        fib \comp |inT| &=& \alt{\kons 1}{\p1} \comp \ff{\split f {fib}}
}
%
\just\equiv{ (\ref{eq:fokkinga}) }
%
\arrayin{
\split f {fib} &=& \scata{\split{\alt{\kons 1}{add}}{\alt{\kons 1}{\p1}}}
}
%
\just\equiv{exchange law (\ref{eq:701d})}
%
\arrayin{
\split f {fib} &=& \scata{\alt{\split{\kons 1}{\kons 1}}{\split{add}{\p1}}}
}
%
\just\equiv{ going pointwise and denoting $\split f {fib}$ by $fib'$ }
%
\begin{lcbr}
fib' \ 0 = \pair{1,1}
\\
fib' \ (n+1) = \pair{x+y,x} ~ where ~ \pair{x,y} = fib' \ n
\end{lcbr}
%
\end{eqnarray*}
Since $fib = \p2 \comp fib'$ we easily recover $fib$ from $fib'$ and obtain the intended
linear version of Fibonacci, below encoded in Haskell:
\begin{code}
fib n = m where
        (_,m) = fib' n
        fib' 0 = (1,1)
        fib' (n+1) = (x+y,x) where (x,y) = fib' n
\end{code}
This version of $fib$ is actually the semantics of the ``for-loop'' --- recall
(\ref{eq:110401b}) --- one would write in an imperative language which would
initialize two variables $x,y := 1,1$, loop over the in-place update $x,y :=
x+y,x$ and yield the result in $y$. In the C programming language, one would
write
\begin{quote}\small
\begin{verbatim}
int fib(int n)
{
   int x=1; int y=1; int i;
   for (i=1; i<=n; i++) {int a=x; x=x+y; y=a;}
   return y;
};
\end{verbatim}
\end{quote}
where the extra variable $a$ is required for ensuring that \emph{simultaneous} assignment
$x,y := x+y,x$ takes place in a sequential way.

Recall from section \ref{sec:120409a}
that all $\N_0$ catamorphisms are
of shape $\scata{\alt{\kons k}g}$ and such that $\scata{\alt{\kons k}g} n = g^n k$, where
$g^n$ is the $n$-th iteration of $g$, that is,
$g^0 = id$ and $g^{n+1}=g \comp g^n$. That is, $g$ is the body of a ``for-loop''
which repeats itself $n$-times, starting with initial value $k$.
%
Recall also that the for-loop combinator is nothing but the ``fold combinator''
(\ref{eq:110305a}) associated to the natural number data type.

In a sense, the mutual recursion law gives us a hint on how global variables ``are born''
in computer programs ---  out of the maths definitions themselves and not by sheer invention of programmers.

Quite often more than two such variables are required in linearizing
hylomorphisms by mutual recursion. Let us see an example.
The question is: \emph{how many squares can one draw on a $n×n$-tiled wall?}
The answer is given by function
\begin{eqnarray*}
	|ns n| &\deff& \sum_{i=1,n}i^2
\end{eqnarray*}
that is,
\begin{eqnarray*}
	|ns 0| &=& 0
\\
	|ns (n+1)| &=& (n+1)^2 + ns\ n
\end{eqnarray*}
in Haskell. However, this hylomorphism is inefficient because each iteration involves
another hylomorphism % , $sq$,
computing square numbers.

One way of improving $ns$ is to introduce function
$bnm\ n \deff (n+1)^2$ and express this over (\ref{eq:081213a}),
to obtain its primitive recursion definition:
\begin{eqnarray*}
	bnm\ 0 &=& 1
\\
	bnm (n+1) &=& 2n+3 + bnm\ n
\end{eqnarray*}
The idea is to blend $ns$ with $bnm$ using the mutual recursion law.
However, the same problem arises in $bnm$ itself, which now depends on term $2n+3$.
We invent $lin\ n \deff 2n+3$ and repeat the process, now obtaining:
\begin{eqnarray*}
lin\ 0 &=& 3
\\
lin (n+1) &=& 2 + lin\ n
\end{eqnarray*}
By redefining
\begin{eqnarray*}
bnm'\ 0 &=& 1
\\
bnm' (n+1) &=& lin\ n + bnm'\ n
\\
\\
ns'\ 0 &=& 0
\\
ns' (n+1) &=& bnm'\ n + ns'\ n
\end{eqnarray*}
we obtain three functions --- $ns'$, $bnm'$ and $lin$ --- mutually recursive
over the polynomial base $\ff g = id + g$ of the natural numbers.

Exercise \ref{ex:081213b} below shows how to extend (\ref{eq:fokkinga}) to
three mutually recursive functions (\ref{eq:080624b}). (From this it is easy
to extend it further to the $n$-ary case.) It is routine work to show that,
by application of (\ref{eq:080624b}) to the above three functions,
one obtains the linear version of $ns$ that follows,
\begin{code}
ns'' n = a where
     (a,_,_) = aux n
     aux 0 = (0,1,3)
     aux(n+1) = let (a,b,c) = aux n in (a+b,b+c,2+c)
\end{code}
where |aux| is a for-loop.

In retrospect, note that (in general) not every system of $n$ mutually recursive functions
\begin{eqnarray*}
\begin{lcbr}
f_1 = \phi_1(f_1, \ldots , f_n)
\\
\vdots
\\
f_n = \phi_n(f_1, \ldots , f_n)
\end{lcbr}
\end{eqnarray*}
involving $n$ functions and $n$ functional combinators $\phi_1, \ldots, \phi_n$
can be handled by a suitably extended version of (\ref{eq:fokkinga}).
This only happens if all $f_i$ have the same ``shape'', that is, if they
share the same base functor |fF|.

\begin{exercise}\label{ex:q:cp1213q01b}
Use the mutual recursion law (\ref{eq:fokkinga}) to show that each of the two functions
\begin{eqnarray*}
\begin{array}{lll}
\begin{lcbr}
odd\ 0 = False
\\
odd (n+1) = even\ n
\end{lcbr}
&&
\begin{lcbr}
even\ 0 = True
\\
even(n+1) = odd\ n
\end{lcbr}
\end{array}
\end{eqnarray*}
checking natural number parity can be expressed as a projection of
\begin{eqnarray*}
|for swap (False, True)|
\end{eqnarray*}
Encode this for-loop in C syntax.
\end{exercise}

\begin{exercise} \label{ex:q:cp1213q05a}
The following Haskell function computes the list of the first $n$ natural numbers in reverse order:
\begin{code}
insg 0 = []
insg(n+1) = (n+1):insg n
\end{code}
\begin{enumerate}
\item
Show that $insg$ can also be defined as follows:
\begin{code}
insg 0 = []
insg (n+1) = (fsuc n):insg n

fsuc 0 = 1
fsuc (n+1) = fsuc n + 1
\end{code}
\item	Based on the mutual recursion law derive from such a definition the following
version of $insg$ encoded as a for-loop:
\begin{quote}
|insg = p2.insgfor|
\\
|insgfor = for (split ((1+).p1) cons) (const ((1,[])))|
\end{quote}
where |cons(n,m)=n:m|.
\end{enumerate}
\end{exercise}

\begin{exercise}
The number of steps that solve the Hanoi Towers ``puzzle", for |n| discs, is:
\begin{eqnarray*}
	|k n = expn 2 n -1|
\end{eqnarray*}
--- recall exercise \ref{ex:181228f}.
Using the mutual recursion law, show
that another way of computing |k| is
\begin{code}
k = p1.g where
   g = for loop (0,1)
   loop(k,e)=(k+e,2*e)
\end{code}
knowing that
\begin{eqnarray*}
\start |k 0 = 0|
\more |k(n+1) = expn 2 n + k n|
\end{eqnarray*}
hold (as can be easily shown) and that  |expn 2 n = for (2*) 1 n|.
\end{exercise}

\begin{exercise}
The chart below represents a function |h| defined by mutual recursion in the following way,

\noindent\hskip -5pt
\begin{tabular}{cc}
\begin{minipage}{0.48\textwidth}
\begin{eqnarray*}
|
lcbr(
h = inT . fF g . out
)(
g = either (const 1) id . fF h . out
)
|
\end{eqnarray*}
where
\begin{quote}
	|fF f = id + f|
\\
	|inT = either (const 0) succ|, where |succ x = x +1|
\\
	|out = conv inT|
\end{quote}
Show that the same function can be defined in terms of a loop-\textsf{for}, as follows:
\end{minipage}
&
\begin{minipage}{0.5\textwidth}
\centering
	\includegraphics[width=0.95\textwidth]{cp2223p1.png}
\end{minipage}
\end{tabular}
\begin{code}
h = fst . (for loop (0,1)) where
   loop(a,b)=(1+b,a)
\end{code}
\end{exercise}

\begin{exercise} \label{ex:081213b}
Show that law (\ref{eq:fokkinga}) generalizes to more than two mutually recursive functions,
three in this case:
\begin{eqnarray}
\begin{lcbr}
f \comp in = h \comp \ff{\split f {\split g j}}
\\
        g \comp in = k \comp \ff{\split f {\split g j}}
\\
        j \comp in = l \comp \ff{\split f {\split g j}}
\end{lcbr}
& \equiv &
\split f{\split g j} = \scata{\split h {\split k l}}
\label{eq:080624b}
\end{eqnarray}
\end{exercise}

\begin{exercise}
Prove the following law
\begin{eqnarray}
\begin{lcbr}
	|f = inT . fF(either f g) . h|
\\
	|g = inT . fF(either f g) . k|
\end{lcbr}
& \equiv &
	|either f g = ana(either h k)|
\label{eq:190720a}
\end{eqnarray}
which dualizes the mutual recursion law (\ref{eq:fokkinga}), cf.
\begin{eqnarray*}
\xymatrix{
        |fT|
&
        \ff{|fT|}
		\ar[l]_-{|inT|}
\\
        |A+B|
		\ar[u]^-{|either f g = ana(either h k)|}
		\ar[r]_-{|either h k|}
&
	|fF(A+B)|
		\ar[u]_{|fF(either f g))|}
} ~~~~~
\xymatrix{
        |fT|
&
        \ff{|fT|}
		\ar[l]_-{|inT|}
		\ar[r]^-{|inT|}
&
	|fT|
\\
        |A|
		\ar[u]^-{|f|}
		\ar[r]_-{|h|}
&
	|fF(A+B)|
		\ar[u]_{|fF(either f g)|}
&
	|B|
		\ar[l]^-{|k|}
		\ar[u]_-{|g|}
}
\end{eqnarray*}
\end{exercise}

\begin{exercise} %label{ex:cp1819q15}
The mutual recursion law generalizes to hylomorphisms sharing the same anamorfism coalgebra:
\begin{eqnarray}
	|split f g = cata (split h k) . (ana q)|
&\equiv&
	|lcbr(
		f = h . fF (split f g) . q
	)(
		g = k . fF (split f g) . q
	)|
	\label{eq:190617a}
\end{eqnarray}
Prove (\ref{eq:190617a}).
\def\resolucao{
Apresente as justificações em falta no seguinte cálculo da lei (\ref{eq:190617a}):
\begin{eqnarray*}
\start
	|split f g = cata (split h k) . (ana q)|
%
\cjust\equiv{ seja |split alpha beta = cata (split h k)|; fusão-|><| }
%
	|split f g = split (alpha.(ana q)) (beta. (ana q))|
%
\cjust\equiv{ Eq-|><| }
%
	|lcbr( f = alpha . ana q)( g = beta . ana q )|
%
\cjust\equiv{ recursividade mútua entre |alpha| e |beta| }
%
	|lcbr( f = h . fF(split alpha beta) . out . ana q)( g = k . fF(split alpha beta) . out . ana q )|
%
\cjust\equiv{}
%
	|lcbr( f = h . fF(split alpha beta) . fF (ana q) . q)( g = k . fF(split alpha beta) . fF (ana q) . q )|
%
\cjust\equiv{}
%
	|lcbr( f = h . fF(split (alpha . ana q)(beta . ana q)) . q)( g = k . fF(split (alpha . ana q)(beta . ana q)) . q)|
%
\cjust\equiv{}
%
	|lcbr( f = h . fF (split f g) . q)( g = k . fF (split f g) . q)|
\qed
\end{eqnarray*}
}
\end{exercise}

\begin{exercise}\label{ex:exp}
%The following exercise illustrates (\ref{eq:080624b}).
The exponential function $e^x : \R \rightarrow \R$ (where ``$e$'' denotes Euler's number)
can be defined in several ways, one being the calculation of Taylor series:
\begin{eqnarray}
e^x
& = &
\sum_{n=0}^{\infty} \frac {x^n} {n!}
\end{eqnarray}
The following function, in Haskell,
\begin{code}
exp :: Double -> Integer -> Double
exp x 0     = 1
exp x (n+1) = x^(n+1) / fac (n+1)  + (exp x n)
\end{code}
computes an approximation of $e^x$, where the second parameter tells how
many terms to compute. For instance, while |exp 1 1 = 2.0|,
|exp 1 10| yields |2.7182818011463845|.

Function |exp x n| performs badly for $n$ larger and larger:
while |exp 1 100| runs instantaneously, |exp 1 1000| takes around 9 seconds,
|exp 1 2000| takes circa 33 seconds, and so on.

Decompose $exp$ into mutually recursive functions so as to apply (\ref{eq:080624b})
and obtain the following linear version,
\begin{code}
exp x n = let (e,b,c) = aux x n
          in e where
               aux x 0 = (1,2,x)
               aux x (n+1) =
                   let (e,s,h) = aux x n
                   in  (e+h,s+1,(x/s)*h)
\end{code}
which translates directly to the encoding in C:
\begin{quote}\em\small
\begin{verbatim}
float exp(float x, int n)
{
  float h=x; float e=1; int s=2; int i;
  for (i=0;i<n+1;i++) {e=e+h;h=(x/s)*h;s++;}
  return e;
};
\end{verbatim}
\end{quote}
\end{exercise}

\begin{exercise}
Consider the formula that gives the |n|-th {Catalan number}:
\begin{eqnarray}
  C_n = \frac{(2n)!}{(n+1)! (n!) }
  \label{eq:cat}
\end{eqnarray}
The aim of this exercise is to find an efficient implementation of $C_n$ that, derived by mutual recursion,
does not calculate any factorials.
Let this be prepared by the following calculations:
\begin{eqnarray*}
	C_{n+1} = \frac{(2n+2)!}{(n+2)! (n+1)! } = \frac{(2n+2)(2n+1)}{(n+2)(n+1)} C_n = \frac{4n^2+6n+2}{(n+2)(n+1)} C_n
\end{eqnarray*}
Then:
\begin{eqnarray*}
\begin{array}{ccccc||ccc}
	4n^2 & + & 6n & + & 2 & n & + & 1
\\\cline{6-8}
	0 &+& 2n &+& 2 & 4n &+& 2
\\
	&&0&&0
\end{array}
\end{eqnarray*}
Therefore:
\begin{eqnarray*}
\start
	C_{n+1} = \frac{4n+2}{n+2} C_n
\end{eqnarray*}
Now define:
\begin{eqnarray*}
\start	|f n| = 4n+2
\more	|g n| = n+2
\end{eqnarray*}
Clearly:
\begin{eqnarray*}
\start	|f 0| = 2
\more	|f(n+1)| = |f n + 4|
\more	|g 0| = 2
\more	|g (n+1)| = |g n + 1|
\end{eqnarray*}
Complete the exercise to obtain |loop| and |init| and the code missing from:
\begin{spec}
catalan = cdots . for loop init where cdots
\end{spec}
%\begin{eqnarray*}
%\start	|c 0 = 1|
%\more	|c(n+1)| = \frac{|(f n)|\times|(c n)|}{|g n|}
%\end{eqnarray*}
\end{exercise}

\CUT{%old
Below we address the special case in which all functions are defined over
the same inductive datatype, as is the case of $f$ and $g$ above. With no
loss of generality, we stick to pairs of functions, the extension to $n>2$ functions being
straightforward.

This law states that, in general, given inductive type $\muF$ and two functions
\begin{eqnarray*}
       \xymatrix{
        \muF \ar[d]_-{f} &
        \ff{\muF} \ar[d]^{\ff{\split f g}} \ar[l]_-{in}
\\
        A & \ff{(A \times B)} \ar[l]^-{h}
}
&&
       \xymatrix{
        \muF \ar[d]_-{g} &
        \ff{\muF} \ar[d]^{\ff{\split f g}} \ar[l]_-{in}
\\
        B & \ff{(A \times B)} \ar[l]^-{k}
}
\end{eqnarray*}
then $\split f g$ is catamorphism
\begin{eqnarray*}
       \xymatrix{
       \muF \ar[d]_-{\split f g} &
        \ff{\muF} \ar[d]^{\ff{\split f g}} \ar[l]_-{in}
\\
        A \times B & \ff{(A \times B)} \ar[l]^-{\split h k}
}
\end{eqnarray*}
}

% \begin{exercise}
% From the following basic properties of addition and multiplication,
% \begin{eqnarray}
%	a * 0 &=& 0
% \\
%	a * 1 &=& a
% \\
%	a * (b + c) &=& a * b + a * c
% \end{eqnarray}
% show that $a*n = for \ (a+) \ 0$.
% \end{exercise}
%
% \begin{exercise}
% Calculate the for-loop implementation of natural number exponentials from the basic properties:
% \begin{eqnarray}
%	a ^ 0 &= 1
% \\
%	a ^ 1 &=& a
% \\
%	a ^ {b+c} &=& a ^ b \times a ^ c
% \end{eqnarray}
% \end{exercise}

\begin{exercise}
Show that, for all $n\in \N_0$, $n=suc^n 0$.
\textbf{Hint:} use cata-reflection (\ref{eq:cata-reflex}).
\end{exercise}

\paragraph{Mutual recursion over lists.}
As example of application of (\ref{eq:fokkinga}) for $\muF$ other than $\N_0$,
consider the following recursive predicate which checks whether a (non-empty) list is ordered,
\begin{eqnarray*}
\begin{array}{rcl}
&& ord : \rarrow {A^+} {} {|Bool|}
\\
&& |ord [a] = True|
\\
&& |ord(cons(a,l)) = a >= (listMax l) && (ord l)|
\end{array}
\end{eqnarray*}
where $\geq$ is assumed to be a total order on datatype $A$ and
\begin{eqnarray}
listMax = \scata{\alt{id}{max}}
\end{eqnarray}
computes the greatest element of a given list of $A$s:
\begin{eqnarray*}
       \xymatrix{
        A^+ \ar[d]_-{listMax} &&
        A + A \times A^+ \ar[d]^{id + id \times {listMax}}
                         \ar[ll]_-{\alt{\singl{}}{cons}}
\\
        A && A + A \times A \ar[ll]^-{\alt{id}{max}}
}
\end{eqnarray*}
(In the diagram,
\(
\singl{a}=\enseq a
\).)

Predicate $ord$ is not a catamorphism because of the presence of $listMax \ l$ in the recursive branch.
However, the following diagram depicting $ord$
\begin{eqnarray*}
       \xymatrix{
        A^+ \ar[d]_-{ord} &&
        A + A \times A^+ \ar[d]^{id + id \times \split{listMax}{ord}}
		 \ar[ll]_-{\alt{\singl{}}{cons}}
\\
        |Bool| && A + A \times (A \times |Bool|) \ar[ll]^-{\alt{\kons\true}{\alpha}}
}
\end{eqnarray*}
--- where
\[
\alpha\tuple{a,\tuple{m,b}} \deff a \geq m \land b
\]
--- suggests the possibility of using the mutual recursion law.
One only has to find a way of letting $listMax$ depend also on $ord$, which
is not difficult:
for any \( \rarrow {A^+} g B \), one has
\begin{eqnarray*}
       \xymatrix{
        A^+ \ar[d]_-{listMax} &&&
        A + A \times A^+ \ar[d]^{id + id \times \split{listMax}{g}}
                         \ar[lll]_-{\alt{\singl{}}{cons}}
\\
        A &&& A + A \times (A \times B) \ar[lll]^-{\alt{id}{max \comp (id \times \p1)}}
}
\end{eqnarray*}
where the extra presence of $g$ is cancelled by projection $\p1$.

For |B = Bool| and \( g = ord \) we are in position to apply Fokkinga's
law and obtain:
\begin{eqnarray*}
\split{listMax}{ord} & = &
\scata{\split{\alt{id}{max \comp (id \times \p1)}}
      {\alt{\kons\true}{\alpha}}}
%
\just={\emph{exchange law} (\ref{eq:701d})}
%
\scata{\alt{\split{id}{\kons\true}}
	   {\split{max \comp (id \times \p1)}{\alpha}}}
\end{eqnarray*}
Of course, \( ord = \p2 \comp \split{listMax}{ord} \).
By denoting the above synthesized catamorphism by \( aux \),
we end up with the following version of \( ord \):
\begin{code}
ord l = let (a,b) = aux l in b
\end{code}
where
\begin{eqnarray*}
\start
	aux : \rarrow {A^+} {} {A \times |Bool|}
\more |aux [a] = (a,True)|
\more |aux(cons(a,l)) =
         (max(a,m),a > m && b) where (m,b) = aux l
      |
\end{eqnarray*}

\begin{exercise}
What do the following Haskell functions do?
\begin{code}
f1 [] = []
f1(h:t) = h:(f2 t)

f2 [] = []
f2(h:t) = f1 t
\end{code}
Write $f=\split{f_1}{f_2}$ as a list catamorphism and encode $f$ back into Haskell syntax.
\end{exercise}

\section{\aspas{Banana-split}: a corollary of the mutual-recursion law} \label{sec:210108c}

Let |f = cata i| and |g = cata j| be given. Clearly:
\begin{eqnarray*}
\start
	f = \scata i
%
\just\equiv{by cata-universal (\ref{eq:cataUniv}) }
%
	|f . inT| = i \comp \ff f
%
\just\equiv{by $\times$-cancellation (\ref{eq:700l})}
%
	|f . inT| = i \comp \ff{(\p1 \comp \split f g)}
%
\just\equiv{|fF| is a functor}
%
	|f . inT| = i \comp \ff{\p1} \comp \ff{\split f g}
%
\end{eqnarray*}

\noindent
Similarly,
\begin{eqnarray*}
\start
	g = \scata j
%
\just\equiv{ as above for |g = cata j|}
%
	|g . inT = j . fF p2 . fF (split f g)|
%
\end{eqnarray*}
Then:
\begin{eqnarray*}
\start
|lcbr
	(f . inT = i . fF p1 . fF (split f g))
	(g . inT = j . fF p2 . fF (split f g))
|
%
\just\equiv{ mutual recursion law (\ref{eq:fokkinga})}
%
	|split f g = cata (split (i . fF p1)(j . fF p2))|
%
\just\equiv{ |f = cata i| and |g = cata j| }
%
	|split (cata i)(cata j) = cata (split (i . fF p1)(j . fF p2))|
\end{eqnarray*}
Altogether, we get
\begin{eqnarray*}
\split{\scata i}{\scata j} = \scata{\split{i \comp \ff{\p1}}{j \comp \ff{\p2}}}
\end{eqnarray*}
that is
\begin{eqnarray}
\split{\scata i}{\scata j} =
\scata{(i \times j) \comp \split{\ff{\p1}}{\ff{\p2}}}
        \label{eq:bananaSplit}
\end{eqnarray}
by (reverse) $\times$-absorption (\ref{eq:970511c}).

This law provides us with a very useful tool for \aspas{parallel loop}
inter-combination: \aspas{loops} $\scata i$ and $\scata j$ are fused together
into a single \aspas{loop}
$\scata{(i \times j) \comp \split{\ff{\p1}}{\ff{\p2}}}$.
The need for this kind of calculation arises very often.
Consider, for instance, the function which computes the average of a non-empty
list of natural numbers,
\begin{eqnarray}
average &\deff& (/) \comp \split{sum}{length}
\label{eq:050926a}
\end{eqnarray}
where $sum$ and $length$ are the expected $\N^+$ catamorphisms:
\begin{eqnarray*}
\start	sum = \scata{\alt{id}{+}}
\more	length = \scata{\alt{\kons 1}{|succ| \comp \pi_2}}
\end{eqnarray*}
As defined by (\ref{eq:050926a}), function $average$ performs two independent traversals of the argument list
before division $(/)$ takes place. Banana-split will fuse two such traversals into a single one
(see function $aux$ below), thus leading to a function which will run ''twice as fast'':
% (b) can be converted into a \emph{while loop} by introduction of accummulation parameters (such as seen above).
%
\begin{eqnarray}
\begin{minipage}{0.8\textwidth}
\begin{code}
average l = x/y where
   (x,y) = aux l
   aux [] = (0,0)
   aux(a:l) = (a + x, y + 1) where (x,y) = aux l
\end{code}
\end{minipage}
\label{eq:050926b}
\end{eqnarray}

\begin{exercise}
Calculate (\ref{eq:050926b}) from (\ref{eq:050926a}).
Which of these two versions of the same function is easier to understand?
\end{exercise}

\begin{exercise}
The following diagram depicts ``banana-split'' (\ref{eq:bananaSplit}):
\begin{eqnarray*}
\xymatrix{
&
&
&
&
 \ensuremath{\ff \fun T }
	 \ar[ddl]_{\ensuremath{\ff \mathopen{(\!||}\Varid{i}\mathclose{||\!)}}}
	 \ar[ddddr]^{\ensuremath{\ff \mathopen{(\!||}\Varid{j}\mathclose{||\!)}}}
	 \ar@@{.>}[ddd]_-{\ensuremath{f_6 }}
	 \ar[llld]_{\ensuremath{\mathsf{in}}}
\\
&
 \ensuremath{\fun T }
	 \ar[ddl]_{\ensuremath{\mathopen{(\!||}\Varid{i}\mathclose{||\!)}}}
	 \ar[ddddr]^(.25){\ensuremath{\mathopen{(\!||}\Varid{j}\mathclose{||\!)}}}
	 \ar@@{.>}[ddd]_(.35){\ensuremath{f_7 }}
&
&
&
&
 \\
&
&
&
 \ensuremath{\ff \Conid{A}}
	 \ar[llld]_(.35){\ensuremath{\Varid{i}}}
&
&
 \\
A
&
&
&
&
 \ensuremath{\ff (\Conid{A} \times \Conid{B})}
	 \ar@@{.>}[llld]_{\ensuremath{f_4 }}
	 \ar[ul]_{\ensuremath{f_1 }}
	 \ar[dr]_{\ensuremath{f_2 }}
	 \ar@@{.>}[llll]_{\ensuremath{f_5 }}
	 \ar@@{.>}[lldd]_{\ensuremath{f_3 }}
&
 \\
&
 \ensuremath{\Conid{A} \times \Conid{B}}
	 \ar[ul]^{\ensuremath{\p1}}
	 \ar[dr]_{\ensuremath{\p2}}
&
&
&
&
 \ensuremath{\ff \Conid{B}}
	 \ar[llld]^{\ensuremath{\Varid{j}}}
\\
&
&
 B
}
\end{eqnarray*}
Identify all functions $f_1$ to $f_7$.
\end{exercise}

\begin{exercise} \label{ex:240531g}
Show that the standard Haskell function
\begin{quote}
|unzip xs = (map p1 xs, map p2 xs)|
\end{quote}
can be defined as a catamorphism (\emph{fold}) thanks to (\ref{eq:bananaSplit}).
Generalize this calculation to the \emph{generic} unzip function over an
inductive (polynomial) type $\fun T$:
\begin{eqnarray*}
unzip_{\fun T} = \split{\fun T {\p1}}{\fun T{\p2}}
\end{eqnarray*}
Suggestion: recall (\ref{eq:991129c}).
\end{exercise}

\section{Inductive datatype isomorphism}\label{sec:conversion}
	Transforming inductive datatypes into other inductive datatypes is an important topic in programming, enabling the \emph{migration} of \aspas{data in one format} to data in \aspas{another format}. Ensuring properties of data migration operations is an important issue in data processing.

Think of a migration |f| over a dataset which is such that there are two data items |x| and |y| such that |f x = f y|. Clearly, there is information loss in this migration since the source |x| or |y| cannot be recovered from the target |f x|. Technically, one would say that, in this case, |f| is not \emph{injective}.

In the general setting, the source and target datatypes are structured by different base functors. Suppose one
is given two inductive datatypes
\begin{eqnarray*}
\myxym{
        \fun T		&	% \ar@@/^1pc/[rr]^-{out} &
        \iso &
        \ff{\fun T}	\ar@@/^1pc/[ll]^-{|in_T|}
}
	& \wider{\mbox{and}} &
\myxym{
        \fun U		&
        \iso &
        \gg{\fun U}	\ar@@/^1pc/[ll]^-{|in_U|}
}
\end{eqnarray*}
defined by functors |fF| and $\g$, respectively.
Moreover, suppose that recursion pattern $\g$ can be converted to
recursion pattern |fF| via some polymorphic map
\(
\larrow{\gg X}{|alpha|_X}{\ff X}
\).
It can be easily checked that
\begin{eqnarray}
\cata{|in_T| \comp |alpha|_{\fun T}}G
        \label{eq:991129e}
\end{eqnarray}
is a map that converts $\fun U$-data into $\fun T$-data by structural
application of transformation $|alpha|$:\footnote{Note that, for \( \ff X = \bb A X \), \( \gg X = \bb B X \) and \( |alpha| = \bb f {id} \), (\ref{eq:991129e}) instantiates to (\ref{eq:991129c}). We could exploit full parametricity here by working with the base bifunctors but that would add little to what we intend to show at the cost of some notation convolution. Such an extension will be dealt with in section \ref{sec:200922b}.}
\[
        \xymatrix{
        \fun U
	\ar[d]_-{\scata{|in_T| \comp |alpha|_{\fun T}}}
&
&
\gg{\fun U}
	\ar[ll]_-{|in_U|}
	\ar[d]^-{\fun G\scata{|in_T| \comp |alpha|_{\fun T}}}
\\
        \fun T
&	\ff{\fun T}
	\ar[l]^-{|in_T|}
&	\gg{\fun T}
	\ar[l]^-{|alpha|_{\fun T}}
}
\]

It is useful to know that some properties of $|alpha|$ extend inductively to catamorphism
(\ref{eq:991129e}). For instance, should $|alpha|$ be an isomorphism then
\(
\cata{|in_T| \comp |alpha|_{\fun T}}G
\)
will be an isomorphism as well, that is, |fT| and |fU| will be isomorphic.
Before checking this fact, let us see an example. By inspection of table
(\ref{eq:991129a}), it is easy to check that the base functors of |RList|
and |LList| --- resp.\ $ 1 + X \times Y $ and $ 1 + Y \times X$ --- are isomorphic via |alpha = id + swap|.
This will be enough to establish inductive datatypes |RList| and |LList| as isomorphic.

It is well known that wherever |beta . alpha = id| then |beta| will be a surjective function and |alpha| will be injective.\footnote{See section \ref{sec:200922c} later on for the technical details.} As simple examples of application of this fact recall |><|-cancellation (\ref{eq:700l}) and |+|-cancellation (\ref{eq:701c}). By instantiating one of the functions involved to the identity, in each case, one immediately finds left-inverses for the injections |i1, i2| (respectively: right-inverses for the projections |p1,p2|) meaning that they are injective (respectively: surjective) --- thus the choice of terminology.\footnote{This will be addressed in exercise \ref{ex:240808a} later on.}

We show next that such properties (injectivity or surjectivity) of |alpha| extend to the catamorphism that performs the corresponding inductive type conversion. Two thumb rules will be derived,
\begin{eqnarray}
\start \mbox{- cata of injective |alpha| is injective}
\more \mbox{- cata of surjective |alpha| is surjective}
\end{eqnarray}
and, as a consequence:
\begin{eqnarray}
\start \mbox{- cata of bijective |alpha| is bijective}
\end{eqnarray}

Suppose that |alpha| in
\begin{eqnarray*}
\xymatrix{
        \fun U
		\ar[d]_{\cata{|in_T|\comp |alpha|}G}
&
        \ff{\fun U}
		\ar[d]^{\ff{\cata{|in_T|\comp |alpha|}G}}
&
        \gg{\fun U}
		\ar[l]_{|alpha|}
			\ar@@/_1pc/[ll]_{|in_U|}
		\ar[d]^{\gg{\cata{|in_T|\comp |alpha|}G}}
\\
        \fun T
&
        \ff{\fun T} \ar[l]^{|in_T|}
&
        \gg{\fun T} \ar[l]^{|alpha|}
}
\end{eqnarray*}
is such that |beta . alpha = id|, that is, |alpha| is injective and |beta| is surjective.
Then, by (\ref{eq:231109b}), one easily gets:
\begin{eqnarray}
	|cata(in_U . beta) . (cata(in_T . alpha)) = id|
\end{eqnarray}
Therefore, |cata(in_T . alpha)| is injective provided |alpha| is so; and |cata(in_U . beta)| is surjective provided |beta| is so.\footnote{This topic will be revisited, in a wider setting, later in section \ref{sec:200922b}.}

\begin{exercise}
Show that the function |mirror| of exercise \ref{ex:cp1314q10} is its own inverse and therefore an isomorphism.
\end{exercise}

\section{Bibliography notes}

It is often the case that the expressive power of a particular
programming language or paradigm is counter-productive in the
sense that too much freedom is given to programmers. Sooner
or later, these will end up writing unintelligible (authorship
dependent) code which will become a burden to whom has to maintain
it. Such has been the case of imperative programming in the past (inc.\
assembly code), where the unrestricted use of \texttt{goto} instructions
eventually gave place to % the well-behaved ones implicit in
\texttt{if-then-else},
\texttt{while} and \texttt{repeat} \emph{structured} programming
constructs.

A similar trend has been observed over the last decades
at a higher programming level: arbitrary recursion and/or (side)
effects have been considered harmful in functional programming.
Instead, programmers have been invited to structure their code around
generic program devices such as e.g.\ \emph{fold/unfold} combinators, which
bring discipline to recursion.
One witnesses progress in the
sense that the loss of freedom is balanced by the increase of formal
semantics and the availability of program calculi.

Such disciplined programming combinators have been extended from list-processing
to other inductive structures thanks to one of the
most significant advances in programming theory over the last decade: the
so-called \emph{functorial} approach to datatypes
which originated mainly from \cite{MA86},
was popularized by \cite{Ma90} and reached textbook format in \cite{BM97}.
A comfortable basis for exploiting \emph{polymorphism} \cite{Wa89},
the \aspas{datatypes as functors} moto has proved beneficial at a higher level
of abstraction,
giving birth to \emph{polytypism} \cite{JJ96}.

The literature on \emph{anas}, \emph{catas} and \emph{hylos} is vast
(see e.g.\
\cite{EH95},
\cite{JJ98},
\cite{GHA01}) and it is part of
a broader discipline which has become known as the
\emph{mathematics of program construction} \cite{Ba04a}.
This chapter provides an introduction to such as discipline. Only the calculus
of catamorphisms is presented. The corresponding theory of anamorphisms and
hylomorphisms demands further mathematical machinery (functions generalized
to binary relations) and won't be dealt with before chapter \ref{ch:990126i}.
%%nd \ref{sec:050419b}.
The results on mutual recursion presented in this chapter,
pionered by Maarten Fokkinga \cite{Fo92b}, have been extended towards probabilistic
functions \cite{MuO15}. They have also shown to help in program understanding
and reverse engineering \cite{VO01}. Recently, the whole theory has undergone significant
advances throught further use of category theory notions such as adjunctions
\footnote{See chapter \ref{ch:050419a}.} and conjugate functors \cite{Hi13,HWG15}.

\chapter{Why Monads Matter} \label{ch:050419a}
In this chapter we present a powerful device in state-of-the-art functional
programming, that of a \emph{monad}. The monad concept is nowadays of primary
importance in computing science because it makes it possible to describe
computational effects as disparate as input/output, comprehension notation,
state variable updating, probabilistic behaviour,
context dependence, partial behaviour \etc\ in an elegant and uniform way.

Our motivation to this concept will start from a well-known problem in
functional programming (and computing as a whole)
--- that of coping with undefined computations.

\section{Partial functions} \label{sec:180409a}
Recall the function |head| that yields the first
element of a finite list.
Clearly, |head x| is undefined for \( x=\emptylist \) because
the empty list has no elements at all.
As expected, the \haskell\ output for |head []| is just \aspas{panic}:
%
\begin{quote}\small
\begin{verbatim}
*Main> head []
*** Exception: Prelude.head: empty list
*Main>
\end{verbatim}
\end{quote}

Functions such as |head| are called \emph{partial functions} because they
cannot be applied to all of their (well-typed) inputs, \ie, they diverge for some of such
inputs. Partial functions are very common in mathematics or programming
--- for other examples think of \eg\ |tail|, and so on.

Panic is very dangerous in programming. In order to avoid this kind of behaviour
one has two alternatives, either (a) ensuring that every call to |head x|
is \emph{protected} --- \ie, the contexts which wrap up such calls ensure
\emph{pre-condition} |x /= []|, or (b) \emph{raising} exceptions, \ie\
explicit error values, as above. In the former case, mathematical proofs need to be
carried out in order to ensure \emph{safety} (that is, \emph{pre-condition}
compliance). The overall effect is that of \emph{restricting} the domain of the partial
function. In the latter case one goes the other way round, by \emph{extending} the
co-domain (vulg. range) of the function so that it accommodates exceptional
outputs. In this way one might define, in \haskell:
\begin{code}
data ExtVal a = Ok a | Error
\end{code}
and then define the ``extended'' version of |head|:
\begin{code}
exthead :: [a] -> ExtVal a
exthead [] = Error
exthead x  = Ok(head x)
\end{code}
%
Note that |ExtVal| is a \emph{parametric} type which extends an arbitrary
data type |a| with its (polymorphic) exception (or error value).
It turns out that, in \haskell, |ExtVal| is redundant because such a
parametric type already exists and is called |Maybe|:
\begin{code}
data Maybe a = Nothing | Just a
\end{code}
Clearly, the isomorphisms hold:
\begin{eqnarray*}
\ap{\fun{ExtVal}}A
\iso
\ap{\fun{Maybe}}A
\iso
1 + A
\end{eqnarray*}
%
So, we might have written the more standard code
\begin{code}
exthead :: [a] -> Maybe a
exthead [] = Nothing
exthead x  = Just (head x)
\end{code}
In abstract terms, both alternatives coincide, since one may regard as \emph{partial} every function of type
\begin{eqnarray*}
\larrow{B}{g}{1+A}
\end{eqnarray*}
for some \(A\) and \(B\)
\footnote{%
In conventional programming,
every function delivering a \emph{pointer} as result
--- as in \eg\ the C programming language
--- can be regarded as one of these functions.
}.

\section{Putting partial functions together}
Do partial functions compose? Their types won't match in general:
\begin{eqnarray*}
\xymatrix{
&
1+B
	\ar@@{..}[d]
&
A
	\ar[l]_{g}
\\
1+C
&
B
	\ar[l]_{f}
}
\end{eqnarray*}
Clearly, we have to extend \(f\) --- which is itself a partial function --- to some $f'$ able to accept arguments from \(1+B\):
\begin{eqnarray*}
\xymatrix{
&
1
	\ar[ldd]_{\ldots}
	\ar[d]^{i_1}
\\
&
1+B
	\ar[ld]^{f'}
&
A
	\ar[l]_{g}
\\
1+C
&
B
	\ar[u]_{i_2}
	\ar[l]^{f}
}
\end{eqnarray*}

The most \aspas{obvious} instance of the ellipsis (\(\ldots\)) in the diagram above is
\(i_1\) and this corresponds to what is called \emph{strict} composition:
an exception produced by the \emph{producer} function $g$ is propagated to
the output of the \emph{consumer} function $f$. We define:
\begin{eqnarray}
f \kcomp g &\deff &
	\alt{i_1}{f} \comp g
\label{eq:001227a}
\end{eqnarray}
Expressed in terms of |Maybe|, composite function \(f \kcomp g\) works as follows:
\begin{eqnarray*}
(f \kcomp g)a &= & f'(\ap g a)
\end{eqnarray*}
where
\begin{code}
f' Nothing = Nothing
f' (Just b) = f b
\end{code}
Altogether, we have the following Haskell pointwise expression for % the meaning of
$f \kcomp g$:
\begin{code}
\a -> f' (g a) where
      f' Nothing = Nothing
      f' (Just b) = f b
\end{code}

Note that the adopted extension of \(f\) can be decomposed
--- by reverse $+$-absorption
(\ref{eq:+-absorption}) ---
into
\begin{eqnarray*}
f'&=& \alt{i_1}{id} \comp (id+f)
\end{eqnarray*}
as displayed in diagram
%
\begin{eqnarray*}
\xymatrix{
&
1+(1+C)
	\ar[d]_-{\alt{i_1}{id}}
&
1+B
	\ar[l]_{id+f}
	\ar@@{..}[d]
&
A
	\ar[l]_{g}
\\
&
1+C
&
B
	\ar[l]_{f}
}
\end{eqnarray*}
%
All in all, we have the following version of (\ref{eq:001227a}):
\begin{eqnarray*}
f \kcomp g &\deff &
	\alt{i_1}{id} \comp (id + f) \comp g
\end{eqnarray*}

% monads 2
Does this functional composition scheme have a unit, that is, is there a
function \(u\) such that
\begin{eqnarray}
	f \kcomp \u = f = \u \kcomp f
\label{eq:001227c}
\end{eqnarray}
holds?
Clearly, if it exists, it must bear type $\larrow {A}{u}{1+A}$.
|larrow A i2 (1+A)| has the same type, so |u=i2| is a very likely
solution. Let us check it:
%Let us \emph{solve} (\ref{eq:001227c}) for \(u\):
\begin{eqnarray*}
&&
f \kcomp \u = f = \u \kcomp f
%
\just\equiv{substitutions}
%
\alt{i_1}{f} \comp |i2| = f = |either i1 i2| \comp f
%
\just\equiv{by $+$-cancellation (\ref{eq:701c}) and $+$-reflection (\ref{eq:703b})}
%
f = f = id \comp f
%
\just\equiv{trivial}
%
|true|
%
\end{eqnarray*}
So |f .! u = f = u .! f| for |u=i2|.

\begin{exercise} \label{ex:150427a}
Prove that property
\begin{eqnarray*}
f \kcomp (g \kcomp h) & = & (f \kcomp g) \kcomp h
\end{eqnarray*}
holds, for $f \kcomp  g$ defined by (\ref{eq:001227a}).
\end{exercise}

\section{Lists} %
In contrast to partial functions, which may produce \emph{no} output, let
us now consider functions which may deliver \emph{too many} outputs, for instance,
lists of output values:
%
\begin{eqnarray*}
\xymatrix{
&
\Seq B
	\ar@@{..}[d]
&
A	\ar[l]_{g}
\\
\Seq C
&
B	\ar[l]_{f}
}
\end{eqnarray*}
Functions \(f\) and \(g\) do not compose but, once again, one can think of
extending the consumer function (\(f\)) by mapping it along the output of
the producer function (\(g\)):
%
\begin{eqnarray*}
\xymatrix{
\Seq{(\Seq C)}
	\ar@@{..}[d]
&
\Seq B
	\ar[l]_-{\Seq f}
	\ar@@{..}[d]
\\
\Seq C
&
B	\ar[l]_{f}
}
\end{eqnarray*}
%
To complete the process, one has to \emph{flatten} the nested-sequence output in
\(
{\Seq{(\Seq C)}}
\)
via the obvious list-catamorphism
\(
\longlarrow
	{\Seq{(\Seq C)}}
	{|concat|
	}
	{\Seq C}
\),
recall
	|concat = cataList (either (const []) conc)|
where |conc(x,y)=x++y|.
%
In summary:
\begin{eqnarray}
f \kcomp g &\deff &
	|concat| \comp \Seq f \comp g
\label{eq:001227b}
\end{eqnarray}
as captured in the following diagram:
\begin{eqnarray*}
\xymatrix{
\Seq{(\Seq C)}
	\ar[d]_{|concat|}
&
\Seq B
	\ar[l]_-{\Seq f}
	\ar@@{..}[d]
&
A	\ar[l]_{g}
\\
\Seq C
&
B	\ar[l]_{f}
}
\end{eqnarray*}

\begin{exercise}
Show that
\(
	|singl|
\)
(recall exercise \ref{ex:011218a}) is the unit $\u$ of $\kcomp$ as defined by (\ref{eq:001227b}) above.
\end{exercise}

\begin{exercise}
Encode in \haskell\ a pointwise version of (\ref{eq:001227b}).
\textbf{Hint}: start by applying (list) cata-absorption (\ref{eq:cata-absorption}).
\end{exercise}

\section{Monads}
Both function composition schemes (\ref{eq:001227a}) and (\ref{eq:001227b})
above share the same polytypic pattern: the output of the producer function
|g| is \emph{\aspas{\(\T\)-times} more elaborate} than the input of the consumer
function |f|, where \(\T\) is some parametric datatype:
\(
\tf X = 1 + X
\)
in case of (\ref{eq:001227a}), and
\(
\tf X = \Seq X
\)
in case of (\ref{eq:001227b}).
Then a composition scheme is devised for such functions,
which is displayed in
%
\begin{eqnarray}
\vcenter{\xymatrix{
&
	\T(\tf{C})
		\ar[d]_{µ}
&
	\tf B
		\ar[l]_{\tf f}
		\ar@@{..}[d]
&
	A
		\ar[l]_{g}
	        \ar@@/^3pc/[lld]^-{|f.!g|} &
\\
&
	\tf{C}
&
	B
		\ar[l]_{f}
&
}}
	\label{eq:180424a}
\end{eqnarray}
and is given by
\begin{eqnarray}
f \kcomp g &\deff &
µ \comp \tf f \comp g
\label{eq:001230a}
\end{eqnarray}
where
\(
\larrow{\tff A}{µ}{\tf A}
\)
is a suitable polymorphic function.
(We have already seen $\mu=\alt{i_1}{id}$
in case (\ref{eq:001227a}), and |mu=concat|
in case (\ref{eq:001227b}).)

Together with a unit function
\(
\larrow{A}{\u}{\tf A}
\)
and
\(
µ
\), that is
\begin{eqnarray*}
\xymatrix{
|A|
	\ar[r]^{u}
&
|fT A|
&
|expn fT 2 A|
	\ar[l]_{|mu|}
}
\end{eqnarray*}
datatype
\(
	\T
\)
will form a so-called \emph{monad} type, of which
\(
	(1 +)
\)
and
\(
	\Seq{(\_)}
\)
are the two examples seen above.
%
Arrow
\(
µ \comp \tf f
\)
is called the \emph{extension} of \(f\).
Functions
\(
µ
\)
and
\(
\u
\)
are referred to as the monad's \emph{multiplication} and \emph{unit}, respectively.
The monadic composition scheme (\ref{eq:001230a}) is referred to
as \emph{Kleisli composition}.

A \emph{monadic arrow}
\(
\larrow{A}{f}{\T B}
\)
conveys the idea of a function which produces an output of \aspas{type}
\(
B
\)
\aspas{wrapped by $\T$}, where datatype $\T$ describes some kind of (computational) \aspas{effect}. The monad's unit
\(
\larrow{B}{\u}{\T B}
\)
is a primitive {monadic arrow} which injects (\ie\ promotes, wraps) data \emph{inside} such an effect.

The monad concept is nowadays of primary importance in computing science because it makes it possible to describe computational effects as disparate as input/output, state variable updating, context dependence, partial behaviour (seen above) \etc\ in an elegant, generic and uniform way. Moreover, the monad's operators exhibit notable properties which make it possible to \emph{reason} about such computational effects.

The remainder of this section is devoted to such properties.
First of all, the properties implicit in the following diagrams will be
\emph{required} for $\T$ to be regarded as a monad:

\law{mon-mul}{
Multiplication
}{
\xymatrix{
	\ap{\T^2}A
		\ar[d]_{µ}
&
	\ap{\T^3}A
		\ar[d]^{\tfµ}
		\ar[l]_{µ}
\\
	\ap{\T  }A
&
	\ap{\T^2}A
		\ar[l]^{µ}
}
}{
µ \comp µ = µ \comp \tfµ
}

\law{mon-unit}{
Unit
}{
\xymatrix{
	\ap{\T^2}A
		\ar[d]_{µ}
&
	\ap{\T}A
		\ar[l]_{\u}
		\ar[d]^{\tf{\u}}
		\ar[dl]^{id}
\\
	\ap{\T  }A
&
	\ap{\T^2}A
		\ar[l]^{µ}
}
}{
µ \comp \u = µ \comp \tf \u = id
}
\noindent The simple and beautiful symmetries apparent in these diagrams will make it
easy to memorize their laws and check them for particular cases.
For instance, for the $(1+)$ monad, law (\ref{eq:mon-unit}) will read as
follows:
\begin{eqnarray*}
\alt{i_1}{id} \comp i_2 = \alt{i_1}{id} \comp (id + i_2) = id
\end{eqnarray*}
These equalities are easy to check.

In laws (\ref{eq:mon-mul}) and (\ref{eq:mon-unit}),
the different instances of $µ$ and $\u$ are differently
typed, as these are polymorphic and exhibit natural properties:

\law{011217c}{
$µ$-natural
}{
\xymatrix{
	A
		\ar[d]_f
&
	\ap{\T}A
		\ar[d]_{\tf{f}}
&
	\ap{\T^2}A
		\ar[l]_{µ}
		\ar[d]^{\ap{\T^2}f}
\\
	B
&
	\ap{\T  }B
&
	\ap{\T^2}B
		\ar[l]^{µ}
}
}{
\tf f \comp µ = µ \comp \tff f
}

\law{u-natural}{
$\u$-natural
}{
\xymatrix{
	A
		\ar[d]_f
&
	\ap{\T}A
		\ar[d]_{\tf{f}}
&
	A
		\ar[l]_{\u}
		\ar[d]^{f}
\\
	B
&
	\ap{\T  }B
&
	B
		\ar[l]^{\u}
}
}{
\tf f \comp \u  = \u \comp f
}

The simplest of all monads is the
\emph{identity monad} $\tf X \deff X$,
which is such that $µ=id$, $\u=id$ and $f \kcomp g = f \comp g$.
So --- in a sense --- the \emph{whole functional discipline} studied thus far
was already \emph{monadic}, living inside the simplest of all monads: the identity one.
Put in other words, such functional discipline can be framed into
a wider discipline in which an arbitrary monad is present.
Describing this is the main aim of the current chapter.

\paragraph{Properties involving (Kleisli) composition}
The following properties arise from the definitions and monadic properties
presented above:
\begin{eqnarray}
f \kcomp (g \kcomp h) &=& (f \kcomp g) \kcomp h	\label{eq:011217a}
\\
\u \kcomp f = &f& = f \kcomp \u			\label{eq:011217b}
\\
(f \kcomp g) \comp h &=& f \kcomp (g \comp h)		\label{eq:051218a}
\\
(f \comp g) \kcomp h &=& f \kcomp (\tf g \comp h)	\label{eq:051218b}
\\
id \kcomp id &=& µ	\label{eq:051218c}
%
\end{eqnarray}
Properties (\ref{eq:011217a}) and (\ref{eq:011217b}) are the monadic counterparts of, respectively,
(\ref{eq:698x}) and (\ref{eq:981211d}), meaning that monadic composition
preserves the properties of normal functional composition.
In fact, for the identity monad,
these properties coincide with each other.

Above we have shown that property (\ref{eq:011217b}) holds for the |(1+)|-monad,
recall (\ref{eq:001227c}).
A general proof can be produced similarly.
We select property (\ref{eq:011217a}) as an illustration of the rôle of
the monadic properties:
\begin{eqnarray*}
&&
|f .! (g .! h)|
%
\just={definition (\ref{eq:001230a}) twice}
%
|mu . fT f . (mu . fT g . h)|
%
\just={|mu| is natural (\ref{eq:011217c})}
%
|mu . mu . (expn fT 2 f) . fT g . h|
%
\just={ monad property (\ref{eq:mon-mul}) }
%
|mu . fT mu . (expn fT 2 f) . fT g . h|
%
\just={functor |fT| (\ref{eq:980410a}) }
%
|mu . fT(mu . fT f . g) . h|
%
\just={definition (\ref{eq:001230a}) twice}
%
|(f .! g) .! h|
%
\end{eqnarray*}
Clearly, this calculation generalizes that of exercise \ref{ex:150427a} to any monad $\tf$.

\begin{exercise}
Prove the other laws above and also the following one,
\begin{eqnarray}
&&	|(fT f).(h.!k) =(fT f.h).!k|
\label{eq:140124b}
\end{eqnarray}
where Kleilsi composition again trades with normal composition.
\end{exercise}

\section{Monadic application (binding)}
We have seen above that, given a monad
\(
\xymatrix{
|A|
	\ar[r]^{u}
&
|fT A|
&
|expn fT 2 A|
	\ar[l]_{|mu|}
}\), |u| is the unit of Kleisli composition, |f .! u = f|, recall (\ref{eq:011217b}).
Now, what does happen in case we Kleisli compose |f| with the identity |id|
of \emph{standard} composition? Looking at diagram (\ref{eq:180424a}) for this case,
\begin{eqnarray*}
\vcenter{\xymatrix{
&
\T(\tf{C})
	\ar[d]_{µ}
&
\tf B
	\ar[l]_{\tf f}
	\ar@@{..}[d]
&
	|fT B|
	\ar[l]_{|id|}
\\
&
\tf{C}
&
B
	\ar[l]_{f}
&
}}
\end{eqnarray*}
we realize that |f .! id| accepts a value of type |fT B| that is passed to
|larrow B f (fT C)|, yielding an output of type |fT C|. This construction is called
\emph{binding} and denoted by |>>=f|:
\begin{eqnarray}
	|(>>=f) = f .! id|
\end{eqnarray}
Expressed pointwise, we get:\footnote{In the case of the identity monad one has:
|x>>=f = f x|. So, |>>=| can be regarded as denoting \emph{monadic function application}.}
% The monadic counterpart of functional application $ap$ (\ref{eq:transUniv})
% is another operator $ap'$ which is intended to be ``tolerant'' in face of any
% ``$\T$-inflated'' argument $x$:\footnote{Recall that notation $A^B$ expresses the set of all
% functions $f:A \to B$.}
%
% \begin{eqnarray}
% \begin{array}{l}
% \rarrow{ (\tf B)^A \times \tf A}{ap'}{\tf B}
% \\
% ap'(f,x) = \ap{f'}x = (µ \comp \tf f)x
% \end{array}
% \end{eqnarray}
% If in curry/flipped format,
% monadic application is called \emph{binding} and denoted by the symbol |>>=|,
% looking very much like postfix functional application,
% \begin{eqnarray}
% \xymatrix{
% ((\tf B)^A)^{\tf A}
%	\ar[r]^-{\bind}
% &
% \tf B
% }
% \end{eqnarray}
%
% \noindent
% that is:
\begin{eqnarray}
x \bind f & \deff & (µ \comp \tf f)x	\label{eq:011218b}
\end{eqnarray}

This operator exhibits properties that arise from its definition and the
basic monadic properties, \eg
\begin{eqnarray*}
x \bind \u
%
\just={ definition (\ref{eq:011218b}) }
%
 (µ \comp \tf\u)x
%
\just={ law (\ref{eq:mon-unit}) }
%
 (id)x
%
\just={identity function}
%
 x
\end{eqnarray*}
At pointwise level,
one may chain monadic compositions from left to right,
\eg
\begin{eqnarray*}
(((x \bind f_1) \bind f_2) \bind \ldots f_{n-1}) \bind f_n
\end{eqnarray*}
for functions
$\rarrow{A}{f_1}{\tf{B_1}}$,
$\rarrow{B_1}{f_2}{\tf{B_2}}$,
\ldots
$\rarrow{B_{n-1}}{f_n}{\tf{B_n}}$.

\section{Sequencing and the \textbf{do}-notation}
Recall from above that |x >>= f| is the monadic \emph{generalization} of function application |f x|,
since both coincide for the identity monad. Also recall that, for |f=const y| (the ``everywhere''-|y| constant
function) one gets |const y x = y|.

What does the corresponding monadic generalization, |x >>= const y| mean?
In the standard notation, this leads to another monadic operator,
\begin{eqnarray}
x \sbind y & \deff & x \bind \kons y
\label{eq:070820a}
\end{eqnarray}
of type
\begin{quote}
|(>>) : fT A -> fT B -> fT B|
\end{quote}
called ``sequencing".
% Given two monadic values $x$ and $y$, it becomes possible to ``sequence'' them, thus obtaining another of such value, by defining the following operator
For instance, within the finite-list monad, one has
\begin{eqnarray*}
\enseq{1,2} \sbind \enseq{3,4}
=
(|concat| \comp \Seq{\kons{\enseq{3,4}}}) \enseq{1,2}
=
|concat| \enseq{\enseq{3,4},{\enseq{3,4}}}
=
\enseq{3,4,3,4}
%
\end{eqnarray*}
Because this operator is associative\footnote{See exercise \ref{ex:201005a} later on.},
one may iterate it to more than two arguments and write,
for instance,
\begin{eqnarray*}
x_1 \sbind x_2 \sbind \ldots \sbind x_n
\end{eqnarray*}
This leads to the popular ``|do|-notation",
which is another piece of (pointwise) notation which makes sense in a
monadic context:
\begin{eqnarray*}
|do {x1 ; x2 ; ... ; xn}|
& \deff &
|x1 >> do {x2 ; ... ; xn}|
\end{eqnarray*}
for $n\geq 1$. For $n=1$ one trivially has
\begin{eqnarray*}
|do x1| & \deff & |x1|
\end{eqnarray*}

\section{Generators and comprehensions}
The monadic |do|-notation paves the way to a device that is very useful in
(pointwise) monadic programming. As before, we consider its (non-monadic) counterpart first.
Consider for instance the expression |x + sum y|, where |sum| is some operator in some context,
e.g. adding up all elements of a list. Nothing impedes us from ``structuring" expression |x+sum y|
in the following way:
\begin{code}
	let a = sum y
        in x + a
\end{code}
It turns out that the above is the same as the following monadic expression,
\begin{code}
	do {
             a <- sum y ;
             u (x+a) }
\end{code}
provided the underlying monad is the \emph{identity} monad.
Now, what does the notation |a <- ...| mean for an
arbitrary monad
\(
\xymatrix{
	|A|
	\ar[r]^{u}
&
	|fT A|
&
	|expn fT 2 A|
	\ar[l]_{|mu|}
}\) ?

The |do|-notation accepts a variant in which the arguments of
the $\sbind$ operator are ``generators'' of the form
\begin{eqnarray}
a \from x			\label{eq:011220a}
\end{eqnarray}
where, for $a$ of type $A$,
$x$ is an inhabitant of monadic type $\tf A$.
One may regard \( a \from x \) as meaning ``let $a$ be taken from $x$''.
Then the |do|-notation unfolds as follows:
\begin{eqnarray}
|do {a <- x1 ; x2 ; ... ; xn}|
& \deff &
|x1 >>= \ a . (do {x2 ; ... ; xn})|
\label{eq:051218d}
\end{eqnarray}
Of course, we should now allow for the $x_i$ to range over terms involving
variable $a$.
For instance, by writing (again in the list-monad)
\begin{eqnarray}
|do {a <- [1,2,3] ; [raise 2 a]}| \label{eq:011217d}
\end{eqnarray}
we mean
\begin{eqnarray*}
&&
\enseq{1,2,3} \bind \lambda a . \enseq{a^2}
\\ &=&
|concat|(\Seq{(\lambda a . \enseq{a^2})}\enseq{1,2,3})
\\ &=&
|concat| \enseq{\enseq 1, \enseq 4, \enseq 9}
\\ &=&
\enseq{1,4,9}
\end{eqnarray*}

The analogy with classical set-theoretic ZF-notation, whereby one might write
\(
\setdef{a^2}{a \in \enset{1,2,3}}
\)
to describe the set of the first three perfect squares,
suggests the following notation,
\begin{eqnarray}
\seqdef{a^2}{a \from \enseq{1,2,3}}
\end{eqnarray}
as a ``shorthand'' of (\ref{eq:011217d}).
This is an instance of the so-called \emph{comprehension} notation,
which can be defined in general as follows:
\begin{eqnarray}
\start \seqdef{e}{a_1 \from x_1 , \ldots, a_n \from x_n} =
	\nonumber
\more \rule{6em}{0pt} |do { a1 <- x1 ; ... ; an <- xn ; u e }|
\label{eq:051218e}
\end{eqnarray}
where $\u$ is the monad's unit (\ref{eq:mon-unit},\ref{eq:u-natural}).

Alternatively,
comprehensions can be defined as follows,
where $p,q$ stand for arbitrary generators:
\begin{eqnarray}
\enseq{ t } &=& \ap u t
\label{eq:051218f}
\\
\seqdef{ \ap f x }{ x \from l}  &=& (\tf f) l
\label{eq:051218g}
\\
\seqdef{ t }{ p , q }  &=& µ \seqdef{\seqdef{t}{q}}{p}
\label{eq:051218h}
\end{eqnarray}
Note, however, that comprehensions are not restricted to lists or sets
--- they can be defined for any monad $\T$ thanks to the |do|-notation.

\begin{exercise}
Show that
\begin{eqnarray}
|(f .! g)a| & = & |do { b <- g a; f b}|
\label{eq:130601b}
\\
|fT f x| &=& |do { a <- x ; u (f x) }|
\label{eq:170429a}
\end{eqnarray}
Note that the second |do| expression is equivalent to |x >>= (u . f)|.
\end{exercise}

\noindent Fact (\ref{eq:170429a}) is illustrated in the cartoon\footnote{Credits: see this and other helpful, artistic illustrations in
\scriptsize\\\verb!http://adit.io/posts/2013-04-17-functors,_applicatives,_and_monads_in_pictures.html!.}
\begin{center}
\includegraphics[width=.9\textwidth]{fmap_just.png}
\end{center}
for the computation of |fT (+3) x|, where |x=u 2| is the |fT|-monadic object containing number |2|.

\begin{exercise}
Show  that
	|x >>= f| = |do { a <- x ; f a}|
	%label{eq:130601c}
and then that |(x>>=g)>>=f|  is the same as |x>>=(kcomp f g)|.
\end{exercise}

\begin{exercise}\label{ex:201005a}
Prove that |(>>)| is associative:
\begin{eqnarray}
	|x >> (y >> z) = (x >> y) >> z|:
\end{eqnarray}
Hint: the laws of constant functions and the previous exercise can help your proof.
\end{exercise}

\section{Monads in \haskell}
In the \emph{Standard Prelude} for \haskell,
one finds the following minimal definition of the |Monad| class,
\begin{code}
class Monad m where
    return :: a -> m a
    (>>=)  :: m a -> (a -> m b) -> m b
\end{code}
where |return| refers to the unit of |m|,
on top of which the ``sequence'' operator
\begin{code}
    (>>)   :: m a -> m b -> m b
    fail   :: String -> m a
\end{code}
is defined by
\begin{code}
    p >> q  = p >>= \ _ -> q
\end{code}
as expected. This class is instantiated for finite sequences (|[]|), |Maybe|
and |IO|, among others.

The $µ$ multiplication operator is function |join| in
module \texttt{Monad.hs}:
\begin{code}
    join :: (Monad m) => m (m a) -> m a
    join x = x >>= id
\end{code}
This is easily justified:
\begin{eqnarray}
	|join x|
&=&
	x \bind id
	\label{eq:070820b}
%
\just={ definition (\ref{eq:011218b}) }
%
	(µ \comp \tf{id}) x
\nonumber
%
\just={functors commute with identity (\ref{eq:971218b})}
%
(µ \comp id ) x
\nonumber
%
\just={law (\ref{eq:981211d})}
%
\ap{µ}x
\nonumber
%
\end{eqnarray}

The following infix notation for (Kleisli) monadic composition in \haskell\ uses the binding operator:
\begin{code}
(.!) :: Monad t => (b -> t c) -> (d -> t b) -> d -> t c
(f .! g) a = (g a) >>= f
\end{code}

\begin{exercise} %quest{cp0910q02}
Consider the \haskell\ function
\begin{code}
discollect :: [(a, [b])] -> [(a, b)]
discollect [] = []
discollect ((a,x):y) = [(a,b) | b <- x] ++ discollect y
\end{code}
Knowing that finite lists form a monad where
|mu=concat=cataList(either nil conc)|
and
|conc(x,y)=x++y|,
derive the above pointfree code from the definition
\begin{eqnarray}
|discollect = lstr .! id|
\end{eqnarray}
where |lstr(a,x) = [(a,b) || b <- x]|.
\end{exercise}

\paragraph{Monadic I/O}
|IO|, a parametric datatype whose inhabitants are special values called
\emph{actions} or \emph{commands}, is a most relevant monad.
Actions perform the interconnection between \haskell\ and the environment
(file system, operating system).
For instance,
\begin{code}
getLine :: IO String
\end{code}
is a particular such action.
Parameter |String| refers to the fact that this action ``delivers'' --- or extracts --- a string from the environent. This meaning is clearly conveyed by the type |String| assigned to symbol
\(
l
\)
in
\begin{spec}
do l <- getLine ; ... l ...
\end{spec}
which is consistent with typing rule for generators (\ref{eq:011220a}).
Sequencing corresponds to the ``;'' syntax in most programming languages
(\eg\ C) and the |do|-notation is particulary intuitive in the |IO|-context.

Examples of functions delivering actions are
\[
\longrarrow{|FilePath|}
{|readFile|}
{|IO String|}
\]
and
\[
\longrarrow{|Char|}
{|putChar|}
{|IO ()|}
\]
--- both produce I/O commands as result.

As is to be expected,
the implementation of the |IO| monad in \haskell\ --- available from the \emph{Standard Prelude} ---
is not totally visible,
for it is bound to deal with the intrincacies of the underlying machine:
\begin{code}
instance Monad IO where
    (>>=)  = primbindIO
    return = primretIO
\end{code}

\noindent
Rather interesting is the way |IO| is regarded as a functor:
\begin{code}
    fmap f x = x >>= (return . f)
\end{code}
This goes the other way round, the monadic structure ``helping'' in defining
the functor structure,
everything consistent with the underlying theory:
\begin{eqnarray*}
x \bind (\u \comp f)
&=&
(µ \comp \fun{IO}(\u \comp f)) x
%
\just={functors commute with composition}
%
(µ \comp \ap{\fun{IO}}\u \comp \ap{\fun{IO}}f) x
%
\just={law (\ref{eq:mon-unit}) for $\T = \fun{IO}$ }
%
(\ap{\fun{IO}}f) x
%
\just={definition of |fmap| }
%
|(fmap f) x|
\end{eqnarray*}
%
For enjoyable reading on monadic input/output in \haskell\ see \cite{Hu00}, chapter 18.

%\begin{exercise}
%Use the \texttt{do}-notation and the comprehension notation to
%output the following truth-table, in \haskell:
%\begin{center}
%\begin{tabular}{||l||||l||l||}\hline
%	 p / q
%	&False
%	&True
%\\\hline\hline
%	 False
%	&False
%	&False
%\\\hline
%	 True
%	&False
%	&True
%\\\hline
%\end{tabular}
%\end{center}
%\CUT{
%\begin{verbatim}
%M> [ p && q || p <- [False,True] , q <- [False,True] ]
%[False,False,False,True] :: [Bool]
%
%M> do p <- [False,True] ; q <- [False,True] ; return(q && q)
%[False,True,False,True] :: [Bool]
%M>
%\end{verbatim}
%}
%\end{exercise}

\begin{exercise}
Extend the $\fun{Maybe}$ monad to the following ``error message''
exception handling datatype:
\begin{code}
data Error a = Err String | Ok a deriving Show
\end{code}
In case of several error messages issued in a \texttt{do} sequence,
how many turn up on the screen? Which ones?
\end{exercise}

\begin{exercise}
Recalling section \ref{sec:120522a}, show that any inductive type with
base functor
\begin{quote}
|fB(f,g) = f + fF g|
\end{quote}
where |fF| is an arbitrary functor, forms a monad for
\begin{quote}
$\mu=\scata{\alt{id}{|inT| \comp i_2}}$
\\
$\u=|inT| \comp i_1$.
\end{quote}
Identify |fF| for known monads such as e.g.\ $\fun{Maybe}$,
$\fun{LTree}$ and (non-empty) lists.
\end{exercise}

\section{The state monad} \label{sec:180903a}
\begin{quote}
%fbox{ NB: this section is still a draft }
\end{quote}
The so-called \emph{state monad} is a monad whose inhabitants are state transitions
encoding a particular brand of state-based automata known as \emph{Mealy machines}.
%
Given a set $A$ (input alphabet), a set $B$ (output alphabet) and
a set of states $S$,
a deterministic Mealy machine (DMM) is specified by a transition function of type
\begin{eqnarray}
\rarrow{A \times S} \delta {B× S}
\label{eq:080610a}
\end{eqnarray}
Wherever $(b,s') = \delta(a,s)$, we say that the machine has transition
\begin{eqnarray*}
\rarrow{s}{a \asor b}{s'}
\end{eqnarray*}
and refer to $s$ as the \emph{before} state, and to $s'$ as the \emph{after} state.
Many programs that one writes in conventional programming languages such as C
or Java can be regarded as DMMs.

It is clear from (\ref{eq:080610a}) that $\delta$ can be expressed as the
\emph{split} of two functions $f$ and $g$
--- $\delta = \split f g$ --- as depicted
in the following drawing:
\begin{eqnarray*}
\mbox{
\unitlength=.5mm
\linethickness{0.4pt}
\begin{picture}(150.00,60.00) (-15,32)
\put(30.00,82.00){\line(0,-1){30.00}}
\put(30.00,82.00){\circle*{1.60}}
\put(0.00,82.00){\vector(1,0){43.00}}
\put(63.00,78.00){\vector(1,0){30.00}}
\put(35.00,74.00){\vector(1,0){8.00}}
\put(-20.00,74.00){\makebox(20.00,16.00)[cc]{$a$}}
\put(43.00,70.00){\framebox(20.00,16.00)[cc]{$f$}}
\put(105.00,70.00){\makebox(20.00,16.00)[cc]{$b=f(a,s)$}}
\put(30.00,52.00){\vector(1,0){13.00}}
\put(37.00,44.00){\vector(1,0){6.00}}
\put(35.00,44.00){\circle*{1.60}}
\put(0.00,44.00){\vector(1,0){43.00}}
\put(63.00,48.00){\vector(1,0){30.00}}
\put(43.00,40.00){\framebox(20.00,16.00)[cc]{$g$}}
\put(105.00,40.00){\makebox(20.00,16.00)[cc]{$s'=g(a,s)$}}
\put(-20.00,36.00){\makebox(20.00,16.00)[cc]{$s$}}
\put(35.00,44.00){\line(0,1){30.00}}
\end{picture}
}
\end{eqnarray*}

Note, however, that the information recorded in the state of a DMM is either
meaningless to the user of the machine (as in e.g.\ the case of states represented
by numbers) or too complex to be perceived and handled explicitly (as is
the case of e.g.\ the data kept in a large database). So, it is convenient
to \emph{abstract} from it, via the ``encapsulation" suggested by the following,
transformed, version of the previous drawing,
\begin{eqnarray}
\mbox{
\unitlength=.5mm
\linethickness{0.4pt}
\begin{picture}(150.00,100.00)
\put(43.00,40.00){\framebox(20.00,16.00)[cc]{$g$}}
\put(43.00,70.00){\framebox(20.00,16.00)[cc]{$f$}}
\put(-20.00,74.00){\makebox(20.00,16.00)[cc]{$a$}}
\put(20.00,10.00){\makebox(20.00,16.00)[cc]{$s$}}
\put(110.00,70.00){\makebox(20.00,16.00)[cc]{$b=f(a,s)$}}
\put(110.00,10.00){\makebox(20.00,16.00)[cc]{$s'=g(a,s)$}}
\put(43.00,18.00){\line(-1,0){6.00}}
\put(37.00,44.00){\vector(1,0){6.00}}
\put(37.00,74.00){\vector(1,0){6.00}}
\put(63.00,48.00){\line(1,0){7.00}}
\put(70.00,18.00){\vector(-1,0){7.00}}
\put(53.00,18.00){\oval(20.00,16.00)[]}
\put(53.00,18.00){\makebox(0,0)[cc]{$S$}}
\put(30.00,52.00){\vector(1,0){13.00}}
\put(37.00,44.00){\circle*{1.00}}
\put(63.00,78.00){\vector(1,0){30.00}}
\put(30.00,82.00){\circle*{1.00}}
\put(37.00,18.00){\line(0,1){56.00}}
\put(30.00,82.00){\line(0,-1){30.00}}
\put(70.00,48.00){\line(0,-1){30.00}}
\put(0.00,82.00){\vector(1,0){43.00}}
\put(20.00,0.00){\dashbox{2.00}(60.00,96.00)[cc]{}}
\end{picture}
}
\label{eq:080612a}
\end{eqnarray}
in which the state is no longer accessible from the outside.

Such an abstraction is nicely captured by the so-called \emph{state monad}, in the following way:
% As it is clumsy to handle the state explicitly as an input, as in (\ref{eq:080610a}),
% we will define a monad so as to abstract from it:
taking (\ref{eq:080610a}) and recalling (\ref{eq:990112a}), we simply transpose
(ie.\ \emph{curry})
$\delta$ and obtain
\begin{eqnarray}
\rarrow{A}{\trans\delta}{|underbrace (raise S ((B >< S))) ((fSt S) B)|}
\end{eqnarray}
thus ``shifting'' the \emph{input} state to the \emph{output}. In this way,
$\ \trans\delta\ a\ $ is a function capturing all state-transitions (and corresponding outputs)
for input $a$. For instance, the function that \emph{appends} a new element
at the rear of a queue,
\begin{eqnarray*}
enq(a,s) & \deff & s \conc \enseq a
\end{eqnarray*}
can be converted into a DMM by adding to it a dummy output of type $1$ and then transposing:
\begin{eqnarray}
\arrayin{
enqueue & : & A \rightarrow (1× S)^S
\\
enqueue\ a & \deff & \split\bang{(\conc\enseq a)}
}
\label{eq:080612g}
\end{eqnarray}
Action $enqueue$ performs $enq$ on the state while acknowledging it by issuing an
output of type $1$.\footnote{A kind of ``done!" message.}

\paragraph{Unit and multiplication.}
Let us now show that
\begin{eqnarray}
(\fun{St} \ S) \ A & \iso & (A× S)^S
\label{eq:080613f}
\end{eqnarray}
forms a monad.
As we shall see, the fact that the \emph{values} of this monad are functions
brings the theory of exponentiation to the forefront.
Thus, a review of section \ref{seq:080612d} is recommended at this point.

Notation $\uncurry f$ will be used to abbreviate $uncurry\ f$,
enabling the following variant of universal law (\ref{eq:transUniv}),
\begin{eqnarray}
\uncurry k = f & \equivalent & f = ap \comp (k \times id)
\label{eq:transUniv'}
\end{eqnarray}
whose cancellation
\begin{eqnarray}
\uncurry k = ap \comp (k \times id)
\label{eq:080615b}
\end{eqnarray}
is written pointwise as follows:
\begin{eqnarray}
\uncurry k(c,a) & = & (k\ c)a
\label{eq:080615a}
\end{eqnarray}

First of all, what is the functor behind (\ref{eq:080613f})?
Fixing the state space $S$, we obtain
\begin{eqnarray}
\T X & \deff & (X× S)^S
\label{eq:080612e}
\end{eqnarray}
on objects and
\begin{eqnarray}
\T f & \deff & (f× id)^S
\label{eq:080612f}
\end{eqnarray}
on functions, where $(\_)^S$ is the exponential functor (\ref{eq:990209a}).

The unit of this monad is the transpose of the simplest of all Mealy machines --- the identity:
\begin{eqnarray}
\arrayin{
u & : & A \rightarrow (A× S)^S
\\
u & = & \trans{id}
}
\label{eq:080612b}
\end{eqnarray}
Let us see what this means:
\begin{eqnarray*}
&&
u  = \trans{id}
%
\just\equiv{ (\ref{eq:transUniv}) }
%
ap \comp (u× id) = id
%
\just\equiv{ introducing variables }
%
ap(u\ a,s) = (a,s)
%
\just\equiv{ definition of $ap$ }
%
(u\ a)s = (a,s)
%
\end{eqnarray*}
So, action $u\ a$ performed on state $s$ keeps $s$ unchanged and outputs $a$.

From the type of $\mu$, for this monad,
\begin{eqnarray*}
\rarrow{{((A× S)^S× S)}^S}{\mu}{(A× S)^S}
\end{eqnarray*}
one figures out $\mu = x^S$ (recalling the exponential functor as defined
by (\ref{eq:990209a}))
for some
\(
\rarrow{{((A× S)^S× S)}}{x}{(A× S)}
\).
This, on its turn, is easily recognized as an instance of the $ap$ polymorphic function (\ref{eq:transUniv}),
which is such that $ap = \uncurry{id}$, recall (\ref{eq:exp-reflex}).
Altogether, we define
\begin{eqnarray}
\mu & = & ap^S
\label{eq:080612c}
\end{eqnarray}

Let us inspect the behaviour of $\mu$ by checking the meaning of applying
it to an action expressed as in diagram (\ref{eq:990112a}):
\begin{eqnarray*}
&&
\mu\split f g = ap^S \split f g
%
\just\equiv{ (\ref{eq:990209a}) }
%
\mu\split f g = ap \comp \split f g
%
\just\equiv{ extensional equality (\ref{eq:060128a}) }
%
\mu\split f g s = ap(f\ s, g\ s)
%
\just\equiv{ definition of $ap$ }
%
\mu\split f g s = (f\ s)(g\ s)
%
\end{eqnarray*}
We find out that $\mu$ ``unnests'' the action inside $f$ by applying it to the state
delivered by $g$.

\paragraph{Checking the monadic laws.}
The calculation of (\ref{eq:mon-unit}) is made in two parts, checking $\mu \comp \u = id$ first,
\begin{eqnarray*}
&&
\mu \comp \u
%
\just={definitions}
%
ap^S \comp \trans{id}
%
\just={ exponentials absorption (\ref{eq:999h}) }
%
\trans{ap \comp id}
%
\just={ reflection (\ref{eq:exp-reflex}) }
%
id
\qed
\end{eqnarray*}
and then checking $\mu \comp (\T \u) = id$:
\begin{eqnarray*}
&&
\mu \comp (\T \u)
%
\just={ (\ref{eq:080612c},\ref{eq:080612f}) }
%
ap^S \comp (\trans{id}× id)^S
%
\just={ functor }
%
(ap \comp (\trans{id}× id))^S
%
\just={ cancellation (\ref{eq:999f}) }
%
id^S
%
\just={ functor }
%
id
\qed
\end{eqnarray*}
The proof of (\ref{eq:mon-mul}) is also not difficult once supported by the laws of exponentials.

\paragraph{Kleisli composition.}
Let us calculate $f \kcomp g$ for this monad:
\begin{eqnarray*}
&&
f \kcomp g
%
\just={ (\ref{eq:001230a}) }
%
µ \comp \tf f \comp g
%
\just={ (\ref{eq:080612c}) ; (\ref{eq:080612f}) }
%
ap^S \comp (f× id)^S \comp g
%
\just={ $(\_)^S$ is a functor }
%
(ap \comp (f× id))^S \comp g
%
\just={ (\ref{eq:transUniv'}) }
%
\uncurry f^S \comp g
%
\just={ cancellation  }
%
\uncurry f^S \comp \trans{\uncurry g}
%
\just={ absorption (\ref{eq:999h}) }
%
\trans{\uncurry f \comp \uncurry g}
%
\end{eqnarray*}
In summary, we have:
\begin{eqnarray}
f \kcomp g
& = &
\trans{\uncurry f \comp \uncurry g}
\label{eq:080612h}
\end{eqnarray}
which can be written alternatively as
\begin{eqnarray*}
\uncurry{f \kcomp g}
& = &
{\uncurry f \comp \uncurry g}
\end{eqnarray*}

Let us use this in calculating law
\begin{eqnarray}
pop \kcomp push &=& u
\end{eqnarray}
where $push$ and $pop$ are such that
\begin{eqnarray}
\arrayin{
push & : & A \rightarrow (1× S)^S
\\
\uncurry{push} & \deff & \split{\bang}{\uncurry{(:)}}
}
\label{eq:080613d}
\\
\arrayin{
pop & : & 1 \rightarrow (A× S)^S
\\
\uncurry{pop} & \deff & \split{head}{tail} \comp \p2
}
\label{eq:080613e}
\end{eqnarray}
for $S$ the datatype of finite lists.
We reason:
\begin{eqnarray*}
&&
pop \kcomp push
%
\just={ (\ref{eq:080612h}) }
%
\trans{\uncurry {pop} \comp \uncurry {push}}
%
\just={ (\ref{eq:080613d}, \ref{eq:080613e}) }
%
\trans{ \split{head}{tail} \comp \p2 \comp \split{\bang}{\uncurry{(:)}}}
%
\just={ (\ref{eq:700l}, \ref{eq:702e}) }
%
\trans{ \split{head}{tail} \comp \uncurry{(:)}}
%
\just={ $out \comp in = id$ (lists) }
%
\trans{id}
%
\just={ (\ref{eq:080612b}) }
%
u
\qed
\end{eqnarray*}
%So $pop$ is a left inverse of $push$, recall (\ref{eq:080612b}).

\paragraph{Bind.}
The effect of binding a state transition $x$ to a state-monadic function $h$ is calculated in a similar way:
\begin{eqnarray*}
&&
x \bind h
%
\just={ (\ref{eq:011218b}) }
%
(\mu \comp \T h) x
%
\just={ (\ref{eq:080612c}) and (\ref{eq:080612f}) }
%
(ap^S \comp (h× id)^S) x
%
\just={ $(\_)^S$ is a functor }
%
(ap \comp (h× id))^S x
%
\just={ cancellation (\ref{eq:080615b}) }
%
\uncurry h^S x
%
\just={ exponential functor (\ref{eq:990209a}) }
%
\uncurry h \comp  x
%
\end{eqnarray*}
Let us unfold $\uncurry h \comp x $ by splitting $x$ into its two components $f$ and $g$:
\begin{eqnarray*}
&&
\arrayin{
\split f g \bind h &=& \uncurry h \comp \split f g
}
%
\just\equiv{ go pointwise }
%
\arrayin{
(\split f g \bind h)s &=& \uncurry h(\split f g s)
}
%
\just\equiv{ (\ref{eq:960923d}) }
%
\arrayin{
(\split f g \bind h)s &=& \uncurry h(f\ s, g\ s)
}
%
\just\equiv{ (\ref{eq:080615a}) }
%
\arrayin{
(\split f g \bind h)s &=& h(f\ s)(g\ s)
}
%
\end{eqnarray*}
In summary, for a given ``before state'' $s$,  $g\ s$ is the intermediate
state upon which $f\ s$ runs and yields the output and (final) ``after state''.

\paragraph{Two prototypical inhabitants of the state monad: \emph{get} and \emph{put}.}
These generic actions are defined as follows, in the PF-style:
\begin{eqnarray}
get & \deff & \split{id}{id}
\label{eq:110427a}
\\
put & \deff & \trans{\split\bang{\p1}}
\end{eqnarray}
Action |get| retrieves the data stored in the state without changing it,
while $put$ stores a particular value in the state.  Note that |put| can
also be written
\begin{eqnarray}
put\ s & = & \split\bang{\kons s}
\label{eq:110427b}
\end{eqnarray}
or even as
\begin{eqnarray}
|put s| & = & |update (const s)|
\end{eqnarray}
where
\begin{eqnarray}
|update f| & \deff & |split bang f|
\end{eqnarray}
updates the state via state-to-state function $f$.

The following is an example, written in Haskell, of the standard use of $get/put$
in managing context data, in this case a counter. Function |decBTree|  decorates
each node of a $BTree$ (recall this datatype from page \pageref{eq:991129b})
with its position in the tree:
\begin{code}
decBTree Empty = return Empty
decBTree (Node (a,(t1,t2))) = do {
            n <- get ;
            put(n+1) ;
            x <- decBTree t1 ;
            y <- decBTree t2 ;
            return (Node((a,n),(x,y)))
          }
\end{code}
To close the chapter, the following section will present a strategy for deriving
this kind of monadic functions.

\begin{exercise}
Show that |modify f = split (!) f| is equivalent to
\begin{eqnarray*}
|modify f = do { a <- get ; put(f a) }|
\end{eqnarray*}
in the state monad.
\end{exercise}

\section{`Monadification' of Haskell code made easy}\label{sec:monadification}
There is an easy roadmap for ``monadification'' of Haskell code. What do we
mean by \emph{monadification}? Well, in a sense --- as we shall soon see
--- every piece of code is monadic: we don't notice this because the underlying
monad is \emph{invisible} (the \emph{identity} monad).
We are going to see how to make it visible taking advantage of monadic
\verb'do' notation and leaving it open for instantiation. This will bridge
the gap between monads' theory and its application to handling particular
effects in concrete programming situations.

Let us take as starting point the pointwise version of $sum$,
the list catamorphism that adds all numbers found in its input:
\begin{code}
sum [] = 0
sum (h:t) = h + sum t
\end{code}
Notice that this code could have been written as follows
\begin{code}
sum [] = id 0
sum (h:t) = let x = sum t in id (h+x)
\end{code}
using $let$ notation and two instances of the identity function.
Question: what is the point of such a ``baroque'' version of the starting,
so simple piece of code?
Answer:
\begin{itemize}
\item	The $let\ ... \ in\ ...$ notation stresses the fact that recursive
call happens \emph{earlier} than the delivery of the result.
\item	The $id$ functions signal the exit points of the algorithm, that is, the points
where it \emph{returns} something to the caller.
\end{itemize}
Next, let us
\begin{itemize}
\item
re-write $id$ into \verb||return||;
\item	re-write
\verb||let x = ... in ...|| into \verb'do { x <- ... ; ... }'
\end{itemize}
One will obtain the following version of $sum$:
\begin{code}
msum [] = return 0
msum (h:t) = do {x <- msum t ; return (h+x) }
\end{code}
Typewise, while $sum$ has type |(Num a) => [a] -> a|,
$msum$ has type
\begin{quote}
|(Monad m, Num a) => [a] -> m a|
\end{quote}
That is, $msum$ is monadic --- parametric on monad $m$ --- while $sum$ is not.

There is a particular monad for which $sum$ and $msum$ coincide:
% are the same function for a very particular situation:
the \textbf{identity} monad $\fun{Id}\ X = X$. It is very easy to show that
inside this monad |return| is the identity and |do x <- ...|
means the same as |let x = ...|, as already mentioned --- enough for the pointwise versions of the
two functions to be the same. Thus the ``invisible'' monad mentioned earlier
is the identity monad.

In summary, the monadic version is \emph{generic} in the sense that it runs
on whatever monad you like, enabling you to perform \emph{side effects} while
the code runs. If you don't need any effects then you get the ``non-monadic''
version as special case, as seen above. Otherwise, Haskell will automatically
switch to the effects you want, depending on the monad you choose (often determined by
context).

For each particular monad we may decide to add specific monadic code like \texttt{get}
and \texttt{put} in the \texttt{decBTree} example, where we want to take
advantage of the state monad. As another example, check the following enrichment of
$msum$ with state-monadic code helping you to trace the execution of your program:
\begin{code}
msum' [] = return 0
msum' (h:t) =
     do {x <- msum' t ;
         print ("x= " ++ show x);
         return (h+x) }
\end{code}
Thus one obtains traces of the code in the way prescribed by the
particular usage of the $print$ (state monadic) function:
\begin{quote}
\begin{verbatim}
*Main> msum' [3,5,1,3,4]
"x= 0"
"x= 4"
"x= 7"
"x= 8"
"x= 13"
*Main>
\end{verbatim}
\end{quote}

In the reverse direction, one may try and see what happens
to monadic code upon removing all monad-specific functions and going into the identity monad
once it gets monad generic. In the case of \texttt{decBTree}, for instance, we will get
\begin{code}
decBTree Empty = return Empty
decBTree (Node (a,(t1,t2))) =
        do
            x <- decBTree t1 ;
            y <- decBTree t2 ;
            return (Node(a,(x,y)))
\end{code}
once \texttt{get} and \texttt{put} are removed (and therefore all instances of \texttt n), and then
\begin{code}
decBTree Empty = Empty
decBTree (Node (a,(t1,t2))) =
        let
            x =  decBTree t1
            y =  decBTree t2
        in  Node(a,(x,y))
\end{code}
This is the identity function on type $\fun{BTree}$, recall the cata-reflection
law (\ref{eq:cata-reflex}). So, the \emph{archetype} of (inspiration for)
much monadic code is the most basic of all tree traversal functions --- the
identity~\footnote{We have seen the same kind of ``inspiration'' before in
building type functors (\ref{eq:991129c}) which, for $f=id$, boil down to
the identity.}. The same could be said about imperative code of a particular class
--- the \emph{recursive descent} one --- much used in compiler construction, for instance. %%-- verificar oportunidade...

\subsubsection*{Playing with effects}
As it may seem from the previous examples,
adding effects to produce monadic code is far from arbitrary.
This can be further appreciated by defining
the function that yields the smallest element of a list,
\begin{code}
getmin [a] = a
getmin (h:t) = min h (getmin t)
\end{code}
which is incomplete in the sense that it does not specify the meaning of
|getmin []|. As this is mathematically undefined, it should be expressed ``outside the maths'', that is,
as an effect. % we have to had something to the code, at effect level.
Thus, to complete the defintion we first go monadic, as we did before,
\begin{code}
mgetmin [a] = return a
mgetmin (h:t) = do {x <- mgetmin t ; return (min h x) }
\end{code}
and then chose a monad in which to express the meaning of
|getmin []|, for instance the \verb!Maybe! monad
\begin{code}
mgetmin [] = Nothing
mgetmin [a] = return a
mgetmin (h:t) = do {x <- mgetmin t ; return (min h x) }
\end{code}
Alternatively, we might have written
\begin{code}
mgetmin [] = Error "Empty input"
\end{code}
going into the  \verb!Error! monad, or
even the simpler (yet interesting)
|mgetmin [] = []|, which shifts the code into the list monad,
yielding singleton lists in the success case,
otherwise the empty list.

Function |getmin| above is an example of a partial function, that
is, a function which is undefined for some of its inputs.\footnote{Recall that function partiality was
our motivation for studying monads right from the beginning of this chapter.}
These functions % (such as \verb!getmin! above)
cause much interference in functional programming, which monads help us to
keep under control.

Let us see how such interference is coped with in the case of
higher order functions, taking |map| as example
\begin{code}
map f [] = []
map f (h:t) = (f h): map f t
\end{code}
and supposing |f| is not a total function. How do we cope with erring
evaluations of |f h|? As before, we first ``letify'' the code,
\begin{code}
map f [] = []
map f (h:t) = let
      b = f h
      x = map f t in b:x
\end{code}
we go monadic in the usual way,
\begin{code}
mmap f [] = return []
mmap f (h:t) = do { b <- f h ; x <- mmap f t ; return (b:x) }
\end{code}
and everything goes smoothly --- as can be checked, the function thus built
is of the expected (monadic) type:
\begin{eqnarray}
	|mmap :: (Monad fT) => (a -> fT b) -> [a] -> fT [b]|
	\label{eq:180503a}
\end{eqnarray}
Run |mmap Just [1,2,3,4]|, for instance: you will obtain |Just [1,2,3,4]|.
Now run |mmap print [1,2,3,4]|. You will see the items in
the sequence printed sequentially.

One may wonder about the behaviour of the |mmap| for |f| the identity function:
will we get an error? No, we get a well-typed function of type |[m a] -> m [a]|,
for |m| a monad.
We thus obtain the well-known monadic function |sequence| which
evaluates each \emph{action} in the input sequence, from left to right, collecting the results.
For instance, applying this function to input sequence |[Just 1, Nothing, Just 2]| the output
will be |Nothing|.

\begin{exercise}
Use the \emph{monadification} technique to encode monadic function
\begin{code}
filterM :: Monad m => (a -> m Bool) -> [a] -> m [a]
\end{code}
which generalizes the list-based filter function.
\end{exercise}

\begin{exercise}
``Reverse'' the following monadic code into its non-monadic archetype:
\begin{code}
f :: (Monad m) => (a -> m Bool) -> [a] -> m [a]
f p [] = return []
f p (h:t) = do {
                 b <- p h ;
                 t' <- f p t;
                 return(if b then h:t' else [])
               }
\end{code}
Which function of the Haskell Prelude do you get by such
\emph{reverse monadification}?
\end{exercise}

\section{Monadic recursion}
There is much more one could say about monadic recursive programming. In
particular, one can express the code ``monadification" strategies of the
previous section in terms of catamorphisms.
As an example, recall (\ref{eq:180503a}):
\begin{eqnarray*}
\xymatrix{
        A \ar[d]_f
&&
        \Seq A
		\ar[d]_{|mmap f|}
&&
        |1 + A >< (Seq A)|
		\ar[ll]_{in_{\Seq A}}
		\ar[d]^{|id + id >< mmap f|}
\\
        |fT B|
&&
        |fT(Seq B)|
&
&
        |1 + A >< fT(Seq B)|
		\ar@@{.>}[ll]_{g}
}
\end{eqnarray*}
How do we build |g|? Clearly, the recipe given by (\ref{eq:991129c}) needs to be adapted:
%format mcataList g = "\scata{" g "}^\flat"
%format (blift(f)) = "\lfloor " f "\rfloor "
\begin{eqnarray*}
\xymatrix{
        A \ar[d]_f
&&
        \Seq A
		\ar[d]_{|mmap f|}
&&
        |1 + A >< (Seq A)|
		\ar[ll]_{in_{\Seq A}}
		\ar[d]^{|id + id >< mmap f|}
\\
        |fT B|
&&
        |fT(Seq B)|
&
&
        |1 + A >< fT(Seq B)|
		\ar@@{.>}[ll]_{g}
		\ar[d]^{|id + f >< id|}
\\
&&
&
&
        |1 + fT B >< fT(Seq B)|
		\ar@@{.>}[ull]^{|either (return.nil) (blift cons)|}
}
\end{eqnarray*}
where
\begin{code}
blift f(x,y) = do { a <- x; b <- y; return(f(a,b)) }
\end{code}
By defining
\begin{code}
mcataList g = cataList (either (return.f) (blift h)) where
              f = (g.i1)
              h = (g.i2)
\end{code}
we can write
\begin{eqnarray}
	|mmap f = mcataList (inList . (id + f >< id))|
\end{eqnarray}
where (recall) |inList = either nil cons|.

% \begin{code}
% ulift f(x,y) = do { b <- y; return(f(x,b)) }
%
% klift f(x,y) = do { b <- y; f(x,b) }
%
% ncataList g = cataList (either (return.g.i1) (ulift(g.i2)))
%
% msum =  mcataList (either zero add)
%
% seq =  mcataList inList
% \end{code}

%newpage \fbox{TEX CAPACITY EXCEEDED} \newpage \iffalse %--TEX CAPACITY EXCEEDED
%fi %TEX CAPACITY EXCEEDED
Handling monadic recursion in full generality calls for technical ingredients
called {\em commutative laws} which fall outside the current scope of this chapter.
%but this is enough to see \emph{where such a programming style comes from}.

\section{Where do monads come from?} \label{sec:200204a}
In the current context, a good way to find an answer to this question is to recall
the universal property of exponentials (\ref{eq:transUniv}):
\begin{eqnarray*}
k = \trans f \equivalent f = ap \comp (k \times id)
&&
        \myxym{
B^A
&
B^A \times A
	\ar[r]^{ap}
&
B
\\
C
	\ar[u]^{k=\trans f}
&
C \times A
	\ar[u]^{k \times id}
	\ar[ru]_{f}
}
\end{eqnarray*}
Let us re-draw this diagram by unfolding $B^A \times A$ into the composition of two functors
|fL(fR B)| where |fR X = expn X A| and |fL X = X >< A|:
\begin{eqnarray}
|k = curry f| \wider\equivalent |f = underbrace (ap . fL k)(uncurry k)|
&&
        \myxym{
|fR B|
&
|fL(fR B)|
	\ar[r]^{|ap|}
&
B
\\
C
	\ar[u]^{k=\trans f}
&
|fL C|
	\ar[u]^{|fL k|}
	\ar[ru]_{f}
}
	\label{eq:180526a''}
\end{eqnarray}
As we already know, this establishes the ($curry/uncurry$) isomorphism
\begin{eqnarray}
|fL C -> B| & \iso & |C -> fR B|
\label{eq:170430a}
\end{eqnarray}
assuming |fR| and |fL| as defined above.

Note how (\ref{eq:170430a}) expresses a kind of ``shunting rule" at type
level: |fL|s on the input side can be "shunted" to the output if replaced
by |fR|s. This is exactly what $curry$ and $uncurry$ do typewise. The corollaries
of the universal property can also be expressed in terms of |fR| and |fL|:
\begin{itemize}
\item	Reflection: |curry ap = id|, that is, |ap = uncurry id| -- recall (\ref{eq:exp-reflex})
\item	Cancellation: |uncurry id . fL (curry f) = f| -- recall (\ref{eq:999f})
\item	Fusion: |curry h . g = curry(h . fL g)| --- recall (\ref{eq:exp-fusion})
\item	Absorption: |(fR g) . (curry h) = curry(g.h)| --- recall (\ref{eq:999h})
\item	Naturality: |h . uncurry id = uncurry id . fL(fR h)|
\item	Functor: |fR h = curry(h . ap)|
\item	Closed definitions: |uncurry k = uncurry id . (fL k)| and |curry g = (fR g) . (curry id)|,
the latter following from absorption.
\end{itemize}

Now observe what happens if the functor composition |fL . fR| is swapped:
|fR(fL X) = expn ((X >< A)) A|. We get the \emph{state monad} out of this construction,
\begin{quote}
|(fR . fL)X = expn ((X >< A)) A = St A X|
\end{quote}
--- recall (\ref{eq:080613f}).
Interestingly, the universal property (\ref{eq:180526a''}) can be expressed also in terms of such
a monad structure, as the simple calculation shows:
\begin{eqnarray*}
\start
|k = curry f| \wider\equivalent |ap . fL k = f|
%
\just\equiv{ see above }
%
|k = (fR f) . (curry id)| \wider\equivalent |f = (uncurry k)|
%
\just\equiv{ swapping variables |k| and |f|, to match the starting diagram}
%
|f = (fR k) . (curry id)| \wider\equivalent |k = (uncurry f)|
%qed
\end{eqnarray*}
That is,
\begin{eqnarray}
k = |uncurry f| \wider\equivalent |f = underbrace (fR k . eta)(curry k)|
& ~~~~ &
        \myxym{
|fL B|
	\ar[d]_{|k=uncurry f|}
&
|fR(fL B)|
	\ar[d]_{|fR k|}
&
B
	\ar[l]_{|eta|}
	\ar[ld]^{f}
\\
C
&
|fR C|
}
	\label{eq:211008b}
\end{eqnarray}
for |eta = curry id|, the unit of the monad |fT = fR . fL|. To complete the definition of the
|fT| monad in this way, we recall (\ref{eq:080612c})
\begin{eqnarray}
|mu = fR(uncurry id)|
\end{eqnarray}
with type |rarrow((fT.fT) X)(mu)(fT X)|, where |id : fT X -> fT X|. From (\ref{eq:211008b}) one
draws, for instance,
\begin{eqnarray}
	|g . (uncurry f) = uncurry(fR g . f)|
\end{eqnarray}
and so on.
 

\subsubsection*{Adjunctions}
The reasoning we have made above for exponentials and the state monad generalizes
for any other monad. In general, an isomorphism of shape (\ref{eq:170430a})
is called an \emph{adjunction} of the
two functors |fR| and |fL|, which are said to be \emph{adjoint} to each other.
One writes $|fL| \dashv |fR|$ and says that |fL| is \emph{left} adjoint and that
|fR| is \emph{right} adjoint.
Using notation |floor k| and |ceil k| for the generic witnesses of the isomorphism
we write
% floor -> uncurry
% ceiling -> curry
\begin{eqnarray}
	\arLaw{|fL A -> B|}{|A -> fR B|}{|floor _|}{|ceil _|}{\iso}
	\label{eq:170429c}
\end{eqnarray}
cf.
\begin{eqnarray}
|k = ceil f| \wider\equivalent |f = underbrace (epsilon . fL k)(floor k)|
&&
        \myxym{
|fR B|
&
|fL(fR B)|
	\ar[r]^{|epsilon|}
&
B
\\
A
	\ar[u]^{|k= ceil f|}
&
|fL A|
	\ar[u]^{|fL k|}
	\ar[ru]_{f}
}
	\label{eq:180526a}
\end{eqnarray}
where |ap| was generalized to |epsilon|.

Generalizing section \ref{sec:200204a}, adjunction (\ref{eq:170429c}) has the
following properties: \emph{reflection}:
\begin{eqnarray}
	|ceil epsilon = id|
\end{eqnarray}
that is,
\begin{eqnarray}
	|epsilon = floor id|
\end{eqnarray}
\emph{cancellation}:
\begin{eqnarray}
	|epsilon . fL (ceil f) = f|
	\label{eq:200204d}
\end{eqnarray}
\emph{fusion}:
\begin{eqnarray}
	|ceil h . g = ceil(h . fL g)|
	\label{eq:200204b}
\end{eqnarray}
\emph{absorption}:
\begin{eqnarray}
	|(fR g) . (ceil h) = ceil(g.h)|
\end{eqnarray}
\emph{naturality}:
\begin{eqnarray}
	|h . epsilon = epsilon . fL(fR h)|
\end{eqnarray}
\emph{functor}:
\begin{eqnarray}
	|fR h = ceil(h . epsilon)|
\end{eqnarray}
Finally, from every adjunction (\ref{eq:170429c}) a monad |fT=fR.fL| arises
defined by
\begin{eqnarray}
\start |eta = ceil id|
	\label{eq:230301a}
\more  |mu= fR epsilon|
	\label{eq:230301b}
\end{eqnarray}
Thus the \emph{closed definitions}:
\begin{eqnarray}
	|floor k = epsilon . (fL k)|
\\
	|ceil g = (fR g) . eta|
\end{eqnarray}
(The last follows from absorption.)

From all this we can infer the generic version of |f .! g|,
\begin{eqnarray}
	|f.! g = ceil((floor f).(floor g))|
\end{eqnarray}
by replaying the calculation which lead to (\ref{eq:080612h}):
\begin{eqnarray*}
\start
	f \kcomp g
%
\just={ (\ref{eq:001230a}) }
%
	µ \comp \tf f \comp g
%
\just={ |fT=fR.fL|; |mu= fR(floor id)| }
%
	|fR(floor id). (fR(fL f)) . g|
%
\just={ functor |fR| }
%
	|fR(floor id. fL f) . g|
%
\just={ cancellation: |floor id. fL f = floor f|; |g = ceil(floor g)| }
%
	|fR(floor f) . ceil(floor g)|
%
\just={ absorption: |(fR g) . (ceil h) = ceil(g.h)| }
%
	|ceil((floor f).(floor g))|
%
\end{eqnarray*}

Finally, let us see another example of a monad arising from one such adjunction (\ref{eq:170429c}).
Recall exercise \ref{ex:170430b}, on page \pageref{ex:170430b}, where |pair/unpair|
witness an isomorphism similar to that of $curry/uncurry$, for |pair(f,g)=split f g|
and |unpair k = (p1.k,p2.k)|.
This can be cast into an adjunction as follows
\begin{eqnarray*}
\start
|k = pair(f,g) <=> (p1.k,p2.k) = (f,g)|
%
\just\equiv{ see below }
%
|k = pair(f,g) <=> (p1,p2).(fL k) = (f,g)|
\end{eqnarray*}
where |fL k = (k,k)|. Note the abuse of notation, on the righthand side,
of extending function composition notation to composition of \emph{pairs} of functions,
defined in the expected way: |(f,g).(h,k)=(f.h,g.k)|. Note that,  for |f : A -> B| and |g : C -> D|,
the pair |(f,g)| has type |(A->B)><(C->D)|. However, we shall abuse of notation again
and  declare the type |(f,g) : (A,C) -> (B,D)|.\footnote{Strictly speaking, we are not abusing notation but
rather working on a new \emph{category}, that is, another mathematical system where functions and objects always come in pairs. For more on categories see the standard textbook \cite{Ma71}.}
In the opposite direction, |fR(f,g)=f><g|:
\begin{eqnarray}
        \myxym{
|B><A|
&
|(B><A,B><A)|
	\ar[r]^-{|(p1,p2)|}
&
(B,A)
\\
C
	\ar[u]^{|k=pair(f,g)|}
&
|(C,C)|
	\ar[u]^{|(k,k)|}
	\ar[ru]_{|(f,g)|}
}
	\label{eq:200206a}
\end{eqnarray}
This is but another way of writing the universal property of products (\ref{eq:splitUniv}),
since |(f,g)=(h,k) <=> f = h && g = k| and |pair(f,g)=split f g|, recall exercise \ref{ex:170430b}.

What is, then, the monad behind this \emph{pairing} adjunction?
It is the \emph{pairing monad}
|(fR . fL) X = fR(fL X) = fR(X,X) = X >< X|, where
|eta = split id id| and |mu = p1 >< p2|.
This monad allows us to work with pairs regarded as 2-dimensional \emph{vectors}
|(y,x)|. For instance, the |do|-expression
\begin{quote}
|do { x <- (2,3) ; y <- (4,5) ; return (x+y) }|
\end{quote}
yields |(6,8)| as result in this monad --- the \emph{vectorial} sum of vectors |(2,3)| and |(4,5)|.
A simple encoding of this monad in Haskell is:
%format muP = "\mu "
\begin{code}
data P a = P(a,a) deriving Show

instance Functor P where
    fmap f (P(a,b)) = P(f a, f b)

instance Monad P where
   x >>= f = (muP.fmap f)  x
   return a = P(a,a)

muP :: P (P a) -> P a
muP(P(P(a,b),P(c,d))) = P(a,d)
\end{code}

\begin{exercise}
What is the vectorial operation expressed by the definition
\begin{quote}
|op k v = do { x <- v ; return(k><x) }|
\end{quote}
in the pairing monad?
\end{exercise}

\section{Adjoint catamorphisms}
We conclude this chapter with a general result that links adjunctions
(\ref{eq:180526a}) --- and therefore monads --- to the catamorphism
(\ref{eq:cataUniv}) recursion pattern. A very simple example motivates
what is to be achieved: the very simple implementation of addition of two
numbers |n| and |m|,
\begin{eqnarray}
\start
	|add(0,m) = m|
\more
	|add(n+1,m) = 1 + add(n,m)|
	\label{eq:200205c}
\end{eqnarray}
is clearly defined by induction on the first parameter |n| and yet it is not
a catamorphism.\footnote{Neither it is an anamorphism, although it is
of course a hylomorphism.} So we cannot use catamorphism laws to reason about |add|, which is
sad.

It turns out that |add| can be converted to a catamorphism once we \emph{curry} it
and go higher order, cf:
\begin{code}
curry add 0 m = m
curry add (n+1) m = 1 + curry add n m
\end{code}
that is
\begin{code}
curry add 0 = id
curry add(n+1) = (1+) . (curry add n)
\end{code}
and finally
\begin{eqnarray}
	|curry add = cata(either (const id) (((1+).)))|
	\label{eq:200204e}
\end{eqnarray}
Note the interplay between exponentials and catamorphisms. Can it be generalized?

Yes: let adjunction $|fL| \dashv |fR|$ be given, where the choice of symbols clearly
indicates which functor is the lower adjoint (|fL|) and which is the upper adjoint
(|fR|). Let |larrow (fF fT) inT fT| be an inductive type and
|phi : fL fF -> fG fL| be a natural transformation, that is, \emph{free theorem}
\begin{eqnarray}
	|phi . (fL fF k) = (fG fL k) . phi|
	\label{eq:200204c}
\end{eqnarray}
holds, for some functor |fG|. Then
\begin{eqnarray}
	|f . (fL inT) = h . fG f . phi| & |<=>| & |ceil f = cata(ceil(h . fG epsilon . phi))|
	\label{eq:200204f}
\end{eqnarray}
holds. Let us calculate this:
\begin{eqnarray*}
\start
	|ceil f = cata(ceil(h . fG epsilon . phi))|
%
\just\equiv{ cata-universal (\ref{eq:cataUniv}) }
%
	|ceil f . inT = ceil(h . fG epsilon . phi) . fF (ceil f)|
%
\just\equiv{ fusion (\ref{eq:200204b}) twice }
%
	|ceil (f . fL inT) = ceil(h . fG epsilon . phi . fL fF (ceil f))|
%
\just\equiv{ isomorphism |ceil _| ; natural-|phi| (\ref{eq:200204c}) }
%
	|f . fL inT = h . fG epsilon . fG fL (ceil f).phi|
%
\just\equiv{ functor |fG|; cancellation |epsilon. fL (ceil f) = f| (\ref{eq:200204d}) }
%
	|f . fL inT = h . fG f . phi|
\qed
\end{eqnarray*}
%
Expressed by diagrams, it becomes clear that the lefthand side of (\ref{eq:200204f})
is the |fG|-hylomorphism
\begin{eqnarray*}
\xymatrix{
	|fL muF|
		\ar[d]_{|f|}
&
&
	|fG fL muF|
		\ar[d]_{|fG f|}
&
	|fL fF muF|
		\ar@@/_1.5pc/[lll]_-{|fL inT|}
		\ar[l]^{|phi|}
\\
	|A|
&
&
	|fG A|
		\ar[ll]_{|h|}
\\
&
	|f = cata h . ana (phi . fL outT)|
}
\end{eqnarray*}
which is converted into the adjoint |fF|-catamorphism (righthand side):
\begin{eqnarray*}
\myxym{
	|muF|
		\ar[d]_{|(ceil f)|}
&
&
&
	|fF muF|
		\ar[lll]_{|inT|}
		\ar[d]_{|fF (ceil f)|}
\\
	|fR A|
&
&
&
	|fF fR A|
		\ar[lll]_{|ceil(h . fG epsilon . phi)|}
\\
	|A|
&
	|fG A|
		\ar[l]_{|h|}
&
	|fG fL fR A|
		\ar[l]_{|fG epsilon |}
&
	|fL fF fR A|
		\ar[l]_{|phi|}
\\
&
	|ceil f = cata(ceil(h . fG epsilon  . phi))|
}
\end{eqnarray*}


As example of application, let us check how (\ref{eq:200204e}) arises from
this result, for
\begin{code}
inT = either zero succ
f = add
fL X = X >< A
epsilon = ap
ceil f = curry f
fF X = 1 + X
\end{code}
(|A| is instantiated to |Nat0| in the current example.)
Then |fL fF X = (1 + X) >< A|. In general, |(1 + X) >< A| is isomorphic to
|A + X >< A|, which suggests |fG X = A + X|. Thus one chooses
\begin{code}
phi : (1 +  X) >< A -> A + X >< A
phi = (p2 + id).distl
\end{code}
which is an isomorphism. The next step is to calculate |h = either h1 h2|:
\begin{eqnarray*}
\start
	|add . (either zero succ >< id) = either h1 h2 . (id + add) . (p2 + id).distl|
%
\just\equiv{ |undistl = either ( i1 >< id ) ( i2 >< id )| (\ref{eq:180211a}); |+|-absorption }
%
	|add . (either zero succ >< id) . (either ( i1 >< id ) ( i2 >< id )) = either (h1 . p2) (h2 . add)|
%
\just\equiv{ |+|-fusion ; functor-|><| ; |+|-eq}
%
	|lcbr(add.(zero >< id) = h1 . p2)(add.(succ><id)=h2 . add)|
%
\just\equiv{ pattern-match with (\ref{eq:200205c}) }
%
	|lcbr(h1 = id)(h2 = (1+))|
%
\end{eqnarray*}
Then, by (\ref{eq:200204f}):
\begin{eqnarray*}
	|curry add = cata(curry(either id ((1+)) . (id + ap) . (p2+id).distl))|
\end{eqnarray*}
The final step is to simplify the \emph{gene} of catamorphism |curry add|:
\begin{eqnarray}
\start
	|either f g = curry(either h1 (h2) . (id + ap) . (p2+id).distl)|
	\nonumber
%
\just\equiv{ (\ref{eq:200205b}) and (\ref{eq:200205a})  }
%
	|either f g = curry(either (h1.p2) (h2. ap) . ap) . either (curry i1)(curry i2)|
	\nonumber
%
\just\equiv{ coproduct laws ; (\ref{eq:200205b}) twice }
%
	|lcbr(f = curry (h1.p2))(g = curry(h2. ap)|
	\nonumber
%
\just\equiv{ (\ref{eq:150711b}) and (\ref{eq:200205d}); constant functions }
%
	|lcbr(f = const h1)(g =(h2.))|
	\label{eq:210826c}
\end{eqnarray}
For |h1=id| and |h2=(1+)| we get
\begin{eqnarray*}
	|lcbr(f = const id)(g =((1+).))|
\end{eqnarray*}
and therefore
	|curry add = cata(either (const id) (((1+).)))| --- cf. (\ref{eq:200204e}) ---, as expected.

\def\omitted{\paragraph{Accumulations} % JNO thinl
The adjoint catamorphism construction (\ref{eq:200204f}) explains a number of
useful programming techniques. For instance, mutual recursion
(recall section \ref{sec:180804c}) can be shown to derive from (\ref{eq:200204f})
via the \emph{pairing} adjunction (\ref{eq:200206a}).

Another useful outcome of the same result is the optimization technique known as \emph{adding accummulation parameters} to convert quadratic-time to linear-time
programs.\footnote{The so-called \emph{structural recursion theorem}
% (Thm. 3.1), pag. 73
of \cite{BM97} is a special case of (\ref{eq:200204f}). See also footnote
\ref{fn:200205f} of chaper \ref{ch:990126i} later on.}
This arises as a particular situation in cata-fusion (\ref{eq:cata-fusion})
\begin{eqnarray*}
	\xymatrix{
		|T|   \ar[d]_-{|cata f|} &
			\ff{|T|  } \ar[d]^{\ff{|cata f|}} \ar[l]_-{|inF|}
		\\
			A \ar[d]_-{k} & \ff A \ar[l]^-{f} \ar[d]^{\ff k}
		\\
			|expn A A| & |fF((expn A A))| \ar[l]^-{g}
	}
\end{eqnarray*}
where |k : A -> expn A A| such that |k a e = a|, that is, |e| is the unit of |k|.
Provided |k.f = g . F k|, we have:
\begin{eqnarray*}
\start
	|k . (cata f) = cata g|
%
\just\equiv{ go pointwise }
%
	|k ((cata f x))= cata g x|
%
\just\implies{ add unit element }
%
	|k ((cata f x)) e = cata g x e|
%
\just\equiv{ |k a e = a|; use uncurried notation}
%
	|cata f x = uncurry(cata g)(x,e)|
%
\end{eqnarray*}
Thus |cata f x = cata g x e = uncurry (cata g)(x,e)|.
The second parameter of |uncurry (cata g)| is called an \emph{accumulation} parameter.
Let us inspect the proviso of cata-fusion (|k . f = g . fF k|)
by using (\ref{eq:200204f}), where |fL f = f >< id| in this case:
\begin{eqnarray}
\start
	|k . f = g . fF k|
	\nonumber
%
\just\equiv{(\ref{eq:200204f}) letting |k = curry m| and |g = curry(h.fG ap.phi)|, for some |fG| etc}
%
	|curry(m . fL f) = curry(h.fG ap.phi . fL fF (curry m))|
	\nonumber
%
\just\equiv{ curry isomorphism and |phi|-natural }
%
	|m . fL f = h.fG ap. fG fL (curry m) . phi|
	\nonumber
%
\just\equiv{ functor |fG|; |ap.fL(curry m) = m| }
%
	|m . fL f = h.fG m . phi|
	\nonumber
%
\just\equiv{ |fL f = f >< id| }
%
	|m . (f >< id) = h.fG m . phi|
	\label{eq:210826b}
%
\end{eqnarray}
Condition (\ref{eq:210826b}), cf
\begin{eqnarray*}
\xymatrix{
	|A><A|
		\ar[d]_{|m|}
&
&
	|fF A >< A|
		\ar[d]^{|phi|}
		\ar[ll]_{|f><id|}
\\
	|A|
&
	|fG A|
		\ar[l]_{|h|}
&
	|fG(A><A)|
		\ar[l]_-{|fG m|}
}
\end{eqnarray*}
is a sufficient condition for |cata g| --- where |g = curry(h.fG ap.phi)| ---,
to be such that |cata f x = (cata g) x e|.

In summary, adding an accumulation parameter to a catamorphism |cata f : fT -> A| means finding a monoid
|larrow (1+A><A) (either (const e) m) A| and a function |larrow (fG A) h A| such that 
(\ref{eq:210826b}) holds, where |fG| is adjoint to |fF| via |phi|.

Let us illustrate this for natural number catamorphisms in which, as we have seen,
\begin{quote}
	|fF X = 1 + X|
\\	|fG X = A + X|
\\	|phi = (p2+id).distl|
\\	|g = curry(either h1 h2.fG ap.phi) = either (const h1)((h2.))| --- recall (\ref{eq:210826c}).
\end{quote}
Then:
\begin{eqnarray*}
\start
	|m . (f >< id) = h.fG m . phi|
%
\just\equiv{let |h=either h1 h2|; isomorphism |distl|}
%
	|m . (f >< id) . undistl = either (h1.p2) (h2.m)|
%
\just\equiv{let |f =either (const i) b|; |undistl = either (i1><id)(i2><id)|}
%
	|m . (either (const i >< id)(b >< id)) = either (h1.p2) (h2.m)|
%
\just\equiv{ coproducts; then go pointwise }
%
	|lcbr(
		m (i,y) = h1 y
	)(
		m (b x , y) = h2 (m(x,y))
	)|
\end{eqnarray*}
Let us apply this to |(a*)=cata(either (const 0)((a+))|, which clearly suggests the choice |m(x,y)=x+y|:
\begin{eqnarray*}
	|lcbr(
		i+y = h1 y
	)(
		(a+x)+y = h2 (x+y)
	)|
\end{eqnarray*}
Clearly, |h1 = id| (since |i=0|) and |h2=(a+)| fit in and
\begin{quote}
	|a* x = aux x 0 where aux = cata(either (const id)((a+).))|
\end{quote}
\ERRO Pointwise (|m| is the accumulation parameter):
\begin{quote}
	|aux 0 m = m|
\\
	|aux(n+1) m = aux n (a+m)|
\end{quote}
} % ommitted

\paragraph{Banana-split revisited}
It is interesting to see what the adjoint catamorphism theorem (\ref{eq:200204f}) offers us for the pairing adjunction (\ref{eq:200206a}), in which (recall):
\begin{eqnarray*}
\start	|fL f = (f,f)|
\more	|epsilon = (p1,p2)|
\more	|ceil((f,g)) = pair(f,g) = split f g|
\end{eqnarray*}
Given |fF|, define |fG(f,g)=(fF f,fF g)|, so that |fL fF f = (fF f,fF f) = fG(f,f) = fG fL f|. So |phi| is the identity. Then
\begin{eqnarray*}
	|f . (fL inT) = h . fG f . phi| & |<=>| & |ceil f = cata(ceil(h . fG epsilon . phi))|
\end{eqnarray*}
instantiates to:
\begin{eqnarray*}
\start
	|(f,g) . (inT,inT) = (h,k) . (fF f,fF g) <=> pair(f,g) = cata(pair((h,k) . (fF p1, fF p2)))|
%
\just\equiv{ equality and composition of pairs of functions }
%
	|lcbr(
		f . inT = h . fF f
	)(
		g . inT = k . fF g 
	) <=>
		pair(f,g) = cata(pair(h . fF p1, k . fF p2))|
%
\just\equiv{ universal-cata (twice); |pair(f,g) = split f g| }
%
	|lcbr(
		f = cata h
	)(
		g = cata k
	) <=>
		split f g = cata(split (h . fF p1)(k . fF p2))|
%
\just\equiv{ equal by equal substitution }
%
	|split (cata h)(cata k) = cata(split (h . fF p1)(k . fF p2))|
\end{eqnarray*}
This outcome is nothing more than the law of banana-split (\ref{eq:bananaSplit}). This calculation shows that this law --- which was proved in section \ref{sec:210108c} as a special case of mutual recursion --- is actually a result independent from that other law: it rather is the adjoint catamorphism theorem instantiated to the pairing adjunction (\ref{eq:200206a}).

\section{Bibliography notes}
The use of monads in computer science started with Moggi \cite{Mog89}, who
had the idea that monads should supply the extra semantic information needed
to implement the lambda-calculus theory. Haskell \cite{J*03} is among the
computer languages which make systematic use of monads for implementing effects
and imperative constructs in a purely functional style.

Category theorists invented monads in the 1960's to concisely express certain aspects of
universal algebra. Functional programmers invented list comprehensions in the 1970's to
concisely express certain programs involving lists. Philip Wadler \cite{Wa89}
made a great contribution to the field by showing that list comprehensions
could be generalised to arbitrary monads and unify with imperative ``do''-notation
in case of the monad which explains imperative computations.

Monads are nowadays an essential feature of functional programming and are
used in fields as diverse as language parsing \cite{HM93a}, com\-ponent-oriented
programming \cite{Ba01}, strategic programming \cite{LV03}, multimedia \cite{Hu00}
and probabilistic programming \cite{EK06}. Adjunctions play a major role in \cite{Hi13}, which gives a full account of adjoint recursive patterns.

\setcounter{page}{158} %%%% CF TEX CAPACITY PROBLEM

%part{Moving Away From (Pure) Functions}

\part{Calculating with Relations}\label{pt:20200908c}

\iffalse % GALOIS SPECS
\chapter{Specifying functional programs}

\fbox{
\begin{minipage}{0.7\textwidth}
This and the following chapters the book are currently being written from the
slides of my formal methods master course.\footnote{See \emph{\href{https://www.researchgate.net/publication/272476403_Lecture_Notes_on_Relational_Methods_in_Software_Design}{Lecture Notes on Relational Methods in Software Design}} available from {Research Gate} \cite{Ol15c}. }
Comments, typos, errors are welcome.
\end{minipage}
}
\fi % GALOIS SPECS

\chapter{When everything becomes a relation}
\label{ch:120411a}
In the previous chapters, (recursive) functions were taken as a basis for expressing
computations, exhibiting powerful laws for calculating programs in a
functional programming style.

When writing such programs one of course follows
some line of thought concerning \emph{what} the programs should do.
\emph{What the program should do} is usually understood as the \emph{specification}
of the problem that motivates writing the program in the first place.
Specifications can be quite complex in real life situations.
In other situations, the complexity of the program that one
writes is in strong contrast with the simplicity of the specification. Take the
example of sorting, which can be specified as simply as:
\begin{quote}
\emph{Yield an ordered permutation of the input}.
\end{quote}
Where do you find, in this specification, the
orientation (or inspiration) that will guide a programmer towards writing a bi-recursive
program like \emph{quicksort}?

The question is, then: are functions \emph{enough} for one to calculate functional programs
from given specifications? It is the experience in other fields of mathematics that sometimes
it is easier to solve a problem of domain D if one generalizes from D to some wider
domain  D'. In the field of real numbers, for instance, most of trigonometric
identities are easily derived (and memorized) from Euler's formula involving complex
exponentials: |expn e (i x)=cos x + i (sin x)|.

Similarly, it turns out that functional programs often become easier to calculate if
one handles them in the wider mathematical domain of binary relations. At school one
gets accustomed to the sentence: {\em functions are special cases of relations}.
This chapter puts the usefulness of such a piece of common knowledge into practice.

%fbox{not given in the current version of this textbook}

\section{Functions are not enough}
Consider the following fragment of a  requirement posed by a (fictional) telecommunication
company:
\begin{quote}\it\small
(...) For each
\emph{list of calls} stored in the mobile phone (e.g.\ numbers dialled, SMS messages, lost calls), the \emph{store}
operation should work in a way such that
(a)
the more recently a \emph{call} is made the more accessible it is;
(b)
no number appears twice in a list;
(c)
only the last 10 entries in each list are stored.
\end{quote}
A tentative, first implementation of the $store$ operation could be
\begin{code}
store: Call -> Seq Call -> Seq Call
store c l = c : l
\end{code}
However, such a version of function |store| {fails} to preserve the \emph{properties}
required in the fragment above in case
|length l = 10|, or
|c ins elems l|, where |elems| yields the set of all elements of a finite list,
\begin{eqnarray}
	|elems = cata (either empty join)|
	\label{eq:zzz}
\end{eqnarray}
for |empty _ = {}| and |join(a,s) = cup {a} s|.

Clearly, the designer would have to \emph{restrict} the application of $store$
to input values $c,l$ such that the given properties are preserved.
This could be achieved by adding a so-called ``\emph{pre-condition}":
\begin{code}
store: Call -> Seq Call -> Seq Call
store c l = c : l
pre (length l < 10 && not (c ins elems l))
\end{code}
Such a pre-condition is a predicate telling the range of \emph{acceptable}
input values, to be read as a \emph{warning} provided by the designer that
the function will not meet the requirements outside such a range of input values.

Thus $store$ becomes a \emph{partial function}, that is, a function defined
only for some of its inputs. Although this partiality can be regarded as a symptom
that the requirements have been partly misunderstood, it turns out that \emph{partial}
functions are the rule rather than the exception in mathematics
and computing.
For example, in the numeric field, we know what $1/2$ means; what about
$1/0$? Ruling out this case means that \emph{division} is a partial function.
In list processing, given a sequence $s$, what does |s !! i| mean in case |i > length s|?
--- list {indexing} is another \emph{partial} operation (as are |head|, |tail| and so on).

\emph{Partial functions} are not new to readers of this \doc: in section \ref{sec:180409a},
the |Maybe| monad was used to ``totalize" partial functions. In this chapter we shall adopt
another strategy to cope with partiality, and one that has extra merits: it will also cope with
computational nondeterminacy and vagueness of software requirements.

%Since the formal meaning of a program must always be a well-defined mathematical object,
%one has to ensure that no partial function is used outside its domain of definition.
%The following strategy is recommended for safety, in presence of partial functions:
%\begin{itemize}
%\item	Write your model as if all functions were total.
%\item	Chase the partial ones and add predicates to the pre-condition which ensure that
%all such functions are called within their domain of definition.
%\end{itemize}
%
%\paragraph{Pre-conditions for safety.}
%Shifting to another example, we wish to specify the operation which subtracts
%the first from the second element of a finite sequence of natural numbers
%\begin{eqnarray*}
%\TYPE
%Sub21: \Seq\N \rightarrow \N_0
%\FUNC
%Sub21 \ s \deffVdm s\ 2 - s\ 1
%\end{eqnarray*}
%but realize that the argument list is \emph{required} to have at least two
%elements. So we add a pre-condition
%\begin{eqnarray*}
%\TYPE
%Sub21: \Seq\N \rightarrow \N_0
%\FUNC
%Sub21 \ s \deffVdm s\ 2 - s\ 1
%\PRE
%length\ l \geq 2
%\end{eqnarray*}
%However, within the natural numbers, subtraction is a partial function too.
%So we add another clause to the precondition:
%\begin{eqnarray}
%\TYPE
%Sub21: \Seq\N \rightarrow \N_0
%\nonumber
%\FUNC
%Sub21 \ s \deffVdm s\ 2 - s\ 1
%\nonumber
%\PRE
%length\ l \geq 2 \wider\land s\ 2 \geq s\ 1
%\label{eq:071015a}
%\end{eqnarray}
%What if the specifier decides to write clause
%\begin{eqnarray}
%\textbf{pre~} length\ l = 2 \wider\land s\ 2 \geq s\ 1
%\label{eq:071015b}
%\end{eqnarray}
%instead?

It can be shown that the following evolution of |store|,
\begin{eqnarray}
|store c = (take 10) . (c:) . filter (c /=)|
\label{eq:070321a}
\end{eqnarray}
meets all requirements above with no need for preconditions, the extra components |take 10| and |filter (c /=)| being added to comply with requirements (c) and (b), respectively.

Implementation (\ref{eq:070321a}) alone should be regarded as example of
how functional programs can be built compositionally in a requirement-driven
fashion. It does not, however, give any guarantees that the requirements
are \emph{indeed} met. How can we ensure this in the compositional way advocated
in this \doc\ since its beginning? The main purpose of this chapter is to
answer such a question.

\section{From functions to relations}
The way functions are handled and expressed in standard maths books,
e.g.\ in analysis and calculus,
\begin{quote}
|y = f(x)|
\end{quote}
is indicative that, more important than the \emph{reactive} behaviour of |f|,
%
\begin{center}\small
\unitlength=0.8pt
\begin{picture}(230,50)(-110,-25)
%thicklines
\put(-40,-25){\framebox(80,50){$f$}}
\put(-70,0){\vector(1,0){30}}
\put(+40,0){\vector(1,0){30}}
\put(-90,0){\makebox(0,0){|x ins A|}}
\put(+100,0){\makebox(0,0){|(f x) ins B|}}
\end{picture}
\end{center}
which was the starting point of section \ref{sec:180409b},
mathematicians are more interested in expressing the input/output \emph{relationship} of |f|,
that is, the set of all pairs $(y,x)$ such that |y=f x|. Such a set of pairs is often
referred to as the ``graph" of |f|, which can be plotted two-dimensionally in case types
|A| and |B| are linearly ordered. (As is standard in e.g.\ mathematical analysis, where |A|=|B|=|Real|,
the real numbers.)

It turns out that such a \emph{graph} can be regarded as a special case of a
\emph{binary relation}.
Take for instance the following functional declaration
\begin{eqnarray*}
|lcbr	(succ : Nat0 -> Nat0)
	(succ x = x + 1)
|
\end{eqnarray*}
which expresses the computation rule of the \emph{successor} function.
Writing |y = succ n| establishes the \emph{binary relation} |y = x +1|.
This binary relation ``coincides" with |succ| in the sense that writing
\begin{eqnarray*}
|lcbr	(succ : Nat0 -> Nat0)
	(y succ x <=> y = x + 1)
|
\end{eqnarray*}
means the same as the original definition, while making the i/o relationship explicit.
Because there is \emph{only one} |y| such that |y = x + 1| we can safely drop both |y|s from
|y succ x <=> y = x + 1|, obtaining the original |succ x = x + 1|.

The new style is, however, more expressive, in the sense that it enables
us to declare \emph{genuine} binary relations, for instance
\begin{eqnarray}
|lcbr	(R : Nat0 -> Nat0)
	(y R x <=> y >= x + 1)
|
	\label{eq:180804b}
\end{eqnarray}
In this case, not only |x| and |y| such that |y=x+1| are admissible, but also |y=x+2|, |y=x+3| and so on.
It also enables us to express the \emph{converse} of any function --- an operation hitherto the privilege of
isomorphisms only (\ref{eq:060912a}):
\begin{eqnarray}
	|y f x <=> x (conv f) y|
\end{eqnarray}
Converses of functions are very useful in problem solving, as we shall soon see.
For instance, |larrow Nat0 (conv succ) Nat0| denotes the \emph{predecessor} relation in |Nat0|. It is not a function because no |y| such that |y (conv succ) 0| exists
--- try and solve |0=y+1| in |Nat0|.

The intuitions above should suffice for us to start generalizing what we know about
functions, from the preceding chapters, to binary relations. First of all,
such relations are denoted by \emph{arrows} exactly in the same way functions are.
So,
\begin{quote}
we shall write
\(
R : \larrow A{}B
\),
\(
R : \rarrow A{}B
\),
\(
\larrow A{R}B
\) or
\(
\rarrow A{R}B
\)
to indicate that relation $R$ relates $B$-values to $A$-values.
\end{quote}
That is, relations are typed in the same way as functions.

Given binary relation |R : B <- A|, writing |b R a| (read: ``|b| is related to |a| by |R|'')
means the same as |a(conv R)b|, where |conv R| is said to be the \emph{converse} of |R|.
In terms of grammar, |conv R| corresponds to the \emph{passive voice} --- compare e.g.\
\begin{quote}
|(underbrace John b) (underbrace loves R) (underbrace Mary a)|
\end{quote}
with
\begin{quote}
|(underbrace Mary a) (underbrace(is loved by)(conv R) (underbrace John b)|
\end{quote}
That is, |conv((loves))| = |(is loved by)|. Another example:
\begin{quote}
$Catherine\ eats\ the\ apple$
\end{quote}
--- $R=(eats)$, active voice --- compared with
\begin{quote}
$the\ apple\ is \ eaten\ by \ Catherine$
\end{quote}
--- $\conv{R}=(is\ eaten\ by)$, passive voice.

% For the record: \begin{eqnarray} |b R a| & |<=>| & |a (conv R) b| \end{eqnarray}

Following a widespread convention, functions are denoted by lowercase characters (e.g.\ $f$,
$g$, $\phi$) or identifiers starting with lowercase characters, while uppercase
letters are reserved to arbitrary relations. In the case of functions (|R:=f|), |b f a| means
exactly |b =f a|. This is because functions are \emph{univocal},
that is, no two different $b$ and $b'$ are such that |b f a && b' f a|.
In fact, the following facts hold about \emph{any} function $f$:
\begin{itemize}
\item	\emph{Univocality} (or \aspas{left} uniqueness) ---
\begin{eqnarray}
	\arrayin{b \ f \ a \land b' \ f \ a & \implies & b = b' }
	\label{eq:041213a}
\end{eqnarray}
\item	\emph{Leibniz principle} ---
\begin{eqnarray}
	\arrayin{ a = a' & \implies & f \ a = f \ a' } \label{eq:041213b}
\end{eqnarray}
\end{itemize}
Clearly, not every relation obeys (\ref{eq:041213a}), for instance
\begin{eqnarray*}
2 < 3 \land 1 < 3 & \not\Rightarrow & 2 = 1
\end{eqnarray*}
Relations obeying (\ref{eq:041213a}) will be referred to as \emph{simple},
according to a terminology to follow shortly.

Implication (\ref{eq:041213b}) expresses the (philosophically) interesting fact that
no function (observation) can be found able to distinguish between two equal objects.\footnote{%
That is, if some function (observation) |f| is found such that |f a /= f a'|, then |a/=a'|) }
This is another fact true about functions which does not generalize to binary relations,
as we shall see when we come back to this later.

Recapitulating:
we regard \emph{function} $f : A \tfunc B$ as the binary relation
which relates
	$b$ to $a$ iff $b = f\ a$.
	So,
\begin{eqnarray}
	\mbox{$b \ f \ a\ $ literally means $\ b=f\ a$}
	\label{eq:131015a}
\end{eqnarray}
The main purpose of this chapter is to give a smooth generalization of
\begin{eqnarray*}
	\fbox{$\arrayin{&\rule{0pt}{1.3em}\larrow A f B&\\ &b = f \ a&}$}
& \mbox{~ towards ~ } &
	\fbox{$\arrayin{&\rule{0pt}{1.3em}\larrow A R B&\\ &b \ R \ a&}$}
\end{eqnarray*}

\section{Pre/post conditions} \label{sec:180903f}
It should be noted that relations are used in virtually every body of science
and it is hard to think of another way to express human knowledge in philosophy,
epistemology and common life, as suggestively illustrated in figure \ref{fig:180409c}.
This figure is also illustrative of another popular ingredient when using relations
--- the \emph{arrows} drawn to denote relationships.\footnote{Our extensive use of arrows to denote relations in the sequel is therefore rooted on common, informal practice. Unfortunately, mathematicians do not follow such practice and insist on regarding relations just as sets of pairs.}
\begin{figure}\small
\begin{center}
	\includegraphics[width=0.99\textwidth]{prideandprejudice.jpg}
\end{center}
\caption{\label{fig:180409c} \footnotesize Personal relationships among the main characters of the novel \emph{Pride and Prejudice}, by Jane Austin, 1813.
(Source: \href{https://en.wikipedia.org/wiki/Pride_and_Prejudice}{Wikipedia})
}
\end{figure}

In real life, ``everything appears to be a {relation}''. This has lead software
theorists to invent linguistic layouts for relational specification, leading
to so-called \emph{specification languages}. One such language, today historically
relevant, is the language of the Vienna Development Method (VDM). In this
notation, the relation described in (\ref{eq:180804b}) will be written:
\begin{eqnarray*}
\start
	|R (x: Nat0) y: Nat0|
\more
	|post y >= x + 1|
\end{eqnarray*}
where the clause prefixed by |post()| is said to be a post-condition. The
format also includes pre-conditions, if necessary. Such is the case of the
following |pre()/post()|-styled specification of the operation that extracts
an arbitrary element from a set:
\begin{eqnarray}
\begin{array}{rcl}
\start
	|Pick (x: Pow A) (r:A, y: Pow A)|
\more
	|pre x /= {}|
\more
	|post r ins x && y = x - { r }|
\end{array}
	\label{eq:141002b}
\end{eqnarray}
Here |Pow A = { X || X atmost A}| is the set of all subsets of |A|. Mapping
this back to the relational format of (\ref{eq:180804b}), |Pick| is the relation
defined by:
\begin{eqnarray*}
\start
|lcbr(
	Pick: Pow A -> (A >< Pow A)
)(
	(r,y) Pick x <=> x /= {} && r ins x && y = x - { r }
)|
\end{eqnarray*}
Note how |(r,y) Pick {} <=> False| for whatever |r,y|.
% where the conjunction is understood non-strict to avoid undefinedness of |r ins x| when |x={}|.
Here follows the specification of \emph{sorting} written in such |pre()/post()|-style,
%
\begin{eqnarray}
\begin{array}{rcl}
\start
	|Sort (x: Seq A) y: Seq A|
\more
	|post ((ord y) && bag y = bag x)|
\end{array}
\end{eqnarray}
where |ord| is the predicate defined in section \ref{sec:180804c} and |bag|
is the function that extracts the multiset of elements of a finite list.\footnote{Recall
that |ord| assumes an ordering on type |A|. For further developments on this specification see exercise \ref{ex:180805a} later on.}
Note how |Sort| defines sorting independently of giving an explicit algorithm. In fact,
the |pre()/post()|-style provides a way of \emph{hiding} the algorithmic
details that any particular functional implementation is bound to include.

Wherever a post-condition is intended to specify a function $f$, one refers
to such a condition as an \emph{implicit specification} of $f$. Examples:
the \emph{explicit} definition of the |abs| function
\begin{code}
	abs: Int -> Int
	abs i = if i<0 then -i else i
\end{code}
followed by an \emph{implicit specification} of the same function:
\begin{quote}
	|abs (i:Int) r: Int|
\\
	|post (r >= 0 && (r=i |||| r=-i))|
\end{quote}
The explicit definition of |max| function
\begin{quote}
	|max: Int >< Int -> Int|
\\
	|max(i,j) = if i <= j then j else i|
	%label{eq:111012b}
\end{quote}
and its \emph{implicit specification}:
\begin{quote}
	|max (i:Int,j:Int) r:Int|
\\
	|post (r ins {i,j} && i <=  r && j <= r)|
\end{quote}

Of a different nature is the following post-condition:
\begin{quote}
	|Sqrt: (i:Real) r: Real|
\\
	|post (expn r 2 = i)|
\end{quote}
Here the \emph{specifier} is telling the \emph{implementer} that either solution
$r = +\sqrt i$ or $r = -\sqrt i$ will do.\footnote{This aspect of formal specification is called
\emph{vagueness}.}
Indeed, \emph{square root} is not a function --- it rather is the binary relation:
\begin{eqnarray}
	|r Sqrt i <=> expn r 2 = i|
	\label{eq:180805d}
\end{eqnarray}

We proceed with a thorough study of the concept of a binary relation,
by analogy with a similar study carried out about functions in chapter \ref{ch:990122a}.

\section{Relational composition and converse}
Such as functions, relations can be combined via composition ($R \comp S$),
defined as follows:
\begin{eqnarray}
	\xymatrix@@C=3ex{
		B
			&
			A
			\ar[l]_R
			&
			C
			\ar[l]_S
			\ar@@/^1pc/[ll]^-{R\comp S}
	}
~~~
b (R\comp S) c \wider\equiv \rcb \exists a{b \ R \ a}{a \ S \ c}
	\label{eq:051118b-def}
\end{eqnarray}
Example: $Uncle = Brother \comp Parent$, expanding to
\begin{eqnarray*}
	u\ Uncle\ c \wider\equiv \rcb\exists p{}{u \ Brother \ p \land p \ Parent \ c}
\end{eqnarray*}

An explanation on the |exists|-notation used above is on demand:
|exists| is an instance of a so-called \emph{quantifier}, a main ingredient of formal logic.
In this \doc\ we follow the so-called \emph{Eindhoven quantifier} notation, whereby
expressions of the form
\begin{quote}
|rcb forall x P Q|
\end{quote}
mean
\begin{quote}
``\emph{for \textbf{all} |x| in the range |P|, |Q| holds}"
\end{quote}
where |P| and |Q| are logical expressions involving |x|; and expressions of the form
\begin{quote}
|rcb exists x P Q|
\end{quote}
mean
\begin{quote}
``\emph{for \textbf{some} |x| in the range |P|, |Q| holds}".
\end{quote}
Note how the symbols |exists| and |forall| ``flip" letters |E| (exists) and |A| (all), respectively.
|P| is known as the \emph{range} of the quantification and
|Q| as the quantified \emph{term}.\footnote{In particular, |Q| or |P| can be universally |False| or |True|.
Assertions of the form |rcb forall x True Q| or |rcb exists x True Q| are abbreviated to
|rcb forall x () Q| or |rcb exists x () Q|, respectively.}
%
This logical notation enjoys a well-known set of properties, some of which
are given in appendix \ref{sec:180805b}. As an example, by application of
the |exists|-trading rule (\ref{eq:141125a}), predicate
|rcb exists a (b R a)(a S c)|
in (\ref{eq:051118b-def}) can be written
|rcb exists a () (b R a && a S c)|.

Note how (\ref{eq:051118b-def})
% of the \textbf{PF}\footnote{PF stands for ``point-free''.}-transform
\emph{removes} |exists| and bound variable |a| when applied from right to left.
This is an example of conversion from \emph{pointwise} to \emph{pointfree} notation, since ``point" |a| also disappears.
Indeed, we shall try and avoid lengthy, complex |forall,exists|-formulae by converting them to {pointfree}
notation, as is the case in (\ref{eq:051118b-def}) once relational composition is used.

A simple calculation will show how (\ref{eq:051118b-def}) instantiates to (\ref{eq:990115c}) for the
special case where $R$ and $S$ are functions (|R,S := f,g|):
\begin{eqnarray*}
%
	b (f \comp g) c & \equiv & |rcb exists a () (b f a && a g c)|
%
\just\equiv{ functions are univocal (simple) relations }
%
	\rcb\exists a {} {b = f \ a \land a = g \ c}
%
\just\equiv{ |exists|-trading rule (\ref{eq:141125a}) }
%
	|rcb exists a (a= g c) (b = f a)|
%
\just\equiv{ |exists|-``one-point'' rule (\ref{eq:141010c}) }
%
	|b = f (g c)|
%
\qed
\end{eqnarray*}

Like its functional version (\ref{eq:698x}), relation composition is associative:
\begin{eqnarray}
R \comp (S \comp P) = (R \comp S) \comp P
\end{eqnarray}
Everywhere $T = R \comp S$ holds, the replacement of $T$ by $R \comp S$ will be referred
to as a ``factorization'' and that of $R \comp S$ by $T$ as ``fusion''.
%(Equation (\ref{eq:050523c}) is thus an example of a factorization.)
Every relation $\larrow A R B$ admits two trivial factorizations,
\begin{eqnarray}
	\begin{lcbr}
	{R = R \comp id_A}\\{R = id_B  \comp R}
	\end{lcbr}
\end{eqnarray}
where, for every $X$, $id_X$ is the identity relation relating every element
of $X$ with itself (\ref{eq:990124a}).
In other words: the identity (equality) \emph{relation} coincides with the identity \emph{function}.

In section \ref{sec:Isos} we introduced a very special case of function $f$
--- isomorphism --- which has a converse $f°$ such that (\ref{eq:060912a}) holds.
A major advantage of generalizing functions to relations is that \emph{every} relation
|rarrow A R B| has a converse |larrow B (conv R) A| defined by
\begin{eqnarray}
	|b R a| & |<=>| & |a (conv R) b|
\end{eqnarray}
--- the \emph{passive voice} written relationally, as already mentioned.
Two important properties of converse follow: it is an involution
\begin{eqnarray}
	|conv((conv R)) = R|
	\label{eq:020624b}
\end{eqnarray}
and it commutes with composition in a contravariant way:
\begin{eqnarray}
	(R \comp S)° = S° \comp R°
	\label{eq:020624d}
\end{eqnarray}
Converses of functions enjoy a number of properties from which the following is singled
out as a way to introduce / remove them from logical expressions:
%
\begin{eqnarray}
	|b(conv f . R . g)a|
&
\equiv
&
	|(f b) R (g a)|
	\label{eq:040120c} %-- guardanapo
\end{eqnarray}
For instance, the consequent of implication (\ref{eq:041213b})
could have been written $a(f° \comp id \comp f)a'$, or even simpler as $a(f° \comp f)a'$,
as it takes very little effort to show:
\begin{eqnarray*}
&&
a(f° \comp id \comp f)a'
%
\just\equiv{ (\ref{eq:040120c}) }
%
(f\ a) id (f\ a')
%
\just\equiv{ $b \ f \  a \equiv b = f \ a$ }
%
(f\ a) = id (f\ a')
%
\just\equiv{ (\ref{eq:990124a}) }
%
f\ a = f\ a'
%
\qed
\end{eqnarray*}

\begin{exercise}
Let |sq x = expn x 2| be the function that computes the square of a real number.
Use (\ref{eq:040120c}) to show that (\ref{eq:180805d}) reduces to
\begin{quote}
	|Sqrt = conv sq|
\end{quote}
in relational pointfree notation.
\end{exercise}

\begin{exercise}
Give an implicit definition of function |f x = expn x 2 -1| in the form of a post-condition not involving subtraction.
Then re-write it without variables using (\ref{eq:040120c}).
% y+1 = sq x
%
\end{exercise}

\section{Relational equality} \label{sec:180905c}
Recall that function equality (\ref{eq:060128a}) is established by extensionality:
\begin{eqnarray*}
|f = g| & \iff & |rcb forall a (a ins A) (f a = g a)|
\end{eqnarray*}
Also recall that |f=g| only makes sense iff both functions have the same type, say
|A -> B|.
Can we do the same for relations? The relational generalization of (\ref{eq:060128a})
will be
\begin{eqnarray}
R = S & \iff & |rcb forall (a,b)(a ins A && b ins B)(b R a <=> b S  a)|
\label{eq:060912b}
\end{eqnarray}
Since |<=>| is bi-implication, we can replace the term of the quantification
by
\begin{eqnarray*}
(b \ R \ a ~ \implies ~ b \ S \ a) &\land& (b \ S \ a \implies b \ R \ a)
\end{eqnarray*}
Now, what does $b \ R \ a ~ \implies ~ b \ S \ a$ mean? It simply captures relational
\emph{inclusion},
\begin{eqnarray}
	R \subseteq S & \iff & \rcb\forall{a,b}{}{b \ R \ a ~ \implies ~ b \ S \ a}
\label{eq:060913a}
	\label{eq:041216a}
\end{eqnarray}
whose righthand side can also be written
\begin{eqnarray*}
	|rcb forall (a,b) (b R a) (b S a)|
\end{eqnarray*}
by |forall|-trading (\ref{eq:180805c}). Note the same pointwise-pointfree move
when one reads (\ref{eq:041216a}) from right to left: |forall|, |a| and |b| disappear.

Altogether, (\ref{eq:060912b}) can be written in less symbols as follows:
\begin{eqnarray}
	R = S
&
	\wider\equiv
&
	R \subseteq S
\land
	S \subseteq R
%
	\label{eq:020616a}
\end{eqnarray}
This way of establishing relational equality is usually referred to as \emph{circular inclusion}.
Note that relational inclusion (\ref{eq:060913a}) is a partial order: it is \emph{reflexive},
since
\begin{eqnarray}
{R \subseteq R}
\end{eqnarray}
holds for every |R|;
it is \emph{transitive}, since for all $R,S,Q$
\begin{eqnarray}
	R \subseteq S \land S \subseteq Q & \implies & R \subseteq Q
        \label{eq:161013a}
\end{eqnarray}
holds; and it is \emph{antisymmetric}, as established by circular-inclusion (\ref{eq:020616a}) itself.
Circular-inclusion is also jocosely known as the ``ping-pong'' method for establishing |R=S|:
first calculate $R \subseteq S$ (``ping'')
and then $S \subseteq R$ (``pong''). This can be performed in one go by adopting the
following calculation layout:
\begin{eqnarray*}
R &\subseteq& \ldots
\\
  &\subseteq& S
\\
  &\subseteq& \ldots
\\
  &\subseteq& R
\qed
\end{eqnarray*}
This has the advantage of making apparent that not only $R$ and $S$ are the same,
but also that every two steps in the circular reasoning are so (just choose a different
start and stop point in the ``circle").

Circular inclusion (\ref{eq:020616a}) is not the only way to establish relational equality.
A less obvious, but very useful way of calculating the equality of two relations is the
method of \emph{indirect equality}:
%\footnote{Cf.\ \cite{BM97}, p. 82.}:
%cite{ABHVW92,BM97}:
%
\begin{eqnarray}
	R = S
&
	\wider\equiv
&
	|rcb forall X () ((X atmost R <=> X atmost S))|
	\label{eq:020614c}
\\
&
	\equiv
&
	|rcb forall X () ((R atmost X <=> S atmost X))|
	\label{eq:020614c'}
%
\end{eqnarray}
The reader unaware of this way of indirectly setting algebraic equalities
will recognize that the same pattern of indirection is used when establishing
set equality via the membership relation, cf.
\[
	A= B \wider\equiv |rcb forall x () (x ins A <=> x ins B)|
\]
The typical layout of using any of these rules is the following:
\begin{eqnarray*}
\left\{
\begin{array}{rcl}
\start
	|X atmost R|
%
\just\equiv{ ... }
%
	|X atmost ...|
%
\just\equiv{ ... }
%
	|X atmost S|
%
\just{::}{ indirect equality (\ref{eq:020614c}) }
%
	R=S
%
\qed
\end{array}
\right.
\end{eqnarray*}
This proof method is very powerful and we shall make extensive use of it in the sequel. (The curious reader can have a quick look at section \ref{sec:180812a} for a simple illustration.)

\paragraph{Relational types.} From this point onwards we shall regard the type $\larrow A{}B$ as including not only all functions |f:A->B| but also all relations of the same type, |R:A->B|. This is far more than we had before! In particular, type |A->B| includes:
\begin{itemize}
\item
	the \emph{bottom} relation $ \larrow A\bot B$, which is such that, for all
	$b$, $a$,
\begin{eqnarray*}
	|b bot a| \wider\equiv |False|
\end{eqnarray*}
\item
	the \emph{topmost} relation $ \larrow A\top B$, which is such that, for
	all $ b$, $ a$,
\begin{eqnarray*}
	|b top a| \wider\equiv |True|
\end{eqnarray*}
\end{itemize}
The former is referred to as the void, or \emph{empty} relation.
The latter is known as the universal, or \emph{coexistence} relation.
Clearly, for every $ R$,
\begin{eqnarray}
	\bot \wider\subseteq R \wider\subseteq \top
	\label{eq:180812b}
\end{eqnarray}
and
\begin{eqnarray}
	R \comp \bot = \bot \comp R = \bot
\end{eqnarray}
hold.
By (\ref{eq:180812b}) and (\ref{eq:020616a}), writing |R=bot| (respectively, |R=top|) is the same as writing |R atmost bot| (respectively, |top atmost R|).

A relation $\larrow A V B$ is said to be a \emph{vector} if either $A$ or
$B$ are the singleton type $1$. Relation $\larrow A X 1$ is said to be a
\emph{row}-vector. (Clearly, $X \subseteq \bang$.) Relation $\larrow 1 Z B$
is said to be a \emph{column}-vector. (Clearly, $Z \subseteq \conv\bang$.)
\footnote{The column and row qualifiers have to do with an analogy with vectors
in linear algebra.} A relation of type |larrow 1 S 1| is called a \emph{scalar}.

Last but not least, note that in the relational setting types |B<-A| and
|expn B A| do not coincide --- |expn B A| is the type of all \emph{functions}
from |A| to |B|, while |B<-A| is the type of all \emph{relations} from |A|
to |B|. Clearly, |(expn B A) atmost B<-A|.

\section{Diagrams}
As happens with functions, the arrow notation adopted for functions makes
it possible to express relational formul\ae\ using diagrams.
This is a major ingredient of the relational method because it provides a
graphical way of picturing relation
types and relational constraints.

Paths in diagrams are built by arrow chaining, which corresponds to relational composition
|R . S| (\ref{eq:051118b-def}),
meaning \emph{``... is $R$ of some $S$ of ...''} in natural language.

\emph{Assertions} of the form |X atmost Y| where |X| and |Y|
are relation compositions can be represented graphically by rectangle-shaped
diagrams, as is the case in
\begin{eqnarray}
\vcenter{\xymatrix@@R=1ex{
	Descriptor
		\ar[dd]_-{path}
	&
		&
		Handle
		%		\ar@@_{->}[ll]_-{M}
	\ar[ll]_-{\FT}
	\ar[dd]^-{\top}
	\\
		&
		\subseteq
		\\
		Path
		%		\ar@@<-.5ex>[rr]_-{\FSy}
	%		\ar@@_{->}@@<-.5ex>[rr]_-{N}
	&
		&
		File
		\ar[ll]^-{\conv{\FSy}}
	%		\ar@@<-.5ex>[ll]_-{\conv{\FSy}}
	&
}}
	\label{eq:180828c}
\end{eqnarray}
in the context of modelling a file-system. Relation $\FSy$ models a \emph{file
store} (a table mapping file system paths to the respective files), $\FT$
is the \emph{open-file descriptor} table (holding the information
about the files that are currently open\footnote{Open files are manipulated by the file system via
	open file descriptor data structures, which hold various relevant metadata
	(e.g.\ current position within the file). Such descriptors are identified
	by file handles which the file system provides to applications that manipulate
	files. This indirection layer avoids unnecessary coupling between applications
	and the details of the file system implementation.}),
function $path$ yields the path of a file descriptor and $\top$ is the largest
possible relation between file-handles and files, as seen above. The diagram depicts the constraint:
\begin{eqnarray}
path \comp \FT \subseteq \conv{\FSy}\comp \top
\label{eq:100907a}
\end{eqnarray}
What does (\ref{eq:100907a}) mean, then, in predicate logic?

\paragraph{From diagrams to logic.}
% {From the ``pointfree'' (RA) to the ``pointwise'' (FOL)}
We reason, using definitions (\ref{eq:041216a},\ref{eq:051118b-def}) and
the laws of the predicate calculus given in appendix \ref{sec:180805b}:
\begin{eqnarray*}
&&
	path \comp \FT \subseteq \conv{\FSy}\comp \top
%
\just\equiv{`at most' ordering (\ref{eq:041216a}) }
%
	\rcb \forall{p,h}{p(path\comp \FT)h}{p(\conv{\FSy}\comp \top)h}
%
\just\equiv{ composition (\ref{eq:051118b-def}) ; $path$ is a function}
%
	\rcb \forall{p,h}{\rcb \exists d {p=path\ d}{d\ \FT\ h}}{p(\conv{\FSy}\comp \top)h}
%
\just\equiv{ quantifier calculus ---  |exists|-trading (\ref{eq:141125a}) }
%
	\rcb \forall{p,h}{|rcb exists d (d FT h)(p=path d)|}{p(\conv{\FSy}\comp \top)h}
%
\just\equiv{  quantifier calculus --- |forall|-nesting (\ref{eq:111025a}) }
%
	|rcb forall h ()(rcb forall p (rcb exists d (d FT h)(p=path d))(p(conv FSy .top)h)|
%
\just\equiv{ quantifier calculus --- splitting rule (\ref{eq:091125a}) }
%
	|rcb forall h () (rcb forall d (d FT h)(rcb forall p (p=path d)(p(conv FSy . top)h)))|
%
%	ERROR:
%just\equiv{ predicate calculus }
%
%	\rcbforall{h}{\rcbexistsp d {} {d\ \FT\ h}}{(path\ d)(\conv{\FSy}\comp \top)h}
%
\just\equiv{  quantifier calculus --- |forall|-nesting (\ref{eq:111025a}) }
%
	\rcb \forall{d,h}{d\ \FT\ h}{\rcb \forall p {p = path\ d}{p(\conv\FSy \comp \top)h}}
%
\just\equiv{ quantifier calculus --- |forall|-one-point rule (\ref{eq:130228b}) }
%
\rcb \forall{d,h}{d\ \FT\ h}{(path\ d)(\conv\FSy \comp \top)h}
%
\end{eqnarray*}
We still have to unfold term $(path\ d)(\conv{\FSy}\comp \top)h$:
\begin{eqnarray*}
&&
(path\ d)(\conv{\FSy}\comp \top)h
%
\just\equiv{ composition (\ref{eq:051118b-def}) }
%
\rcb\exists x {} {(path\ d)\conv{\FSy}x \wider\land x \top h}
%
\just\equiv{ converse ; $x \top h$ always holds }
%
	\rcb\exists x {} {x\ \FSy\ (path\ d) \land \true}
%
\just\equiv{ trivia }
%
\rcb\exists x {} {x\ \FSy\ (path\ d)}
%
\end{eqnarray*}
In summary, $path \comp \FT \subseteq \conv{\FSy}\comp \top$ unfolds into
\begin{eqnarray}
\small
\rcb\forall{d,h}{d\ \FT\ h}
{\rcb\exists x {} {x\ \FSy\ (path\ d)}}
\label{eq:110120a}
\end{eqnarray}
Literally:
\begin{quote}\em
If $h$ is the handle of some open-file descriptor $d$,
then this holds the path of some existing file $x$.
\end{quote}
In fewer words:
\begin{quote}\em
Non-existing files cannot be opened (\emph{referential integrity}).
\end{quote}
Thus we see how relation diagrams ``hide'' logically quantified formul\ae\
capturing properties of the systems one wishes to describe.

Compared with the commutative diagrams of previous chapters, a diagram
\begin{eqnarray}
\xymatrix@@R=3mm@@C=3mm{
	   |A|
		   \ar[dd]_{|R|}
&&
	   |B|
		   \ar[dd]^{|P|}
		   \ar[ll]_{|S|}
\\
&	|atmost|
\\
	   |C|
&&
	   |D|
		   \ar[ll]^{|Q|}
}
	\label{eq:260916e}
\end{eqnarray}
is said to be \emph{semi-commutative} because |Q . P atmost R . S| is not
forced to hold, only |R . S atmost Q . P| is. In case both inclusions hold, the |atmost|
symbol is dropped, cf.\ (\ref{eq:020616a}).

\begin{exercise}
\label{ex:121017b}
Let $a\ S\ n$ mean: \emph{``student $a$ is assigned number $n$''}.
Using (\ref{eq:051118b-def}) and (\ref{eq:041216a}), check that assertion
\begin{eqnarray*}
S \comp {\geq} \wider\subseteq \top \comp S
&
\mbox{depicted by diagram}
&
\vcenter{\xymatrix@@R=4mm@@C=4mm{
	   |Nat|
		   \ar[dd]_{|S|}
	   &&
		   |Nat|
		   \ar[dd]^{|S|}
	   \ar[ll]_{|>=|}
	   \\
		   &	|atmost|
		   \\
		   |A|
		   &&
		   |A|
		   \ar[ll]^{|top|}
}}
\end{eqnarray*}
means that numbers are assigned to students in increasing order.
\end{exercise}

\section{Taxonomy of binary relations}
The Leibniz principle about functions (\ref{eq:041213b}) can now
be simplified thanks to equivalence (\ref{eq:060913a}), as shown next:
%
\begin{eqnarray}
&&
\rcb\forall{a,a'}{}{ a = a' \ \implies \ f \ a = f \ a' }
\nonumber
%
\just\equiv{ introduction of $id$; consequent as calculated already }
%
\rcb\forall{a,a'}\relax{ a = id \ a' \ \implies \ a(f° \comp f)a' }
\nonumber
%
\just\equiv{ $b \ f \  a$ means the same as $b = f \ a$ }
%
\rcb\forall{a,a'}\relax{ a \ id \ a' \ \implies \ a(f° \comp f)a' }
\nonumber
%
\just\equiv{ (\ref{eq:060913a}) }
%
	|id atmost (conv f) . f|
	\label{eq:160112e}
%
\end{eqnarray}
A similar calculation will reduce univocality (\ref{eq:041213a}) to
\begin{eqnarray}
|f . (conv f) atmost id|
\end{eqnarray}
Thus a function |f| is characterized by comparing |(conv f) . f| and |f . (conv f)|
with the identity.\footnote{As we shall see in section \ref{sec:180814b},
relations larger than the identity (|id atmost R|) are said to be \emph{reflexive}
and relations at most the identity (|R atmost id|) are said to be \emph{coreflexive}
or \emph{partial identities}.}

The exact characterization of functions as special cases of relations is
achieved in terms of converse, which is in fact of paramount importance in
establishing the whole taxonomy of binary relations depicted in figure \ref{fig:031230a}.
First, we need to define two important notions: given a relation |larrow A R B|,
the \emph{kernel} of $R$ is the relation |larrow A (ker R) A| defined by:
    \begin{eqnarray}
    |ker R = conv R . R|
    \label{eq:020624a}
    \end{eqnarray}
Clearly, |a' (ker R) a| holds between any two sources |a| and |a'| which
have (at least) a common target |c| such that |c R a'| and |c R a|. We can also
define its dual, |larrow B (img R) B|, called the \emph{image} of $R$,
defined by:\footnote{%As explained later on,
    These operators are relational extensions of two concepts familiar from set theory:
	    the image of a function $f$, which corresponds to the set of all $y$ such that
	    $\rcb\exists x {}{y=f\ x}$, and the kernel of $f$, which is the equivalence relation
	    |b(ker f)a <=> (f b) = (f a)|. (See exercise \ref{ex:080315a} later on.)}
    \begin{eqnarray}
    \img R \wider= |R . (conv R)|
    \end{eqnarray}
From (\ref{eq:020624b}, \ref{eq:020624d}) one immediately draws:
    \begin{eqnarray}
    \ker{(R°)}&=&\img R
    \label{eq:020617d}
    \\
	    \img{(R°)}&=&\ker R
	    \label{eq:020624c}
	    \end{eqnarray}

Kernel and image lead to the four top criteria of the taxonomy of figure
\ref{fig:031230a}:
	    \begin{eqnarray}
	    \mbox{\small
		    \begin{tabular}{||c||c||c||}\hline
			    &
			    \emph  {Reflexive}
		    &
			    \emph  {Coreflexive}
		    \\\hline\hline
			    $\ker R$
			    &
			    entire $R$
			    &
			    ~ injective $R$ ~
			    \\\hline
			    $\img R$
			    &
			    ~ surjective $R$ ~
			    &
			    simple $R$
			    \\\hline
			    \end{tabular}
		    }
\label{eq:040128f}
\end{eqnarray}
In words: a relation $R$ is said to be
\emph  {entire} (or total) iff its kernel is reflexive and to be
\emph  {simple} (or functional) iff its image is coreflexive.
Dually,
	$R$ is \emph  {surjective} iff $R°$ is entire,
	and
	$R$ is \emph  {injective} iff $R°$ is simple.

	\begin{figure}[t]
	\footnotesize
	\centering\(
	\xymatrix@@R=1ex@@C=-2ex{
		&&&
			\mbox{binary relation}
		\ar@@{-}[drrr]
			\ar@@{-}[dr]
			\ar@@{-}[dl]
			\ar@@{-}[dlll]
			\\
			\mbox{injective}
		\ar@@{-}[dr]
			&
			&
			\mbox{entire}
		\ar@@{-}[dl]
			\ar@@{-}[dr]
			&
			&
			\mbox{simple}
		\ar@@{-}[dr]
			\ar@@{-}[dl]
			&
			&
			\mbox{surjective}
		\ar@@{-}[dl]
			\\
			&
			\mbox{representation}
		\ar@@{-}[dr]
			&
			&
			\mbox{function}
		\ar@@{-}[dr]
			\ar@@{-}[dl]
			&
			&
			\mbox{abstraction}
		\ar@@{-}[dl]
			\\
			&
			&
			\mbox{injection}
		\ar@@{-}[dr]
			&
			&
			\mbox{surjection}
		\ar@@{-}[dl]
			\\
			&&&
			\mbox{bijection (isomorphism)
			}
	}\)
\caption{Binary relation taxonomy}%
\label{fig:031230a}
\end{figure}

Representing binary relations by Boolean matrices gives us a simple, graphical
way of detecting properties such as simplicity, surjectiveness, and so on.
Let the enumerated types |A = {a1,a2,a3,a4,a5}| and |B = {b1,b2,b3,b4,b5}| be given.
Two examples of relations of type |A->B|
are given in figure \ref{fig:180812c} --- the leftmost and the rightmost, which we shall refer to as |R| and |S|, respectively.\footnote{Credits: {\tiny \url{http://www.matematikaria.com/unit/injective-surjective-bijective.html}}. Note that we enumerate |a1|, |a2|, ... from the top to the bottom.} The matrix representing |R| is:
\begin{eqnarray}
\begin{array}{r||ccccc}&{|a1|}&{|a2|}&{|a3|}&{|a4|}&{|a5|}\\\hline \hbox{|b1|}&0&\one&0&0&0\\\hbox{|b2|}&\one&0&0&0&0\\\hbox{|b3|}&0&0&\one&\one&0\\\hbox{|b4|}&0&0&0&0&\one\\\hbox{|b5|}&0&0&0&0&0
\end{array}
\end{eqnarray}
The |1| addressed by |b2| and |a1| means that |b2 R a1| holds, that between
|b1| and |a2| means |b1 R a2|, and so on and so forth. Then, |R| is:
    \begin{itemize}
    \item	\emph{simple} because there is \emph{at most} one |1| in every column
    \item	\emph{entire} because there is \emph{at least} one |1| in every column
    \item	not \emph{injective} because there is \emph{more than} one |1| in some row
    \item	not \emph{surjective} because some row (the last) has no |1|s.
    \end{itemize}
So this relation is a \emph{function} that is neither an injection nor a surjection.

Let us now have a look at the matrix that represents |S : A -> B|:
    \begin{eqnarray*}
    \begin{array}{r||ccccc}&{|a1|}&{|a2|}&{|a3|}&{|a4|}&{|a5|}\\\hline \hbox{|b1|}&0&\one&0&0&0\\\hbox{|b2|}&\one&0&0&0&0\\\hbox{|b3|}&0&0&0&\one&0\\\hbox{|b4|}&0&0&0&0&\one\\\hbox{|b5|}&0&0&\one&0&0
    \end{array}
    \end{eqnarray*}
Now every row and every column has \emph{exactly} one |1| --- this tells
us that |S| is not only a function but in fact a bijection. Looking at the
matrix that represents |conv S : A <- B|,
    \begin{eqnarray*}
    \begin{array}{r||ccccc}&{|b1|}&{|b2|}&{|b3|}&{|b4|}&{|b5|}\\\hline \hbox{|a1|}&0&\one&0&0&0\\\hbox{|a2|}&\one&0&0&0&0\\\hbox{|a3|}&0&0&0&0&\one\\\hbox{|a4|}&0&0&\one&0&0\\\hbox{|a5|}&0&0&0&\one&0
    \end{array}
    \end{eqnarray*}
we realize that it also is a function, in fact another bijection. This gives us a
rule of thumb for (constructively) checking for bijections (isomorphisms):
    \begin{eqnarray}
    \mbox{\em A function $f$ is a bijection \emph{iff} its converse $\conv{f}$ is a function |g|}
    \label{eq:070515b}
    \end{eqnarray}
Then |g| is also a bijection since |conv f = g <=> f = conv g|.\footnote{The interested reader may go back to (\ref{eq:180211i},\ref{eq:180211j}) at this point and check these rules in the light of (\ref{eq:070515b}).} Recall how
some definitions of isomorphisms given before, e.g.\ (\ref{eq:180804a}),
are nothing but applications of this rule |conv f = g|, once written pointwise
with the help of (\ref{eq:040120c}):
	    \begin{eqnarray*}
	    |f b = a <=> b = g a|
	    \end{eqnarray*}

\begin{figure}
\centering
\includegraphics[scale=0.6]{matematikaria.jpg}
\caption{Four binary relations.}
\label{fig:180812c}
\end{figure}

Bijections (isomorphisms) are reversible functions --- they don't lose any
information. By contrast, |bang : A -> 1| (\ref{eq:180211c}) and indeed all
constant functions |const c : A -> C| (\ref{eq:Kons}) lose all the information
contained in their inputs, recall (\ref{eq:981219a}). This property is actually
more general,
	    \begin{eqnarray}
	    |const c . R atmost (const c)|
	    \label{eq:xxx}
	    \end{eqnarray}
for all suitably typed |R|.

In the same way |bang : A -> 1|  is always a constant function --- in fact the \emph{unique} possible function of its type,
|f: 1 ->A| is bound to be a constant function too, for any choice of a target value in non-empty |A|. Because there are as many such
functions as elements of |A|, functions |const a : 1 -> A| are referred to as \emph{points}. These two situations correspond
to isomorphisms |expn 1 A isomorphic 1| (\ref{eq:fac23})  and |expn A 1 isomorphic A| (\ref{eq:fac20}), respectively.
Two short-hands are introduced for the constant functions
\begin{eqnarray}
\start	|true = const True|
	\label{eq:180825b}
\more	|false = const False|
\end{eqnarray}

\begin{exercise}
    Prove (\ref{eq:070515b}) by completing:
    \begin{eqnarray*}
    &&
    \mbox{$f$ and ${\conv f}$ are functions}
    %
    \just\equiv{...}
    %
    (id \subseteq \ker f \land \img{f} \subseteq id) \land
(id \subseteq \ker{(\conv{f})} \land \img{(\conv{f})} \subseteq id)
\CUT{
%
\just\equiv{}
%
(id \subseteq \ker f \land \img{f} \subseteq id) \land
(id \subseteq \img{f} \land \ker{f} \subseteq id)
%
\just\equiv{}
%
id = \ker f \land \img f = id
}
%
\just\equiv{...}
%
\vdots
%
\just\equiv{...}
%
\mbox{$f$ is a bijection}
%
\end{eqnarray*}
\vskip -1em
\end{exercise}

\begin{exercise}
Compute, for the relations in figure \ref{fig:180812c}, the \emph{kernel} and the \emph{image} of each relation. Why are all these relations \emph{functions}? (NB: note that the types are not all the same.)
\end{exercise}


\begin{exercise}\label{ex:150205a}
Recall the definition of a constant function (\ref{eq:Kons}),
\begin{eqnarray*}
   \begin{array}{rcl}
        \kons k &:& \rarrow A {} K
\\      \ap{\kons k}a &=& k
   \end{array} %label{eq:Kons}
\end{eqnarray*}
where |K| is assumed to be non-empty.
Using (\ref{eq:051118b-def}), show that
\begin{eqnarray}
	|ker (const k) = top|
	\label{eq:260916d}
\end{eqnarray}
and compute which relations are defined by the  expressions
\begin{eqnarray}
\xarrayin{
	~ |const b . (conv (const a))|,
&
	 ~ \img{\kons k}
}
	\label{eq:150205b}
\end{eqnarray}
Finally, show that (\ref{eq:xxx}) holds.
\end{exercise}

\begin{exercise}
Resort to (\ref{eq:020617d},\ref{eq:020624c}) and (\ref{eq:040128f})
to prove the following rules of thumb:
\begin{eqnarray}
\start \mbox{- converse of \emph{injective} is \emph{simple} (and vice-versa)}
	\label{eq:180820a}
\more  \mbox{- converse of \emph{entire} is \emph{surjective} (and vice-versa)}
	\label{eq:180820b}
\end{eqnarray}
\vskip -2em
\end{exercise}

\begin{exercise} \label{ex:080315a}
Given a function $\larrow A f B$, calculate the pointwise version
\begin{eqnarray}
	\arrayin{ b(\ker f)a &~\equiv~& f\ b \ = \ f \ a}
	\label{eq:080315b}
\end{eqnarray}
of |ker f|. What is the outcome of the same exercise for |img f|?
%  and show that $\img f$ is the coreflexive associated to predicate $p\ b = \rcb\exists a {}{b=f\ a}$.
\end{exercise}

\paragraph{Entity-Relationship diagrams}%
%format ismentorof = "\mathit{is\; mentor\; of}"
In the tradition of relational databases, so-called \emph{entity-relationship}
(ER) diagrams have become popular as an informal means for capturing the properties
of the relationships involved in a particular database design.

Consider the following example of one such diagram:\footnote{\footnotesize Credits: \tiny \url{https://dba.stackexchange.com/questions}.}
\begin{center}
	\includegraphics[scale=0.4]{dKTTj.png}
\end{center}
In the case of relation
\begin{quote}
|longlarrow Student (ismentorof) Teacher|
\end{quote}
the drawing tells not only that some teacher may mentor more than one student,
but also that a given student has exactly one mentor. So |ismentorof| is a \emph{simple} relation
(figure \ref{fig:031230a}).

The possibility |n=0| allows for students with no mentor.
%, an unlikely but possible (temporary) situation in a school
Should this possibility be ruled out (|n>0|), the relation would become also \emph{entire}, i.e.\ a function.
Then
\begin{quote}
	|t ismentorof s|
\end{quote}
could be written
\begin{quote}
	|t=ismentorof s|
\end{quote}
--- recall (\ref{eq:131015a}) --- meaning:
\begin{quote}
|t| is \emph{the} mentor of student |s|.
\end{quote}
That is, |ismentorof| would become an \emph{attribute} of |Student|. Note
how definite article ``the" captures the presence of functions in normal speech.
``The" means not only determinism (one and only one output) but also definedness
(there is always one such output). In the case of |ismentorof| being simple
but not entire, we have to say:
\begin{quote}
\emph{|t| is \emph{the} mentor of student |s|, \emph{if any}}.
\end{quote}
\vskip -1em
\begin{exercise} \label{ex:170925a}
Complete the exercise of declaring in |rarrow A R B| notation the other relations
of the ER-diagram above and telling which properties in Figure \ref{fig:031230a}
are required for such relations.
\end{exercise}

\section{Functions, relationally}
Among all binary relations, functions play a central role in relation algebra
--- as can be seen in figure \ref{fig:031230a}.
Recapitulating, a \emph{function} $f$ is a binary relation such that
\begin{center}\small
\vskip 1ex
\begin{tabular}{||c||c||l}
\cline{1-2}
Pointwise & Pointfree
\\
\cline{1-2}
\multicolumn{2}{||c||}{``Left" Uniqueness}
\\
\cline{1-2}\cline{1-2}
\(
	\arrayin{b \ f \ a \land b' \ f \ a & \implies & b = b' }
	%label{eq:041213a}
\)
&
\(
\arrayin{
	\img f &\subseteq& id
}
%	\label{eq:041213c}
\)
&	($ f$ is simple)
\\\cline{1-2}\cline{1-2}
\multicolumn{2}{||c||}{Leibniz principle}
\\\cline{1-2}
\(
	\arrayin{ a = a' & \implies & f \ a = f \ a' }
%	\label{eq:041213b}
\)
&
\(
\arrayin{ id &\subseteq& \ker f
}
\)
%	\label{eq:041213d}
&
	($ f$ is entire)
\\\cline{1-2}
\end{tabular}
\vskip 1em
\end{center}
It turns out that \emph{any} function |f| enjoys the following properties,
known as \emph{shunting rules}:
\begin{eqnarray}
	f \comp R \subseteq S & \equiv & R  \subseteq {\conv f} \comp S
		\label{eq:020617e}
\\
	R \comp \conv{f} \subseteq S & \equiv & R  \subseteq S \comp f
		\label{eq:020617f}
\end{eqnarray}
These will prove extremely useful in the sequel.
Another very useful fact is the function \emph{equality rule}:
\begin{eqnarray}
	f \subseteq g \wider\equiv f = g \wider\equiv f \supseteq g
		\label{eq:020617g}
\end{eqnarray}
Rule (\ref{eq:020617g}) follows immediately from (\ref{eq:020617e},\ref{eq:020617f})
by ``cyclic inclusion" (\ref{eq:020616a}):
\begin{eqnarray*}
&&
	f \subseteq g
%
\just\equiv{ natural-$id$ (\ref{eq:981211d}) }
%
	f \comp id \subseteq g
%
\just\equiv{shunting on $f$ (\ref{eq:020617e}) }
%
	id \subseteq \conv{f} \comp g
%
\just\equiv{shunting on $g$ (\ref{eq:020617f}) }
%
	id \comp \conv{g} \subseteq \conv{f}
%
\just\equiv{converses; identity}
%
	g \subseteq f
%qed
\end{eqnarray*}
Then:
\begin{eqnarray*}
\start
	|f=g|
%
\just\equiv{ cyclic inclusion (\ref{eq:020616a}) }
%
	f \subseteq g \land g \subseteq f
%
\just\equiv{ above }
%
	f \subseteq g
%
\just\equiv{ above }
%
	g \subseteq f
\qed
\end{eqnarray*}

\begin{exercise}
Infer $id \subseteq \ker f$ ($f$ is entire) and
$\img f \subseteq id$ ($f$ is simple) from shunting
rules (\ref{eq:020617e}) and (\ref{eq:020617f}).
\end{exercise}

\vskip -1em
\begin{exercise}
For |R:=f|, the property (\ref{eq:xxx}) ``immediately" coincides with (\ref{eq:981219a}). Why?
\end{exercise}

\begin{exercise}
Show that
\begin{eqnarray}
	|sse (const a . (conv (const b)))(const c . (conv (const d))) <=> lcbr(a=c)(b=d)| 
\end{eqnarray}
holds.
\end{exercise}

\paragraph{Function division.}
Given two functions ${\xymatrix{B\ar[r]^{g}&C&A\ar[l]_{f}}}$, we can compose
|f| with the converse of |g|. This turns out to be a very frequent pattern in relation algebra, known as the \emph{division} of |f| by |g|:
\begin{eqnarray}
	|syd f g|& =&|conv g.f| ~~~~~~ cf. ~~~~~~
\myxym{
	|B|
		\ar[dr]_{|g|}
&&
	|A|
		\ar[dl]^{|f|}
		\ar[ll]_{|syd f g|}
\\
&
	|C|
}
	\label{eq:160117a}
\end{eqnarray}
That is,
\[ |b(syd f g)a <=> g b=f a| \]
Think of the sentence:
\begin{quote}\em
Mary lives where John was born.
\end{quote}
This can be expressed by a division:
\[ |Mary(syd birthplace residence)John <=> residence Mary = birthplace John| \]
Thus |R=syd birthplace residence| is the relation "... resides in the birthplace of ...".
In general,
\begin{quote}
|b(syd f g)a| means ``the |g| of |b| is the |f| of |a|".
\end{quote}

This combinator enjoys a number of interesting properties, for instance:
\begin{eqnarray}
	|syd f id| &=& |f|
\\
	|convsyd f g| &=& |syd g f|
	\label{eq:160112c}
\\
	|syd(f.h)(g.k)| &=& |conv k . (syd f g) . h|
	\label{eq:161118b}
\\
	|syd f f| &=& |ker f|
	\label{eq:161014b}
\\
	|a /= b| & |<=>| & |syd (wider(const a))(const b) = bot|
	\label{eq:180825c}
\end{eqnarray}
Function division is a special case of the more general, and important, concept
of relational division, a topic that shall be addressed in section \ref{sec:180811a}.

\begin{exercise}\label{q:em16171q05}
%format dat = "date "
%format T = "T "
%format casa = "home "
%format fora = "away "
The teams (|T|) of a football league play games (|G|) at home or away, and every game takes place in some date:
\begin{eqnarray*}
\myxym{
	T
&
	G
		\ar[l]_{|casa|}
		\ar[r]^{|fora|}
		\ar[d]_{|dat|}
&
	T
\\
&
	D
}
\end{eqnarray*}
Moreover,
(a)	No team can play two games on the same date;
(b)	All teams play against each other but not against themselves;
(c)	For each home game there is another game away involving the same two teams.
Show that
\begin{eqnarray}
	|id atmost (syd fora casa).(syd fora casa)|
	\label{eq:171001a}
\end{eqnarray}
captures one of the requirements above --- which?
\end{exercise}

\vskip-1em
\begin{exercise}
Check the properties of function division given above.
\end{exercise}

\section{Meet and join}
\label{sec:180812a}
Like sets, two relations of the same type, say |larrow A (R,S) B|,
can be intersected or joined in the obvious way:
\begin{eqnarray}
b \ ({R \cap S}) \ a
& \equiv &
b \ R \ a \land b \ S \ a
\label{eq:161012a}
\\
b \ ({R \cup S}) \ a
& \equiv &
b \ R \ a \lor  b \ S \ a
\label{eq:131105a}
\end{eqnarray}
|cap R S| is usually called \emph{meet} (intersection) and |cup R S| is called
\emph{join} (union). They lift pointwise conjunction and disjunction, respectively,
to the pointfree level. Their meaning is nicely captured by the following
\emph{universal} properties:\footnote{Recall the generic notions of \emph{greatest
lower bound} and \emph{least upper bound}, respectively.}
\begin{eqnarray}
	X \wider\subseteq R \cap S
&
	\equiv
&
	X \subseteq R \wider\wedge
	X \subseteq S
%
	\label{eq:020627a}
\\
	R \cup S \wider\subseteq X
&
	\equiv
&
	R \subseteq X \wider\wedge
	S \subseteq X
	\label{eq:071114a}
\end{eqnarray}

Meet and join have the expected properties,
e.g. \emph{associativity}
\begin{eqnarray*}
	(R \cap S) \cap T = R \cap (S\cap T)
\end{eqnarray*}
proved next by indirect equality (\ref{eq:020614c}):
\begin{eqnarray*}
&&
	X \subseteq (R \cap S) \cap T
%
\just\equiv{$\cap$-universal (\ref{eq:020627a}) twice }
%
%	X \subseteq (R \cap S) \land X \subseteq T
%
%just\equiv{$\cap$-universal (\ref{eq:020627a}) }
%
	(X \subseteq R \land X \subseteq S) \land X \subseteq T
%
\just\equiv{ $\land$ is associative }
%
	X \subseteq R \land (X \subseteq S \land X \subseteq T)
%
\just\equiv{$\cap$-universal (\ref{eq:020627a}) twice }
%
	X \subseteq R \cap (S\cap T)
%
\just{::}{indirection (\ref{eq:020614c}) }
%
	(R \cap S) \cap T = R \cap (S\cap T)
\qed
\end{eqnarray*}
In summary, type $\larrow A {} B$ forms a lattice:
\begin{eqnarray*}
&&
\xymatrix{ % @@C=3ex @@R=1.5ex
&
	\top
&
&
	\mbox{ ``top" }
\\
&
	R \cup S
		\ar@@{.}[u]_{}
&
&
	\mbox{ join, lub (``least upper bound") }
\\
	R
		\ar@@{.}[ur]_{}
&
&
	S
		\ar@@{.}[ul]_{}
\\
&
	R \cap S
		\ar@@{-}[ul]_{}
		\ar@@{-}[ur]_{}
&
&
	\mbox{meet, glb (``greatest lower bound")}
\\
&
	\bot
		\ar@@{.}[u]_{}
&
&
	\mbox{ ``bottom" }
}
\end{eqnarray*}

\paragraph{Distributive properties.}
As it will be proved later, \emph{composition} distributes over \emph{union}
\begin{eqnarray}
	R \comp (S \cup T) &=& (R \comp S) \cup (R \comp T)
	\label{eq:080124b}
\\
	(S \cup T) \comp R &=& (S \comp R) \cup (T \comp R)
	\label{eq:180828a}
\end{eqnarray}
while distributivity over \emph{intersection} is side-conditioned:
\begin{eqnarray}
	(S \cap Q) \comp R = (S \comp R) \cap (Q \comp R) & \implied &
\begin{ccbr}
Q \comp \img R \subseteq Q
\\ \lor \\
S \comp \img R \subseteq S
\end{ccbr}
	\label{eq:050526b}
\\
%and its converse-dual, law (11.17)
	R \comp (Q \cap S) = (R \comp Q) \cap (R \comp S) & \implied &
\begin{ccbr}
(\ker{R}) \comp Q \subseteq Q
\\ \lor \\
(\ker{R}) \comp S \subseteq S
\end{ccbr}
	\label{eq:050526c}
\end{eqnarray}
Properties (\ref{eq:080124b},\ref{eq:180828a}) express the \emph{bilinearity}
of relation composition with respect to relational join. These, and properties
such as e.g.
\begin{eqnarray}
\start \conv{(R\cap S)}=\conv R \cap \conv S
\more  \conv{(R\cup S)}=\conv R \cup \conv S
\end{eqnarray}
will be shown to derive from a general construction that will be explained in section \ref{sec:180828b}.

\begin{exercise}
Show that
\begin{eqnarray}
\start	|cap R bot = bot|
\more	|cap R top = R  |
\more	|cup R top = top|
\more	|cup R bot = R  |
\end{eqnarray}
using neither (\ref{eq:161012a}) nor (\ref{eq:131105a}).
\end{exercise}

\begin{exercise} \label{ex:161113f}
Prove the \emph{union simplicity} rule:
\begin{eqnarray}
	\mbox{$M \cup N$ is simple
	} & \equiv& \mbox{$M$, $N$ are simple and $M\comp \conv{N} \subseteq id $}
	\label{eq:070520a}
\end{eqnarray}
Using converses, derive from (\ref{eq:070520a}) the corresponding rule for \emph{injective} relations.
\end{exercise}

\begin{exercise}
Prove the distributive property:
\begin{eqnarray}
	|conv g . ((cap R S)) . f| & = & |cap (conv g . R . f) (conv g . S . f)|
	\label{eq:180907a}
\end{eqnarray}
\vskip-1.5em
\end{exercise}

\begin{exercise}
\label{ex:180805a}
Let |bag : Seq A -> (expn Nat A)| be the function that, given a finite sequence
(list), indicates the number of occurrences of its elements, for instance,
\begin{eqnarray*}
\start
	|bag [a,b,a,c] a =2|
\more
	|bag [a,b,a,c] b =1|
\more
	|bag [a,b,a,c] c =1|
\end{eqnarray*}
Let |ord : Seq A -> Bool| be the obvious predicate assuming a total order predefined in |A|. Finally, let |true = const True| (\ref{eq:180825b}).
%
Having defined
\begin{eqnarray}
	|S = cap (syd bag bag) (syd true ord)|
\end{eqnarray}
identify the type of |S| and, going pointwise and simplifying, tell which operation is
specified by |S|.
\end{exercise}

\begin{exercise}
Derive the distributive properties:
\begin{eqnarray}
	|conv k . ((cup f g)) = cup(syd f k)(syd g k)| ~~~,~~~
	|conv k . ((cap f g)) = cap(syd f k)(syd g k)|
\end{eqnarray}
\vskip -1.5em
\end{exercise}

\section{Relational thinking} \label{sec:210108a}
Binary relations provide a natural way of describing real life situations.
Relation algebra can be used to reason about such formal descriptions. This can be achieved
using suitable relational combinators (and their laws), in the \emph{pointfree} style.

Let us see a simple example of such a \emph{relational thinking} taking one of the
\textsc{Propositiones ad acuendos iuuenes} (``Problems to Sharpen the Young'')
proposed by abbot Alcuin of York ($\dagger$ 804) as case study. Alcuin states his
puzzle in the following way, in Latin:
\begin{quote}\it\small
\textsc{XVIII. Propositio de homine et capra et lvpo.}
Homo quidam debebat ultra fluuium transferre lupum, capram, et fasciculum
cauli. Et non potuit aliam nauem inuenire, nisi quae duos tantum ex ipsis
ferre ualebat. Praeceptum itaque ei fuerat, ut omnia haec ultra illaesa omnino
transferret. Dicat, qui potest, quomodo eis illaesis transire potuit?
\end{quote}
Our starting point will be the following (rather free) translation of the above to English:
\begin{quote}\it\small
\textsc{XVIII. Fox, goose and bag of beans puzzle.}
A farmer goes to market and purchases a fox, a goose, and a bag of beans.
On his way home, the farmer comes to a river bank and hires a boat. But in
crossing the river by boat, the farmer could carry only himself and a single
one of his purchases - the fox, the goose or the bag of beans. (If left
alone, the fox would eat the goose, and the goose would eat the beans.) Can
the farmer carry himself and his purchases to the far bank of the river,
leaving each purchase intact?
\end{quote}
We wish to describe the essence of this famous puzzle, which is the \emph{guarantee} that%
\begin{quote}\em
under no circumstances does the fox eat the goose or the goose eat the beans.
\end{quote}
Clearly, we need
two data types:
%format Left = "Left"
%format Right = "Right"
%format whr = "where "
%format (cmp (x)) = "\overline{" x "}"
\begin{code}
	Being = {Farmer,Fox,Goose,Beans}
	Bank  = {Left,Right}
\end{code}
Then we identify a number of relations involving such data: % two of which being functions:
\begin{eqnarray}
\xymatrix{
	Being
		\ar[r]^{Eats}
&
	Being
		\ar[d]_{|whr|}
\\
&
	Bank
		\ar[r]^{cross}
&
	Bank
}
	\label{eq:121017a}
\end{eqnarray}
Clearly, |cross Left = Right| and |cross Right = Left|. So |cross| is its
own inverse and therefore a bijection (\ref{eq:070515b}). Relation |Eats|
can be described by the Boolean matrix:
\begin{eqnarray}
|Eats| &=&
\begin{array}{r||cccc}
	& Fox	& Goose	& Beans & Farmer \\\hline
Fox	& 0	& \one	& 0	& 0 \\
Goose	& 0	& 0	& \one	& 0 \\
Beans	& 0	& 0	& 0	& 0 \\
Farmer	& 0	& 0	& 0	& 0
\end{array}
	\label{eq:180827b}
\end{eqnarray}
Relation |whr : Being -> Bank| is necessarily a function because:
\begin{quote}
- \emph{everyone is somewhere in a bank} (|whr| is entire)
\\
- \emph{no one can be in both banks at the same time} (|whr| is simple)
\end{quote}
Note that there are only two constant functions of type |Being -> Bank|,
|const Right| and |const Left|.
The puzzle consists in changing from the state |whr = const Right| to
the state |whr = const Left|, for instance, without violating the property that
\emph{nobody eats anybody}. How does one record such a property?
We need two auxiliary relations capturing, respectively:
\begin{itemize}
\item
Being at the same bank:
\begin{eqnarray}
	SameBank           & = & |ker whr|
	\label{eq:210110a}
\end{eqnarray}
\item
Risk of somebody eating somebody else:
\begin{eqnarray*}
	CanEat             & = & SameBank \cap Eats
\end{eqnarray*}
\end{itemize}
Then ``starvation'' is ensured by the $Farmer$'s presence at the same bank:
\begin{eqnarray}
	CanEat & \subseteq & SameBank \comp \kons{Farmer}
	\label{eq:121017c}
\end{eqnarray}
By (\ref{eq:210110a}) and (\ref{eq:020617e}), ``starvation'' {property} (\ref{eq:121017c}) converts to:
\begin{eqnarray*}
	|whr| \comp CanEat % \underbrace{(\conv{|whr|} \comp |whr| \cap Eats)}_{CanEat}
	& \subseteq &
	|whr| \comp \kons{Farmer}
\end{eqnarray*}
In this version, (\ref{eq:121017c}) can be depicted as a diagram
\begin{eqnarray}
\xymatrix@@R=1ex{
	Being
		\ar[dd]_{|whr|}
&
&
	Being
		\ar[ll]_{CanEat}
		\ar[dd]^{\kons{Farmer}}
\\
&
	\subseteq
\\
	Bank
&
&
	Being
		\ar[ll]^{|whr|}
}
	\label{eq:161027a}
\end{eqnarray}
which ``reads'' in a nice way:
\begin{quote}
|whr| {\small\tt (somebody)} $CanEat$ {\small\tt (somebody else)} {\small\tt (that's)} |whr| {\small\tt (the)} $Farmer$ {\small\tt (is)}.
\end{quote}

Diagram (\ref{eq:180828c}) given earlier can now be identified as another
example of assertion expressed relationally. Diagrams of this kind capture properties
of data models that one wishes to hold at any time during the lifetime
of the system being described. Such properties are commonly referred to as \emph{invariants}
and their preservation by calculation will be the main aim of chapter \ref{ch:180828d}.

\begin{exercise}
Calculate the following pointwise version of the ``starvation" property (\ref{eq:161027a})
by introducing quantifiers and simplifying:
\begin{eqnarray*}
	|rcb forall (b',b) (b' Eat b)(whr b' = whr b => whr b' = whr Farmer|
\end{eqnarray*}
\vskip -2em
\end{exercise}

\begin{exercise} \label{ex:180831a}
Recalling property (\ref{eq:xxx}),
show that the ``starvation" property (\ref{eq:161027a}) is satisfied by
any of the two constant functions that model the start or end states of the Alcuin puzzle.
\end{exercise}

\section{Monotonicity}
As expected, relational composition is monotonic:
\begin{eqnarray}
\begin{array}{c}
R \subseteq S
\\
T \subseteq U
\\
\hline
(R \comp  T) \subseteq (S \comp U)
\end{array}
\label{eq:020605g}
\end{eqnarray}
Indeed,
all relational combinators studied so far are also {monotonic}, namely
\begin{eqnarray}
	|R atmost S| & \implies & |conv R atmost (conv S)|
\\
	R \subseteq S \land U \subseteq V & \implies & R\cap U \subseteq S\cap V
\\
	R \subseteq S \land U \subseteq V & \implies & R\cup U \subseteq S\cup V
	\label{eq:180829a}
\end{eqnarray}
hold.

Monotonicity and transitivity (\ref{eq:161013a}) are important properties
for reasoning about a given relational inclusion |R atmost S|. In particular,
the following rules are of help by relying on a ``mid-point'' relation |M|,
|R atmost M atmost S| (analogy with interval arithmetics).
\begin{itemize}
\item
Rule A --- \emph{lowering the upper side}:
\begin{eqnarray*}
&&
	R \subseteq S
%
\just\implied{ $M \subseteq S$ is known ; transitivity of $\subseteq$ (\ref{eq:161013a}) }
%
	R \subseteq M
%
\end{eqnarray*}
Then proceed with $R \subseteq M$.
\item
Rule B --- \emph{raising the lower side}:
\begin{eqnarray*}
&&
	R \subseteq S
%
\just\implied{ $R \subseteq M$ is known; transitivity of $\subseteq$}
%
	M \subseteq S
%
\end{eqnarray*}
Then proceed with $M \subseteq S$.
\end{itemize}
The following proof of shunting property (\ref{eq:020617e}) combines these rules with monotonicity and circular implication:
\begin{eqnarray*}
&&
	R \subseteq \conv f \comp  S
%
\just\implied{ $id \subseteq \conv f \comp f$ ; raising the lower-side}
%
	\conv f \comp f \comp R \subseteq \conv f \comp  S
%
\just\implied{ monotonicity of $(\conv f \comp)$}
%
	f \comp R \subseteq S
%
\just\implied{ $f \comp \conv f \subseteq id$ ; lowering the upper-side}
%
	f \comp R \subseteq f \comp \conv f \comp S
%
\just\implied{ monotonicity of $(f \comp)$}
%
	R \subseteq \conv f \comp S
%
\end{eqnarray*}
Thus the equivalence in (\ref{eq:020617e}) is established by circular implication.

Rules A and B should be used only where other proof techniques (notably indirect
equality) fail. They assume judicious choice of the mid-point relation |M|,
at each step. The choice of an useless |M| can drive the proof nowhere.

\begin{exercise}
Unconditional distribution laws
\begin{eqnarray*}
	(P \cap Q) \comp S &=& (P \comp S) \cap (Q \comp S)
\\
	R \comp (P \cap Q) &=& (R \comp P) \cap (R \comp Q)
\end{eqnarray*}
will hold provided one of $R$ or $S$ is simple and the other injective.
Tell which, justifying.
\end{exercise}

\begin{exercise} \label{ex:070508b}
Prove that relational \emph{composition} preserves \emph{all} relational
classes in the taxonomy of figure \ref{fig:031230a}.
\end{exercise}

\section{Rules of thumb} \label{sec:200922c}
Quite often, involved reasoning in logic arguments can be replaced by simple and elegant
calculations in relation algebra that arise thanks to smart``rules of thumb".
We have already seen two such rules, (\ref{eq:180820a}) and (\ref{eq:180820b}).
Two others are:
\begin{eqnarray}
\start	\mbox{- \emph{smaller} than injective (simple) is injective (simple)}
	\label{eq:180829e}
\more	\mbox{- \emph{larger} than entire (surjective) is entire (surjective)}
\end{eqnarray}
Let us see these rules in action in trying to infer what can be said of two
functions |f| and |r| such that
\begin{eqnarray*}
	|f.r=id|
\end{eqnarray*}
holds. On the one hand,
\begin{eqnarray*}
\start
	|f.r=id|
%
\just\equiv{ equality of functions }
%
	|f.r atmost id|
%
\just\equiv{ shunting }
%
	|r atmost (conv f)|
%
\end{eqnarray*}
Since |f| is simple, |conv f| is injective and so is |r| because ``smaller than injective is injective".
On the other hand,
\begin{eqnarray*}
\start
	|f.r=id|
%
\just\equiv{ equality of functions }
%
	|id atmost f.r|
%
\just\equiv{ shunting }
%
	|conv r atmost f|
%
\end{eqnarray*}
Since |r| is entire, |conv r| is surjective and so is |f| because ``larger that surjective is surjective".
We conclude that |f| is surjective and |r| is injective wherever |f.r=id| holds.
Since both are functions, we furthermore conclude that
\begin{eqnarray}
\mbox{
	|f| is an \emph{abstraction} and |r| is a \emph{representation}
	\label{eq:240601c}
}
\end{eqnarray}
--- cf.\ Figure \ref{fig:031230a}.

\begin{exercise}\label{ex:240808a}
Let us summarize (\ref{eq:240601c}) above as follows:
\begin{eqnarray}
	|f . g = id|
& \wider\implies &
	\begin{lcbr}
		\mbox{|f| is surjective}
	\\
		\mbox{|g| is injective}
	\end{lcbr}
	\label{eq:090710a}
\end{eqnarray}
Show that, by putting (\ref{eq:090710a}) together with cancellations laws (\ref{eq:700l}) and (\ref{eq:701c}),
one gets:
\begin{eqnarray}
\start
	\mbox{- |i1| and |i2| are \emph{injections}, that is: |lcbr(conv i1 . i1 = id)(conv i2 . i2 = id)| }
	\label{eq:240807a}
\more
	\mbox{- |p1| and |p2| are \emph{surjections}, that is: |lcbr(p1 . conv p1 = id)(p2 . conv p2 = id)| }
\end{eqnarray}
\end{exercise}

The reason for the terminology in (\ref{eq:240601c}) can now be explained. Given |f:A<-C| and
|r:C<-A| such that |f.r=id|, that is, for all |a ins A|, |f(r a) = a|, think
of |C| as a domain of \emph{concrete} objects and of |A| as a domain of \emph{abstract}
data. For instance, let |A=Bool| and |C=Nat0|. Then define
\begin{eqnarray*}
	|lcbr(r:Bool -> Nat0)(r b = if b then k else 0)|
\end{eqnarray*}
(where |k| is any natural number different from |0|) and
\begin{eqnarray*}
|lcbr(f: Bool <- Nat0)(f n = if n=0 then False else True)|
\end{eqnarray*}
Clearly, by the definitions of |f| and |r|:
\begin{eqnarray*}
\start
	|f(r b) = if (if b then k else 0)=0 then False else True|
%
\just\equiv{ conditional-fusion rule (\ref{eq:McCarthyFusion}) }
%
	|f(r b) = if (if b then k=0 else True) then False else True|
%
\just\equiv{|k=0| is always false}
%
	|f(r b) = if (if b then False else True) then False else True|
%
\just\equiv{ pointwise definition of |not b|}
%
	|f(r b) = if not b then False else True|
%
\just\equiv{ trivial }
%
	|b|
%
\end{eqnarray*}
That is, |r| represents the Booleans |True| and |False| by natural numbers
while |f| abstracts from such real numbers back to Booleans. |r| being injective
means |r False /= r True|, that is, the Boolean information is not lost in
the representation.\footnote{That is, |r| causes \emph{no confusion} in the representation process.} |f| being surjective means that any Boolean is representable.
Note that |r.f=id| does not hold: |r(f 1) = r True = k| and |k/=1| in general.

The abstraction/representation pair |(f,r)| just above underlies the way
Booleans are handled in programming languages such as C, for instance.
Experienced programmers will surely agree that often what is going on in
the code they write are processes of representing information using primitive
data structures available from the adopted programming language. For instance,
representing finite sets by finite lists corresponds to the \emph{abstraction} given
by |elems| (\ref{eq:zzz}).

\begin{exercise}
Recalling exercise \ref{ex:180805a}, complete the definition of
\begin{code}
bag [] a = 0
bag (h:t) a = let f = bag t in if ... 
\end{code}
%  f a + (if h = a then 1 else 0)
Is this function an abstraction or a representation? Justify your answer informally.
\end{exercise}

\begin{exercise}%label{ex:161113d}
Show that:
\begin{itemize}
\item	$R\cap S$ is injective (simple) provided one of $R$ or $S$ is so
\item	$R\cup S$ is entire (surjective) provided one of $R$ or $S$ is so.
\end{itemize}
\vskip -1em
\end{exercise}

\begin{exercise}\label{ex:250606a}
Consider two functions |f| and |g| such that
\begin{eqnarray}
|
	f . g . f = f
|
\end{eqnarray}
holds. Show that
\begin{eqnarray}
	|f . g = id| & \implied & \mbox{|f| is surjective}
\\
	|g . f = id| & \implied & \mbox{|f| is injective}
\end{eqnarray}
\textbf{Hint}: recall that the equality of functions is its inclusion by any order.
\resolucao{
\begin{eqnarray*}
\start
|
	f . g . f = f
|
\just\equiv{ function equality; shunting }
|
	f . g . f . conv f atmost id
|
\just\equiv{ |f| surjective: function equality}
|
	f . g = id
|
\end{eqnarray*}
Dualmente:
\begin{eqnarray*}
\start
|
	f . g . f = f
|
\just\equiv{ function equality; shunting }
|
	g . f atmost (conv f) . f
|
\just\equiv{ |f| injective: function equality}
|
	g . f = id
|
\end{eqnarray*}
}
\end{exercise}

\section{Endo-relations}
\label{sec:180814b}
Relations in general are of type |A->B|, for some |A| and |B|.
In the special case that |A=B| holds, a relation |R: A->A| is said to be
an \emph{endo-relation}, or a \emph{graph}. The |A=B| coincidence gives room for some extra
terminology, extending some already given.
Besides an endo-relation $\larrow A R A$ being
\begin{eqnarray}
	\name{reflexive}	\mbox{iff~} id \subseteq R
\\
	\name{coreflexive}	\mbox{iff~} R \subseteq id
\end{eqnarray}
it can also be:
\begin{eqnarray}
\name{transitive}
	\mbox{iff~} R \comp R \subseteq R
	\label{eq:161014c}
\\
\name{symmetric}
	\mbox{iff~} R \subseteq \conv{R} (\equiv R = \conv{R})
	\label{eq:020617c}
\\
\name{anti-symmetric}
	\mbox{iff~} R \cap \conv{R} \ \subseteq id
\\
\name{irreflexive}
	\mbox{iff~} |cap R id = bot|
	\label{eq:171019a}
\\
\name{connected}
	\mbox{iff~} R \cup \conv{R} = \top
	\label{eq:021019a}
	%
\end{eqnarray}

\begin{figure}\centering
	\includegraphics[scale=1.1]{orders.jpg}
	\caption{\small Taxonomy of endorelations.}
	\label{fig:aaa}
\end{figure}

\CUT{
\begin{center}
\tiny
\begin{tabular}{ccccccc}
&&&
	\rnode{0}{endo-relation}
\\ \rule{0pt}{2em} \\
	\rnode{A}{symmetric}
&
&
	\rnode{B}{transitive}
&
&
	\rnode{C}{reflexive}
&
	\rnode{D}{anti-symmetric}
&
	\rnode{E}{connected}
\nccurve[linecolor=red,angleA=090,angleB=210]{-}{A}{0}
\nccurve[linecolor=red,angleA=090,angleB=220]{-}{B}{0}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{C}{0}
\nccurve[linecolor=red,angleA=090,angleB=-60]{-}{D}{0}
\nccurve[linecolor=red,angleA=090,angleB=-30]{-}{E}{0}
\\ \rule{0pt}{2em} \\
&
	\rnode{J}{per}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{J}{A}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{J}{B}
&
&
	\rnode{F}{preorder}
\nccurve[linecolor=red,angleA=90,angleB=-90]{-}{F}{B}
\nccurve[linecolor=red,angleA=90,angleB=-90]{-}{F}{C}
\\ \rule{0pt}{2em} \\
	\rnode{K}{coreflexive}
\nccurve[linecolor=red,angleA=90,angleB=-90]{-}{K}{J}
&
&
	\rnode{G}{equivalence}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{G}{J}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{G}{F}
&
&
	\rnode{H}{partial order}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{H}{F}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{H}{D}
\\ \rule{0pt}{2em} \\
&&
	\rnode{J}{$id$}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{J}{K}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{J}{G}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{J}{H}
&&&
	\rnode{I}{linear order}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{I}{H}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{I}{E}
\end{tabular}
\end{center}
}
%(Criteria: previous slide)

By combining these criteria, endo-relations $\larrow A R A$ can further be
classified as in figure \ref{fig:aaa}. In summary:
\begin{itemize}
\item
\emph{Preorders} are reflexive and transitive orders.
\\ Example: |age y <= age x|.
\item
\emph{Partial} orders are anti-symmetric preorders
\\ Example: $y \subseteq x$ where |x| and |y| are sets.
\item
\emph{Linear} orders are connected partial orders
\\ Example: $y \leq x$ in |Nat|
\item
\emph{Equivalences} are symmetric preorders
\\ Example: |age y = age x|.
\footnote{Kernels of functions are always equivalence relations,
	see exercise \ref{ex:161014a}.\emskip
}
\item
\emph{Pers} are partial equivalences
\\ Example: $y \ IsBrotherOf \ x$.
\end{itemize}
Preorders are normally denoted by asymmetric symbols such as e.g.\ |y <<= x|, |y <=x|.
In case of a function |f| such that
\begin{eqnarray}
	|f . (<<=) atmost (<=) . f|
\end{eqnarray}
we say that |f| is monotonic. Indeed, this is equivalent to
\begin{eqnarray*}
	|a <<= b => (f a ) <= (f b)|
\end{eqnarray*}
once shunting  (\ref{eq:020617e}) takes place, and  variables are added and handled via (\ref{eq:040120c}).
Another frequent situation is that of two functions |f| and |g| such that
\begin{eqnarray}
	|f atmost (<=) . g|
\end{eqnarray}
This converts to the pointwise
\begin{eqnarray*}
	|rcb forall a () (f a <= g a)|
\end{eqnarray*}
that is, |f| is \emph{always at most} |g| for all possible inputs. The following
abbreviation is often used to capture this ordering on functions
induced by a pre-order |(<=)| on their outputs:
\begin{eqnarray}
	|f (pw (<=)) g| & |iff| & |f atmost (<=) . g|
	\label{eq:030827b}
\end{eqnarray}
For instance, |f (pw (<=)) id| means |f a <= a| for all inputs |a|.

\paragraph{Closure operators}
Given a partial order |(<=)|, a function |f| is said to be a \emph{closure} operator iff
\begin{eqnarray}
	|(<=).f = conv f . (<=) . f|
	\label{eq:180908a}
\end{eqnarray}
holds. Let us write the same with points --- via (\ref{eq:040120c}) ---, for all |x,y|:
\begin{eqnarray}
	|y <= f x <=> f y <= f x|
\end{eqnarray}
Clearly, for |(>=)=conv((<=))|, (\ref{eq:180908a}) can also be written
\begin{eqnarray*}
	|conv f . (>=) = conv f . (>=). f|
\end{eqnarray*}
Any of these alternatives is an elegant way of defining a closure operator |f|,
in so far it can be shown to be equivalent to the conjunction
of three facts about |f|: (a) |f| is monotonic; (b) |id (pw (<=)) f| and (c) |f=f.f|.

As an example,
consider the function that \emph{closes} a finite set of natural numbers
by filling in the intermediate numbers, e.g.\ |f {4,2,6} = {2,3,4,5,6}|.
Clearly, |x atmost f x|. If you apply |f| again, you get
\[ |f {2,3,4,5,6} = {2,3,4,5,6}| \]
This happens because |f| is a closure operator.

\begin{exercise}\label{ex:161014a}
Knowing that property
\begin{eqnarray}
	f \comp \conv f \comp f = f
	\label{eq:180826b}
\end{eqnarray}
holds for every function $f$, prove that |ker f| (\ref{eq:161014b}) is an
\emph{equivalence} relation.
\end{exercise}

\begin{exercise}
From |ker bang = top| --- recall (\ref{eq:260916d}) ---  and (\ref{eq:180826b}) infer
\begin{eqnarray}
	|top . R atmost top . S| & |<=>| & |R atmost top . S|
	\label{eq:180826c}
\end{eqnarray}
Conclude that |(top.)| is a closure operator.
\end{exercise}

\begin{exercise}
Generalizing the previous exercise, show that
pre/post-composition with functional kernels are \emph{closure} operations:
\begin{eqnarray}
	S\comp \ker f \subseteq R\comp \ker f & \equiv & S \subseteq R\comp  \ker f
	\label{eq:060613b}
\\
	|(ker f).S atmost (ker f). R| & \equiv & |S atmost (ker f). R|
	\label{eq:060613c}
\end{eqnarray}
\vskip -1.5em
\end{exercise}

\begin{exercise}\label{ex:171019b}
Consider the relation
\begin{eqnarray*}
|b R a| |<=>| \mbox{\em team |b| is playing against team |a| at the moment}
\end{eqnarray*}
Is this relation: reflexive? irreflexive? transitive? anti-symmetric? symmetric? connected?
\end{exercise}

\begin{exercise}
Expand criteria (\ref{eq:161014c}) to (\ref{eq:021019a}) to pointwise notation.
\end{exercise}

\begin{exercise}
A relation $R$ is said to be {co-transitive} or {dense} iff the following holds:
\begin{eqnarray}
\rcb\forall{b,a}{b\ R\ a}{\rcb\exists c {b\ R\ c}{c\ R\ a}}
\end{eqnarray}
Write the formula above in PF notation. Find a relation (e.g.\ over numbers)
that is co-transitive and another that is not.
\end{exercise}

\begin{exercise}
Check which of the following properties,
\begin{quote}
transitive,
symmetric,
anti-symmetric,
connected
\end{quote}
hold for the relation $Eats$ (\ref{eq:180827b}) of the Alcuin puzzle.
\end{exercise}

\begin{exercise}
Show that (\ref{eq:171001a}) of exercise \ref{q:em16171q05}
amounts to forcing relation |casa .(conv fora)| to be symmetric.
\end{exercise}

\begin{exercise}
Suppose you belong to the team that is developing, starting from
\begin{eqnarray*}
\myxym{
	|Location|
&
	|Job|
		\ar[l]_-{|start|}
		\ar[r]^-{|size|}
&
	|Size|
\\
&
	|JobId|
		\ar[u]_-{|S|}
}
\end{eqnarray*}
the memory management module of an operating system's kernel, where:
\begin{itemize}
\item	|JobId| uniquely identifies each running process (|Job|);
\item	|start| is the address where the memory block reserved for each running process;
\item	|size| is the size of this (contiguous) block of memory;
\item	|S|(cheduled) is the simple relation that associates |JobId|s with |Job|s;
\item	|Location| and |Size| are natural numbers.
\end{itemize}
The most relevant invariant in this model the guarantee that no process executes in memory cells of other processes. To specify it, define relation
	|larrow Location Owns JobId|
indicates the ``ownership" (or not) of an address by a process |k|:
\begin{eqnarray*}
	|k Owns a <=> rcb exists x (x S k)(start x <= a <= start x + size x)|
\end{eqnarray*}
To which property of the |Owns| relation would you resort to specify the intended invariant? Justify.
\end{exercise}

\section{Relational pairing}
Recall from sections \ref{sec:990115a} and \ref{sec:990115b} that functions can be composed in parallel and in alternation, giving rise to so-called \emph{products} and \emph{coproducts}. Does a product diagram like (\ref{eq:990115d}),
\begin{eqnarray*}
        \xymatrix{
        A & A \times B \ar[l]_{\p1} \ar[r]^{\p2} & B
        \\ & C \ar[ul]^{f} \ar[u]^{\split f g} \ar[ur]_{g}
}
\end{eqnarray*}
make sense when |f| e |g| are generalized to relations |R| and |S|?
We start from definition (\ref{eq:960923d}),
\begin{eqnarray*}
\ap{\split f g}c &\deff& \tuple{\ap f c, \ap g c}
\end{eqnarray*}
to try and see what such a generalization could mean. The relational, pointwise
expression of function |split f g| is
\[|y = split f g c|\]
which can be rephrased to |(a,b) = split f g c|, knowing that |split f g| is of type |C->A><B|
in (\ref{eq:990115d}). We reason:
\begin{eqnarray*}
\start
	|(a,b) = split f g c|
%
\just\equiv{|split f g c = (f c, g c)|; equality of pairs}
%
	|lcbr(a= f c)(b= g c)|
%
\just\equiv{|y=f x <=> y f x|}
%
	|lcbr(a f c)(b g c)|
\qed
\end{eqnarray*}
By in-lining the conjunction expressed by the braces just above, one gets
\begin{eqnarray*}
	|(a,b) (split f g) c <=> a f c && b g c|
\end{eqnarray*}
which proposes the generalization:
\begin{eqnarray}
	|(a,b) (split R S) c <=> a R c && b S c|
\end{eqnarray}
Recalling the projections |p1(a,b)=a| and |p2(a,b)=b|, let us try and remove
variables |a|, |b| and |c| from the above, towards a closed definition of |split R S|:
\begin{eqnarray}
\start
	|(a,b) (split R S) c <=> a R c && b S c|
	\nonumber
%
\just\equiv{ |p1(a,b)=a| and |p2(a,b)=b| }
%
	|(a,b) (split R S) c <=> p1(a,b) R c && p2(a,b) S c|
	\nonumber
%
\just\equiv{ (\ref{eq:040120c}) twice  }
%
	|(a,b) (split R S) c <=> (a,b)(conv p1.R) c && (a,b)(conv p2. S) c|
	\nonumber
%
\just\equiv{ (\ref{eq:161012a}) }
%
	|(a,b) (split R S) c <=> (a,b)((cap (conv p1.R) (conv p2. S))) c|
	\nonumber
%
\just\equiv{ (\ref{eq:041216a}) }
%
	|(split R S) = (cap (conv p1.R) (conv p2. S))|
	\label{eq:yyy}
\end{eqnarray}
We proceed to investigating what kind of universal property |(split R S)|, defined by |(cap
(conv p1.R) (conv p2. S))|, satisfies. The strategy is to use indirect equality:
\begin{eqnarray*}
\start
	|sse X (split R S)|
%
\just\equiv{ (\ref{eq:yyy}) }
%
	|sse X (cap (conv p1.R) (conv p2. S))|
%
\just\equiv{ (\ref{eq:020627a}) }
%
	|lcbr(sse X (conv p1.R))(sse X (conv p2. S))|
%
\just\equiv{ shunting }
%
	|lcbr(sse (p1.X) R)(sse (p2.X) S)|
%
\end{eqnarray*}
In summary, the universal property of |split R S| is:
\begin{eqnarray}
	|sse X (split R S)| & |<=>| & |lcbr(sse (p1.X) R)(sse (p2.X) S)|
	\label{eq:060319a}
\end{eqnarray}
For functions, |X,R.S := k,f,g| it can be observed that (\ref{eq:060319a})
coincides with (\ref{eq:splitUniv}). But otherwise, the corollaries derived
from (\ref{eq:060319a}) are different from those that emerge from (\ref{eq:splitUniv}).
For instance, cancellation becomes:
\begin{eqnarray*}
	|lcbr(sse (p1.(split R S)) R)(sse (p2.(split R S)) S)|
\end{eqnarray*}
This tells us that pairing |R| with |S| has the (side) effect of deleting
from |R| all those inputs for which |S| is undefined (and vice-versa), since output pairs
require that \emph{both} relations respond to the input. Thus, for relations, laws
such as the |><|-\emph{fusion} rule (\ref{eq:702e}) call for a side-condition:\footnote{
In general:
	|split R S . Q atmost (split (R . Q)(S . Q))|
holds.
}
\begin{eqnarray}
\arrayin{
\start	\split R S \comp Q =
	\split{R \comp Q}{S \comp Q}
\more \rule{3em}{0pt} \implied ~
	R \comp (\img Q) \subseteq R \lor
	S \comp (\img Q) \subseteq S
}
	\label{eq:050415b}
\end{eqnarray}
%
Clearly,
\begin{eqnarray}
	\split RS \comp f \wider= \split{R\comp f}{S \comp f}
	\label{eq:131016b}
\end{eqnarray}
holds, since |img f atmost id|.
Moreover, the \emph{absorption} law (\ref{eq:970511c}) remains unchanged,
\begin{eqnarray}
	|(R >< S).(split P Q)| = |split(R . P)(S . Q)|
	\label{eq:111116c}
	\label{eq:040129b-BM97}
\end{eqnarray}
where |R >< S| is defined in the same way as for functions:
\begin{eqnarray}
	|R><S| = \split{R \comp \p1}{S \comp \p2}
	\label{eq:960923c-rel}
\end{eqnarray}
As a generalization of (\ref{eq:131016b}) and also immediate by monotonicity,
\[
	|split R S . Q = split (R . Q)(S . Q)|
\]
holds for |Q| simple.

Because (\ref{eq:060319a}) is not the universal property of a product, we tend
to avoid talking about relational \emph{products} and rather talk about relational \emph{pairing} instead.\footnote{Relational products do exist but are not obtained by |split R S|. For more about this see section \ref{seq:180915a} later on.}
In spite of the weaker properties, relational pairing has interesting laws, namely
\begin{eqnarray}
	\conv{\split R S}  \comp \split X Y
& = &
	(|conv R| \comp X) \cap (|conv S| \comp Y)
	\label{eq:BM97:(5.8)}
\end{eqnarray}
that will prove quite useful later on.

\begin{exercise}
Derive from  (\ref{eq:BM97:(5.8)}) the following properties:
\begin{eqnarray}
\start	|cap (syd f g) (syd h k) = syd(split f h)(split g k)|
	\label{eq:160111a}
\more	\ker{\split R S} \wider= \ker R \cap \ker S
	\label{eq:030218a}
\more
	\mbox{ ${\split R {id}}$ is always \emph{injective}, for whatever $R$}	\nonumber
%
\end{eqnarray}
\vskip -2em
\end{exercise}

\begin{exercise}
Recalling (\ref{eq:070515b}), prove that |swap = split p2 p1|
(\ref{eq:703a}) is its own converse and therefore a bijection.
\end{exercise}

\begin{exercise}
Show that
|
	b(p1 . (conv p2)) a
|
is true for all |a| and |b|, and therefore:
\begin{eqnarray}
\start
	|p1 . (conv p2) = top|
\more
	|p2 . (conv p1) = top|
\end{eqnarray}
hold.
\end{exercise}

\begin{exercise}
Derive from the laws studied thus far the following facts about relational pairing:
\begin{eqnarray}
\start	|id >< id = id|
\more	|(R >< S).(P >< Q)=(R . P) >< (S . Q)|
\end{eqnarray}
\vskip -1.5em
\end{exercise}

\section{Relational coproducts}
Let us now show that, in contrast with products, coproducts extend perfectly
from functions to relations, that is, universal property (\ref{eq:eitherUniv}) extends to
\begin{eqnarray}
X = \alt R S & \equivalent &
        \left\{
                \begin{array}{rcl}
                        X \comp i_1 = R
                \\
                        X \comp i_2 = S
                \end{array}
        \right.
	\label{eq:081008c}
\end{eqnarray}
where |X : A + B -> C|, |R: A->C| and |S: B ->C| are binary relations. First
of all, we need to understand what |either R S| means. Our starting point is |+|-cancellation,
recall (\ref{eq:701c}):
\begin{eqnarray*}
\start
	|lcbr(
		either g h . i1 = g
	)(
		either g h . i2 = h
	)|
%
\just\equiv{ equality of functions }
%
	|lcbr(
		sse g (either g h . i1)
	)(
		sse h (either g h . i2)
	)|
%%
%\just\equiv{}
%%
%	|lcbr(sse (g.conv i1) (either g h))(sse (h.conv i2) (either g h))|
%
\just\equiv{ shunting followed by (\ref{eq:071114a}) }
%
	|cup (g.conv i1) (h.conv i2) atmost (either g h)|
%
\end{eqnarray*}
On the other hand:
\begin{eqnarray*}
\start
	|lcbr(either g h . i1 = g)(either g h . i2 = h)|
%
\just\equiv{ equality of functions }
%
	|lcbr(sse (either g h . i1) g)(sse (either g h . i2) h)|
%%
%\just\equiv{}
%%
%	|lcbr(sse (g.conv i1) (either g h))(sse (h.conv i2) (either g h))|
%
	\just\equiv{ (\ref{eq:240807a}) ; shunting }
%
	|lcbr(sse (either g h . i1.(conv i1)) (g.(conv i1)))(sse (either g h . i2.(conv i2)) (h.(conv i2)))|
%
\just\implies{ monotonicity (\ref{eq:180829a}) and distribution (\ref{eq:080124b}) }
%
	|either g h . ((cup (i1.(conv i1)) (i2.(conv i2)))) atmost (cup (g.conv i1) (h.conv i2))|
%
\just\equiv{|cup (img i1)(img i2) = id|, more about this below}
%
	|either g h  atmost (cup (g.conv i1) (h.conv i2))|
%
\end{eqnarray*}
Altogether, we obtain:
\begin{eqnarray*}
	|either g h = cup (g.conv i1) (h.conv i2)|
\end{eqnarray*}
Note how this matches with (\ref{eq:000606a}), once variables are introduced:
\begin{eqnarray*}
	|c(either g h) x <=> (rcb exists a (x=i1 a)(c=g a)) |||| (rcb exists b (x=i2 b)(c=h b))|
\end{eqnarray*}
Fact
\begin{eqnarray}
	|cup (img i1)(img i2) = id|
	\label{eq:180825a}
\end{eqnarray}
assumed above is a property stemming from the construction of coproducts,
\begin{eqnarray*}
|A+B| &\deff& |cup {i1 a || a ins A} {i2 b || b ins B}|
\end{eqnarray*}
since |i1| and |i2| are the \emph{only} constructors of data of type |A+B|.
Another property implicit in this construction is:
\begin{eqnarray}
	|conv i1.i2 = bot|
\end{eqnarray}
equivalent to its converse |conv i2.i1 = bot|. It spells out that, for any |a ins A| and |b ins B|, |i1 a = i2 b| is impossible.\footnote{Note that in (\ref{eq:60c}) this is ensured by always choosing two different tags |t1 /= t2|.} In other words, the union is a \emph{disjoint} one.

Let us now generalize the above to relations instead of functions,
\begin{eqnarray}
	|either R S = cup (R. conv i1) (S. conv i2)|
	\label{eq:180814a}
\end{eqnarray}
and show that (\ref{eq:081008c}) holds. First of all,
\begin{eqnarray*}
\start
	|X = cup (R. conv i1) (S. conv i2)|
%
\just\implies{ compose both sides with |i1| and simplify; similarly for |i2| }
%
	|X . i1 = R && X . i2 = S|
%
\end{eqnarray*}
The simplifications arise from |i1| and |i2| being injections, so their kernels are
identities. On the other hand, |conv i1.i2 = bot| and |conv i2.i1 = bot|,
as seen above. The converse implication (|<=.|) holds:
\begin{eqnarray*}
\start
	|X = cup (R. conv i1) (S. conv i2)|
%
\just\equiv{ (\ref{eq:180825a}) }
%
	|X . ((cup (img i1)(img i2))) =  cup (R. conv i1) (S. conv i2)|
%
\just\equiv{ distribution }
%
	|cup (X . (img i1))(X . (img i2)) =  cup (R. conv i1) (S. conv i2)|
%
\just\implied{ Leibniz }
%
	|lcbr(X . i1 . conv i1  = R . conv i1)(X . i2 . conv i2 = S . conv i2)|
%
\just\implied{ monotonicity}
%
	|lcbr(X . i1  = R)(X . i2 = S)|
\qed
\end{eqnarray*}
Thus (\ref{eq:081008c}) holds in general, for relations:
\begin{eqnarray}
        \arIso  {|(B + C) -> A|}
                {|(B-> A) >< (C -> A)|}
                {|either _ _|}
                {|conv(either _ _)|}
	\label{eq:332k-rel}
\end{eqnarray}
A most useful consequence of this is that all results known for coproducts
of functions are valid for relational coproducts. In particular, relational
direct sum
\begin{eqnarray}
	R + S = \junc{i_1 \comp R}{i_2 \comp S}
	\label{eq:040201d}
\end{eqnarray}
can be defined satisfying (\ref{eq:+-absorption}), (\ref{eq:706b}) etc with
relations replacing functions. Moreover, the McCarthy conditional (\ref{eq:McCarthy})
can be extended to relations in the expected way:\footnote{Guards |grd p| will be
expressed relationally in section \ref{sec:200109b}.}
\begin{eqnarray}
        p \rightarrow R, S &\deff& \alt R S \comp p?
\end{eqnarray}

The property for sums (coproducts) corresponding to (\ref{eq:BM97:(5.8)}) for
products is:\footnote{For a proof of (\ref{eq:060303c}) see exercise \ref{ex:240807b}.}
\begin{eqnarray}
	|either R S . (conv(either T U))| & = & (R \comp \conv{T}) \cup (S \comp \conv{U})
	\label{eq:060303c}
\end{eqnarray}
This \emph{divide-and-conquer} rule is essential to \emph{parallelizing} relation composition by so-called \emph{block} decomposition.

Finally,
the \emph{exchange law} (\ref{eq:701d}) extends to relations,
\begin{eqnarray}
        \junc{\split R S}{\split T V} &=&
        \split{\junc R T}{\junc S V}
	\label{eq:701d-rel}
\end{eqnarray}
cf.\
\begin{eqnarray*}
\xymatrix{
	A
		\ar[r]^{i_1}
		\ar[d]_{R}
		\ar[drr]_{S}
&
	A+B
&
	B
		\ar[dll]_{T}
		\ar[d]^{V}
		\ar[l]_{i_2}
\\
	C
&
	C\times D
		\ar[l]^{\p1}
		\ar[r]_{\p2}
&
	D
}
\end{eqnarray*}
For the proof see the following exercise.

\begin{exercise}
Relying on both (\ref{eq:081008c}) and (\ref{eq:131016b}) prove (\ref{eq:701d-rel}).
Moreover, prove
\begin{eqnarray}
	|conv((R+S)) = (conv R) + (conv S)|
	\label{eq:ooo}
\end{eqnarray}
\vskip -2em
\end{exercise}

\paragraph{Biproducts}
It turns out that universal property
\begin{eqnarray}
	|X=(conv(either (conv R)(conv S))) <=> conv i1 . X = R && conv i2 . X = S|
	\label{eq:260916a}
\end{eqnarray}
also holds, being easy to derive from (\ref{eq:081008c}). So |(conv(either (conv R)(conv S)))|
is the \emph{categorial} product for relations:
\begin{eqnarray*}
        \arIso  {\rel A {(B + C)}}
                {(\rel A B) × (\rel A C)}
                {} % {\coJoin}
                {} % {\uncojoin}
	%label{eq:333o-ar}
\end{eqnarray*}
That is, among relations, the product is obtained as the converse dual of
the coproduct. This is called a \emph{biproduct} \cite{MO13c}.
The effect of |(conv(either (conv R)(conv S)))| is just ``merge" relations
|R| and |S| into a single one in a way that never confuses their outputs:
\begin{eqnarray}
	|conv(either (conv R)(conv S)) = cup (i1 . R)(i2 . S)|
	\label{eq:260916b}
\end{eqnarray}

\begin{exercise}
From (\ref{eq:180814a}) infer that (\ref{eq:180825a}) is a re-statement of (\ref{eq:703b}). 
\end{exercise}

\begin{exercise}\label{ex:240807b}
From (\ref{eq:180814a}) prove (\ref{eq:060303c}). Then show that
\begin{eqnarray}
	|img (either R S)| &=& \img{R} \cup \img{S}
	\label{eq:180905b}
%	\img{i_1} \cup \img{i_2} &=& id
\end{eqnarray}
follows immediately from (\ref{eq:060303c}).
\end{exercise}

\begin{exercise}
Derive the following inequational counterpart of (\ref{eq:081008c})
\begin{eqnarray}
	|either R S| \subseteq X & \equiv & R \subseteq X \comp i_1 \wider\land S \subseteq X \comp i_2
\end{eqnarray}
from (\ref{eq:180814a}) by indirect equality.
\end{exercise}

\begin{exercise}
Prove:
\begin{eqnarray}
	|syd f g >< (syd h k)| = |syd(f><h)(g><k)|
	\label{eq:160112a}
\\
	|syd f g + (syd h k)| = |syd(f+h)(g+k)|
	\label{eq:160118e}
\end{eqnarray}
\vskip -1.5em
\end{exercise}

\section{On key-value data models}
\emph{Simple} relations abstract what is currently known as the \emph{key-value-pair}
data model in modern databases.\footnote{For example, Hbase, Amazon DynamoDB,
and so on, are examples of database systems that use the key-value pair data model.}
In this setting, given a \emph{simple} relation |rarrow K S V|, |K| is regarded as
a type of data \emph{keys} and |V| as a type of data \emph{values}.

By pairing (\ref{eq:yyy}) such key-value-pairs one obtains more elaborate
stores. Conversely, one may use projections to select particular key-attribute relationships
from key-value stores. Note that keys and values can be \emph{anything} (that is, of any type)
and, in particular, they can be compound, for instance
\begin{eqnarray*}
	|underbrace(PartitionKey >< SortKey) K -> underbrace (Type >< ...) V|
\end{eqnarray*}
in the example of figure \ref{fig:190201a}.\footnote{Credits: \url{https://aws.amazon.com/nosql/key-value/}.}

\begin{figure}\centering
	\includegraphics[width=0.9\textwidth]{PartitionKey.png}
	%url{https://hbase.apache.org/book.html#conceptual.view}
	\caption{Key-value data model instance.\label{fig:190201a}}
\end{figure}

The example furthermore shows how keys and values can structure themselves even further.
In particular, ``\emph{schema is defined per item}" indicates that the values may be of coproduct types,
something like |Title >< (1+Author><(1+Date >< ...))|, for instance. Although
the simplicity of the columnar model suggested by the key-value principle
is somewhat sacrificed in the example, this shows how expressive \emph{simple}
relations involving \emph{product} and \emph{coproduct} types are.

One of the standard variations of the key-value model is to equip keys with time-stamps indicating
\emph{when} the pair was inserted or modified in the store, for instance
\begin{eqnarray}
	|Student><Course><Time -> Result|
	\label{eq:180915d}
\end{eqnarray}
telling the possibly different results of students in exams of a particular
course. This combination of the key-value model with that of \emph{temporal}
(also called \emph{historical}) databases is very powerful.

The relational combinators studied in this \doc\ apply naturally to key-value-pair
storage processing and offer themselves as a powerful, pointfree high-level language for handling
such data in a ``noSQL" style.

\emskip

\begin{exercise}%label{ex:csi2122q11}
Suppose you are working in a company whose information system follows the key-value-pair model and where, in order to make it possible to use an open-source library, one needs to merge two relationships |rarrow K R V| and |rarrow K S V|
into one single (simple) relation.

Building |Q = cup R S| is not an option, for |R| and |S| can have keys in common and confusion is likely. Your having been 
asked to take care of the problem, here is your suggestion: join the relations after previously transforming their keys by two functions |f| and |g|, that is, build:
\begin{quote}
	|Q = cup (R. conv f)(S. conv g|
\end{quote}
Naturally, the implementation team asks you: which functions are |f| and |g|? Here's your answer: you can
choose the ones you like as long as
\begin{itemize}
\item	both are injective
\item	there are not two keys |k| and |k'| such that |f k = g k'|.
\end{itemize}
As your suggestion worked well, the team's leader asks you to justify your solution. Write the relational calculations with which you would justify it, taking into account that the key-value-pair data model only admits simple relations.
\def\resolucao{
\begin{eqnarray*}
\start
	\mbox{|Q = cup (R. conv f)(S. conv g| simples}
%
\just\equiv{exercício 5.15}
%
	|lcbr3(img((R. conv f)) atmost id)
	      (img((S. conv g)) atmost id)
	      (R. conv f . (conv((S. conv g))) atmost id)
	|
%
\just\equiv{ conversos etc }
%
	|lcbr3(R. conv f . f . (conv R) atmost id)
	      (S. conv g . g . (conv S) atmost id)
	      (R. conv f . g . conv S atmost id)
	|
%
\just\equiv{ a sua proposta foi |f| e |g| injectivas }
%
	|lcbr3(R. (conv R) atmost id)
	      (S. (conv S) atmost id)
	      (R. conv f . g . conv S atmost id)
	|
%
\just\equiv{ |R| e |S| são simples à partida }
%
	      |R. conv f . g . conv S atmost id|
%
\just\implied{ |bot| é absorvente da composição }
%
	      |conv f . g = bot|
%
\just\equiv{ o seu último requisito (guardanapo etc) }
%
	      |not(rcb exists (k,k') () (f k = g k')|
\qed
\end{eqnarray*}

}
\end{exercise}

\section{What about relational ``currying"?}
Recall isomorphism (\ref{eq:fac22-decorated}),
\begin{eqnarray*}
\myxym{
(C^B)^A \ar@@/^1pc/[rr]^-{|_uncurry()|} & \iso & C^{A \times B} \ar@@/^1pc/[ll]^-{|_curry()|}
}
\end{eqnarray*}
that is at the core of the way functions are handled in functional programming.
Does this isomorphism hold when functions are generalized to relations, something like...
\begin{eqnarray*}
	|A><B->C| &\iso& |A -> ...| ?
\end{eqnarray*}

Knowing that the type |A><B->C| of relations is far larger than $ C^{A \times B}$,
it can be anticipated that the isomorphism will not extend to relations in the same way.
In fact, a rather simpler one happens instead, among relations:
\begin{eqnarray}
\xymatrix{
	A \times B \rightarrow C
		\ar@@/^1pc/[rr]^{trans}
&
	\iso
&
	A \rightarrow C  \times B
		\ar@@/^1pc/[ll]^{untrans}
}
	\label{eq:180915b}
\end{eqnarray}
This tells us the (obvious, but very useful) fact that relations involving
product types can be reshaped in any way we like, leftwards or rightwards.

It is quite convenient to overload the notation used for functions and write
|trans R| to denote $trans\ R$ and |untrans R| to denote $untrans\ R$. Then
the isomorphism above is captured by universal property,\footnote{Compare with (\ref{eq:999f}).}
\begin{eqnarray*}
\xymatrix{
	C \times B
&
	(C \times B) \times B \ar[r]^-{\epsilon}
&
	C
\\
	A \ar[u]^{|trans R|}
&
	A \times B \ar[u]^{|trans R| \times id} \ar[ru]_{R}
}
\end{eqnarray*}
where
\begin{eqnarray}
	|trans R| \wider= |split R p2 . (conv p1)|
& ~ &
\myxym{
	C \times B
\\
	A
		\ar[r]_-{|conv p1|}
		\ar[u]^{|trans R|}
&
	A  \times B
		\ar[lu]_-{|split R p2|}
}
	\label{eq:180915c}
\end{eqnarray}
that is
\begin{eqnarray*}
	|(c,b)(trans R)a|
	& \equiv &
	|c R (a,b)|
\end{eqnarray*}
Moral: every $n$-ary relation can be expressed as a binary relation;
moreover, where each particular attribute is placed (input/output) is irrelevant.

%Relational currying thus explained by \textbf{self}-adjunction
%\begin{eqnarray*}
%	(\times B) \wider\dashv (\times B)
%\end{eqnarray*}

By \emph{converse duality},
	|conv((untrans S))  = trans((conv S))|,
 we obtain the definition of relational ``uncurrying":
\begin{eqnarray*}
	|untrans S| &=& |p1 . (conv (split (conv S) p2))|
\end{eqnarray*}
Then
\begin{eqnarray*}
&& \epsilon = |untrans id| = |p1 . (conv (split (id) p2))|.
\end{eqnarray*}
With points:
\begin{eqnarray*}
	c_2 \mathbin\epsilon ((c_1,b_1),b_2) & \equiv & c_2=c_1 \land b_1=b_2
\end{eqnarray*}
%cf. \cite{BM97}, ex. 5.11.

\paragraph{The \aspas{pairing wheel} rule}
The flexibility offered by (\ref{eq:180915b}) means that, in relation
algebra, the information altogether captured by the three relations |M|,
|P| and |Q| in
\begin{eqnarray}
\myxym{
&
	|B|
\\
&
	|A|
		\ar[u]_{M}
		\ar[dr]^{P}
		\ar[dl]_{Q}
\\
	|C|
&&
	|D|
}
	\label{eq:180228e}
\end{eqnarray}
can be aggregated in several ways, namely
\begin{quote}
	|longrarrow B((split P Q).(conv M))(D >< C)|
\\
	|longrarrow D((split Q M).(conv P))(C >< B)|
\\
	|longrarrow C((split M P).(conv Q))(B >< D)|
\end{quote}
all isomorphic to each other:
\begin{eqnarray*}
\xymatrix@@R=3em@@C=-2em{
&
	|B->D >< C|
	\ar@@/^1pc/[dr]^-{|alpha|}
\\
	|C->B >< D|
	\ar@@/^1pc/[ur]^-{|alpha|}
&&
	|D->C >< B|
	\ar@@/^2pc/[ll]^-{|alpha|}
}
\end{eqnarray*}
The rotation among relations and types justifies the name ``pairing wheel" given to
(\ref{eq:180228e}).
Isomorphism |alpha| holds in the sense that every entry of one of the aggregates is uniquely
represented by another entry in any other aggregate, for instance:
\begin{eqnarray*}
\start
	|(d,c)((split P Q).(conv M))b|
%
\just={ composition ; pairing}
%
	|rcb exists a ((cell d P a) && (cell c Q a)) (cell a (conv M) b)|
%
\just={ converse; | && | is associative and commutative}
%
	|rcb exists a ()(((cell c Q a) && (cell b M a)) && (cell a (conv P) d))|
%
\just={ composition ; pairing}
%
	|(c,b)((split Q M).(conv P))d|
%
\end{eqnarray*}
Thus: |alpha((split P Q).(conv M))=((split Q M)).(conv P)|.

\begin{exercise}
Express |alpha| in terms of $trans$ (\ref{eq:180915b}) and its converse (\ref{eq:180915c}).
\end{exercise}

\section{Galois connections} \label{sec:180828b}
Recall from section \ref{sec:180814b} that a preorder is a reflexive and transitive relation.
Given two preorders $\leq$ and $\sqsubseteq$, one may relate arguments and
results of pairs of suitably typed functions $f$ and $g$ in a particular
way,
\begin{eqnarray}
	f° \comp \sqsubseteq
&
	\wider=
&
	{\leq } \comp g
	\label{eq:040122b}
%
\end{eqnarray}
as in the diagram:
\begin{eqnarray*}
\vcenter{\xymatrix@@R=4mm@@C=4mm{
	   |A|
		   \ar[dd]_{|conv f|}
	   &&
		   |A|
		   \ar[dd]^{|g|}
	   \ar[ll]_{\sqsubseteq}
	   \\
		   &	|=|
		   \\
		   |B|
		   &&
		   |B|
		   \ar[ll]^{|<=|}
}}
\end{eqnarray*}
In this very special situation, $f,g$ are said to be \emph{Galois connected}. We write
\begin{eqnarray}
	{f} \issat {g}
	\label{eq:100109b}
\end{eqnarray}
as abbreviation of (\ref{eq:040122b}) when the two preorders $\sqsubseteq, \leq$ are implicit
from the context. Another way to represent this is:
%
\begin{eqnarray*}
	\arLaw{(A,\sqsubseteq)}{(B,\leq)} {f} {g} {}
\end{eqnarray*}
Function $f$ (resp.\ $g$) is referred to as
the \emph{left} (resp.\ \emph{right}) adjoint of the connection.
By introducing variables in both sides of (\ref{eq:040122b})
via (\ref{eq:040120c}), we obtain, for all $x$ and $y$
\begin{eqnarray}
	(f\ x) \sqsubseteq y
&
	~\equiv~
&
	x \leq (g\ y)
	\label{eq:040120e}
\end{eqnarray}


\begin{figure}
\centering
	\includegraphics[width=0.3\textwidth]{areas.jpg}
\caption{\small Graphical interpretation of equation (\ref{eq:040122b}):
(a) relation |larrow A ((<=).g) B| is the ``area'' below function $g$ wrt.\ ${\leq}$;
(b) relation |rarrow B (conv f . (<<=)) A| is the ``area'' above function $f$ wrt.\ ${\sqsubseteq}$, to the right (oriented 90º);
(c) $f$ and $g$ are such that these areas are the same.}
\label{fig:180826g}
\end{figure}

In particular, the two preorders in (\ref{eq:040122b}) can be the identity |id|, in which case (\ref{eq:040122b})
reduces to |conv f = g|, that is, |f| and |g| are each-other inverses --- i.e., isomorphisms.
Therefore, the Galois connection concept is a generalization of the concept of isomorphism.\footnote{Interestingly, every Galois connection is on its turn a special case of an \emph{adjunction}, recall (\ref{eq:170429c}).
Just promote the adjoints |f| and |g| in (\ref{eq:040120e}) to functors, and replace the preorder symbols by arrows.
This ``syntactic trick" can be taken as a rough sketch of a formal, categorial argument that we shall skip for the time
being.}

Quite often, the two adjoints are \emph{sections} of binary operators.
Recall that, given a binary operator $a\mathbin\theta b$, its two sections $(a \theta)$ and
$(\theta b)$ are unary functions $f$ and $g$ such that, respectively:
\begin{eqnarray}
	f = (a \theta) & \wider\equiv & f\ b = a \mathbin\theta b
	\label{eq:070612b}
\\
	g = (\theta b) & \wider\equiv & g\ a = a \mathbin\theta b
	\label{eq:070612c}
\end{eqnarray}

Galois connections in which the two preorders are relation inclusion
(\(
	{\leq} , {\sqsubseteq} := {\subseteq} , {\subseteq}
\))
and whose adjoints are sections of relational combinators are
particularly interesting because they express universal properties about such
combinators. Table \ref{tab:eq:040121a} lists some connections that are relevant for this \doc.

\begin{table}
\footnotesize
\centering
\begin{tabular}{||X||c||c||Y||}\hline
	\multicolumn{4}{||c||}{\rr{ $(f\ X) \subseteq Y \equiv X \subseteq (g\ Y)$}}
\\\hline\hline
	  \bf Description
	& $  f $
	& $  g $
	& \bf Obs.
\\\hline\hline
	  converse
	& $  (\_)° $
	& $  (\_)° $
	& ~
\\\hline
	  \emph{shunting} rule
	& $  (h \comp ) $
	& $  (h° \comp ) $
	& $h$ is a function
\\\hline
	  ``converse'' \emph{shunting} rule
	& $  ( \comp h°) $
	& $  ( \comp h ) $
	& $h$ is a function
\\\hline
%	  Left-division
%	& $  (R \comp ) $
%	& $  (R \rdiv ~) $
%	& read ``$R$ under \ldots''
%\\\hline
%	  Right-division
%	& $  ( \comp R) $
%	& $  (~ \ldiv R) $
%	& read ``\ldots over $R$''
%\\\hline
	  difference
	& $  (\_- R) $
	& $  (R \cup ~) $
	& ~
\\\hline
	  implication
	& | ((cap R _)) |
	& | (R => _) |
	& ~
\\\hline
\end{tabular}
\\~
	\caption{\footnotesize Sample of Galois connections in the relational calculus.
	The general formula given on top is a logical equivalence universally quantified
	on $X$ and $Y$.
	It has a left part involving \emph{left adjoint} $f$ and a right
	part involving \emph{right adjoint} $g$.
	}%
	\label{tab:eq:040121a}
\end{table}

It is remarkably easy to recover known properties of the relation calculus from table
\ref{tab:eq:040121a}. For instance, the first row yields
\begin{eqnarray}
	X° \subseteq Y
&
\equiv
&
	X \subseteq Y°
%
\end{eqnarray}
since |f=g=conv((_))| in this case. Thus converse is its own self adjoint. From this we derive
\begin{eqnarray}
R \subseteq S \equiv R° \subseteq S°
\label{eq:020617h}
\end{eqnarray}
by making |X,Y :=R,conv S| and simplifying by involution (\ref{eq:020624b}).
Moreover, the entry marked ``\emph{shunting} rule'' in the table leads to
\begin{eqnarray*}
	h \comp X \subseteq Y & \equiv & X  \subseteq h ° \comp Y
	%label{eq:020617e}
\end{eqnarray*}
for all $h,X$ and $Y$. By taking converses, one gets another entry in table
\ref{tab:eq:040121a}, namely
\begin{eqnarray*}
	X \comp h° \subseteq Y & \equiv & X  \subseteq Y \comp h
	%label{eq:020617f}
\end{eqnarray*}
These are the equivalences (\ref{eq:020617e}) and (\ref{eq:020617f}) that we have already
met, popularly known as \aspas{shunting rules}.

The fourth and fifth rows in the table are Galois connections that respectively introduce two
new  relational operators --- relational \emph{difference} |S-R| and relational \emph{implication} |R=>S| ---
as a \emph{left adjoint} and an \emph{right adjoint}, respectively:
\begin{eqnarray}
	X - R \subseteq Y
&
	\equiv
&
	X \subseteq Y \cup R
	\label{eq:140711a}
\\
	|cap R X| \subseteq Y
&
	\equiv
&
	X \subseteq |R=> Y|
%
\end{eqnarray}

There are \emph{many} advantages in describing the meaning of relational operators
by Galois connections. Further to the systematic tabulation of operators (of
which table \ref{tab:eq:040121a} is just a sample), the concept of a
Galois connection is a \emph{generic} one, which offers a rich algebra
of \emph{generic} properties, namely:
\begin{itemize}
\item both adjoints $f$ and $g$ in a Galois connection are monotonic;
\item left adjoint $f$ distributes with join and right-adjoint $g$
      distributes with meet, wherever these exist:
\begin{eqnarray}
%
	f(b \sqcup b') &=& (f\ b) \vee (f\ b')
	\label{eq:130113d}
\\
	g(a \land a') &=& (g\ a) \sqcap (g\ a')
	\label{eq:130113e}
%
\end{eqnarray}
\item left adjoint $f$ preserves infima and right-adjoint $g$
      preserves suprema, wherever these exist:\footnote{In these case both orders will form a so-called \emph{lattice} structure.}
\begin{eqnarray}
\start	|f bot = bot|
\more	|g top = top|
\end{eqnarray}

\item two cancellation laws hold,
\begin{eqnarray}
	(f \comp g) a \leq a
&
	\mbox{~and~}
&
	b \sqsubseteq (g \comp f) b
\end{eqnarray}
respectively known as \emph{left-cancellation} and \emph{right-cancellation};
\item	and, for partial orders, the so-called \emph{semi-inverse} properties:
\begin{eqnarray}
\start	|f=f.g.f|
	\label{eq:240601a}
\more	|g=g.f.g|
	\label{eq:240601b}
\end{eqnarray}

\end{itemize}

It may happen that a cancellation law holds up to equality,
for instance
\(
	f\ (g \ a) = a
	%label{eq:070517a}
\),
in which case the connection is said to be \emph{perfect} on that particular side. % \cite{ABHVW92}.
The picture of a left-perfect Galois connection $f \issat g$ is given in figure \ref{fig:180826i}.\footnote{Adapted from \cite{Ba04a}.}, which is the subject of the following exercise.

\begin{figure}
\centering
	\includegraphics[width=0.50\textwidth]{gc.jpg}
\caption{\small Left-perfect Galois connection $f \issat g$ involving two lattices |S| and |R|.}
\label{fig:180826i}
\end{figure}

\begin{exercise} \label{ex:250413c}
Figure \ref{fig:180826i} shows a Galois connection |gc f g| in which |f| is a surjection. (a) Use (\ref{eq:240601a}) to
show that |f . g = id| necessarily holds. Then, by (\ref{eq:240601c}), |g| is injective, as the figure shows.
(b) Dually, show that |g| injective in (\ref{eq:240601b}) makes |f| surjective.
\textbf{Hint}: recall exercise \ref{ex:250606a}). 
\end{exercise}

Let us take for instance Galois connection (\ref{eq:140711a}) as example. Following the general rules above, we get \emph{for free}:
the monotonicity of |(_ -R)|,
\begin{eqnarray*}
	|sse X Z| & \implies & |sse (X - R)(Z-R)|
\end{eqnarray*}
the monotonicity of |((cup _ R))|,
\begin{eqnarray*}
	|sse X Z| &\implies& |sse (cup X R)(cup Z R)|
\end{eqnarray*}
the distribution of |(_ -R)| over \emph{join},
\begin{eqnarray*}
	|((cup X Y))-R| & = & |cup ((X-R)) ((Y-R))|
\end{eqnarray*}
the distribution of |((cup _ R))| over \emph{meet},
\begin{eqnarray*}
	|cup ((cap X Y)) R| & = & |cap ((cup X R)) ((cup Y R))|
\end{eqnarray*}
the preservation of infima by |(_ -R)|,
\begin{eqnarray*}
	|bot -R = bot|
\end{eqnarray*}
the preservation of suprema by |((cup _ R))|,
\begin{eqnarray*}
	|cup top R = top|
\end{eqnarray*}
left-cancellation (|Y:=X - R|),
\begin{eqnarray*}
	|sse X (cup ((X - R)) R)|
\end{eqnarray*}
right-cancellation (|X := cup Y R|),
\begin{eqnarray*}
	|sse (((cup Y R)) - R) Y|
\end{eqnarray*}
and finally the semi-inverse properties:
\begin{eqnarray*}
\start	 |((cup ((X - R)) R)) - R| = |X-R|
\more	 |cup ((((cup X R))-R)) R| = |cup X R|
\end{eqnarray*}

The reader is invited to extract similar properties from the other connections listed in table \ref{tab:eq:040121a}.
Altogether, we get 50 properties out of this table! Such is the power of \emph{generic} concepts in mathematics.

Two such connections were deliberately left out from table \ref{tab:eq:040121a}, which play a central role in
relation algebra and will deserve a section of their own --- section \ref{sec:180811a}.

\begin{exercise} \label{ex:161113c}
Show that |R-S atmost R|, |R-bot = R| and |R - R = bot| hold.
\end{exercise}

\begin{exercise} \label{ex:180829a}
Infer
\begin{eqnarray}
	b(R \implies S)a & \equiv & (b\ R\ a) \implies (b\ S\ a)
	\label{eq:131113d}
\end{eqnarray}
from the Galois connection
\begin{eqnarray}
	R \cap X \subseteq Y & \wider\equiv & X \subseteq (R \implies Y)
	\label{eq:130928c}
\end{eqnarray}
Suggestion: note that |b(R => S)a| can be written |sse id (conv (const b) . (R => S) . (const a))| (check this!).
Then proceed with (\ref{eq:130928c}) and simplify.
\end{exercise}

\begin{exercise} (Lexicographic orders)
The \emph{lexicographic chaining} of two relations $R$ and $S$ is defined by:
\begin{eqnarray}
	\lexord{R}{S} & =  & {{R}} \cap (\conv{{R}} \implies {{S}})
	\label{eq:130928b}
\end{eqnarray}
Show that (\ref{eq:130928b}) is the same as stating the universal property:
\begin{eqnarray*}
	|X atmost (R ; S)| \wider\equiv |X atmost R && (cap X (conv R)) atmost S|
\end{eqnarray*}
\vskip-2em
\end{exercise}

\begin{exercise}
Let students in a course have two numeric marks,
\begin{eqnarray*}
\xymatrix{
	|Nat|
&
	Student
		\ar[l]_-{mark1}
		\ar[r]^-{mark2}
&
	|Nat|
}
\end{eqnarray*}
and define the \emph{preorders}:
\begin{eqnarray*}
	{\leq}_{mark1}&  =  & \conv{mark1} \comp {\leq} \comp mark1
\\
	{\leq}_{mark2}&  =  & \conv{mark2} \comp {\leq} \comp mark2
\end{eqnarray*}
Spell out in pointwise notation the meaning of lexicographic ordering
\begin{eqnarray*}
	\lexord{{\leq}_{mark1}}{{\leq}_{mark2}}
\end{eqnarray*}
\vskip-2em
\end{exercise}

\paragraph{Negation}
We define |rnot R = R => bot|, leading to the pointwise meaning |b((rnot R))a <=> not(b R a)|.
From the Galois connection of |R=>S| one immediately derives that of negation,
\begin{eqnarray}
	|X atmost (rnot R)| & |<=>| & |rnot X atleast R|
	\label{eq:210110b}
\end{eqnarray}
cf.
\begin{eqnarray*}
\start
	|X atmost (rnot R)|
%
\just\equiv{|rnot R = R => bot|}
%
	|X atmost (R => bot)|
%
\just\equiv{ (\ref{eq:130928c}) }
%
	|cap X R atmost bot|
%
\just\equiv{|cap X R = cap R X|; (\ref{eq:130928c}) }
%
	|R atmost (X =>  bot)|
%
\just\equiv{|rnot R = R => bot|}
%
	|R atmost (rnot X)|
\qed
\end{eqnarray*}
Note the order reversal, |atmost| on the lefthand side, |atleast|
on the other side of (\ref{eq:210110b}).
Thus the following instances of (\ref{eq:130113d},\ref{eq:130113e}),
\begin{eqnarray}
	|rnot((cup R S)) = cap ((rnot R)) ((rnot S))|
\\
	|rnot((cap R S)) = cup ((rnot R)) ((rnot S))| \nonumber
\end{eqnarray}
known as \emph{de Morgan laws}.

From the Galois connection above other expected properties analogous to logic negation can be derived,
for instance |rnot top = bot|.
One of the most famous rules for handing negated relations is the so-called \emph{Schr\"oder's rule}:
\begin{eqnarray}
	|rnot Q . (conv S) atmost (rnot R) <=> conv R . (rnot Q) atmost (rnot S)|
\end{eqnarray}
It can also be shown that
\begin{eqnarray}
	|cup R (rnot R) = top|
\end{eqnarray}
holds and therefore:
\begin{eqnarray}
	|top-R atmost R => bot|
	\label{eq:180907b}
\end{eqnarray}
%cf.\
%\begin{eqnarray*}
%\start
%	|top atmost (cup R (rnot R))|
%%
%\just\equiv{}
%%
%	|top -R atmost (rnot R)|
%%
%\just\equiv{}
%%
%	|top -R atmost R=>bot|
%\qed
%\end{eqnarray*}

\begin{exercise}
Show that |rnot((conv R)) = conv ((rnot R))|.
\end{exercise}

\begin{exercise}
Assuming
\begin{eqnarray}
	\conv f \comp (R \implies S) \comp g &=& (\conv f \comp R \comp g) \implies (\conv f \comp S \comp g)
	\label{eq:BM97ex4.33}
\end{eqnarray}
and (\ref{eq:180907b}), prove:
\begin{eqnarray}
	|conv(const c) . ( top - const c) = bot|
	\label{eq:180907c}
\end{eqnarray}
%Why:
%\begin{eqnarray*}
%\start
%	|conv(const c) . ( top - const c) atmost bot|
%%
%\just\implied{|top-R atmost (R => bot)|}
%%
%	|conv(const c) . (const c => bot) atmost bot|
%%
%\just\equiv{ (\ref{eq:180907a}) }
%%
%	|(conv(const c) . (const c) => bot) atmost bot|
%%
%\just\equiv{ |rnot top=bot|}
%%
%	|bot atmost bot|
%\qed
%\end{eqnarray*}
\end{exercise}

\section{Relation division}
\label{sec:180811a}
However intimidating it may sound, structuring a calculus in terms of Galois connections
turns out to be a great simplification, leading to \emph{rules} that make the reasoning closer to school algebra.
Think for instance the rule used at school to reason about whole division of two natural numbers |x| and |y|,
\begin{eqnarray}
	z \times y \leq x \wider\equiv z \leq x \div y
	~~~~~~~~~~(y>0)
	\label{eq:080105c}
%
\end{eqnarray}
assumed universally quantified in all its variables.
Pragmatically, it expresses a ``shunting'' rule which enables one to trade
between a whole division in the upper side of an
% $(\leq)$
inequality and a multiplication in the lower side. This rule is easily identified as the Galois connection
\begin{eqnarray*}
	z \underbrace{(\times y)}_{f} \leq x
\wider\equivalent
	z \leq x \underbrace{(\div y)}_{g}\mbox{.}
\end{eqnarray*}
where multiplication is the left adjoint and division is the right adjoint: $(\times y) \issat (\div y)$, for $y\not=0$.\footnote{This connection is perfect on the lower side since |div (z >< y) y = z|.}

\begin{figure}
\centering
	\includegraphics[width=0.5\textwidth]{div.jpg}
\caption{\small Picturing Galois connection $(\times 2) \issat (\div 2)$ as in figure \ref{fig:180826g}.
$f = (\times 2)$ is the left adjoint of
$g = (\div 2)$.
The area below $g = (\div 2)$ is the same as the area above
$f = (\times 2)$.
$f = (\times 2)$ is not surjective.
$g = (\div 2)$ is not injective.}
\label{fig:180826h}
\end{figure}

As seen in the previous section, many properties of $(\times)$ and $(\div)$ can be inferred from (\ref{eq:080105c}),
for instance the cancellation $(x \div y) \times y \leq x$ --- just replace $z$ by
$x \div y$ and simplify, and so on.

A parallel with relation algebra could be made by trying a rule similar to (\ref{eq:080105c}),
\begin{eqnarray}
	Z \comp Y \subseteq X \wider\equiv Z \subseteq X / Y
	\label{eq:130113f}
	\label{eq:100707a}
	\label{eq:070829b}
\end{eqnarray}
which suggests that, like integer multiplication, relational composition
has a right adjoint, denoted |X / Y|. The question is: does such a \emph{relation division}
operator actually exist? Proceeding with the parallel, note that, in the same way
\begin{eqnarray*}
	z \times y \leq x \wider\equiv z \leq x \div y
\end{eqnarray*}
means that $\relax x \div y$ is the largest \emph{number} which multiplied by $\relax y$ approximates $\relax x$,
(\ref{eq:130113f}) means that $\relax X / Y$ is the largest \emph{relation} |Z| which, pre-composed with $Y$, approximates $X$.

What is the pointwise meaning of $\relax X / Y$? Let us first of all equip (\ref{eq:130113f}) with a type diagram:
\begin{eqnarray*}
	\relax
	Z \comp Y \subseteq X \wider\equiv Z \subseteq X / Y
&
&
\xymatrix{
&
	A
		\ar[dl]_-{X/Y}
\\
	C
&
	B
		\ar[u]_-{Y}
		\ar[l]^-{X}
}
\end{eqnarray*}
Then we calculate:\footnote{Following the strategy suggested in exercise \ref{ex:180829a}.}
%----------------
\def\x{\kons c}
\def\y{\kons a}
%----------------
\begin{eqnarray*}
&&
	c \ (X / Y) \ a
%
\just\equiv{ introduce points $\larrow1{\x}C$ and $\larrow1{\y}A$ ; (\ref{eq:040120c}) }
%
	x (\conv\x \comp (X / Y) \comp \y) x
%
\just\equiv{ |forall|-one-point (\ref{eq:130228b}) }
%
	x'=x \wider\implies x' (\conv\x \comp (X / Y) \comp \y) x
%
\just\equiv{ go pointfree (\ref{eq:041216a}) }
%
	id \wider\subseteq \conv\x \comp (X / Y) \comp \y
%
\just\equiv{shunting rules} %  (Galois connections)
%
	\x\comp\conv\y \wider\subseteq X / Y
%
\just\equiv{universal property (\ref{eq:130113f})} % --- Galois connection
%
	\x\comp\conv\y\comp Y \wider\subseteq X
%
\just\equiv{now shunt $\relax \x$ back to the right}
%
	\conv\y\comp Y \wider\subseteq \conv\x\comp X
%
\just\equiv{ back to points via (\ref{eq:040120c}) }
%
	\rcb\forall b {a\ Y \ b}{c \ X \ b}
%
\end{eqnarray*}
%
In summary:
\begin{eqnarray}
	\relax
	c \ (X / Y) \ a
	\wider\equiv
	\rcb\forall b {a\ Y \ b}{c \ X \ b}
&&
\xymatrix{
&
	a
		\ar@@{||->}[dl]_-{X/Y}
\\
	c
&
	b
		\ar@@{||->}[u]_-{Y}
		\ar@@{||->}[l]^-{X}
}
	\label{eq:110816a}
\end{eqnarray}
In words: in the same way relation \emph{composition} hides an \emph{existential} quantifier (\ref{eq:051118b-def}),
\emph{relation} division (\ref{eq:110816a}) hides a \emph{universal} one. % \cite{Ba04a}:
Let us feel what (\ref{eq:110816a}) means through an example: let
\begin{quote}
$a \ Y \ b$ = passenger $a$ chooses flight $b$
\\
$c \ X \ b$ = company $c$ operates flight $b$
\end{quote}
Then (\ref{eq:110816a}) yields : whenever |a| choses a flight |b| it turns out that |b| is operated by company |c|. So:
\begin{quote}
$c \ (X / Y) \ a$ = company $c$ is the only one trusted by passenger $a$, that is, $a$ \emph{only flies} $c$.
\end{quote}

Therefore, (\ref{eq:070829b}) captures, in a rather eloquent way,
the duality between universal and existential quantification.
It is no wonder, then, that the relational equivalent to
$(x \div y) \times y \leq x$ above is
\begin{eqnarray*}
	(X/S) \comp S \wider\subseteq X
\end{eqnarray*}
This \emph{cancellation} rule, very often used in practice, unfolds to
\begin{eqnarray*}
	\rcb\forall b {a\ S\ b}{c\ X\ b } \wider\land a\ S\ b' & |=>| & c\ X\ b'
\end{eqnarray*}
i.e.\ to the well-known device in logic known as \emph{modus ponens}:
$((S \rightarrow X) \land S) \rightarrow X$.

There is one important difference between (\ref{eq:080105c}) and (\ref{eq:070829b}):
while multiplication  in (\ref{eq:080105c}) is commutative, and thus writing |z >< y|
or |y >< z| is the same, writing |Z . Y| or |Y . Z| makes a lot of difference
because composition is not commutative in general. The dual division operator is
obtained by taking converses over (\ref{eq:070829b}):
\begin{eqnarray*}
\start
	|Y . Z atmost X|
%
\just\equiv{ converses }
%
	|conv Z . (conv Y) atmost (conv X)|
%
\just\equiv{ division (\ref{eq:070829b}) }
%
	|conv Z atmost (conv X) / (conv Y)|
%
\just\equiv{ converses }
%
	|Z atmost (underbrace (conv ((conv X / (conv Y)))) (rdiv Y X))|
%
\end{eqnarray*}
In summary:
\begin{eqnarray}
	|sse (X . Z) Y <=> sse Z (X `rdiv` Y)|
	\label{eq:020614b}
\end{eqnarray}
Once variables are added to |rdiv X Y| we get:
\begin{eqnarray}
	a (X \rdiv Y) c &\equiv& \rcb\forall b { b\ X\ a }{b\ Y\ c }
	\label{eq:030608a}
\end{eqnarray}
Thus we are ready to add two more rows to table \ref{tab:eq:040121a}:

\begin{center}\footnotesize
\begin{tabular}{||X||c||c||Y||}\hline
	\multicolumn{4}{||c||}{\rr{ $(f\ X) \subseteq Y \equiv X \subseteq (g\ Y)$}}
\\\hline\hline
	  \bf Description
	& $  f $
	& $  g $
	& \bf Obs.
\\\hline\hline
	  Left-division
	& $  (R \comp ) $
	& $  (R \rdiv ~) $
	& read ``$R$ under \ldots''
\\\hline
	  Right-division
	& $  ( \comp R) $
	& $  (~ \ldiv R) $
	& read ``\ldots over $R$''
\\\hline
\end{tabular}
\end{center}

As example of left division consider the relation |a ins x| between a set |x| and each of its elements |a|:
\begin{eqnarray}
	|larrow (Set A) (ins) A|
\end{eqnarray}
Then inspect the meaning of relation |larrow (Set A)(rdiv (ins)(ins))(Set A)| using (\ref{eq:030608a}):
\begin{eqnarray*}
	|x1 ((rdiv ins ins)) x2| & |<=>| & |rcb forall a (a ins x1)(a ins x2)|
\end{eqnarray*}
We conclude that quotient |larrow (Set A)(rdiv (ins)(ins))(Set A)| expresses the inclusion relation among sets.

Relation division gives rise to a number of combinators in relation algebra that are very useful in problem
specification. We review some of these below.

\begin{exercise}
Prove the equalities
\begin{eqnarray}
	R \comp f
	&=&
	R / {\conv f}
\\
	|rdiv f R| &=& |conv f . R|
\\
	R / \bot &=& \top
	\label{eq:210508a}
\\
	R  / id &=& R
	\label{eq:201218c}
\\
	|((rdiv R S)) . f| &=& |rdiv R ((S . f))|
	\label{eq:BM97ex4.35}
\\
	|rdiv R ((conv f . S))| &=& |rdiv (f . R) S|
\\
	|rdiv R (top . S)| &=& |rdiv(bang . R)(bang . S)|
	\label{eq:180829c}
\\
	|R / ((cup S P))|& = &|cap (R/S) (R/P)|
\end{eqnarray}
\vskip -2em
\end{exercise}

\begin{exercise}
On June 23rd, 1991, E.W.\ Dijkstra wrote one of his famous notes --- EWD1102-5 --- entitled:
``Why preorders are beautiful". The main result of his six page long manuscript is:
\begin{quote}\small
A binary relation is a pre-order  iff
\( % begin{eqnarray}
	|R = R / R|
\) holds. % end{eqnarray}
\end{quote}
The proof of this result becomes even shorter (and perhaps even more beautiful) once expressed in relation algebra.
Fill in the ellipses in the following calculation of such a result:
\def\xjust#1#2{\just{#1}{\makebox(250,0)[cc]{~\dotfill~}}}
\begin{eqnarray*}
\start
	|R = R / R|
%
\xjust\equiv{}
%
	|lcbr(X atmost R <=> X . R atmost R)(X atmost R <=> X . R atmost R)|
%
\xjust{|=>|}{}
%
	|lcbr(id atmost R <=> R atmost R)(R atmost R <=> R . R atmost R)|
%
\xjust\equiv{}
%
	|lcbr(id atmost R)(R . R atmost R)|
%
\xjust\equiv{}
%
	|lcbr(id atmost R && (R/R) . R atmost R)(R atmost R/R)|
%
\xjust{|=>|}{}
%
	|lcbr(R/R atmost R)(R atmost R/R)|
%
\xjust\equiv{}
%
	|R = R / R|
\qed
\end{eqnarray*}
That is,
\begin{quote}
	|R = R / R| $\wider\equiv$ |lcbr(id atmost R)(R . R atmost R)|
\end{quote}
\end{exercise}


\paragraph{Symmetric division}
Given two arbitrary relations |R| and |S| typed as in the diagram below,
define the \emph{symmetric division} |syd S R| of |S| by |R| by:
\begin{eqnarray}
	|b(syd S R)c| \wider\equiv
%	|lcbr
%		(rcb forall a (a R b) (a S c))
%		(rcb forall a (a S b) (a R c))
%	|
%		 \equiv
	|rcb forall a () (a R b <=> a S c)|
&&
\xymatrix@@R=1.2em{
	B
		\ar[dr]_R
&
&
	C
		\ar[dl]^S
		\ar[ll]_{\mbox{\large|syd S R|}}
\\
&
	A
}
	\label{eq:160107a}
%
\end{eqnarray}
That is, |b(syd S R)c| means that |b| and |c| are related to exactly the same outputs (in |A|) by |R| and by
|S|. Another way of writing (\ref{eq:160107a}) is
\(
	|b(syd S R)c| \equiv
	|{ a || a R b } = { a || a S c }|
\) which is the same as
\begin{eqnarray}
	|b(syd S R)c| & \wider\equiv &
	|pT R b = pT S c|
	\label{eq:160110b}
\end{eqnarray}
where |`pT`| is the \emph{power transpose} operator\footnote{See section \ref{sec:180827a} for more details about this operator.} which maps
a relation |Q : Y <- X| to the set valued function |pT Q : X -> fP Y| such
that
\begin{eqnarray}
	|(pT Q) x ={ y || y Q x}|
	\label{eq:260916c}
\end{eqnarray}
%
Another way to define |(syd  S R)| is %cite{FS90}
\begin{eqnarray}
	|(syd  S R)| & = & |cap (rdiv R S) (conv R / (conv S))|
	\label{eq:160122a}
\end{eqnarray}
which factors symmetric division into the two asymmetric divisions
|R `rdiv` S| (\ref{eq:020614b}) and |R / S|
(\ref{eq:100707a}) already studied above.
Moreover, for |R,S:=f,g|, definition (\ref{eq:160122a}) instantiates to |syd f g| as defined by (\ref{eq:160117a}).
%
By (\ref{eq:020614b}, \ref{eq:100707a}), (\ref{eq:160122a}) is equivalent to
the universal property:
\begin{eqnarray}
	|sse X (syd S R)| & \equiv & |sse (R . X) S && sse (S . (conv X)) R |
	\label{eq:151118b}
\end{eqnarray}
From the definitions above a number of standard properties arise: % \cite{FS90}
\begin{eqnarray}
	|convsyd S R| &=& |syd R S|
	\label{eq:151119a}
\\
	|(syd S R) . (syd Q S)| &|atmost|& |(syd Q R)|
	\label{eq:151118d}
\\
	|conv f . (syd S R) . g| & = & |syd (S . g)(R . f)|
	\label{eq:151118c}
\\
	|id| &|atmost|& |(syd R R)|
	\label{eq:170104a}
\end{eqnarray}
Thus |syd R R| is always an \emph{equivalence relation}, for any given |R|. Furthermore,
\begin{eqnarray}
	|R = syd R R| & \equiv & \mbox{|R| is an equivalence relation}
	\label{eq:160115b}
\end{eqnarray}
holds. %footnote{\label{fn:170320a}This is proved by Riguet on page 134 of \cite{Ri48}, where the symmetric division |syd R R| is denoted by $noy.(R)$, for ``noyaux" of |R| (``noyaux" means ``kernel"). For those readers not wishing to delve into the notation of \cite{Ri48} we give a simple proof of (\ref{eq:160115b}) in \ref{sec:150329b} based on the laws of relation division.}
Also note that, even in the case of functions, (\ref{eq:151118d}) remains an inclusion,
\begin{eqnarray}
	|sse ((syd f g) . (syd h f)) (syd h g) |
	\label{eq:160112d}
\end{eqnarray}
since:
\begin{eqnarray*}
\start
	|sse ((syd f g) . (syd h f)) (syd h g) |
%
\just\implied{ factor |syd id g| out }
%
	|sse (f . (syd h f)) h |
%
\just\implied{ factor |h| out }
%
	|sse (f . (syd id f)) id |
%
\just\equiv{ shunting rule (\ref{eq:020617f}) }
%
	|sse f f|
%
\just\equiv{trivial}
%
	true
\qed
\end{eqnarray*}
From (\ref{eq:160112d}) it follows that |syd f f| is always transitive.
By (\ref{eq:151119a}) it is symmetric and by (\ref{eq:160112e}) it is reflexive.
Thus |syd f f| is an \emph{equivalence relation}.

\paragraph{Relation shrinking}
Given relations $R : A \from B$ and $S : A \from A$, define $R \shrunkby
S : A \from B$, pronounced ``$R$ shrunk by $S$'', by
\begin{eqnarray}
	X \sse R \shrunkby S ~~\equiv~~ X \sse R ~\wedge~ X \comp \conv{R} \sse S
	\label{eq:100116d}
\end{eqnarray}
cf.\ diagram:
\begin{eqnarray*}
\myxym{
&
	B
		\ar[d]^-{R}
		\ar[dl]_-{R \shrunkby S}
\\
	A
&
	A
		\ar[l]^-{S}
}
\end{eqnarray*}
This states that $R \shrunkby S$ is the largest part of |R| such that, if it
yields an output for an input $x$, it must be a maximum, with respect
to $S$, among all possible outputs of $x$ by $R$.
By indirect equality, (\ref{eq:100116d}) is equivalent to the closed definition:
\begin{eqnarray}
	R \shrunkby S ~=~ R \cap S/\conv{R}
	\label{eq:100211c}
\end{eqnarray}
(\ref{eq:100116d}) can be regarded as a Galois connection between the set of all \emph{subrelations} of $R$ and the
set of \emph{optimization criteria} (|S|) on its outputs.

Combinator $R\shrunkby S$ also makes sense when $R$ and $S$ are finite,
relational data structures (e.g.\ tables in a database). Consider, for instance,
the following example of $R\shrunkby S$ in a \emph{data-processing} context: given
\begin{eqnarray*}
	\left(\begin{array}{c||c||c}
	Examiner & Mark & Student
	\\\hline
	   Smith&10&John
	\\ Smith&11&Mary
	\\ Smith&15&Arthur
	\\ Wood&12&John
	\\ Wood&11&Mary
	\\ Wood&15&Arthur
	\end{array}\right)
\end{eqnarray*}
and wishing to ``choose the best mark'' for each student, project over $Mark,
Student$ and optimize over the $\geq$ ordering on $Mark$:
\begin{eqnarray*}
	\left(\begin{array}{c||c}
	Mark & Student
	\\\hline
	   10&John
	\\ 11&Mary
	\\ 12&John
	\\ 15&Arthur
	\end{array}\right) \shrunkby \geq &=&
	\left(\begin{array}{c||c}
	Mark & Student
	\\\hline
	   11&Mary
	\\ 12&John
	\\ 15&Arthur
	\end{array}\right)
\end{eqnarray*}
Relational shrinking can be used in many other contexts. Consider, for instance,
a sensor recording temperatures (|T|), |larrow Nat S T|,
where data in |Nat| are ``time stamps''.
Suppose one wishes to filter out repeated temperatures, keeping the first occurrences only.
This can be specified by:
\begin{eqnarray*}
	|larrow Nat (nub  S) T| &=&  (S°\shrunkby {\leq})°
\end{eqnarray*}
That is, |nub| is the function that removes all duplicates while keeping the first instances.

Among the properties of shrinking \cite{MO12a} we single out the two \emph{fusion} rules:
\begin{eqnarray}
	|shrunkby ((S . f)) R| & = & |((shrunkby S R)) . f|
	\label{eq:fn-shrink-r}
\\
	(f\comp S)\shrunkby R &=&  f\comp (S\shrunkby (\conv{f}\comp R \comp f))
	\label{eq:fn-shrink-l}
\end{eqnarray}
Some more basic properties are: ``chaotic optimization",
\begin{eqnarray}
	R\shrunkby \top & = & R
\end{eqnarray}
``impossible optimization"
\begin{eqnarray}
	R\shrunkby \bot & = & \bot
\end{eqnarray}
and ``brute force'' determinization:
\begin{eqnarray}
	R\shrunkby id &=& \mbox{largest deterministic fragment of $R$}
\end{eqnarray}
$R\shrunkby id$ is the extreme case of the fact which follows:
\begin{eqnarray}
	\mbox{$R \shrunkby S$ is simple} \wider\implied \mbox{$S$ is anti-symmetric}
	\label{eq:100202b}
\end{eqnarray}
Thus anti-symmetric criteria always lead to determinism, possibly at the sacrifice of
totality. Also, for $R$ simple:
\begin{eqnarray}
	R\shrunkby S = R & \wider\equiv & \img R \subseteq S
	\label{eq:100705d}
\end{eqnarray}
Thus (for functions):
\begin{eqnarray}
	f\shrunkby S = f & \wider\implied & \mbox{$S$ is reflexive}
\end{eqnarray}

The distribution of shrinking by join,
\begin{eqnarray}
	(R \cup S) \shrunkby Q =
	(R \shrunkby Q) \cap Q / \conv{S}  \cup
	(S \shrunkby Q) \cap Q / \conv{R}
	\label{eq:100202i}
\end{eqnarray}
has a number of corollaries, namely a \emph{conditional rule},
\begin{eqnarray}
	(\mcond p R Q)\shrunkby S & = &
	\mcond p {(R \shrunkby S)}{(Q \shrunkby S)}
\end{eqnarray}
the \emph{distribution} over alternatives (\ref{eq:081008c}),
\begin{eqnarray}
	\junc RS \shrunkby U & = &
	\junc{R \shrunkby U}{S \shrunkby U}
	\label{eq:100705b}
\end{eqnarray}
and the ``\emph{function competition}'' rule:
\begin{eqnarray}
	(f \cup g)\shrunkby S &=& (f \cap S \comp g) \cup (g \cap S \comp f)
	\label{eq:100812a}
\end{eqnarray}
(Recall that $S/g° = S \comp g$.)

Putting universal properties (\ref{eq:151118b},\ref{eq:100116d}) together we get,
by indirect equality,
\begin{eqnarray}
\start
	|syd R g = conv g .((shrunkby R id))|
	\label{eq:170413a}
\more
	|syd f R = conv((shrunkby R id)) . f|
	\label{eq:170413b}
\end{eqnarray}
capturing a relationship between shrinking and symmetric division:
knowing that |shrunkby R id| is the deterministic fragment of |R|,
we see how the \emph{vagueness} of arbitrary |R| replacing either |f| or |g|
in |syd f g| is forced to shrink.

\begin{exercise}
Use shrinking and other relational combinators to calculate, from a relation of type (\ref{eq:180915d}),
the relation of type |Student><Course->Result| that tells the final results of all exams.
(\textbf{NB}: assume |Time=Nat| ordered by |(<=)|.)
\end{exercise}

\paragraph{Relation overriding}
Another operator enabled by relation division is
the relational \emph{overriding} combinator,
\begin{eqnarray}
	R \plus S \wider=  S \cup R \cap  \bot / {\conv S}
	\label{eq:110511a-1st}
\end{eqnarray}
which yields the relation which contains the whole of $S$ and that
part of $R$ where $S$ is undefined
--- read $R \plus S$ as ``$R$ overridden by $S$''.

It is easy to show that $\bot \plus S = S$, $R \plus \bot = R$ and $R \plus R = R$ hold.
From (\ref{eq:110511a-1st}) we derive, by indirect equality, the universal property:
\begin{eqnarray}
	X \subseteq R \plus S &\equiv & |X atmost (cup R S)| \wider\land |(X-S).(conv S) = bot|
	\label{eq:170927a}
\end{eqnarray}
The following property establishes a relationship between overriding and the McCarthy conditional:
\begin{eqnarray}
	% (f \cup g \comp p?) \shrunkby (\preceq) \wider=
	|cond p g f| \wider= f \plus |(g.(crflx p))|
	\label{eq:110731f}
\end{eqnarray}
Notation |crflx p| is explained in the next section.

Below we show how to use relation restriction and overriding in specifying the operation that,
in the Alcuin puzzle --- recall (\ref{eq:121017a})
\begin{eqnarray*}
\xymatrix{
	Being
		\ar[r]^{Eats}
&
	Being
		\ar[d]_{where}
\\
&
	Bank
		\ar[r]^{cross}
&
	Bank
}
	%label{eq:121017a}
\end{eqnarray*}
--- specifies the move of $Being$s to the other bank:
\begin{eqnarray*}
	|carry who whr| =  where \plus (cross \comp where \comp |crflx(ins who)|)
	%label{eq:141215a}
\end{eqnarray*}
By (\ref{eq:110731f}) this simplifies to a McCarthy conditional:
\begin{eqnarray}
	|carry who whr = cond ((ins who)) (cross.whr) whr|
	\label{eq:180829d}
\end{eqnarray}
In pointwise notation, |carry| is the function:
\begin{code}
	carry who whr b =
             if b ins who then cross m else m
                  where m=whr b
\end{code}
Note the type |carry : Set Being -> (expn Bank Being) -> (expn Bank Being)|.

\begin{exercise} \label{ex:csi1819q10}
Let |R : A -> B| be the relation depicted below, where |A = {a1,a2,a3,a4,a5}| and |B = {b1,b2,b3,b4}|:
\begin{center}
	\includegraphics[width=0.50\textwidth]{csi18193.png}
\end{center}
Represent the following relation overridings in the form of Boolean (|0,1|) matrices:
\def\wine#1{~}

\begin{eqnarray*}
\start
	P=|plus top R| = \begin{array}{r||r||r||r||r||r||}&|a1|&|a2|&|a3|&|a4|&|a5|\\\hline \hline |b1|&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}\\\hline |b2|&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}\\\hline |b3|&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}\\\hline |b4|&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}\\\hline
\end{array}
\more
	Q=|plus R ((const b4 . (conv(const a2)))| = \begin{array}{r||r||r||r||r||r||}&|a1|&|a2|&|a3|&|a4|&|a5|\\\hline \hline |b1|&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}\\\hline |b2|&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}\\\hline |b3|&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}\\\hline |b4|&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}&{\wine 0}\\\hline
\end{array}
\end{eqnarray*}
Tell which are entire, simple or surjective.
\end{exercise}

\begin{exercise}
Show that
\begin{quote}
|plus R f = f|
\end{quote}
holds, arising from (\ref{eq:170927a},\ref{eq:140711a}) --- where |f| is a function, of course.
\end{exercise}

\section{Predicates also become relations}
Recall from (\ref{eq:160117a}) the  notation
\(
	|syd f g|  = |conv g.f|
	%label{eq:160117a}
\)
and define, given a predicate |p : A -> Bool|, the relation |crflx p : A -> A| as follows:\footnote{
Recall that |true| is the \emph{constant} function yielding |True| for every argument (\ref{eq:180825b}).}
\begin{eqnarray}
	|crflx p = cap id (syd true p)|
	\label{eq:160121c}
\end{eqnarray}
By (\ref{eq:160117a}), |crflx p| is the \emph{coreflexive} relation that represents predicate
|p| as a binary relation,
\begin{eqnarray}
	|y (crflx p) x <=> y=x && p y|
	\label{eq:ex:161105a}
\end{eqnarray}
as can be easily checked. From (\ref{eq:160121c}) one gets the limit situations:\footnote{|crflx false = bot| arises from (\ref{eq:180825c}) since |True /= False|.}
\begin{eqnarray}
\start	|crflx true = id|
\more	|crflx false = bot|
\end{eqnarray}
Moreover,
\begin{eqnarray}
\start
\crflx{p \land q} \wider{=}  \crflx p \cap \crflx q
\more
\crflx{p \lor  q} \wider{=}  \crflx p \cup \crflx q
\more
\crflx{\neg p} \wider{=}  id - \crflx p
\end{eqnarray}
follow immediately from (\ref{eq:ex:161105a}) and
from (\ref{eq:xxx}) one infers |syd true p . R atmost (syd true p)| for any |R|.
In particular, |syd true p . top = syd true p| since |syd true p atmost (syd true p) . top| always holds.
Then, by distributive property (\ref{eq:050526b}):
\begin{eqnarray}
	|crflx p . top = syd true p|
	\label{eq:161118a}
\end{eqnarray}
Moreover, the following two properties hold:
\begin{eqnarray}
	R\comp |crflx p| & = & R \cap \top\comp |crflx p|
	\label{eq:081025a}
\\
	|crflx q|\comp R & = & R \cap |crflx q|\comp \top
	\label{eq:071215a}
\end{eqnarray}
We check (\ref{eq:071215a}):\footnote{The other is obtained from (\ref{eq:071215a}) by taking converses.}
\begin{eqnarray*}
\start
	|crflx q . R|
%
\just={ (\ref{eq:160111a}) ; (\ref{eq:160121c}) }
%
	|syd(split id true)(split id q) . R|
%
\just={ (\ref{eq:050415b}) for |R := true| }
%
	|conv(split id q) . (split R true)|
%
\just={  (\ref{eq:BM97:(5.8)}) }
%
	|cap R (syd true q)|
%
\just={ (\ref{eq:161118a}) }
%
	|cap R (crflx q . top)|
\qed
\end{eqnarray*}
Note the meaning of (\ref{eq:081025a}) and (\ref{eq:071215a}):
\begin{eqnarray*}
	|b(R.(crflx p))a <=> b R a && (p a)|
\\
	|b(crflx q . R)a <=> b R a && (q b)|
\end{eqnarray*}
So (\ref{eq:081025a}) --- resp.\ (\ref{eq:071215a}) --- restricts |R| to inputs satisfying |p|
--- resp.\ outputs satisfying |q|.

A notable property of coreflexive relations is that their composition coincides with their meet:
\begin{eqnarray}
	|(crflx q).(crflx p) = cap (crflx q) (crflx p)|
	\label{eq:020605i}
\end{eqnarray}
In consequence, composing a coreflexive with itself yields that very same
coreflexive: |(crflx p).(crflx p) = crflx p|.
(\ref{eq:020605i}) follows from (\ref{eq:081025a}\footnote{Or from \ref{eq:071215a}), by symmetry.}:
\begin{eqnarray*}
\start
	|(crflx q).(crflx p)|
%
\just={ |R := crflx p| in (\ref{eq:071215a}) }
%
	|cap (crflx p) (crflx q . top)|
%
\just={ |crflx p atmost id <=> crflx p = cap (crflx p) id| ; (\ref{eq:161118a}) }
%
	|cap (crflx p) (cap id (syd true q)|
%
\just={ (\ref{eq:160121c}) }
%
	|cap(crflx p)(crflx q)|
\qed
\end{eqnarray*}

\paragraph{Equalizers}
The definition of |crflx p| (\ref{eq:100705d}) can be regarded as a particular case of an \emph{equalizer}:
given two functions |larrow A (f,g) B|, the equalizer of |f| and |g| is the relation |eq(f,g)=cap id (syd f g)|. By indirect equality,
\begin{eqnarray*}
	|X atmost eq(f,g) <=> X atmost id && g . X atmost f|
\end{eqnarray*}
That is, |eq(f,g)| is the largest coreflexive |X| that restricts |g| so that |f| and |g| yield the same outputs.

Clearly, |eq(f,f)=id|. Note that an equalizer can be empty, cf.\ e.g.\ |eq(true,false)=bot|.

\begin{exercise}
Based on (\ref{eq:180907a}) show that
\begin{eqnarray}
	|conv g . (crflx p) . f| &=& |cap (syd f g) (syd true (p.g))|
	\label{eq:161105b}
\end{eqnarray}
holds.\footnote{Both sides of the equality mean |g b = f a && p(g b)|.}
\end{exercise}

\section{Guards, coreflexives and the McCarthy conditional}\label{sec:200109b}
From the definition of a McCarthy conditional (\ref{eq:McCarthy}) we obtain
|grd p = cond p i1 i2|
and then
|grd p = plus i2 (i1.(crflx p))|
by (\ref{eq:110731f}). A third way to express the guard |grd p| is
\begin{eqnarray}
	|grd p = cup (i1.(crflx p)) (cap i2 ((ldiv (conv((i1.(crflx p)))) bot))) |
	\label{eq:180903e}
\end{eqnarray}
by (\ref{eq:110511a-1st}), which simplifies to:
\begin{eqnarray}
	|grd p = conv(either(crflx p)(crflx (not p)))|
	\label{eq:180903d}
\end{eqnarray}
To prove (\ref{eq:180903d}) note that |(ldiv (conv((i1.(crflx p)))) bot)
= ldiv (crflx p) bot| follows immediately by the laws of |ldiv R S| and shunting.
Then, |ldiv (crflx p) bot = top . (crflx (not p))|. Here one only needs to
check:
\begin{eqnarray*}
\start
	|ldiv (crflx p) bot| \subseteq |top . (crflx (not p))|
%
\just\equiv{ |syd (not.p) true = syd p false| }
%
	|ldiv (crflx p) bot| \subseteq |syd p false|
%
\just\equiv{ going pointwise }
%
	|rcb forall (y,x) (y((ldiv (crflx p) bot))x) (p x = False)|
%
\just\equiv{ (\ref{eq:020614b}) ; (\ref{eq:ex:161105a}) }
%
	|rcb forall (y,x) (p x => False) (p x = False)|
%
\just\equiv{ trivial }
%
	|true|
\qed
\end{eqnarray*}
Finally, back to (\ref{eq:180903e}):
\begin{eqnarray*}
\start
	|grd p = cup (i1.(crflx p)) (cap i2 (top.(crflx(not p))))|
%
\just\equiv{ (\ref{eq:081025a}) ; converses }
%
	|conv((grd p)) = cup (crflx p . (conv i1)) (crflx(not p).(conv i2))|
%
\just\equiv{ (\ref{eq:060303c}) }
%
	|grd p = conv(either(crflx p)(crflx (not p)))|
\qed
\end{eqnarray*}

\begin{exercise} \label{ex:180904a}
From (\ref{eq:180903d}) infer
\begin{eqnarray}
	|cond p R S| &=& % |cup (R . (crflx p)) (S . (crflx (not p)))|
	|cup (cap R (syd p true))(cap S (syd p false))|
	\label{eq:180830a}
\end{eqnarray}
and therefore |cond p R S atmost (cup R S)|. Furthermore, derive (\ref{eq:180904b}) from
(\ref{eq:180830a}) knowing that |cup true false = top|.
\end{exercise}

\paragraph{Domain and range}
Suppose one computes |ker(split R id)| instead of |ker R|.
Since |ker(split R id) = cap (ker R) id| (\ref{eq:030218a}), coreflexive relation is obtained.
This is called the \emph{domain} of |R|, written:
\begin{eqnarray}
	|dom R = ker(split R id)|
\end{eqnarray}
Since\footnote{ (\ref{eq:180826a}) follows from |sse (cap id (top . R)) (conv R . R)| which can be easily checked pointwise.} % !!!!  xxx Ba04 page 298
\begin{eqnarray}
	|cap (top . R) id = cap(conv R . R) id|
	\label{eq:180826a}
\end{eqnarray}
domain can be also defined by
\begin{eqnarray}
	|dom R = cap (top . R) id|
	\label{eq:180829b}
\end{eqnarray}

Dually, one can define the \emph{range} of |R| as the domain of its converse:
\begin{eqnarray}
	|rng R = dom(conv R) = cap (img R) id|
\end{eqnarray}
For functions, range and image coincide, since |img f atmost id| for any |f|.
For injective relations, domain and kernel coincide, since |ker R atmost id| in such situations.
These two operators can be shown to be characterized by two Galois connections, as follows:
\begin{center}
\footnotesize
\begin{tabular}{||X||c||c||Y||}\hline
	\multicolumn{4}{||c||}{\rr{ $(f\ X) \subseteq Y \equiv X \subseteq (g\ Y)$}}
\\\hline\hline
	  \bf Description
	& $  f $
	& $  g $
	& \bf Obs.
\\\hline\hline
	  domain
	& |dom()|
	& $  (\top \comp ) $
	&    left $\subseteq $ restricted to coreflexives
\\\hline
	  range
	& |rng()|
	& $  ( \comp \top) $
	&    left $\subseteq $ restricted to coreflexives
\\\hline
\end{tabular}
\end{center}
Let us show that indeed
\begin{eqnarray}
	|dom X atmost Y| \equiv |sse X (top . Y)|
	\label{eq:121121b}
\\
	|rng R atmost Y| \equiv R \subseteq Y \comp \top
	\label{eq:020604a'}
\end{eqnarray}
hold, where variable |Y| ranges over coreflexive relations only. We only derive (\ref{eq:121121b}), from which (\ref{eq:020604a'}) is obtained taking converses. We rely on the definition just given and on previously defined connections:
\begin{eqnarray*}
\start
	|dom X atmost Y|
%
\just\equiv{ (\ref{eq:180829b}) }
%
	|cap (top . X) id atmost Y|
%
\just\equiv{ two Galois connections }
%
	|X atmost (rdiv top ((id => Y)))|
%
\just\equiv{ |rdiv top ((id => Y)) = top . Y|, see below }
%
	|X atmost top . Y|
\qed
\end{eqnarray*}
To justify the hint above, first note that |top . Y atmost id => Y|, for |Y| coreflexive --- recall (\ref{eq:160121c}) and (\ref{eq:161118a}). Then:
\begin{eqnarray*}
\start
	|sse (rdiv top ((id => Y))) (top . Y)|
%
\just\implied{ monotonicity ; rule ``raise-the-lower-side" }
%
	|sse (rdiv top ((top . Y))) (top . Y)|
%
\just\equiv{ (\ref{eq:180829c}) ; |f.(conv f).f=f|  for |f:=bang| (twice)}
%
	|sse(rdiv(bang)(bang . Y)) (top . Y)|
%
\just\equiv{ |rdiv f R = conv f . R| ; |top=ker bang|}
%
	|sse(top. Y) (top . Y)|
\qed
\end{eqnarray*}
Note the left-cancellation rule of the |dom()| connection:
\begin{eqnarray}
\start	|R atmost top . (dom R)|
	\label{eq:180826d}
\end{eqnarray}
From this the following domain/range elimination rules follow:
\begin{eqnarray}
	|top . (dom R)| & = & |top . R|
	\label{eq:Ho97:2.28}
\\
	|rng R . top| & = & |R . top|
	\label{eq:180826e}
\\
	|dom R atmost (dom S)| &\equiv& R \subseteq \top \comp  S
	\label{eq:180826f}
\end{eqnarray}
Proof of (\ref{eq:Ho97:2.28}):
\begin{eqnarray*}
\start
	|top . (dom R) = top . R|
%
\just\equiv{ circular inclusion }
%
	|top . (dom R) atmost top . R| \wider\land
	|top . R atmost top . (dom R)|
%
\just\equiv{ (\ref{eq:180826c}) twice }
%
	|(dom R) atmost top . R| \wider\land
	|R atmost top . (dom R)|
%
\just\equiv{ cancelation (\ref{eq:180826d}) }
%
	|(dom R) atmost top . R|
%
\just\equiv{ |dom R = cap (top . R) id| (\ref{eq:180829b}) }
%
	|true|
\qed
\end{eqnarray*}
Rule (\ref{eq:180826e}) follows by dualization (converses) and (\ref{eq:180826f}) follows from (\ref{eq:121121b}) and (\ref{eq:Ho97:2.28}).
More facts about domain and range:
\begin{eqnarray}
%
|dom((R . S))| &=& |dom((dom R . S))|
\\
|rng((R . S))| &=& |rng((R . (rng S)))|
\\
R &=& |R . (dom R)|
\\
R &=& |rng R . R|
%
\end{eqnarray}
Last but not least: given predicate |q| and function |f|,
\begin{eqnarray}
	|crflx(q.f)| = |dom((crflx q. f))|
	\label{eq:150924a}
\end{eqnarray}
holds. Proof:
\begin{eqnarray*}
\start
	|crflx(q.f)|
%
\just={ (\ref{eq:160121c}) }
%
	|cap id (syd (true) (q.f))|
%
\just={ since |syd f f| is reflexive (\ref{eq:160112e}) }
%
	|cap id (cap (syd f f) (syd (true.f) (q.f)))|
%
\just={ (\ref{eq:160111a}) ; products }
%
	|cap id (syd ((split id true) .f) ((split id q) .f))|
%
\just={ (\ref{eq:160117a}) ; (\ref{eq:160111a}) }
%
	|cap id (conv f . ((cap id (syd true q))) .f)|
%
\just={ (\ref{eq:160121c}) }
%
	|cap id (conv f . (crflx q) .f)|
%
\just={ |dom R = cap id (conv R . R)| } % (\ref{eq:020624j})
%
	|dom((crflx q. f))|
\qed
\end{eqnarray*}

\begin{exercise}
Prove that
\begin{eqnarray}
	|R atmost R . (conv R) . R|
	\label{eq:220216a}
\end{eqnarray}
holds for any |R|. \textbf{Suggestion}: use domain or range of |R| in your proof.
\end{exercise}

\begin{exercise}
\label{ex:121211a}
Recalling (\ref{eq:081025a}), (\ref{eq:071215a}) and other properties of
relation algebra, show that:
(a)  (\ref{eq:121121b}) and (\ref{eq:020604a'}) can be re-written with $R$
replacing $\top$;
(b) \( \Phi \subseteq \Psi \equiv \bang\comp \Phi \subseteq \bang\comp \Psi \)
holds.\footnote{Thus coreflexives can be represented by \emph{vectors} and vice-versa.}
\end{exercise}

\begin{exercise}
Infer
\begin{eqnarray}
	|const k . (dom R) atmost (const k). R|
\end{eqnarray}
from (\ref{eq:180829b}). 
\end{exercise}

\section{Difunctionals}
A relation |R| is said to be \emph{difunctional} %cite{Ri48,Sc08}
or \emph{regular} %cite{JMBD91}
wherever |R . (conv R) . R = R| holds, which amounts to |R . (conv R) . R atmost R|
since the converse inclusion always holds (\ref{eq:220216a}).

The class of difunctional relations is vast. |top| and |bot| are difunctional, and so are all coreflexive relations, as is easy to check. It also includes all simple relations,
since |R . (conv R) = img R atmost id| wherever |R| is simple.
Since converse preserves difunctionality, injective relations are also difunctional.
Moreover, divisions of functions are difunctional
because every symmetric division is so, as is easy to check by application
of laws (\ref{eq:151118d}) and (\ref{eq:151119a}):
\begin{eqnarray*}
\start
	|sse (syd f g . (convsyd f g) . (syd f g)) (syd f g)|
%
\just\implied{ (\ref{eq:160112c}) ; (\ref{eq:160112d}) }
%
	|sse (syd f g . (syd f f)) (syd f g)|
%
\just\implied{ (\ref{eq:160112d}) }
%
	|sse (syd f g) (syd f g)|
\qed
\end{eqnarray*}
For |g=id| above we get that any function |f| being difunctional can be expressed
by |f.(syd f f) = f|.

Recall that an equivalence relation can always be represented by the kernel of some function,
typically by |R=syd(pT R)(pT R)| --- recall (\ref{eq:260916c}). So equivalence relations are difunctional.
The following rule is of pratical relevance:
\begin{eqnarray}
(\mbox{|R| transitive} |<=>| \mbox{|R| difunctional}) & \implied &
\begin{lcbr}
	\mbox{|R| symmetric}
	\\
	\mbox{|R| reflexive}
\end{lcbr}
\end{eqnarray}
Proof (|=>|):
\begin{eqnarray*}
\start
	\mbox{|R| difunctional}
%
\just\equiv{ definition of difunctional }
%
	|R . (conv R) . R  atmost R|
%
\just\equiv{ |R| assumed symmetric }
%
	|R . R . R  atmost R|
%
\just\implied{ |R| assumed transitive }
%
	|R . R . R  atmost R . R|
%
\just\implied{ monotonicity of |(R .)|}
%
	|R . R atmost R|
%
\just\equiv{ |R| assumed transitive }
%
	|true|
\qed
\end{eqnarray*}
Proof (|<=.|):
\begin{eqnarray*}
\start
	\mbox{|R| transitive}
%
\just\equiv{ definition }
%
	|R . R  atmost R|
%
\just\equiv{ |R| assumed difunctional }
%
	|R . R  atmost R . (conv R) . R|
%
\just\implied{ monotonicity of |R . _ . R| }
%
	|id atmost (conv R)|
%
\just\equiv{ |R| assumed reflexive }
%
	|true|
\qed
\end{eqnarray*}
If above we take the proof (|=>|) alone we get that a symmetric and transitive relation is difunctional. Thus:
\begin{quote}\em
Every partial equivalence relation (Per, recall figure \ref{fig:aaa}) is difunctional.
\end{quote}
If we take the other part of the proof (|<=.|) alone we get:
\begin{quote}\em
Every reflexive and difunctional relation is transitive.
\end{quote}
Moreover:
\begin{quote}\em
A difunctional relation that is \emph{reflexive} and \emph{symmetric} necessarily is an \emph{equivalence} relation.
\end{quote}

Difunctional relations are also called \emph{regular}, \emph{rational} or \emph{uniform}.
%--- see e.g.\ \cite{Ri48,JMBD91,Hu92,BM97}.}
First, some intuition about what ``regularity" means: a regular (difunctional)
relation is such that, wherever two inputs have a common image, then they
have \emph{exactly the same} set of images. In other words, the image sets
of two different inputs are either disjoint or the same. As a counterexample,
take the following relation, represented as a matrix with inputs taken from set
|{a1,..,a5}| and outputs delivered into set |{b1,..,b5}|:
\begin{eqnarray}
\begin{tabular}{r||p{1mm}p{1mm}p{1mm}p{1mm}p{1mm}}|R|&|a1|&|a2|&|a3|&|a4|&|a5|
\\\hline
   |b1|&0&0&\one&0&\one
\\ |b2|&0&0&0&0&0
\\ |b3|&0&{\one}&0&0&0
\\ |b4|&0&{\one}&0&{\one}&0
\\ |b5|&0&0&0&{\one}&0
\\ \end{tabular}
	\label{eq:170813a}
\end{eqnarray}
Concerning inputs |a3| and |a5|, regularity holds; but sets |{b3,b4}| and
|{b4,b5}| --- the images of |a2| and |a4|, respectively --- are neither disjoint
nor the same: so |R| is not regular. It would become so if e.g.\ |b4| were dropped
from both image sets or one of |b3| or |b5| were replaced for the other in
the corresponding image set.

\begin{exercise}
The unit circunference
\begin{center}
	\includegraphics[width=0.25\textwidth]{ic.png}
\end{center}
can be described as the relation |larrow Real R Real| such that
|y R x <=> expn y 2 + expn x 2 = 1|, that is
\begin{eqnarray}
	| R = conv sq . (1-) . sq|
\end{eqnarray}
in pointfree notation, where
\begin{tabular}{ccc}
	|lcbr(sq : Real -> Real)(sq x = expn x 2)|
&
	\rule{1em}{0pt}
	and
	\rule{1em}{0pt}
&
	|lcbr( (1-) : Real -> Real)( (1-) x = 1 - x)|
\end{tabular}
It can be easily checked that |R| is neither entire, nor simple, nor injective, nor surjective.
Show that it is difuncional.
\end{exercise}

\section{Other orderings on relations} \label{seq:180915a}

\paragraph{The injectivity preorder}
%
The kernel relation |ker R = (conv R) . R| \emph{measures} the level of \emph{injectivity}
of |R| according to the preorder
\begin{eqnarray}
	|R <= S| & \equiv & |(ker S) atmost (ker R)|
	\label{eq:041217a}
\end{eqnarray}
telling that |R| is \emph{less injective} or \emph{more defined}
(entire) than |S|. For instance:
\begin{eqnarray*}
\setlength{\unitlength}{0.25em}
	\includegraphics[width=10em]{injective1.png}
 \makebox(15,25){|<=|}
	\includegraphics[width=10em]{injective2.png}
\end{eqnarray*}
This ordering is surprisingly useful in formal specification because of its
properties. For instance, it is upper-bounded %footnote{ Details in \citep{Ol14a}.}
by relation \emph{pairing}, recall (\ref{eq:060319a}):
\begin{eqnarray}
	|split R S| \leq X & \equiv &
	R \leq X \land S \leq X
	\label{eq:050112a}
\end{eqnarray}
Cancellation of (\ref{eq:050112a}) means that
\emph{pairing} always \emph{increases injectivity}:
\begin{eqnarray}
	|R <= (split R S)| \mbox{ ~ and ~ } |S <= (split R S)|.
	\label{eq:180120a}
\end{eqnarray}
(\ref{eq:180120a}) unfolds to |ker(split R S) atmost (cap ((ker R)) ((ker S)))|,
confirming (\ref{eq:030218a}).
The following injectivity \emph{shunting law} arises as a Galois connection:
\begin{eqnarray}
	\xarrayin{ |R . g <= S| & \equiv & |R <= S . (conv g)| }
	\label{eq:050118a}
\end{eqnarray}
Restricted to \emph{functions}, |(<=)| is \emph{universally} bounded by
\begin{quote}
	|bang <= f <= id|
\end{quote}
where (recall) |larrow A bang 1| is the unique function of its type, where |1| is the singleton type. Moreover,
\begin{itemize}
\item
A function is \emph{injective} iff
\(
	|id <= f|
\).
Thus |split f id| is always \emph{injective} (\ref{eq:180120a}).
\item
Two functions |f| and |g| are said to be \emph{complementary} wherever
|id <= (split f g)|.%footnote{Cf. \citep{MHNHT07}. Other terminologies are \emph{monic pair} \citep{FS90} or \emph{jointly monic} \citep{BM97}.}
\item
	Any relation |R| can be factored into the composition |f.(conv g)| of two complementary functions |f| and |g|.\footnote{This remarkable factorization is known as a \emph{tabulation} of |R| \cite{BM97}.}
\end{itemize}
For instance, the \emph{projections} |p1(a,b)=a| , |p2(a,b)=b| are complementary since |split p1 p2=id| (\ref{eq:703a}).

As illustration of the use of this ordering in formal specification, suppose one writes
%format sala = "room "
%format Sala = "Room "
%format doc = "lect "
%format Docente = "Teacher "
%format Aula = "Class "
%format	DHora = "TD "
%format dh = "slot "
\begin{eqnarray*}
	|sala <=   split doc dh|
	%label{eq:140716a}
\end{eqnarray*}
in the context of the data model
\begin{eqnarray*}
\myxym{
	|Docente|
&
	|Aula|
		\ar[l]_{|doc|}
		\ar[r]^{|sala|}
		\ar[d]_{|dh|}
&
	|Sala|
\\
&
	|DHora|
}
\end{eqnarray*}
where |DHora| abbreviates time and date. What are we telling about this model
by writing |sala <= split doc dh|? We unfold this constraint in the expected
way:
\begin{eqnarray*}
\start
	|sala <=   split doc dh|
%
\just\equiv{ (\ref{eq:041217a}) }
%
	|ker(split doc dh) atmost (ker sala)|
%
\just\equiv{ (\ref{eq:030218a}) ; (\ref{eq:161014b}) }
%
	|cap(syd doc doc)(syd dh dh) atmost (syd sala sala)|
%
\just\equiv{ going pointwise, for all |c1,c2 ins Class|}
%
	|(doc c1 = doc c2 && dh c1 = dh c2)=>(sala c1 = sala c2)|
%
\end{eqnarray*}
Thus |sala <= split doc dh| constrains the model in the sense of imposing that a given lecturer
cannot be in two different rooms at the same time. |c1| and |c2| are classes
shared by different courses, possibly of different degrees.
In the standard terminology of database theory this is called a \emph{functional dependency}, see exercises \ref{ex:180905a} and \ref{ex:081012a} in the sequel.

\begin{exercise}
Two relations |R| and |S| are said to be \emph{separated} wherever
\begin{eqnarray*}
	|R . (conv S) = bot|
\end{eqnarray*}
and \emph{co-separated} wherever
\begin{eqnarray*}
	|conv R . S = bot|
\end{eqnarray*}
holds.
Show that co-separability is necessary for the coproduct of two injective relations |R| and |S| to be injective:
\begin{eqnarray}
	|id <= either R S| & |<=>| & |id <= R && id <= S && conv R . S = bot|
	\label{eq:180113b}
\end{eqnarray}
\vskip -1.5em
\end{exercise}

Interestingly, the injectivity preorder not only has least upper bounds but
also greatest lower bounds,
\begin{eqnarray*}
&&
\xymatrix{ % @@C=3ex @@R=1.5ex
&
	|split R S|
&
&
	\mbox{``least upper bound" }
\\
	R
		\ar@@{.}[ur]_{}
&
&
	S
		\ar@@{.}[ul]_{}
\\
&
	|conv(either (conv R)(conv S))|
		\ar@@{-}[ul]_{}
		\ar@@{-}[ur]_{}
&
&
	\mbox{``greatest lower bound"}
\\
}
\end{eqnarray*}
that is,
\begin{eqnarray}
	|X <= conv(either (conv R)(conv S))| &|<=>|& |X <= R && X <= S|
	\label{eq:20180113}
\end{eqnarray}
as the calculation shows:
\begin{eqnarray*}
\start
	|X <= conv(either (conv R)(conv S))|
%
\just\equiv{injectivity preorder ; |ker(conv R)=img R|}
%
|img(either (conv R)(conv S)) atmost (ker X)|
%
\just\equiv{ (\ref{eq:180905b}) }
%
|cup (conv R .R) (conv S . S) atmost (ker X)|
%
\just\equiv{kernel; |cup|-universal}
%
|(ker R) atmost (ker X) && (ker S) atmost (ker X)|
%
\just\equiv{ injectivity preorder (twice)}
%
	|X <= R && X <= S|
\qed
\end{eqnarray*}
Note the meaning of the glb of |R| and |S|,
\begin{eqnarray*}
	|x (conv(either (conv R)(conv S))) a <=>
	(rcb exists b (x=i1 b) (b R a)) |||| (rcb exists c (x=i2 c) (c R a))|
\end{eqnarray*}
since |(conv(either (conv R)(conv S))) = (cup (i1. R)(i2. S)|.
This is the most injective relation that is less injective than |R| and |S|
because it just ``collates" the outputs of both relations without confusing
them, recall (\ref{eq:260916b}).

\begin{exercise}
The Peano algebra |larrow (1+Nat) inT Nat = either (const 0) succ| is an isomorphism\footnote{Recall section \ref{sec:120409a}.}, and therefore injective. Check what (\ref{eq:180113b}) means in this case.
\end{exercise}

\begin{exercise} \label{ex:180905a}
An SQL-like relational operator is \emph{projection},
\begin{eqnarray}
\proj{g,f}R \wider\deff g \comp R \comp \conv{f}
&&
\xymatrix{
	B
		\ar[d]_{g}
	&
		A
		\ar[l]_{R}
	\ar[d]^{f}
	\\
		C
		&
		D
		\ar[l]^{\proj{g,f}R}
}
\label{eq:050414b}
\end{eqnarray}
whose set-theoretic meaning is\footnote{Note that any relation |R:B<-A| defines
the set of pairs |{ (b,a) || b R a }|. Predicate |b R a| describes |R| \emph{intensionally}. The set |{ (b,a) || b R a }| is the \emph{extension} of |R|.}
\begin{eqnarray}
	\proj{g,f}R & = & \setdef{(g\ b, f\ a)}{|b ins B && a ins A && b R a|}
	\label{eq:071212b}
\end{eqnarray}
Functions $f$ and $g$ are often referred to as \emph{attributes} of $R$.
Derive (\ref{eq:071212b}) from (\ref{eq:050414b}).
\end{exercise}

\begin{exercise}\label{ex:081012a}
A relation $R$ is said to satisfy \emph{functional dependency} (FD)
$g \rightarrow f$, written |rfdep g R f|
wherever projection $\proj{f,g}R$ (\ref{eq:050414b}) is \emph{simple}.
\begin{enumerate}
\item Recalling (\ref{eq:041217a}), prove the equivalence:
\begin{eqnarray}
|rfdep g R f| & \equiv & |f <= g . (conv R)| %  \ker{(g \comp \conv{R})} \subseteq \ker f
\label{eq:050109b-expanded}
\end{eqnarray}
\item	Show that |rfdep g R f| trivially holds wherever $g$ is injective and $R$ is simple,
for all (suitably typed) $f$.
\item
Prove the \emph{composition rule} of FDs:
\begin{eqnarray}
%lfdep {g} {S \comp R} {h} & \implied & \arrayin{ \lfdep{f}{S}{h} & \land & \lfdep{g}{R}{f} }
|lfdep g (S . R) h| & \implied &
\arrayin{ |lfdep f S h|  & \land & |lfdep g R f| }
\label{eq:041106a}
\end{eqnarray}
\end{enumerate}
\vskip -2em
\end{exercise}

\begin{exercise}
Let |R| and |S| be the two relations depicted as follows:
\def\mappingto[#1]{\ar@@{||->}[#1]}
\begin{eqnarray*}
\xymatrix@@R=1.2ex{
C
&
W
	\ar[l]_{R}
	\ar[r]^{S}
&
\N_0
\\
&
\texttt{"Armstrong"}
	\mappingto[r]
	\mappingto[ld]
&
9
\\
\texttt{'A'}
&
\texttt{"Albert"}
	\mappingto[r]
	\mappingto[l]
&
6
\\
\texttt{'M'}
&
\texttt{"Minho"}
	\mappingto[r]
	\mappingto[l]
&
5
\\
\texttt{'B'}
&
\texttt{"Braga"}
	\mappingto[ru]
	\mappingto[l]
}
\end{eqnarray*}
Check the assertions:
\begin{enumerate}
\item	|R <= S|
\item	|S <= R|
\item	Both hold
\item	None holds.
\end{enumerate}
\vskip -1.5em
\end{exercise}

\begin{exercise}
As follow up to exercise \ref{ex:170925a},
\begin{itemize}
\item	specify the relation |R| between students and teachers % |larrow Student R Teacher|
such that |t R s| means: \emph{|t| is the mentor of |s| and also teaches one of her/his courses}.
\item Specify the property: \emph{mentors of students necessarily are among their teachers}.
\end{itemize}
\vskip -1.5em
\end{exercise}

\paragraph{The definition preorder}
The injectivity preorder works perfectly for functions, which are entire relations.
For non-entire |R| it behaves in a mixed way, measuring not only injectivity but also definition
(entireness). It is useful to order relations with respect to how defined they are:
\begin{eqnarray}
	R \preceq S & \equiv& |dom R|\subseteq |dom S|
	\label{eq:051124a}
\end{eqnarray}
From $\top = \ker\bang$ one draws another version of (\ref{eq:051124a}),
\(
%
	R \preceq S
%
	\wider\equiv
%
	\bang \comp R \subseteq \bang \comp S
	%label{eq:Ho97:pag30}
\). The following Galois connections
\begin{eqnarray}
	R \cup S \preceq T & \equiv & R  \preceq T \land S  \preceq T
	\label{eq:051214a}
\\
	R  \comp \conv f \preceq S & \equiv& R \preceq S\comp f
	\label{eq:051125a}
\end{eqnarray}
are easy to prove.
Recalling (\ref{eq:180826f}), (\ref{eq:051124a}) can also be written
\begin{eqnarray}
	|dom R atmost (dom S)| \equiv R \subseteq \top \comp  S
\end{eqnarray}

\paragraph{The refinement order}
Standard programming theory relies on a notion of program \emph{refinement}.
As a rule, the starting point in any software design is a so-called \textit{specification}, which
indicates the expected behaviour of the program to be developed with no indication
of \textit{how} outputs are computed from the inputs. So, ``vagueness'' is
a chief ingredient of a good specification, giving freedom to the programmer
to choose a particular algorithmic solution.

Relation algebra captures this by ordering relations with respect to the
degree in which they are closer to implementations:
\begin{eqnarray}
	S \issat R &\equiv& S \preceq R \wider\land |R . (dom S) atmost S|
\label{eq:060216c}
\end{eqnarray}
--- recal (\ref{eq:051124a}). In a diagram:
\begin{eqnarray*}
\xymatrix{
A
	\ar[dr]_{R}
&&
A
	\ar[ll]_{|dom S|}
	\ar[dl]^{S}
\\
&
	B
}
\end{eqnarray*}
$S \issat R$ is read: ``|S| is refined by |R|".
In the limit situation, |R| is a function |f|, and then
\begin{eqnarray}
	S \issat f & |<=>| & |dom S atmost (conv f) . S|
	\label{eq:180903g}
\end{eqnarray}
by shunting (\ref{eq:020617e}). This is a limit in the sense that |f| can
be neither more defined nor more deterministic.

As maxima of the refinement ordering, functions are regarded as implementations
\emph{``par excellence"}. Note how (\ref{eq:180903g}) captures
%So, $S \issat R$ covers other refinement situations, namely that of an
\emph{implicit specification} |S| being refined by some function $f$ ---
recall section \ref{sec:180903f}. Back to points and thanks to (\ref{eq:040120c}) we obtain, in classical ``VDM-speak'':
\begin{eqnarray*}
\forall a . \ \pre S(a) \implies \post S(f \ a , a)
\end{eqnarray*}
%which is nothing but the \emph{implicit function specification} proof-rule given by \cite{Jo80}.
In case |S| is entire, (\ref{eq:180903g}) simplifies to $S \issat f |<=>| |f atmost S|$.
As example of this particular case we go back to section \ref{sec:180903f}
and prove that |abs|, explicitly defined by |abs i = if i<0 then -i else i|,
meets the implicit specification given there, here encoded by
|S = cap (syd true geq0) ((cup id sym))| where |geq0 x = x >= 0| and |sym x = -x|.
The explicit version below uses a McCarthy conditional, for |lt0 x = x<0|.
By exercise \ref{ex:180904a} term |cup id sym| in |S| can be ignored:
\begin{eqnarray*}
\start
	|cond lt0 sym id| \wider\subseteq |syd true geq0|
%
\just\equiv{ shunting (\ref{eq:020617e}) }
%
	|geq0.((cond lt0 sym id)) atmost true|
%
\just\equiv{ inclusion of functions; fusion (\ref{eq:McCarthyFusion}) }
%
	|cond lt0 (geq0.sym) geq0 = true|
%
\just\equiv{ | -x >= 0 <=> x <= 0 = leq0 x| }
%
	|cond lt0 leq0 geq0 =  true|
%
\just\equiv{ |x<0 => x <= 0| and |not(x<0)<=> x>=0|}
%
	|cond lt0 true true = true|
%
\just\equiv{|cond p f f = f| (exercise \ref{ex:180904a})}
%
	|true|
\qed
\end{eqnarray*}

Finally note that an equivalent way of stating (\ref{eq:060216c}) without
using the domain operator is:
\begin{eqnarray}
	S \issat R &\equiv& |top . S `cap` top . R `cap` ((cup R S)) = R|
	\label{eq:180904c}
\end{eqnarray}

\begin{exercise}
Prove (\ref{eq:180904c}. \long\def\x{
|top.((cap P R)) = top . R| means |dom R atmost (dom((cap P R)))|.

Also equivalent to |top . R atmost top . ((cap (conv P . R) id))| (PW proof!) that is, to

|dom R atmost (conv P). R|

For |P| simple such that |dom R atmost (dom P)| it is equivalent to |P . (dom R) atmost R|

Main definition:

\begin{eqnarray*}
\start
	|top . R `cap` top . R' `cap` ((cup R R')) = R |
%
\just\equiv{}
%
	|(top . R `cap` top . R' `cap` R) `cup`
	 (top . R `cap` top . R' `cap` R')
	= R|
%
\just\equiv{}
%
	|(top . R' `cap` R) `cup` (top . R `cap` R') = R|
%
\just\equiv{}
%
	|(R . (dom R')) `cup` (R' . (dom R)) = R|
%
\just\equiv{}
%
	|lcbr(R' . (dom R) atmost R)(R atmost (R . (dom R')) `cup` (R' . (dom R)))|
%
\just\equiv{}
%
	|lcbr(R' . (dom R) atmost R)(R - (R . (dom R')) atmost (cap R' (top . R)))|
%
\just\equiv{}
%
	|lcbr(R' . (dom R) atmost R)(R atmost (R' `cup` top . R') `cap` R|
%
\just\equiv{}
%
	|lcbr(R' . (dom R) atmost R)(R atmost top . R'|
\qed
\end{eqnarray*}

}
\end{exercise}

\section{Back to functions} \label{sec:180827a}
In this chapter we have argued that one needs \emph{relations} in order to
reason about \emph{functions}. The inverse perspective --- that relations
can be represented as functions --- also makes sense and it is, in many places,
the approach that is followed.

Indeed, relations can be \emph{transposed} back to functions without losing
information. There are two transposes of interest. One is complete in the
sense that it allows us to see \emph{any} relation as a function. The other
is specific, in the sense that it only applies to (the very important class
of) simple relations (vulg.\ \emph{partial} functions).

\paragraph{Power transpose}
%Implicit in how Alloy handles relations and sets is the fact that relations can be represented by functions.
Given arbitrary relation |rarrow A R B|, define the function
\begin{quote}
|pT R : A -> fP B|
\\
|(pT R) a = {b || b R a}|
\end{quote}
which is such that:
\begin{eqnarray}
|pT R = f|
&
\equiv
&
|rcb forall (b,a) () (b R a <=> b ins f a)|
\label{eq:040120a}
\end{eqnarray}
That is:
\begin{eqnarray}
	|f = pT R| ~ |<=>| ~ |ins . f = R|
	\label{eq:040201a}
\end{eqnarray}
cf.
\begin{eqnarray*}
\myxym{
|A -> fP B|
	\ar@@/^1pc/[rr]^-{|(ins.)|}
&
\iso
&
|A -> B|
	\ar@@/^1pc/[ll]^-{|`pT`|}
}
\end{eqnarray*}

\noindent In words: any \emph{relation} can be faithfully represented by a set-valued \emph{function}.

For instance, moving the variables of (\ref{eq:160110b}) outwards by use of (\ref{eq:040120c}), we obtain the following \emph{power transpose cancellation} rule:\footnote{%
This rule is nothing but another way of stating exercise 4.48 proposed in \cite{BM97}.
Note that |pT R| is always a function.}
\begin{eqnarray}
	|syd (pT S) (pT R)| &=& |syd S R|
	\label{eq:160108a}
\end{eqnarray}
Read from right to left, this shows a way of converting arbitrary symmetric
divisions into function divisions.

\begin{exercise}
Infer from (\ref{eq:040201a}) the |pT()|-reflexion property
\begin{eqnarray}
	|(pT ins) = id|
\end{eqnarray}
the |pT()|-cancellation property
\begin{eqnarray}
	|ins . (pT R) = R|
	\label{eq:210220a}
\end{eqnarray}
and then the |pT()|-fusion law:
\begin{eqnarray}
	|pT R . f = pT((R . f))|
	\label{eq:210220b}
\end{eqnarray}
Finally, prove that
\begin{eqnarray}
	|pT(either R S) = either (pT R)(pT S)|
	\label{eq:210220c}
\end{eqnarray}
holds.
\end{exercise}

\paragraph{``Maybe'' transpose}
Let |rarrow A S B| be a \emph{simple} relation. Define the function
\begin{quote}
|gT S : A -> B+1|
\end{quote}
such that:
\begin{eqnarray*}
	|gT S = f|
&
	|<=>|
&
	|rcb forall (b,a) () (b S a <=> (i1 b) = f a)|
\end{eqnarray*}
That is:
\begin{eqnarray}
	|f = gT S| ~ |<=>| ~ |S = (conv i1) . f|
	\label{eq:mmm}
\end{eqnarray}
cf.
\begin{eqnarray*}
\myxym{
|expn ((B+1))A|
	\ar@@/^1pc/[rr]^-{|(conv i1.)|}
&
\iso
&
|A -> B|
	\ar@@/^1pc/[ll]^-{|`gT`|}
}
\end{eqnarray*}

In words: simple \emph{relations} can always be represented by ``Maybe",
or ``pointer''-valued \emph{functions}. Recall section \ref{sec:180409a},
where the |Maybe| monad was used to ``totalize" partial functions. Isomorphism
(\ref{eq:mmm}) explains why such a totalization maske sense. For finite relations,
and assuming these represented extensionally as lists of pairs, the function
\begin{quote}
	|lookup :: Eq a => a -> [(a, b)] -> Maybe b|
\end{quote}
in Haskell implements the ``Maybe"-transpose.

\begin{exercise}
Derive the ``Maybe"-transpose counterparts of laws (\ref{eq:210220a}), (\ref{eq:210220b}) and (\ref{eq:210220c}).
\end{exercise}

\section{Bibliography notes}
Chronologically, relational notation emerged ---  earlier than predicate logic itself ---
in the work of Augustus De Morgan (1806-71) on binary relations \cite{Mad91}. Later,
Peirce (1839-1914) invented {quantifier} notation to explain De Morgan's
algebra of relations (see e.g.\ \cite{Mad91} for details). De Morgan's pioneering
work was ill fated: the language\footnote{Meanwhile named FOL, first order logic.}
invented to explain his calculus of relations became eventually more popular
than the calculus itself. Alfred Tarski (1901-83),
who had a life-long struggle with quantified notation \cite{Fe06,Gi06}, revived relation algebra.
Together with Steve Givant he wrote a book (published posthumously) on \emph{set
theory without variables} \cite{TG87}.

Meanwhile, category theory was born, stressing the role of \emph{arrows}
% morphisms
and \emph{diagrams} and on the
% morphism
arrow language of diagrams, which is inherently \emph{pointfree}.
The category of sets and functions immediately
provided a basis for pointfree functional reasoning, but this was by and
large ignored by John Backus (1924-2007) in his FP algebra of programs \cite{Ba78}
which is APL-flavoured. (But there is far more in it than such a flavour, of course!)
Anyway, Backus' landmark FP paper was among the first
to show how relevant such reasoning style is to computing.

A bridge between the two pointfree schools, the relational and the categorial,
was eventually established by Freyd and {\v{S}\v{c}edrov} \cite{FS90} in
their proposal of the concept of an \emph{allegory}. This gave birth to \emph{typed}
relation algebra and relation (semi-commutative) diagrams like those adopted
in the current \doc\ for \emph{relational thinking}.
The pointfree algebra of programming (AoP) as it is understood today,
stems directly from \cite{FS90}.
Its has reached higher education thanks to textbook \cite{BM97}
written by Bird and Moor.

In his book on \emph{relational mathematics} \cite{Sc10}, Gunther
Schmidt makes extensive use of matrix displays, notation, concepts and operations
in relation algebra. Winter \cite{Wi09} generalizes relation algebra to
so-called Goguen categories.

In the early 1990s, the Gro\-ningen-Eindhoven MPC group led by Backhouse
\cite{ABHVW92,Ba04a} contributed decisively to the AoP by structuring relation
algebra in terms of Galois connections. This elegant approach has been very influential in
the way (typed) relation algebra was perceived afterwards, for instance in the way relation
shrinking was introduced in the algebra \cite{MO12a,OF13}. Galois connections
are also the ``Swiss knife" of \cite{MO12a}.

Most of the current chapter was inspired by \cite{Ba04a}. The omnipresent role of
generic diagrams such as (\ref{eq:260916e}) in relational ``thinking'' is illustrated  in \cite{Ol25},
where they are termed ``magic squares''.

\chapter{Theorems for free by calculation} \label{ch:181108a}
\section{Introduction}
As already stressed in previous chapters, type polymorphism remains one of the most useful and
interesting ingredients of functional programming. For example, the two functions
\begin{code}
countBits : Seq Bool -> Nat
countBits [ ] = 0
countBits(b:bs) = 1 + countBits bs
\end{code}
and
\begin{code}
countNats : Seq Nat -> Nat
countNats [ ] = 0
countNats(b:bs) = 1 + countNats bs
\end{code}
are both subsumed by a single, \emph{generic} (that is, parametric) program:
\begin{code}
count : (forall A) (Seq A) -> Nat
count [ ] = 0
count(a:as) = 1 + count as
\end{code}
Written as a catamorphism
\[ |cata(inNat.(id+p2))| \]
and thus even dispensing with a name,
it becomes clear why this function is generic: nothing in
\[ |inNat.(id+p2)| \]
is susceptible to the \emph{type} of the elements that are being counted up!

This form of polymorphism, known as \emph{parametric polymorphism}, is attractive because
\begin{itemize}
\item
	one writes less code (%
		\emph{specific} solution =
		\emph{generic} solution + \emph{customization}%
	);
\item
	it is intellectually rewarding, as it brings elegance and economy in programming;
\item
	and, last but not least\footnote{Quoting \emph{Theorems for free!}, by Philip Wadler \cite{Wa89}.},
\begin{quote}\em
        ``{\em (...)}
	from the \emph{type} of a polymorphic function we can derive a \emph{theorem}
        that it satisfies.
        {\em (...)}
        How useful are the theorems so generated?  Only time and experience will tell
        {\em (...)}"
\end{quote}
\end{itemize}

Recall that section \ref{sec:180211e} already addresses these theorems, also
called \emph{natural properties}. However, the full spread of naturality
is not explored there. In particular, it does not address higher-order (exponential)
types.

It turns out that the ``free theorems" involving such types are easy to derive
in relation algebra. The current chapter is devoted to such a generic derivation
and includes a number of examples showing how vast the application of
\emph{free theorems} is.

\section{Polymorphic type signatures}
In any typed functional language, when declaring a polymorphic function one
is bound to use the same generic format,
\begin{eqnarray*}
	f &:& t
\end{eqnarray*}
known as the function's \emph{signature}: |f| is the name of the function
and $t$ is a functional type written according to the following ``grammar" of types:
%
\begin{eqnarray*}
%
	t &::=& t' \to t''
\\
	t &::=& \f(t_1,\ldots,t_n) \mbox{~~~~~~ |fF| is a \emph{type} constructor }
\\
	t &::=& v \mbox{~~~~~~ a type \emph{variable}, source of {polymorphism}}.
%
\end{eqnarray*}
%
What does it mean for |f : t| to be \emph{parametrically} polymorphic? We
shall see shortly that what matters in this respect is the formal structure
of type |t|. Let
\begin{itemize}
\item
	$V$ be the set of type variables involved in type expression $t$;
\item
	$\enset{R_v}_{v \in V}$ be a $V$-indexed family of relations
($f_v$ in case $R_v$ is a function);
\item
	$R_t$ be a relation defined inductively as follows:
%
\begin{eqnarray}
	R_{t := v}	&=& R_{v}
	\label{eq:060424b}
\\
	R_{t := \f(t_1,\ldots,t_n)}	&=& \f(R_{t_1},\ldots,R_{t_n})
	\label{eq:060424a}
\\
	R_{t := t' \to t''}	&=& R_{t'} \to R_{t''}
	\label{eq:060424c}
%
\end{eqnarray}
%
\end{itemize}
Two questions arise: what does $\f$ in the right handside of (\ref{eq:060424a}) mean?
What kind of relation is $R_{t'} \to R_{t''}$ in (\ref{eq:060424c})?

First of all, and to answer the first question, we need the concept of \emph{relator},
which extends that of a \emph{functor} (introduced in section \ref{sec:180914a})
to relations.

\section{Relators} \label{sec:081203a}
%\emph{Relators} \cite{R*92} have to do with parametric datatyping:
A functor $\g$ is said to be a \emph{relator} % \cite{R*92}
wherever, given a relation |R| from $A$ to $B$, $\gg R$ extends $R$ to $\g$-structures:
it is a relation from $\gg A$ to $\gg B$
\begin{eqnarray}
\xymatrix{
        A \ar[d]_{R} \ar@@{..}[r] & \gg A \ar[d]^{\gg R}
\\
        B            \ar@@{..}[r] & \gg B
}
	\label{eq:060401a}
\end{eqnarray}
which obeys the properties of a functor,
%
\begin{eqnarray}
	\gg{id} &=& id
	\label{eq:070418b}
\\
	\gg{(R \comp S)} &=& (\gg R) \comp (\gg S)
	\label{eq:070418c}
\end{eqnarray}
--- recall (\ref{eq:971218b}) and (\ref{eq:980410a}) ---
plus the properties:
\begin{eqnarray}
	R \subseteq S &\implies& \gg R \subseteq \gg S
	\label{eq:070418e}
\\
	\gg{(\conv R)} &=& \conv{(\gg R)}
	\label{eq:070418d}
\end{eqnarray}
That is, a relator is a functor that is monotonic and commutes with converse.
For instance, the ``Maybe'' functor |fG X = 1 + X| is an example of relator:
\begin{eqnarray*}
\xymatrix{
        A
		\ar[d]_{R}
		\ar@@{..}[r]
&	\gg A = 1 + A
		\ar[d]^{\gg R = id + R}
\\
        B            \ar@@{..}[r] & \gg B = 1 + B
} && %mbox{ (Read $1 + A$ as ``maybe $A$'') }
\end{eqnarray*}
It is monotonic since |fG R = id + R| only involves monotonic operators
and commutes with converse via (\ref{eq:ooo}).
Let us unfold $\gg R = id + R$:
\begin{eqnarray*}
&&
	y(id + R)x
%
\just\equiv{ unfolding the sum, cf.\ $id + R = \junc{i_1 \comp id}{i_2 \comp R}$ (\ref{eq:040201d}) }
%
	y(i_1\comp\conv{i_1} \cup i_2\comp R \comp \conv{i_2})x
%
\just\equiv{ relational union (\ref{eq:131105a}); image }
%
	y(\img{i_1})x \lor  y(i_2\comp R \comp \conv{i_2})x
%
\just\equiv{ let $NIL$ denote \underline{the} sole inhabitant of the singleton type }
%
	y=x=i_1 NIL \lor \rcb\exists{b,a}{y=i_2\ b \land x=i_2\ a}{b\ R\ a}
\end{eqnarray*}
In words: two ``pointer-values" |x| and |y| are |fG R|-related iff they are both null or they are both defined and hold |R|-related data.

Finite lists also form a relator, |fG X = Seq X|.
Given $\larrow A R B$, relator $\larrow{\Seq A}{\Seq R}{\Seq B}$
is the relation
\begin{eqnarray}
	s'(\Seq R)s & |<=>| & |length s'= length s| \land {}
	\label{eq:131023a}
\\&&
	|rcb forall i (0<=i<length s) ((s'!!i) R (s!!i))|
	\nonumber
\end{eqnarray}

\begin{exercise}%label{ex:csi2122q11}
Recall how functor |(1+)| is represented in Haskell:
\begin{eqnarray}
\xymatrix@@C=3em{
	|Maybe X|
 	\ar@@/^1pc/[rr]^{|outT = conv inT|}
&
	\iso
&
	|1 + X|
 		\ar@@/^1pc/[ll]^{|inT = either (const Nothing) Just|}
}
	\label{eq:220608a}
\end{eqnarray}
Using (\ref{eq:220608a}), show that |Maybe| is the relator
\begin{eqnarray*}
\xymatrix{
        A
		\ar[d]_{R}
		\ar@@{..}[r]
&	|Maybe A|
		\ar[d]^{|Maybe R|}
\\
        B
		\ar@@{..}[r] & |Maybe B|
} 
\end{eqnarray*}
such that
\begin{eqnarray*}
|
	lcbr(y(Maybe R) Nothing <=> y = Nothing)
             (y (Maybe R) (Just a) = rcb exists b (y=Just b)(b R a)
|
\end{eqnarray*}
\def\resolucao{Tem-se (completar justificações):
\begin{eqnarray*}
\start
	|Maybe R = inT.(id+R).(conv inT)|
%
\cjust\equiv{}
%
	|Maybe R . inT  = inT.(id+R)|
%
\cjust\equiv{}
%
	|lcbr(Maybe R . nothing = nothing)(Maybe R . Just = Just . R|
%
\cjust\equiv{}
%
	|lcbr(y(Maybe R) Nothing <=> y = Nothing)
             (y (Maybe R) (Just a) = rcb exists b (y=Just b)(b R a)|
%%
%\just\equiv{}
%%
%	|y(Maybe R)x|
%%
%\just\equiv{}
%%
%	|y(inT.(id+R).(conv inT))x|
%%
%\just\equiv{}
%%
%	|y(either nothing (Just . R) . (conv (either nothing Just)))x|
%%
%\just\equiv{}
%%
%	|y((cup(nothing.(conv nothing)) (Just . R . conv Just)))x|
%%
%qed
\end{eqnarray*}
}
\end{exercise}
\begin{exercise}
Check properties (\ref{eq:070418e}) and (\ref{eq:070418d}) for the list relator defined above.
\end{exercise}

\begin{exercise}
Recalling the concept of function division (\ref{eq:160117a}), prove:
\begin{eqnarray}
	|fF (syd f g) = syd (fF f)(fF g)|
	\label{eq:160118d}
\end{eqnarray}
\end{exercise}

\section{A relation on functions}
The next step needed to postulate free theorems requires a formal understanding
of the arrow operator written on the right handside of (\ref{eq:060424c}).

This is achieved by defining the so-called ``Reynolds arrow'' relational operator,
which establishes a relation on two functions |f| and |g| parametric on two other arbitrary relations |R| and |S|:
\begin{eqnarray}
\arrayin{
	f(S |<-| R)g & \equiv & f \comp R \subseteq S \comp g
}
&&
	|simplediag A B D C f R g S|
	\label{eq:040123b}
\end{eqnarray}
% that generalizes (\ref{eq:161120a}).
The typing rule is:
\begin{eqnarray*}
\arrayin{
	\begin{array}[t]{c}
        \larrow B R A
	\\ \larrow D S C
	\\ \hline
~\rule{0pt}{1.7em}
       \larrow {D^B}{|S <- R|}{C^A}
	\end{array}
}
\end{eqnarray*}

This is a powerful operator that satisfies many properties, for instance:
\begin{eqnarray}
%
	id |<-| id &=& id
	\label{eq:060917b}
\\
	|conv ((S <- R))| &=& |(conv S) <- (conv R)|
	\label{eq:060917c}
\\
	\arrayin{ S |<-| R &\subseteq& V |<-| U} &\implied& S \subseteq V \land U \subseteq R
	\label{eq:060917e}
\\
	(S |<-| V)  \comp  (R |<-| U) &\subseteq& (S  \comp  R) |<-| (V  \comp  U)
	\label{eq:060917d}
\\
	(f |<-| |conv g|)h &=& f \comp  h \comp  g
	\label{eq:061212al}
\\
	k(f |<-| g)h &\equiv& k \comp  g = f \comp  h
	\label{eq:080229a}
	\end{eqnarray}
%
From property (\ref{eq:060917e}) we learn that the combinator is monotonic
on the left hand side --- and thus facts
\begin{eqnarray}
	S |<-| R & \subseteq & (S \cup V) |<-| R
	\label{eq:060923a}
\\
	|top <- R| &=& |top|
	\label{eq:060924c}
\end{eqnarray}
hold
\footnote{Cf.\ $f \comp  R \comp  |conv g| \subseteq \top |<=>| \true$ concerning (\ref{eq:060924c}).}
--- and anti-monotonic on the right hand side --- and thus property
\begin{eqnarray}
	S |<-| \bot &=& \top
	\label{eq:060924b}
\end{eqnarray}
and the two distributive laws which follow:
\begin{eqnarray}
	S  |<-| (R_1 \cup R_2) &=& (S |<-| R_1) \cap (S |<-| R_2)
	\label{eq:060923b}
\\
	(S_1 \cap S_2) |<-| R  &=& (S_1 |<-| R) \cap (S_2 |<-| R)
	\label{eq:190519d}
\end{eqnarray}
It should be stressed that (\ref{eq:060917d}) expresses \emph{fusion} only, not \emph{fission}.

\paragraph{Suprema and infima}
Suppose relation |S| in (\ref{eq:040123b}) is a complete lattice |(<=)|,
that is, it has suprema and infima. What kind of relationship is established
between two functions |f| and |g| such that
\begin{eqnarray*}
	|f((<=) <- R)g|
\end{eqnarray*}
holds? We reason:
\begin{eqnarray*}
\start
	|f((<=) <- R)g|
%
\just\equiv{ (\ref{eq:040123b}) }
%
	|f . R atmost (<=) . g|
%
\just\equiv{ shunting (\ref{eq:020617e}) }
%
	|R atmost (conv f) . (<=) . g|
%
\just\equiv{ go pointwise --- (\ref{eq:040120c}), etc }
%
	|rcb forall (a,b) (a R b) (f a <= g b)|
%
\just\equiv{ quantifier calculus }
%
	|rcb forall b () (rcb forall  a (a R b) (f a <= g b))|
%
\just\equiv{ universal law of suprema }
%
	|rcb forall b () ((rcb largest a (a R b) (f a)) <= g b)|
%
\just\equiv{ introduce supremum, for all |b| (see below) }
%
	|g b = rcb largest a (a R b) (f a)|
%
\end{eqnarray*}
In summary:
\begin{eqnarray}
	|f((<=) <- R)g|
	&\wider\equiv&
	|g b = rcb largest a (a R b) (f a)|
	\label{eq:180920a}
\end{eqnarray}
In words: \emph{|g b| is the largest of all |(f a)| such that |a R b| holds}.

Pattern |(<=) <- ...| turns up quite often in relation algebra. Consider,
for instance, a Galois connection $\alpha \issat \gamma$ (\ref{eq:100109b}), that is,
\begin{eqnarray*}
\start
	|conv alpha . (<<=) = (<=) . gamma|
%
\just\equiv{ ping pong }
%
	|conv alpha . (<<=) atmost (<=) . gamma| \wider\land
	|conv gamma . (>=) atmost (=>>) . alpha|
\end{eqnarray*}
Following the same strategy as just above, we obtain pointwise definitions for the two
adjoints of the connection:\footnote{Similarly, introducing infimum, for all |a|: |f a = rcb smallest b (a S b) (g b)|.}
%begin{eqnarray*}
%	|id((<=) <- (conv alpha . (<<=))) gamma|
%end{eqnarray*}
\begin{eqnarray}
	|gamma x = rcb largest y (alpha y <<= x) (y)|
\\
	|alpha y = rcb sqsmallest x (y <= gamma x) (x)|
\end{eqnarray}

\section{Free theorem of type \emph{t}} \label{sec:190519a}
We are now ready to establish the \emph{free theorem} (FT) of type $t$, which is the following remarkably simple
result:\footnote{This result is due to J.\ Reynolds \cite{Re83}, advertised by P.\ Wadler \cite{Wa89}
and re-written by Backhouse \cite{BB04} in the pointfree style adopted in this \doc.}
\begin{quote}\it
Given any function $\theta : t$, and $V$ as above, then
\begin{eqnarray*}
	\theta \mathbin{R_t} \theta
\end{eqnarray*}
holds, for any relational instantiation of type variables in $V$.
\\ $\Box$
\end{quote}
Note that this theorem
\begin{itemize}
\item	is a result about $t$;
\item	holds \emph{independently} of the actual definition of $\theta$.
\end{itemize}
So, it holds about any polymorphic function of type $t$.

\section{Examples}
Let us see the simplest of all examples, where the target function is the identity:
\begin{eqnarray*}
	\theta = id : a \from  a
\end{eqnarray*}
We first calculate $R_{t=a \from a}$:
\begin{eqnarray*}
&&
	R_{a \from a}
%
\just\equiv{ rule
	\( \arrayin{
		R_{t=t' \from t''}	&=& R_{t'} \from R_{t''}
	} \)
}
%
	R_{a} \from R_{a}
\end{eqnarray*}
Then we derive the free theorem itself ($R_a$ is abbreviated to $R$):
\begin{eqnarray*}
&&
	id(R \from R)id
%
\just\equiv{ (\ref{eq:040123b}) }
%
	id \comp R \subseteq R \comp  id
\end{eqnarray*}
In case $R$ is a function $f$, the FT theorem boils down to $id$'s
\emph{natural} property,
\(
%
	id \comp f \wider= f \comp id
\)
--- recall (\ref{eq:981211d}) ---
that can be read alternatively as stating that $id$ is the \emph{unit} of
composition.

As a second example, consider
	$\theta = {|reverse|} : \Seq a \from \Seq a$, and first calculate $R_{t=\Seq a \from \Seq a}$:
\begin{eqnarray*}
&&
	R_{\Seq a \from \Seq a}
%
\just\equiv{ rule
	\( \arrayin{
		R_{t=t' \from t''}	&=& R_{t'} \from R_{t''}
	} \)
}
%
	R_{\Seq a} \from R_{\Seq a}
%
\just\equiv{ rule
	\( \arrayin{
	R_{t=\f(t_1,\ldots,t_n)}	&=& \f(R_{t_1},\ldots,R_{t_n})
	} \)
}
%
	\Seq{R_a} \from \Seq{R_a}
%
\end{eqnarray*}
where $s\ \Seq R s'$ is given by (\ref{eq:131023a}). Next we calculate the FT
itself ($R_a$ abbreviated to $R$):
\begin{eqnarray*}
&&
	{|reverse|}(\Seq{R} \mathbin\leftarrow \Seq{R}){|reverse|}
%
\just\equiv{ definition
	\( \arrayin{
		f(R \from S)g & \equiv & f \comp S \subseteq R \comp g
	} \)
}
%
	{|reverse|} \comp \Seq{R} \subseteq \Seq{R} \comp {|reverse|}
%
\end{eqnarray*}
In case $R$ is a function $r$, this FT theorem boils down to ${|reverse|}$'s
\emph{natural} property,
\begin{eqnarray*}
%
	{|reverse|} \comp \Seq{r} \wider= \Seq{r} \comp {|reverse|}
\end{eqnarray*}
that is,
\(
%
	{|reverse|}\ \seqdef{r\ a}{a \from l} \wider= \seqdef{r\ b}{b \from {|reverse|}\ l}
\).
For the general case, we obtain:
\begin{eqnarray*}
&&
	{|reverse|} \comp \Seq{R} \subseteq \Seq{R} \comp {|reverse|}
%
%
\just\equiv{ shunting rule (\ref{eq:020617e}) }
%
	\Seq{R} \subseteq {\conv{{|reverse|}}} \comp \Seq{R} \comp {|reverse|}
%
\just\equiv{ going pointwise (\ref{eq:041216a}, \ref{eq:040120c}) }
%
	\rcb\forall{s,r}{}{
	s\ \Seq{R} r \implies ({|reverse|}\ s) \Seq{R} ({|reverse|}\ r)
	}
%
\end{eqnarray*}
An instance of this pointwise version of ${|reverse|}$-FT will state that,
for example, ${|reverse|}$ will respect element-wise orderings ($R := <$):\footnote{Let |inds s| denote the set |{0,...,length s-1}|.}
%
\begin{eqnarray*}
	& length\ s = length\ r \land \rcb\forall i {i\in inds\ s}{|(s!!i)| < |(r!!i)|} &
	\\
	& \Downarrow &
	\\
	& length({|reverse|}\ s) = length(|reverse r|) & \\
	& \land & \\
	& \rcb\forall j { j\in inds\ s}{|(reverse s !!j) < (reverse r !! j)|} &
%
\end{eqnarray*}
%
(Guess other instances.)

As a third example, also involving finite lists, let us calculate the FT of
\begin{eqnarray*}
	sort : \Seq a \from \Seq a \from (Bool \from (a \times a))
\end{eqnarray*}
where the first parameter stands for the chosen ordering relation, expressed
by a binary predicate:
\begin{eqnarray*}
&&
	{sort}(R_{(\Seq a \from \Seq a) \from (Bool \from (a \times a))}){sort}
%
\just\equiv{ (\ref{eq:060424a}, \ref{eq:060424b}, \ref{eq:060424c}); abbreviate $R_a := R$ }
%
	{sort}((\Seq {R} \from \Seq {R}) \from (R_{Bool} \from ({R} \times {R}))){sort}
%
\just\equiv{ $R_{t:=Bool} = id$ (constant relator) --- cf.\ exercise \ref{ex:080313a} }
%
	{sort}((\Seq {R} \from \Seq {R}) \from (id \from ({R} \times {R}))){sort}
%
\just\equiv{ (\ref{eq:040123b}) }
%
	\arrayin{ {sort} \comp (id \from (R \times R)) &\subseteq & (\Seq R \from \Seq R) \comp {sort} }
%
\just\equiv{ shunting (\ref{eq:020617e}) }
%
	\arrayin{
	(id \from (R \times R)) &\subseteq & |conv sort| \comp (\Seq R \from \Seq R) \comp {sort}
	}
%
\just\equiv{ introduce variables $f$ and $g$ (\ref{eq:041216a}, \ref{eq:040120c}) }
%
	\arrayin{
	f(id \from (R \times R))g &\implies & (sort \ f) (\Seq R \from \Seq R)(sort \ g)
	}
%
\just\equiv{ (\ref{eq:040123b}) twice }
%
	\arrayin{
	f \comp (R \times R) \subseteq g &\implies & (sort\ f) \comp \Seq R \subseteq \Seq R \comp (sort\ g)
	}
\end{eqnarray*}
%

Case $R := r$:
\begin{eqnarray*}
&&
	\arrayin{
	f \comp (r \times r) = g &\implies & (sort\ f) \comp \Seq r = \Seq r \comp (sort\ g)
	}
%
\just\equiv{ introduce variables }
%
	\arrayin{
	\Rcb\forall{a,b}{}{f(r\ a,r\ b) = g(a,b)}
	&\implies &
	\Rcb\forall l{}{
		(sort\ f)(\Seq r \ l) = \Seq r (sort\ g\ l)
		}
	}
%
\end{eqnarray*}
Denoting predicates $f,g$ by infix orderings $\leq,\preceq$:
\begin{eqnarray*}
%
%
	\arrayin{
	\Rcb\forall{a,b}{}{ r\ a \leq r\ b \equiv a \preceq b }
	&\implies &
	\Rcb\forall l{}{
		sort\ (\leq)(\Seq r \ l) = \Seq r (sort\ (\preceq)\ l)
		}
	}
%
\end{eqnarray*}
That is, for $r$ monotonic and injective,
\begin{eqnarray*}
%
	sort\ (\leq) \ \seqdef{ r \ a}{ a \from l}
\end{eqnarray*}
is always the same list as
\begin{eqnarray*}
	\seqdef{ r \ a}{ a \from sort\ (\preceq)\ l}
\end{eqnarray*}
%

\begin{exercise} \label{ex:181103a}
Let $C$ be a nonempty data domain and let and $c\in C$.
Let $\kons c$ be the \emph{``everywhere $c$''} function |const c : A -> C| (\ref{eq:Kons}).
Show that the free theorem of $\kons c$ reduces to
\begin{eqnarray}
	\rcb\forall R {} {R \subseteq \top}
\end{eqnarray}
\vskip -2em
\end{exercise}

\begin{exercise}
Calculate the free theorem associated with the projections
\[
%
	\xymatrix@@C=2em @@R=9pt{
	A
&
	A \times B
		\ar[l]_{\p1}
		\ar[r]^{\p2}
&
	B
}
\]
and instantiate it to (a) functions; (b) coreflexives.
Introduce variables and derive the corresponding pointwise expressions.
\end{exercise}

\begin{exercise}
As follow-up to exercise \ref{ex:181103a},
consider higher order function |const((_)): a -> b -> a| such that,
given any $x$ of type $a$, produces the constant function |const x|.
Show that the equalities
\begin{eqnarray}
\start	|const (f x) = f .(const x)|
	\label{eq:130531a}
\more
	|const x . f = const x|
	\label{eq:130531b}
\more
	|conv(const x) . (const x) = top|
	\label{eq:130531c}
\end{eqnarray}
arise as corollaries of the \emph{free theorem} of |const ((_))|.\footnote{Note that (\ref{eq:130531b}) is property (\ref{eq:981219a}) assumed in chapter \ref{ch:990122a}.}

\def\resolucao{
Calculation of FT of type |t = (a <- b) <- a|, using abbreviations |sbs R a := R| and |sbs R b := S|:
%format placeholder = "~~"
\begin{eqnarray}
\start
	|((const placeholder)) . R atmost (R <- S) . ((const placeholder))|
	\nonumber
%
\just\equiv{shunting; add variables |j| and |k|}
%
	|j R a => (const j) (R <- S) . (const k)|
	\nonumber
%
\just\equiv{Reynolds arrow}
%
	|j R k => (const j) . S atmost R . (const k)|
	\label{eq:210831b}
\qed
\end{eqnarray}
For functions, ie |R := f| and |S := g|:
\begin{eqnarray}
	|j = f k => (const j) . g = f . (const k)|
\end{eqnarray}
that is 
\begin{eqnarray}
	|const(f k) . g = f . (const k)|
	\label{eq:210831a}
\end{eqnarray}
Case |f:=id|, we get  |const(k) . g = (const k)|; case |g := id| we get  |const(f k) = f . (const k)|.

The other case (\ref{eq:130531c}) arises from (\ref{eq:210831b}) by making |R:=id|, |S:=top| and shunting.
}
\end{exercise}

\begin{exercise}
The following is a well-known Haskell function
\begin{code}
        filter :: forall a. (a -> Bool) -> [a] -> [a]
\end{code}
Calculate the free theorem associated with its type
\begin{eqnarray*}
	|filter| : \Seq a \from \Seq a \from (|Bool| \from a)
\end{eqnarray*}
and instantiate it to the case where all relations are functions.
\end{exercise}

\begin{exercise}
In many sorting problems, data are sorted according to a given \emph{ranking}
function which computes each datum's numeric rank (e.g.\ students marks, credits, etc).
In this context one may parameterize sorting with an extra parameter $f$
ranking data into a fixed numeric datatype, e.g. the integers:
	$serial : (a \to |Nat|) \to \Seq a \to  \Seq a$.
Calculate the FT of $serial$.
\end{exercise}

\begin{exercise}
Consider the following function from Haskell's Prelude:
\begin{code}
findIndices      :: (a -> Bool) -> [a] -> [Int]
findIndices p xs = [ i | (x,i) <- zip xs [0..], p x ]
\end{code}
which yields the indices of elements in a sequence \texttt{xs} which satisfy \texttt p.

For instance, |findIndices (<0) [1,-2,3,0,-5] = [1,4]|.
% (\textbf{NB:} os índices começam em $0$ nesta implementação da função.)
Calculate the FT of this function.
\end{exercise}

\begin{exercise}
Wherever two equally typed functions $f,g$ are such that $f\ a \leq g\ a$, for
all $a$, we say that $f$ is \emph{pointwise at most} $g$
and write $f\lift\leq g$,
\begin{eqnarray*}
\arrayin{
	f \lift\leq g &  =  & f \subseteq {(\leq)} \comp  g
}
~~~~ \mbox{ cf.\ diagram }
\xymatrix@@C=1ex@@R=1ex{
&
	A
		\ar[ddl]_-{f}
		\ar[ddr]^-{g}
\\
&
	\subseteq
\\
	B
&
&
	B
		\ar[ll]^-{\leq}
}
	%label{eq:030827b}
\end{eqnarray*}
recall (\ref{eq:030827b}).
Show that implication
%
\begin{eqnarray}
		f \lift\leq g & \implies & (|map f|) \lift{\Seq\leq} (|map g|)
\end{eqnarray}
%
follows from the \emph{FT} of the function
%\begin{eqnarray}
	|map : (a -> b) -> Seq a -> Seq b|.
%\end{eqnarray}
\end{exercise}
%

\begin{exercise}
Infer the FT of the following function, written in Haskell syntax,
\begin{code}
while :: (a -> Bool) -> (a -> a) -> (a -> b) -> a -> b
while p f g x = if not(p x) then g x else while p f g (f x)
\end{code}
which implements a generic \texttt{while}-loop.
Derive its corollary for functions. % and compare your result with that produced by the tool above.
\end{exercise}

\section{Catamorphism laws as free theorems}
Recall from section \ref{sec:120522a} the concept of a catamorphism over a parametric type |fT a|:
\begin{eqnarray*}
\xymatrix{
        |fT a| \ar[d]_{\scata g}
&&
        \bb a {|fT a|}   \ar[ll]_{in_{|fT a|}}  \ar[d]^{\bb {id}{\scata g}}
\\
	b
&
&
        \bb a {b}   \ar[ll]^{g}
}
\end{eqnarray*}
So
	$\scata\_$ has generic type
\begin{eqnarray*}
%
	\scata\_ : b \from |fT a| \from (b \from \bb a b)
\end{eqnarray*}
where $|fT a| \iso \bb{a}{|fT a|}$. Then the free theorem of
	$\scata\_$ is
\begin{eqnarray*}
%
	\arrayin{
	\scata\_ \comp (R_b \mathbin\leftarrow \bb{R_a}{R_b})
	&\subseteq&
	(R_b \mathbin\leftarrow |fT|{R_a}) \comp \scata\_
	}
\end{eqnarray*}
%
This unfolds into ($R_a, R_b$ abbreviated to $R, S$):
\begin{eqnarray*}
&&
	\arrayin{
	\scata\_ \comp (S \from \bb R S)
	&\subseteq&
	(S \from |fT R|) \comp \scata\_
	}
%
\just\equiv{ shunting (\ref{eq:020617e}) }
%
	\arrayin{
	(S \from \bb R S) &\subseteq& \conv{\scata\_} (S \from |fT R|) \comp \scata\_
	}
%
\just\equiv{ introduce variables $f$ and $g$ (\ref{eq:041216a}, \ref{eq:040120c}) }
%
	\arrayin{
	f(S \from \bb R S)g
	&\implies &
	\scata f (S \from |fT R|) \scata g
	}
%
\just\equiv{ definition
	\( \arrayin{
		f(R \from S)g & \equiv & f \comp S \subseteq R \comp g
	} \)
}
%
	\arrayin{
	f \comp \bb R S \subseteq S \comp g
	&\implies &
	\scata f \comp |fT R| \subseteq S \comp \scata g
	}
%
\end{eqnarray*}
From the calculated {free theorem of the catamorphism combinator},
\begin{eqnarray}
%
	\arrayin{
	f \comp \bb R S \subseteq S \comp g
	&\implies &
	\scata f \comp |fT R| \subseteq S \comp \scata g
	}
	\label{eq:090117a}
\end{eqnarray}
we can infer:
\begin{itemize}
\item
$\scata\_$-\emph{fusion} ($R,S := id, s$):
%
\begin{eqnarray*}
%
	\arrayin{
		f \comp \bb {id} s = s \comp g
	& \implies &
	\scata f = s \comp \scata g
	}
\end{eqnarray*}
%
--- recall (\ref{eq:cata-fusion}), for |fF f = fB(id,f)|;
\item
$\scata\_$-\emph{absorption} ($R,S := r, id$):
%
\begin{eqnarray*}
%
	\arrayin{
		f \comp \bb r {id} = g
	& \implies &
	\scata f \comp |fT r| = \scata g
	}
\end{eqnarray*}
whereby, substituting $g := f \comp \bb r {id}$, we get:
\begin{eqnarray*}
%
	\scata f \comp |fT r| = \scata{f \comp \bb r {id}}
%
\end{eqnarray*}
--- recall (\ref{eq:cata-absorption}).
\end{itemize}
%

\begin{exercise}
Let
\begin{eqnarray*}
	iprod = \scata{\junc{\kons 1}{(\times)}}
\end{eqnarray*}
be the function that multiplies all natural numbers in a given list, and
$even$ be the predicate which tests natural numbers for evenness.
Finally, let
\begin{eqnarray*}
	exists = \scata{\junc{\kons\false}{(\lor)}}
\end{eqnarray*}
be the function that implements existential quantification over a list of Booleans.

From (\ref{eq:090117a}) infer
\begin{eqnarray*}
	even \comp  iprod &=& exists \comp \Seq{even}
\end{eqnarray*}
meaning that the product $n_1 \times n_2 \times \ldots \times n_m$ is even
if and only if some $n_i$ is so.
\end{exercise}

\begin{exercise}\small \label{ex:080313a}
Show that the \emph{identity} relator $\fun{Id}$,
which is such that
\(
%begin{eqnarray*}
%	\fun{Id} \ A &=& A \\
	\arrayin{ \fun{Id} \ R &=& R }
\) %end{eqnarray*}
and the \emph{constant} relator $\fun K$ (for a given data type $K$)
which is such that
\(
%begin{eqnarray*}
%	\fun{K} \ A &=& K \\
	\arrayin{ \fun{K} \ R &=& id_K }
\) %end{eqnarray*}
are indeed relators.
\end{exercise}

\begin{exercise}\small
Show that product
\begin{eqnarray*}
\xymatrix{
        A
		\ar[d]_{R}
&
	C
		\ar[d]_{S}
		\ar@@{..}[r]
&
	\g(A,C) = A \times C
		\ar[d]^{\g(R,S) = R \times S}
\\
        B
&
	D
		\ar@@{..}[r]
&
	\g(B,D) = B \times D
}
\end{eqnarray*}
is a (binary) relator.
\end{exercise}
%

\section{Bibliography notes}

The free theorem of a polymorphic function is a result due to computer scientist John Reynolds \cite{Re83}.
It became popular under the ``theorems for free" heading coined by Phil Wadler \cite{Wa89}.
The original pointwise setting of this result was re-written in the pointfree style in \cite{BB04}
thanks to the \emph{relation on functions} combinator (\ref{eq:040123b})
first introduced by Roland Backhouse in \cite{119874}.

More recently, Janis Voigtlaender devoted a whole research project to free theorems, showing
their usefulness in several areas of computer science \cite{MSSV14}. One
outcome of this project was an automatic generator of free theorems for types
written in Haskell syntax. This is (was?) available from Janis Voigtlaender's
home page:
\begin{quote}
	  \url{http://www-ps.iai.uni-bonn.de/ft}
\end{quote}
The relators used in the calculational style followed in this \doc\ are implemented
in this automatic generator by so-called structural functor \emph{lifting}.

\chapter{Contract-oriented programming} \label{ch:180828d}
The chapters of the first part of this \doc\ rely on a type-polymorphic notion of
computation, captured by the omnipresent use of the arrow notation
\begin{eqnarray*}
	|larrow A f B|
\end{eqnarray*}
where |A| and |B| are \emph{types}.

The generalization from functions to relations carried
out in the previous two chapters has preserved the same principle --- all relational
combinators are typed in the same way. There is thus an implicit assumption of \emph{static
type checking} in the overall approach --- types are checked at ``compile time". Expressions which don't type
are automatically excluded.

However, examples such as the Alcuin puzzle show that this is insufficient.
Why? Because the types involved are most often ``too large": the whole purpose of the puzzle
is to consider only the inhabitants of type |expn Bank Being|
--- functions that describe all possible configurations in the puzzle ---
that satisfy the ``starvation property", recall (\ref{eq:121017c}).
Moreover, the |carry _| operation (\ref{eq:180829d}) \emph{should} preserve this property
--- something we did not at all check in the previous chapter!

Let us generalize the situation in this puzzle  to that of a function |f : A -> A| and a predicate |p : A -> Bool|
that should be preserved by |f|. Predicates such as |p| have become known as \emph{invariants} by software
theorists. The preservation requirement is captured by:
\begin{eqnarray}
	|rcb forall a (p a) (p (f a))|
	\label{eq:210108b}
\end{eqnarray}

Note how the type |A| is now divided in two parts --- a ``good one", |{ a || a ins A && p a}| and a ``bad one", |{ a || a ins A && not(p a)}|. By identifying
|p| as an invariant, the programmer is \emph{obliged} to ensure a ``good" output |f a|
wherever a ``good" input is passed to |f|. For ``bad" inputs nothing is requested.

The situation above can be generalized to some |f : A -> B| where |B| is subject to some invariant |q : B -> Bool|.
So |f| is \emph{obliged} to ensure ``good" outputs satisfying |q|.
It may well be the case that the only way for |f| to ensure ``good" outputs is to restrict its inputs by some
precondition |p : A -> Bool|. Thus the proof obligation above generalizes to:
\begin{eqnarray}
|rcb forall a (p a) (q (f a))|
\label{eq:aaa}
\end{eqnarray}
One might tentatively try and express this requirement by writing
\begin{quote}
|rarrow p f q|
\end{quote}
where predicates |p| and |q| take the place of the original types |A| and
|B|, respectively. This is what we shall do, calling assertion |rarrow
p f q| a \emph{contract}. Note how we are back to the function-as-a-contract
view of section \ref{sec:180409b} but in a wider setting:
\begin{quote}
$f$ \emph{commits itself} to producing a ``good" $B$-value (wrt.\ |q|) provided it is supplied with a ``suitable" $A$-value (wrt.\ |p|).
\end{quote}
The main difference compared to section \ref{sec:180409b} is that the well-typing
of |rarrow p f q| cannot be mechanically ascertained at ``compile time" ---
it has to be validated by a formal proof --- the proof obligation (\ref{eq:aaa}) mentioned
above. This kind of type checking is often referred to as ``extended type
checking".

\begin{figure}
\centering
	\includegraphics[width=0.30\textwidth]{incompatible.jpg}
~~ \raisebox{3em}{... versus ...} ~~
	\includegraphics[width=0.40\textwidth]{contract.jpg}
	\caption{\small  The contract-oriented programming metaphor.}
\end{figure}

In real life software design  data type invariants can be arbitrarily complex --- think of all legal restrictions imposed on the organized societies of today! The increasing ``softwarization" of our times forces us to think that, as in the regular functioning of such organized \emph{societies}, programs should interact with each other via \emph{formal contracts} establishing what they rely upon or guarantee among themselves. This is the only way to ensure \emph{safety} and \emph{security} essential to reliable, mechanized operations.

This chapter will use relation algebra to describe such contracts and develop
a simple theory about them, enabling compositionality as before. Relations
(including functions) will play a double role --- they will not only describe
computations but also the data structures involved in such computations,
in a unified and elegant way.

\section{Contracts}
It should be routine work for the reader to check that
\begin{eqnarray}
	|f . (crflx p) atmost (crflx q) . f|
	\label{eq:061115a-functions}
\end{eqnarray}
means exactly the same as (\ref{eq:aaa}) above, and that it can be expressed by
\begin{eqnarray}
	|f((crflx q) <- (crflx p))f|
	\label{eq:190519e}
\end{eqnarray}
in the arrow-notation of (\ref{eq:040123b}).
In software design terminology, this is known as a (functional) \emph{contract},
and we shall write
\begin{eqnarray}
	|rarrow p f q|
\label{eq:080116a}
\end{eqnarray}
to denote it
--- a notation that generalizes the type |A -> B| of |f|, as already observed.
Thanks to (\ref{eq:071215a}), (\ref{eq:061115a-functions})
can also be written:
\begin{eqnarray}
	|f . (crflx p) atmost (crflx q) . top|
	\label{eq:080124a}
\end{eqnarray}
Predicates |p| and |q| in contract |rarrow p f q| shall be referred to as
the contract's \emph{precondition} and \emph{postcondition}, respectively.
Contracts compose sequentially, see the following exercise.

\paragraph{Weakest pre-conditions}
Note that more than one (\emph{pre}) condition |p| may ensure (\emph{post})
condition |q| on the outputs of |f|. Indeed, contract |rarrow false f q|
always holds, but it is useless --- pre-condition |false| is
``\emph{unacceptably strong}".

Clearly, the weaker |p| the better. The question is, then: is there a \emph{weakest} such |p|?
We calculate:
\begin{eqnarray*}
\start
|f . (crflx p) atmost (crflx q) . f|
%
\just\equiv{recall (\ref{eq:071215a})}
%
|f . (crflx p) atmost (crflx q) . top|
%
\just\equiv{shunting (\ref{eq:020617e}); (\ref{eq:161118a}) }
%
|crflx p atmost (conv f) . (syd true q)|
%
\just\equiv{ (\ref{eq:161118b}) }
%
|crflx p atmost (syd true (q.f))|
%
\just\equiv{ |crflx p atmost id| ; (\ref{eq:020627a}) }
%
|crflx p atmost (cap id (syd true (q.f)))|
%
\just\equiv{(\ref{eq:160121c})}
%
|crflx p atmost (crflx (q.f))|
%
\end{eqnarray*}
We conclude that |q.f| is such a \emph{weakest} pre-condition.
Notation |wp(f,q)=q.f| is often used to denote a \emph{weakest} pre-condition (\textsc{wp}).
This is the weakest constraint on the inputs for the outputs delivered by |f| to fall within |q|.
The special situation of a weakest precondition is nicely captured by the
universal property:
\begin{eqnarray}
	|f . (crflx p)| = |crflx q . f| & \wider\equiv & |p = q.f|
	\label{eq:150406c}
\end{eqnarray}
where |p = wp(f,q)| could be written instead of |p = q.f|, as seen above.
Property (\ref{eq:150406c}) enables a ``logic-free'' calculation of weakest
preconditions, as we shall soon see: given |f| and post-condition |q|, there
always exists a unique (weakest) precondition |p| such that |crflx q . f|
can be replaced by |f . (crflx p)|.
% is always possible (cf.\ \emph{existence}) and \textsc{wp} |p| is \emph{unique}.
Moreover:
\begin{eqnarray}
	|(syd f f) . (crflx p)| = |crflx p . (syd f f)| & \wider\implied & |p <= f| % |rcb exists q () (p = q.f)|
	\label{eq:150407a-modified}
\end{eqnarray}
where |<=| denotes the injectivity preorder (\ref{eq:041217a}) on functions.\footnote{The
interested reader will find the proofs of (\ref{eq:150406c}) and (\ref{eq:150407a-modified})
in reference \cite{Ol17}.}

\begin{exercise}
Calculate the weakest pre-condition |wp(f,q)| for the following function / post-condition pairs:
\begin{itemize}
\item
|f x = raise 2 x +1| , |q y = y <= 10| (in |Real|)
\item
|f = (rarrow Nat succ Nat)| , |q = even|
\item
|f x = raise 2 x +1| , |q y = y <= 0| (in |Real|)
\end{itemize}
\vskip -1em
\end{exercise}

\paragraph{Compositionality for free}
The fact that functional contracts compose with each other, that is,
\begin{eqnarray}
	\mbox{|larrow p (h . f) q| holds provided |larrow p f r| and |larrow r h q| hold}
	\label{eq:ex:180829g}
\end{eqnarray}
does not need to be proved: it is a corollary of the \emph{free theorem}
(section \ref{sec:190519a}) of composition itself, which unfolds to
\begin{eqnarray}
	|lcbr(f . R atmost S . g)(h . S atmost Q . k) => (h . f) . R atmost Q . (k . g)|
	\label{eq:190519b}
\end{eqnarray}
for suitably typed |f|, |g|, |h|, |k|, |R|, |S|, |Q|.
To get (\ref{eq:ex:180829g}) from (\ref{eq:190519b}) consider the substitutions |g,k := f,h| in (\ref{eq:190519b}),
which lead to:\footnote{Notation |rarrow R h S| abbreviates 
        |h . R atmost S . h|,
see (\ref{eq:161120a}) later and details in the follow up.
}
\begin{eqnarray}
	|lcbr(larrow R f S)(larrow S h Q) => larrow R (h . f) Q|
	\label{eq:190519c}
\end{eqnarray}
Further substituting |R,S,Q := crflx p,crflx r, crflx q| immediately yields (\ref{eq:ex:180829g}).

Interestingly, if we regard relations |R, S, Q| in (\ref{eq:190519c}) as
preorders, then (\ref{eq:190519c}) will tell that the composition of monotonic
functions |h| and |f| is monotonic. The free theorem (\ref{eq:190519b}) captures
even more basic properties of composition: for the substitution |R,S,Q := r,id,id|
one gets
\begin{eqnarray*}
	|lcbr(f . r = g)(h = k) => (h . f) . r = k . g|
\end{eqnarray*}
and then, immediately:
\begin{eqnarray*}
	|(h . f) . r = h . (f . r)|
\end{eqnarray*}
This is the associative law of composition, recall (\ref{eq:698x}).

\paragraph{Invariants} In case |p=q| in a {contract} (\ref{eq:080116a}),
that is, in case of |rarrow q f q| holding,
we say that |q| is an \emph{invariant} of |f|, meaning that the ``truth
value'' of |q| remains unchanged by execution of |f|. More generally, invariant
|q| is \emph{preserved} by function |f| provided contract |rarrow p f q| holds
and |p => q|, that is, |crflx p atmost (crflx q)|.

Some pre-conditions are weaker than others wrt.\ invariant preservation.
We shall say that |w| is the \emph{weakest} pre-condition
for |f| to preserve \emph{invariant} |q| wherever
|wp(f,q)=w&&q|, where |crflx(p&&q) = (crflx p).(crflx q)|.

Recalling the Alcuin puzzle, let us define the \emph{starvation} invariant as a predicate on the
state of the puzzle, passing the $where$ function as a parameter |w|:
\begin{eqnarray*}
|starving w| &=& |w . CanEat atmost w . (const Farmer)|
\end{eqnarray*}
Then the \emph{contract}
\begin{eqnarray*}
|rarrow starving (carry b) starving|
\end{eqnarray*}
would mean that the function |carry b| --- that should transfer the beings in |b| to the other bank of the river
--- always preserves the invariant:
\begin{quote}
|wp(carry b,starving)=starving|.
\end{quote}
Things are not that easy, however: there is a need for a \emph{pre-condition} ensuring that |b|
includes the farmer together with a good choice of the being to carry!

Let us see some simpler examples first.

\section{Library loan example}
Consider the following relational data model of a library involving books and users that can borrow its books:
\begin{eqnarray}
\myxym{
&	ISBN
&	Name
\\
Title
&	Book
	\ar[l]_{title}
	\ar[d]_{Auth}
	\ar[u]_{isbn}
	\ar[r]^{R}
&	User
	\ar[r]_-{addr}
	\ar[d]^-{card}
	\ar[u]_{name}
&	Address
\\
&	Author
&	Id
}
	\label{eq:180829f}
\end{eqnarray}
All arrows denote attributes (functions) but two --- |Auth| and |R|. The
former is a relation because a book can have more than one author.\footnote{Its
power transpose (\ref{eq:040120a}) --- |pT Auth : Book -> Set Author| ---
gives the \emph{set} of authors of a book.} The latter is the most interesting
relation of the model, |u R b| meaning ``book |b| currently on loan to library
user |u|". Quite a few invariants are required on this model, for instance:
\begin{itemize}
\item\it	the same book cannot be not on loan to more than one user;
\item\it	no book exists with no authors;
\item\it	no two different users have the same card |Id|;
\item\it	books with the same |ISBN| should have the same title and the same authors.
\end{itemize}
Such properties (invariants) are easy to encode:
\begin{itemize}
\item	no book on loan to more than one user:
\begin{quote}
|rarrow Book R User| is \emph{simple}
\end{quote}
\item	no book without an author:
\begin{quote}
|rarrow Book Auth Author| is \emph{entire}
\end{quote}
\item	no two users with the same card Id:
\begin{quote}
|rarrow User card Id| is \emph{injective}
\end{quote}
\item	|ISBN| is a \emph{key} attribute:
\begin{quote}
|longrarrow ISBN (title.(conv isbn)) Title| and
|longrarrow ISBN (pT((Auth .(conv isbn)))) (fP Author)| are \emph{simple} relations.
\end{quote}
\end{itemize}
Since all other arrows are functions, they are simple and entire.

Let us now spell out such invariants in terms of relational assertions (note the role of the injectivity preorder):
\begin{itemize}
\item	no book on loan to more than one user:
\begin{quote}
	|id <= (conv R)|
\end{quote}
equivalent to |img R atmost id|;
\item	no book without an author:
\begin{eqnarray*}
|id atmost (ker Auth)|
\end{eqnarray*}
\item	no two users with the same card Id:
\begin{eqnarray*}
	|id <= card|
\end{eqnarray*}
equivalent to
	|ker card atmost id|.
\item	|ISBN| is a \emph{key} attribute:
\begin{eqnarray*}
	|title <= isbn| \wider\land |pT Auth <= isbn|
\end{eqnarray*}
equivalent to |syd isbn isbn atmost (syd title title)| and |syd isbn isbn atmost (syd Auth Auth)|,
respectively.\footnote{Note the use of (\ref{eq:160110b}) in the second case.}
\end{itemize}

Below we focus on the first invariant, \emph{no book on loan to more than one user}.
To bring life to our model, let us think of two operations on |larrow Book R User|,
one that \emph{returns} books to the library and another that \emph{records} new borrowings:
\begin{eqnarray}
|(return S) R = R - S|
\\
|(borrow S) R = cup S R|
\end{eqnarray}
Note that parameter |S| is of type |larrow Book R User|, indicating which users borrow/return which books.
Clearly, these operations % \emph{return} and \emph{borrow} operations
only change the \emph{books-on-loan} relation |R|, which is conditioned by
invariant
\begin{eqnarray}
|inv R| & = & |img R atmost id|
\label{eq:161113e}
\end{eqnarray}
The question is, then: are the following ``types"
\begin{eqnarray}
\start	|longlarrow inv (return S) inv|
\label{eq:161113a}
\more	|longlarrow inv (borrow S) inv|
\label{eq:161113b}
\end{eqnarray}
valid? Let us check (\ref{eq:161113a}):
\begin{eqnarray*}
\start
|inv(return S R)|
%
\just\equiv{ inline definitions }
%
|img((R-S)) atmost id|
%
\just\implied{ since |(img())| is monotonic }
%
|img(R) atmost id|
%
\just\equiv{ definition }
%
|inv R|
\qed
\end{eqnarray*}
So, for all |R|, |inv R => inv(return S R)| holds --- invariant |inv| is preserved (\ref{eq:210108b}). 

At this point note that (\ref{eq:161113a}) was checked only as a \emph{warming-up}
exercise --- we don't actually need to worry about it! Why?
\begin{quote}
As |R-S| is smaller than |R| (exercise \ref{ex:161113c})
and \emph{``smaller than injective is injective"} (\ref{eq:180829e}),
it is immediate that |inv| (\ref{eq:161113e}) is preserved.
\end{quote}
To see this better, we unfold and draw definition (\ref{eq:161113e}) in the form of a diagram:
\begin{eqnarray*}
|inv R|&=&
\xymatrixrowsep{0.8em}
\xymatrixcolsep{2em}
\myxym{
	Book
		\ar[dd]_{|R|}
&&
	User
		\ar[ll]_{|conv R|}
		\ar[dd]^{|id|}
\\
&
	|atmost|
\\
	User
&&
	User
		\ar[ll]^{|id|}
}
\end{eqnarray*}
As |R| occurs only in the lower-path of the diagram, it can always get smaller.

This ``rule of thumb'' does not work for |borrow S| because, in general,
|R atmost borrow S R|. This time |R| gets bigger, not smaller, and we do have
to check the contract:
\begin{eqnarray*}
\start
	|inv(borrow S R)|
%
\just\equiv{ inline definitions }
%
	|img((cup S R)) atmost id|
%
\just\equiv{ exercise \ref{ex:161113f} }
%
	|img R atmost id && img S atmost id && S . (conv R) atmost id|
%
\just\equiv{ definition of |inv|}
%
	|inv R && (underbrace (img S atmost id && S . (conv R) atmost id)(wp(borrow S,inv)))|
%qed
\end{eqnarray*}
Thus the complete definition of the \emph{borrow} operation becomes,
in the notation of section \ref{sec:180903f}:
\begin{eqnarray*}
\start
	|Borrow (S,R: Book->User) R': Book-> User|
\more
	|pre (S . (conv S) atmost id && S . (conv R) atmost id)|
\more
	|post R'= cup R S|
\end{eqnarray*}
Why have we written |Borrow| instead of |borrow| as before?
This is because |borrow| has become a \emph{simple} relation
\begin{quote}
	|Borrow = borrow . (crflx (pre()))|
\end{quote}
It is no longer a function since its (weakest) precondition is not the predicate |true|.
(Recall that lowercase identifiers are reserved to functions only.)
This precondition was to be expected, as spelt out by rendering |S . (conv R) atmost id|
in pointwise notation: for all users |u, u'|,
\begin{quote}
	|rcb exists b (u S b) (u' R b) => u=u'|
\end{quote}
should hold. So, after the operation takes place, the result state |R' = cup R S|
won't have the same book on loan twice to different users. (Of course,
the same must happen about |S| itself, which is the same predicate for |R=S|.)
Interestingly, the weakest precondition is not ruling out the situation in which
|u S b| and |u R b| hold, for some book |b| and user |u|.
Not only this does not harm the model but also it corresponds
to a kind of renewal of a previous borrowing.

\paragraph{Evolution}
The library loan model (\ref{eq:180829f}) given above is
not realistic in the following sense --- it only ``gives life"
to the borrowing relation |R|. In a sense, it assumes that all
books have been bought and all users are registered.

How do we improve the model so that new books can be acquired
and new users can join the library? Does this evolution entail a
complete revision of (\ref{eq:180829f})? Not at all.
What we have to do is to \emph{add} two new relations,
say |M| and |N|, the first recording the books currently
available in the library and the second the users currently
registered for loaning:
\begin{eqnarray*}
\myxym{
&	ISBN
&&&	Name
\\
Title
&	Book
	\ar[l]_{title}
	\ar[d]_{Auth  }
	\ar[u]_{isbn}
&	|#B|
	\ar[r]^{R}
	\ar[l]_{M}
&	|#U|
	\ar[r]^{N}
&	User
	\ar[r]_-{addr}
	\ar[d]^-{card}
	\ar[u]_{name}
&	Address
\\
&	Author
&&&	Id
}
\end{eqnarray*}
Two new datatypes have been added: |#U| (unique identifier of each user) and
|#B| (key identifying each book). Relations |M| and |N| have to be simple.
The operations defined thus far stay the same, provided |#B| replaces
|Book| and |#U| replaces |User| --- advantages of a polymorphic notation.
New operations can be added for
\begin{itemize}
\item	acquiring new books --- will change relation |M| only;
\item	registering new users --- will change relation |N| only;
\item	cancelling users' registrations --- will change relation |N| only.
\end{itemize}
There is, however, something that has not been considered: think of a
starting state where |M=bot| and |N=bot|, that is, the library has no
users, no books yet. Then necessarily |R=bot|. In general, users
cannot borrow books that don't exist,
\begin{quote}
	|dom R atmost (dom M)|
\end{quote}
and not-registered users cannot borrow books at all:
\begin{quote}
	|rng R atmost (dom N)|
\end{quote}
Invariants of this kind capture so-called \emph{referential integrity} constraints.
They can be written with less symbols, cf.\
\begin{quote}
 |R atmost top . M|
\end{quote}
and
\begin{quote}
|R atmost (conv N) . top|
\end{quote}
respectively. Using the ``thumb" rules as above, it is clear that, with respect to \emph{referential integrity}:
\begin{itemize}
\item	|return|ing books is no problem, because |R| is only on the lower side of both inclusions;
\item	|borrow|ing books calls for new contracts --- |R| is on the lower side and it increases!
\item	registering new users and buying new books are no problem, because |M| and |N| are on the upper side only;
\item	unregistering users calls for a contract because |N| is on the upper side  and decreases
	--- users must return all books before unregistering!
\end{itemize}

\section{Mobile phone example}
In this example we go back to the
|store| operation on a mobile phone list of calls specified by
(\ref{eq:070321a}). Of the three invariants we select (b), the one requiring no duplicate calls
in the list. Recall, in Haskell, the function |(!!) :: [a] -> Int -> a|. This
tells how a finite list |s| is converted into a partial function |(s!!)|
of type |Int -> a|. In fact, the partiality extends to the negative
numbers\footnote{Try |[2,3,3]!!(-1)|, for instance.} and so we should regard |(s!!)|
as a \emph{simple} relation\footnote{Partial functions are \emph{simple} relations, as we know.} even if restricted to
the type |larrow Nat () a|, as we shall do below.

The no-duplicates requirement requests |(s!!)| to be injective: in case |s!!i|
and |s!!j| are defined, |i/=j => s!!i /= s!!j|. Let |L=(s!!)|. Then we can re-specify the
operations of |store| in terms of |L|, as follows:\footnote{Knowing that |take 10| will always yield its input or a smaller list, and that \emph{smaller than injective is injective} (\ref{eq:180829e}), we only need to focus on |(c:) . filter (c /=)|.}
\begin{quote}
|inv L = id <= L|
\\
|filter (c/=) L = L - (const c)|
\\
|c:L = either (const c) L . (conv inT)|
\end{quote}
where |inT=either (const 0) succ| --- the Peano algebra which builds up natural
numbers.\footnote{Recall section \ref{sec:120409a}.} By (\ref{eq:060303c})
the definition of |c:L| can also be written
|cup(const c . (conv(const 0))) (L . (conv succ))|,
explicitly telling that |c| is placed in position |0|
while |L| is shifted one position up to make room for the new element. We calculate:
% |conv c `rdiv` bot = top-const c|
\begin{eqnarray*}
\start
	|inv(c:(filter (c/=) L)|
%
\just\equiv{|inv L = id <= L|, using the injectivity preorder}
%
	|id <= c:(filter (c/=) L)|
%
\just\equiv{ in-line definitions }
%
	|id <= either (const c) (L-const c) . (conv inT)|
%
\just\equiv{ Galois connection (\ref{eq:050118a}) }
%
	|inT <= either (const c) (L-const c)|
%
%just\equiv{}
%
%	|id <= either (const c) (L-const c)|
%
\just\equiv{ (\ref{eq:180113b}) ; |inT| is as injective as |id| }
%
	|id <= const c && id<= L-const c && conv (const c).(L-const c) atmost bot|
%
\just\implied{constant function |larrow 1 (const c) Nat| is injective; |L atmost top| }
%
	|id<= L-const c && conv (const c).(top-const c) atmost bot|
%
\just\implied{ smaller than injective is injective ; |conv (const c).(top-const c) = bot| (\ref{eq:180907c}) }
%
	|id <= L|
\qed
\end{eqnarray*}

Having given two examples of contract checking in two quite different domains, let us prepare for
checking that of the Alcuin puzzle.
By exercise \ref{ex:180831a} we already know that any of the starting states |w=const Left| or |w=const Right| satisfy the invariant:
\begin{quote}
	|starving w| = |w . CanEat atmost w . (const Farmer)|.
\end{quote}
The only operation defined is
\begin{quote}
	|carry who whr = cond ((ins who)) (cross.whr) whr|
\end{quote}
Clearly, calculating the weakest precondition for this operation to preserve |starving| is expected to be far more complex than in the previous examples, since |whr| is everywhere in the invariant. Can this be made simpler?

The answer is positive provided we understand a technique to be adopted, called \emph{abstract interpretation}.
% This is a technique that pays off when properly adopted.
So we postpone the topic of this paragraph to section \ref{sec:180902a}, where abstract interpretation will be introduced.
In between, we shall study a number of rules that can be used to address contracts in a structured way.

\begin{exercise}
Consider the voting system described by the relations of the diagram below,
\begin{eqnarray*}
\xymatrix@@R=2em{
	C
		\ar[r]_{|p|}
		\ar[dr]_{|dC|}
		\ar@@/^1pc/[rr]^-{|V'|}
&
	P
		\ar[d]_{|Di|}
		\ar[r]_{|V|}
&
	E
		\ar[dl]^{|dE|}
\\
&
	D
}
\end{eqnarray*}
where electors can vote in political parties or nominally in members of such parties.
In detail:
(a) |p c| denotes the party of candidate |c|;
(b) |dC c| denotes the district of candidate |c|;
(c) |dE e| denotes the district of elector |e|;
(d) |d Di p| records that party |p| has a list of candidates in district |d|;
(e) |e V p| indicates that elector |e| voted in party |p|;
(f) |e V' c| indicates that elector |e| voted nominally in candidate |c|.

There are several invariants to take into account in this model, namely:
\begin{eqnarray}
\start	|inv1(V,V')| = \mbox{|V : E <- P| and |V': E <- C| are injective}
\more	|inv2(V,V') = conv V . V' = bot|
	\label{eq:171222a}
\end{eqnarray}
since an elector cannot vote in more than one candidate or party;
\begin{eqnarray}
	|inv3(V,V')| & = & |dE . (either V V') atmost (either Di dC)|
	\label{eq:171222b}
\end{eqnarray}
since each elector is registered in one district and can only vote in candidates of that district.
%\begin{eqnarray}
%	|dC atmost Di . p|
%\end{eqnarray}
%pois se um candidato concorre por um distrito, implicitamente o seu partido está presente às eleições nesse distrito.

When the elections take place, relations |p|, |dC|, |dE| and |Di| are static,
since all lists and candidates are fixed before people can vote. Once it is over, the scrutinity
of the votes is carried out by function
\begin{quote}
|batch(V,V',X) = ...|
\end{quote}
where |X : E -> (P+C)| is a batch of votes to be loaded into the system.

Complete the definition of |batch| and discharge the proof obligations of the contracts that this function must satisfy.
\end{exercise}

\section{A calculus of functional contracts} \label{sec:080710d}
The number and complexity of invariants in real life problems invites
us to develop \emph{divide \& conquer} rules alleviating the
proof obligations that have to be discharged wherever contracts are needed.
All such rules have definition (\ref{eq:061115a-functions}) as starting point.
Let us see, for instance, what happens wherever the input predicate in (\ref{eq:080116a}) is a disjunction:
%format p_1 = "p_1"
%format p_2 = "p_2"
\begin{eqnarray*}
&&
	\larrow{\crflx{p_1} \cup \crflx{p_2}}{f}{\crflx{q}}
%
\just\equiv{ (\ref{eq:190519e}) }
%
	|f(crflx q <- ((cup (crflx p_1) (crflx p_2))))f|
%
\just\equiv{ (\ref{eq:060923b}) }
%
	|f((cap (crflx q <- (crflx p_1))(crflx q <- (crflx p_2))))f|
%
\just\equiv{ (\ref{eq:161012a}) }
%
	|f(crflx q <- (crflx p_1))f && f(crflx q <- (crflx p_2))f|
%
\just\equiv{ (\ref{eq:190519e}) twice }
%
	\larrow{\crflx{p_1}}{f}{\crflx{q}} \land
	\larrow{\crflx{p_2}}{f}{\crflx{q}}
%
\end{eqnarray*}
Recall that the disjunction |p |||| q| of two predicates is such that
|crflx(p |||| q) = cup (crflx p)(crflx q)| holds. So we can write the result
above in the simpler notation (\ref{eq:080116a}) as the contract decomposition rule:
\begin{eqnarray}
	|larrow (p |||| r) f q|
	& \wider\equiv &
	|larrow p f q| \land |larrow r f q|
	\label{eq:080220a}
\end{eqnarray}
The dual rule,
\begin{eqnarray*}
	\larrow{\crflx{p}}{f}{\crflx{q} \comp \crflx{r}}
	& \wider\equiv &
	\larrow{\crflx{p}}{f}{\crflx{q}} \land
	\larrow{\crflx{p}}{f}{\crflx{r}}
	%label{eq:080220b}
\end{eqnarray*}
is calculated in the same way --- via (\ref{eq:190519d}) --- and written
\begin{eqnarray}
	|larrow p f (q && r)|
	& \wider\equiv &
	|larrow p f q| \land |larrow p f r|
\end{eqnarray}
in the same notation, since |crflx(p&&q)=cap(crflx p)(crflx q)|.
The fact that contracts compose sequentially (\ref{eq:ex:180829g}) enables the corresponding
decomposition, once a suitable middle predicate |r| is found:
\begin{eqnarray}
	\larrow{p}{g \comp h} {q}
	& \implied &
	\larrow{r} g {q} \land \larrow {p} h {r}
	\label{eq:080229b}
\end{eqnarray}
This follows straight from (\ref{eq:080116a}, \ref{eq:061115a-functions}), as
does the obvious rule concerning identity
\begin{eqnarray}
	\larrow{p}{id}{q} & \wider\equiv & |q <=. p|
	\label{eq:080220d'}
\end{eqnarray}
since |p => q <=> crflx p atmost (crflx q)|.
The expected \[ \larrow{p}{id}{p}\] immediately follows from (\ref{eq:080220d'}).

Now suppose that we have contracts |larrow p f q| and |larrow p g r|.
What kind of contract can we infer for |split f g|?
We calculate:
\begin{eqnarray*}
\start
\larrow{{\crflx p}} f {{\crflx q}}\; \;   \wedge\; \; \larrow{{\crflx p}} g {{\crflx r}}
%
\just\equiv{ (\ref{eq:080116a},\ref{eq:061115a-functions}) twice }
%
         f \comp {\crflx p} \subseteq {\crflx q} \comp f\; \; \wedge\; \; g \comp {\crflx p} \subseteq {\crflx r} \comp g
%
 \just\equiv{ cancellations (\ref{eq:700l}) }
 %
         \pi_1  \comp {\split f g}  \comp {\crflx p} \subseteq {\crflx q} \comp f\; \; \wedge\; \;  \pi_2  \comp {\split f g}  \comp {\crflx p} \subseteq {\crflx r} \comp g
%
\just\equiv{ universal property (\ref{eq:060319a}) }
%
	\split f g  \comp {\crflx p}  \subseteq \split {{\crflx q} \comp f}{{\crflx r} \comp g}
%
\just\equiv{  absorption (\ref{eq:040129b-BM97}) }
%
	\split f g  \comp {\crflx p}  \subseteq ({\crflx q} \times {\crflx r})  \comp \split f g
%
\just\equiv{ (\ref{eq:080116a},\ref{eq:061115a-functions}) }
%
	\larrow{{\crflx p}}{\split f g}{{\crflx q} \times {\crflx r}}
%
\end{eqnarray*}
Defining |hadp p q| such that |crflx(hadp p q)=(crflx p)><(crflx q)| we obtain the
contract decomposition rule:
\begin{eqnarray}
	\larrow{p}{\split f g}{|hadp q r|}
& \wider\equiv &
	\larrow {p} f {q} \land \larrow {p} g {r}
	\label{eq:080219a}
\end{eqnarray}
which justifies the existence of arrow $\split f g$ in the diagram
\begin{eqnarray}
\xymatrix@@C=4em{
	|q|
&
	|hadp q r|
		 \ar[l]_{\p1} \ar[r]^{\p2}
&
	|r|
\\
&
	|p|
		\ar[ul]^{f}
		\ar[u]^{\split f g}
		\ar[ur]_{g}
	\label{eq:080630a}
}
\end{eqnarray}
where predicates (coreflexives) are promoted to objects (nodes in diagrams).

\begin{exercise}
Check the contracts |larrow (hadp q r) p1 q| and |rarrow (hadp q r) p2 r| of diagram (\ref{eq:080630a}).
\end{exercise}

Let us finally see how to handle conditional expressions of the form
$if$ $(c\ x)$ $then$ $(f\ x)$ $else$ $(g\ x)$ which, by (\ref{eq:180830a}), transform into
% the following version of {McCarthy}'s conditional combinator:
\begin{eqnarray}
	\mcond c f g \wider= f  \comp \crflx c \cup g  \comp \crflx{\neg c}
	\label{eq:080712a}
\end{eqnarray}
In this case, (\ref{eq:080124a}) offers a better standpoint for calculation than
(\ref{eq:061115a-functions}), as the reader may check in calculating the following
rule for conditionals: {\small
\begin{eqnarray}
	\longlarrow{|crflx p|}{\mcond c f g}{|crflx q|}
	& \wider\equiv &
	|lcbr
	    (larrow (crflx p . (crflx c)) f (crflx q))
	    (larrow (crflx p . (crflx (not c))) g (crflx q))
	|
	\label{eq:080219d}
\end{eqnarray}
This is because it is hard to handle $\mcond c f g$ on the upper side, $\top$ being more convenient.
}

Further contract rules can calculated on the same basis, either by elaborating on the predicate
structure or on the combinator structure. However, all the cases above involve functions
only and the semantics of computations are, in general, relations. So our strategy is to generalize
definition (\ref{eq:061115a-functions}) from functions to arbitrary relations.

\paragraph{Relational contracts}
Note that |S = R . (crflx p)| means
\begin{quote}
	|b S a <=> p a && b R a|
\end{quote}
---- that is, |S| is |R| pre-conditioned by |p|. Dually, |crflx q . R| is
the largest part of |R| which yields outputs satisfying |q| --- |R| post-conditioned
by |q|. By writing
\begin{eqnarray}
	|R . (crflx p) atmost (crflx q) . R|
	\label{eq:130114a-modified}
\end{eqnarray}
--- which is equivalent to
\begin{eqnarray}
	|R . (crflx p) atmost (crflx q) . top|
\end{eqnarray}
by (\ref{eq:071215a}) and even equivalent to
\begin{eqnarray}
	|crflx p atmost (rdiv R ((crflx q . top)))|
\end{eqnarray}
by (\ref{eq:020614b}) --- we express a very important fact about |R| regarded
as a (possibly non-deterministic, undefined) program |R|: condition |p| on
the inputs is \emph{sufficient} for condition |q| to hold on the outputs:
\begin{eqnarray*}
	|rcb forall a (p a) (rcb forall b (b R a)(q b))|
\end{eqnarray*}
Thus we generalize functional contracts (\ref{eq:061115a-functions}) to arbitrary relations,
\begin{eqnarray}
	|rarrow p R q|&\equiv&|R . (crflx p) atmost (crflx q) . R|
	\label{eq:061115a}
\end{eqnarray}
a definition equivalent to
\begin{eqnarray}
	|rarrow p R q|&\equiv&|R . (crflx p) atmost (crflx q) . top|
	\label{eq:161120b}
\end{eqnarray}
as seen above.

\begin{exercise}\label{ex:csi1718q07}
In a relational contract |larrow p R q| (\ref{eq:061115a}), for |R : A -> B|,
it may happen that, for some inputs |a ins A| satisfying |p| (that is, |p a = True| for such inputs) |R| does not react, which embodies a slight contradiction. To avoid this the following additional constraint is often required,
\begin{eqnarray}
	|crflx p atmost (conv R) . (crflx q) . R|
	\label{eq:081014a}
\end{eqnarray}
known as \emph{satisfiability}. (a) Show that (\ref{eq:081014a}) can be written as |crflx p . R <=  crflx p|; (b) render (\ref{eq:081014a}) in pointwise notation and explain in your own words how it addresses the issue about contract |larrow p R q| raised above; (c) show that, for |R| simple, satisfiability (\ref{eq:081014a}) alone ensures contract |larrow p R q|.
\end{exercise}

\section{Relational Hoare Logic}
Recall Reynold's \emph{relation on functions} (\ref{eq:040123b}):
\begin{eqnarray*}
\arrayin{
	f(R |<-| S)g & \equiv & f \comp S \subseteq R \comp g
}
&&
	|simplediag A B D C f S g R|
\end{eqnarray*}
In a sense, this tells us that |f| and |g| behave in the same way
within the particular \emph{context} provided by the pair $(S,R)$:
the outputs of |S|-related inputs are |R|-related:
\begin{quote}
	|a S b => (f a) R (g b)|
\end{quote}
This perspective of (\ref{eq:040123b}) has given rise to
so-called \emph{Relational Hoare logic} (RHL),
a topic which is currently under much research \cite{Ben04}.

The usual RHL notation for (\ref{eq:040123b}) is
\begin{quote}
$f \sim  g : S \implies R$
\end{quote}
As happens with functional contracts, this
logic in general considers arbitrary programs instead of the
functional |f| and |g| in (\ref{eq:040123b}).
Then, for suitably typed relations $P,Q$ (regarded as
programs), we have:
\begin{eqnarray}
	P \sim  Q : S \implies R & \wider\equiv & P \comp S \subseteq R \comp Q
	\label{eq:191021a}
\end{eqnarray}

Let us see an example of RHL rule derivation, that arising when |P = p -> U, V|:
\begin{eqnarray*}
\start
	(|p -> U, V|) \sim  Q : S \implies R
%
\just\equiv{ (\ref{eq:191021a}) }
%
	|(p -> U, V) . S atmost R . Q|
%
\just\equiv{ conditionals }
%
	|either U V . p? . S atmost R . Q|
%
\just\equiv{ (\ref{eq:180903d}) etc }
%
	|((cup  (U . (crflx p)) (V . (crflx (not p))))) . S atmost R . Q|
%
\just\equiv{ linearity (\ref{eq:180828a}) and |cup()()|-universal (\ref{eq:071114a}) }
%
	|lcbr(U . (crflx p) . S atmost R . Q)
	     (V . (crflx (not p)) . S atmost R . Q)
        |
%
\just\equiv{ (\ref{eq:191021a}) twice }
%
\begin{lcbr}
	U \sim Q : |crflx p . S => R|
\\
	V \sim Q : |crflx(not p) . S => R|
\end{lcbr}
\end{eqnarray*}
In words: provided |U| (resp.\ |V|) behave similarly to |Q| in the
strengthened input context |crflx p . S| (resp |crflx(not p) . S|)
then the conditional program |p -> U, V| behaves similarly to |Q| in the wider input
context |S|. Recall that |b(crflx p . S) a| means |b S a && p b|.

Note that the rule is an equivalence
\begin{eqnarray*}
	(|p -> U, V|) \sim  Q : S \implies R & \wider{\wider\equiv} &
\begin{lcbr}
	U \sim Q : |crflx p . S => R|
\\
	V \sim Q : |crflx(not p) . S => R|
\end{lcbr}
\end{eqnarray*}
that is, the two clauses on the right are \emph{weakest} pre-conditions.
In case the constraints |crflx p| and |crflx(not p)| are dropped
(as is usual) they become stronger and just sufficient conditions.

\section{Abstract interpretation} \label{sec:180902a}

In practice, the proofs involved in verifying contracts may be hard to perform due to
the intricacies of {real-life sized} software specifications, which may
involve hundreds of invariants of arbitrary complexity.
Such situations can only be tackled with the support of a theorem prover,
and in many situations even this is not enough to accomplish the task.
This problem has made software theorists to think of strategies helping designers
to simplify their proofs. One such strategy is \emph{abstract interpretation}.

It is often the case that the proof of a given contract does not require the whole
model because the contract is only concerned with a particular \emph{view} of the whole thing.
As a very simple example, think of a model that is made of two independent parts |A><B|
and of an invariant that constrains part |A| only. Then one may safely ignore |B| in the
proofs. This is equivalent to applying projection |p1 : A><B->A| (\ref{eq:59b}) to the
original model. Note that |p1| is an \emph{abstraction}, since it is a surjective
function --- recall figure \ref{fig:031230a}.

In general, software models are not as ``separable" as |A><B| is, but abstraction
functions exist that yield much simpler models where proofs can be made
easier. Different abstractions help in different proofs --- a kind of ``on
demand'' \emph{abstraction} making a model more \emph{abstract} only with respect
to the \emph{specific} {property} one wishes to check.

In general, techniques of this kind
are known as \emph{abstract interpretation} techniques and play a major role in \emph{program
analysis}, for instance. To explain abstract interpretation we need to introduce
the notion of a \emph{relational type}.

\paragraph{Relations as types}
A function |h| is said to have \emph{relation type} |R->S|, written |rarrow R h S| if
\begin{eqnarray}
	|h . R atmost S . h| &&
\myxym{
	B
		\ar[d]_{|h|}
&
	B
		\ar[l]_{|R|}
		\ar[d]^{|h|}
\\
	A
&
	A
		\ar[l]_{|S|}
}
	\label{eq:161120a}
\end{eqnarray}
holds. Note that (\ref{eq:161120a}) could be written |h(S<-R)h| in the notation of (\ref{eq:040123b}).
In case |h: B->A| is surjective, i.e.\ |h| is an \emph{abstraction function}, we also say that |larrow A S A|
is an \emph{abstract simulation} of |larrow B R B| through |h|. % cf. forward morphism

%paragraph{Invariant functions}
A special case of relational type defines so-called \emph{invariant functions}.
A function of relation type |rarrow R h id| is said to be
|R|-\emph{invariant}, in the sense that
\begin{eqnarray}
	|rcb forall (b,a) (b R a)(h b = h a)|
	\label{eq:161010a}
\end{eqnarray}
holds. When |h| is |R|-invariant, observations by |h| are not affected by |R|-transitions.
In pointfree notation, an |R|-{invariant} function |h| is always such that:
\begin{eqnarray}
|R atmost (syd h h)|
\end{eqnarray}
For instance, a binary operation |theta| is \emph{commutative} iff |theta|
is |swap|-invariant, that is
\begin{eqnarray}
	|swap atmost (syd theta theta)|
	\label{eq:180905d}
\end{eqnarray}
holds.

\begin{exercise}
What does (\ref{eq:161120a}) mean in case |R| and |S| are partial orders?
%, writing |rarrow R h S| means the same as saying that |h| is \emph{monotonic}.
\end{exercise}

\begin{exercise}
%format t0 = "t_0"
Let |t0| be a real number. Show that
\begin{quote}
|rarrow ((+t0)) () id|
\end{quote}
is the relational type of all periodic functions (on |Real|) with period |t0|.
\end{exercise}

\begin{exercise}
Show that relational types compose, that is |larrow S k Q| and |larrow R h S| entail
|larrow R (k.h) Q|.
\end{exercise}

\begin{exercise}
Show that (\ref{eq:161120b}) is an alternative way of stating (\ref{eq:061115a}).
\end{exercise}

\begin{exercise}
Recalling exercise \ref{q:em16171q05}, let the following relation specify that two dates are at least one week apart in time:
\begin{eqnarray*}
	|d Ok d' <=> ||d-d'|| > 1 week|
\end{eqnarray*}
Looking at the type diagram below, say in your own words the meaning of the
invariant specified by the relational type (\ref{eq:161120a}) statement below, on the left:
\begin{eqnarray*}
	|rarrow (ker((cup casa fora))-id) dat Ok|
& ~~~~ &
	\myxym{
		|G|
			\ar[rr]^-{|cup casa fora|}
			\ar[d]_{|dat |}
	&&
		|T|
	\\
		|D|
	&&
		|G|
			\ar[u]_{|cup casa fora|}
			\ar[ll]^-{|dat |}
	}
\end{eqnarray*}
\end{exercise}

\paragraph{Abstract interpretation}
Suppose that one wishes to show that |q:B->Bool| is an invariant of some operation |rarrow B R B|, i.e.\
that |rarrow q R q| holds and you know that |q=p.h|, for some |h:B->A|, as shown in the diagram.
Then one can factor the proof in two steps:
\par\noindent\hskip-1ex\mbox{
\begin{minipage}{0.60\textwidth}
\rule{2ex}{0pt}
\begin{itemize}
\item	show that there is an abstract \emph{simulation} |S| such that |rarrow R h S|;
\item	prove |rarrow p S p|, that is, that |p| is an (abstract) \emph{invariant} of (abstract) |S|.
\end{itemize}
\end{minipage}
}\mbox{
\begin{minipage}{0.3\textwidth}
\unitlength=0.1\textwidth
\[\myxym{
	|Bool|
&
	A
	\ar[l]_-{p}
&
	A
	\ar[l]_-{S}
\\
&
	B
	\ar@@/^1pc/[lu]_-{q}
	\ar[u]_-{h}
&
	B
	\ar[l]_-{R}
	\ar[u]_-{h}
}\]
\end{minipage}
}
\vskip 2ex\noindent
This strategy is captured by the following calculation:
\begin{eqnarray*}
\start
	|rarrow q R q|
%
\just\equiv{ (\ref{eq:080116a}) }
%
	|R . (crflx q) atmost (crflx q) . top|
%
\just\equiv{ |q=p.h| }
%
	|R . (crflx((p.h))) atmost (crflx((p.h))) . top|
%
\just\equiv{ (\ref{eq:161118a}) etc }
%
	|R . (crflx((p.h))) atmost (conv h) .(crflx p) . top|
%
\just\equiv{ shunting }
%
	|h . R . (crflx((p.h))) atmost (crflx p) . top|
%
\just\implied{|rarrow R h S|}
%
	|S . h . (crflx((p.h))) atmost (crflx p) . top|
%
\just\implied{|crflx((p.h)) atmost (conv h).(crflx p).h| (\ref{eq:161105b}) }
%
	|S . h . (conv h).(crflx p).h atmost (crflx p) . top|
%
\just\implied{|top =top . h| (cancel |h|); |img h atmost id|}
%
	|S . (crflx p) atmost (crflx p) . top|
%
\just\equiv{ (\ref{eq:080116a}) }
%
	|rarrow p S p|
\qed
\end{eqnarray*}
The following exercise gives a very simple example of application of abstract interpretation.

\begin{exercise}\label{ex:csi1920q02}
A list of pairs |x ins (Seq((A><A)))| can be represented simply by some |y ins (Seq A)| provided the length of |y| is even. Let
\begin{code}
theta : (A><A) -> Seq A -> Seq A
theta(a,b) y = a:b:y
\end{code}
be the operation that adds pairs to such a representation. Show by abstract interpretation that |theta(a,b)| preserves the invariant
\begin{eqnarray}
	|inv y = even(length y)|
\end{eqnarray}
by finding an abstract simulation |phi| of |theta| in the diagram:
\[\myxym{
	|Bool|
&
	|Nat0|
	\ar[l]_-{|even|}
&
	|Nat0|
	\ar[l]_-{|phi|}
\\
&
	|Seq A|
	\ar@@/^1pc/[lu]^-{|inv|}
	\ar[u]^-{|length|}
&
	|Seq A|
	\ar[l]^-{|theta(a,b)|}
	\ar[u]_-{|length|}
}\]
%Identifique |phi| e complete a prova, a saber: (a) que |phi| simula |theta(a,b)|; (b) que  |phi| preserva o invariante |even|.
\end{exercise}

Abstract interpretation techniques usually assume that |h| is an adjoint
of a Galois connection. The examples below do not assume this, for an easy start.

\section{Safety and liveness properties}
Before showing examples of abstract interpretation, let us be more specific
about what was meant by ``some operation |rarrow B R B|" above. In section \ref{sec:180903a} a monad was studied called the \emph{state monad}. This monad is inhabited by state-transitions
encoding state-based automata known as \emph{Mealy machines}.

%paragraph{State-based models}
With relations one may be more relaxed on how to characterize state automata.
In general, functional models generalize to so called \emph{state-based}
relational models in which there is
\begin{itemize}
\item	a set |vSigma| of \emph{states}
\item	a subset |I atmost vSigma| of \emph{initial} states
\item	a \emph{step} relation |rarrow vSigma R vSigma| which expresses transition of states.
\end{itemize}
We define:
\begin{itemize}
\item |raise 0 R = id| --- no action or transition takes place
\item |raise (i+1) R = R . (raise (i) R)| --- all "paths" made of |i+1| |R|-transitions
\item $|raise (*) R| = \bigcup_{|i>=0|} R^i$ --- the set of all possible |R|-paths.
\end{itemize}
We represent the set |I| of initial states by the coreflexive
|rarrow vSigma (crflx((ins I))) vSigma|, simplified to |rarrow vSigma I vSigma|
to avoid symbol cluttering.

Given |rarrow vSigma (R,I) vSigma| (i.e.\ a nondeterministic automaton, model)
there are two kinds of property that one may wish to prove --- \emph{safety} and
\emph{liveness} properties.
\emph{Safety} properties are of the form |raise (*) R . I atmost S|, that is,
\begin{eqnarray}
	|rcb forall n (n>=0) ((raise n R) . I atmost S)|
\end{eqnarray}
for some safety relation |S:vSigma->vSigma|, meaning:
\emph{All paths in the model originating from its initial states are \emph{bounded} by |S|}.
%
In the particular case |S=syd true p| \footnote{Recall that |syd true p = crflx p.top| (\ref{eq:161118a}).}
\begin{eqnarray}
	|rcb forall n (n>=0) ((raise n R) . I atmost (syd true p)|
	\label{eq:161010g}
\end{eqnarray}
meaning that formula |p| holds for every state
reachable by |R| from an initial state. Invariant preservation is an example
of a safety property: if starting from a ``good" state, the automaton only
visits ``good" (valid) states.

In contrast to safety properties, the so-called \emph{liveness} properties are of the form
\begin{eqnarray}
	|rcb exists n (n>=0) (Q atmost (raise n R) . I)|
\end{eqnarray}
for some \emph{target} relation |Q:vSigma->vSigma|, meaning:
\emph{the target relation |Q| is eventually \emph{realizable}, after |n| steps starting from an initial state.}
%
In the particular case |Q=syd true p| we have
\begin{eqnarray}
	|rcb exists n (n>=0) (syd true p atmost (raise n R) . I)|
	\label{eq:161014d}
\end{eqnarray}
meaning that, for a sufficiently large |n|, formula |p| will
eventually hold.

\section{Examples}
The Alcuin puzzle is an example of a problem that is characterized by a liveness
and safety property:
\begin{itemize}
\item	From initial state |whr=const Left|, state |whr=const Right| is eventually
reachable --- a \emph{liveness} property.
\item	Initial state |whr=const Left| is valid and no step of the automaton leads
to invalid |whr| states --- a \emph{safety} property.
\end{itemize}

%paragraph{Ensuring safety / liveness properties}
The first difficulty in ensuring properties such as (\ref{eq:161010g}) e (\ref{eq:161014d}) is the quantification on the number of path steps. In the case of (\ref{eq:161014d}) one can try and find a particular path using a \emph{model checker}. In both cases, the complexity /size of the \emph{state space} may offer some impedance to proving / model checking. Below we show how to circumvent such difficulties by use of \emph{abstract interpretation}.

\paragraph{The heavy armchair problem}
Let us show a simple, but effective example of abstract interpretation applied to a well-known
problem --- the \emph{heavy armchair} problem.\footnote{
Credits: this version of the problem and the pictures shown are taken from \cite{Ba11}.}
%
Consider the following picture:
\begin{center}
	\includegraphics[width=0.3\textwidth]{armchair-m1x.jpg}
\end{center}
We wish to move the armchair to an adjacent square, horizontally or vertically.
However, because the armchair is too heavy, it can only be rotated over one of its four legs,
as shown in the picture.

The standard model for this problem is a pair $(p,o)$ where |p=(y,x)| captures
the square where the armchair is positioned and |o| is one of the complex
numbers |{i,-i,1,-1}| indicating the orientation of the armchair (that is,
it can face N,S,E,W). Let the following step-relation be proposed,
\begin{eqnarray*}
	|R = P >< Q|
\end{eqnarray*}
where |P| captures the \emph{adjacency} of two squares and |Q| captures |conv 90| rotations.
%
A \emph{rotation} multiplies an orientation |o| by |pm i|, depending on choosing a clockwise (|-i|) or anti-clockwise (|i|) rotation.
% complex number in |{1,i,-1,-i}| indicating the orientation of the armchair.
Altogether:
\begin{quote}
|((y',x'),d') R ((y,x),d) <=>| \\~~~~~~ |lcbr(y'=y pm 1 && x'=x |||| y'=y && x'=x pm 1)(d'= (pm i) d)|
\end{quote}

We want to check the \emph{liveness} property:
\begin{eqnarray}
	\mbox{\em For some |n|, |((y,x+1),d) (raise n R) ((y,x),d)| holds.}
	\label{eq:161009a}
\end{eqnarray}
That is, we wish to move the armchair to the adjacent square on its right, keeping
the armchair's orientation. This is exactly what the pointfree version of (\ref{eq:161009a}) tells:
\begin{eqnarray*}
|rcb exists n () ((id><(1+))><id atmost (raise n R)|
\end{eqnarray*}
In other words: \emph{there is a path with |n| steps that realizes the \emph{function}
|move = (id>< (1+))><id|}.

Note that the state of this problem is arbitrarily large. (The squared area
is unbounded.) Moreover, the specification of the problem is non-deterministic.
(For each state, there are four possible successor states.) We resort to
\emph{abstract interpretation} to obtain a bounded, deterministic (\emph{functional})
model: the floor is coloured as a chess board and the armchair behaviour
is abstracted by function |h=col><dir| which tells the \emph{colour} of the
square where the armchair is and the \emph{direction} of its current {orientation}:
\begin{center}
	\includegraphics[width=0.3\textwidth]{armchair-m2.jpg}
\end{center}
%
Since there are two colours (black, white) and two directions (horizontal,
vertical), both can be modelled by Booleans.
Then the action of moving to any adjacent square abstracts to \emph{color} negation
and any |conv 90| rotation abstracts to \emph{direction} negation:
\begin{eqnarray}
\start
	|rarrow P col ((not))|
	\label{eq:180903c}
\more
	|rarrow Q dir ((not))|
	\label{eq:180903b}
\end{eqnarray}
In detail:
\begin{eqnarray*}
\start	|col (y,x) = even(y+x)|
\more	|dir x = x ins {1,-1}|
\end{eqnarray*}
For instance, |col(0,0)=True| (black in the picture), |col(1,1)=True|, |col(1,2)=False|
and so on; |dir 1 = True| (horizontal orientation), |dir(-i)=False|, and
so on. Checking (\ref{eq:180903b}):
%
\begin{eqnarray*}
\start
	|dir((pm i)x)|
%
\just={ |dir x = x ins {1,-1}| }
%
	|(pm i)x ins {1,-1}|
%
\just={ | multiply by (pm i)| within |{ 1,i,-1,-i }| }
%
	|x ins { -i, i }|
%
\just={ the remainder of |{ -i, i }| is |{ 1,-1 }|}
%
	|not (x ins { 1,-1 })|
%
\just={ |dir x = x ins { 1,-1 }| }
%
	|not (dir x)|
\qed
\end{eqnarray*}
Checking (\ref{eq:180903c}):
\begin{eqnarray*}
\start
	|larrow P col ((not))|
%
\just\equiv{ (\ref{eq:161120a}) for functions  }
%
	|col . P atmost not . col|
%
\just\equiv{ shunting ; go pointwise }
%
	|(y',x')P(y,x) => even(y'+x')=not even(y+x)|
%
\just\equiv{ unfold }
%
	|lcbr(
		y'=y pm 1 && x'=x => even(y'+x')=not even(y+x)
	)(
		y'=y && x'=x pm 1 => even(y'+x')=not even(y+x)
	)|
%
\just\equiv{ substitutions ; trivia }
%
	|lcbr(
		even(y pm 1)=not even y
	)(
		even(x pm 1)=not even x
	)|
%
\just\equiv{ trivia }
%
	|true|
\qed
\end{eqnarray*}
Altogether:
%Indeed, the following relational types hold:
\begin{eqnarray*}
	|longrarrow R (col><dir) ((not><not))|
\end{eqnarray*}
That is, step \emph{relation} |R| is simulated by |s=not><not|, i.e.\ the \emph{function}
\begin{quote}
|s(c,d)=(not c, not d)|
\end{quote}
over a state space with 4 possibilities only: wherever the armchair turns
over one of its legs, whatever this is, it changes \emph{both} the colour
of its square and its direction.

At this level, we note that \emph{observation} function
%format xor = "\oplus "
\begin{eqnarray}
	|f(c,d) = c xor d|
	\label{eq:161009b}
\end{eqnarray}
is |s|-\emph{invariant} (\ref{eq:161010a}), that is
\begin{eqnarray}
	|f.s=f|
	\label{eq:161011a}
\end{eqnarray}
since |not c xor not d = c xor d| holds. By induction on |n|, |f.(raise n s)=f| holds too.

Expressed under this abstraction, (\ref{eq:161009a}) is rephrased into: \emph{there
is a number of steps |n| such that |raise n s (c,d)=(not c,d)| holds}. Let
us check this abstract version of the original property, assuming variable
|n| existentially quantified:
\begin{eqnarray*}
\start
	|raise n s (c,d)=(not c,d)|
%
\just\implies{ Leibniz }
%
	|f((raise n s (c,d))) = f(not c,d)|
%
\just\equiv{ |f| is |s|-\emph{invariant}}
%
	|f(c,d) = f(not c,d)|
%
\just\equiv{ (\ref{eq:161009b}) }
%
	|c xor d = not c xor d|
%
\just\equiv{ |1 xor d = not d| and |0 xor d = d|}
%
	|d = not d|
%
\just\equiv{trivia}
%
	|false|
%
\end{eqnarray*}
%
Thus, for all paths of arbitrary length |n|, |raise n s (c,d) /= (not c,d)|.
We conclude that the proposed liveness property does not at all hold!

\paragraph{Alcuin puzzle example}
Abstract interpretation applies nicely to this problem (recall section \ref{sec:210108a}), thanks to its symmetries.
On the one hand, one does not need to  work over the 16 functions in |expn
Bank Being|, since starting from the left margin or from the right margin
is irrelevant. Another symmetry can be found in type |Being|, suggesting
the following abstraction of beings into three classes:
\xymatrixrowsep{0.8em}
\xymatrixcolsep{2em}
\begin{eqnarray*}
\start |f:Being->{alpha, beta, gamma}|
\more f = \left(
\myxym{
	Goose
		\ar[r]
&
	|alpha|
\\
	Fox
		\ar[r]
&
	|beta|
\\
	Beans
		\ar[ru]
\\
	Farmer
		\ar[r]
&
	|gamma|
}
	\right)
%more |f = matrix34 1 0 1 0 0 1 0 0 0 0 0 1|
\end{eqnarray*}
The abstraction consists in unifying the maximum and minimum elements of the ``food chain" (\ref{eq:180827b}).
In fact, the simultanous presence of one |alpha| and one |beta| is enough for defining the invariant. (Which \emph{specific} being eats the other is irrelevant detail.) This double abstraction is captured by
\begin{eqnarray*}
\xymatrix{
	Bank
&
	Being
		\ar[l]_{w}
		\ar[d]_-{|f|}
\\
	1
		\ar[u]^{|const Left|}
&
	|{alpha, beta, gamma}|
		\ar[l]^-{|V|}
}
&&
	|V = conv(const Left) . w . (conv f)|
\end{eqnarray*}
where the choice of |Left| as reference bank is arbitrary.
Thus function |w| is abstracted by the row \emph{vector} relation |V| \footnote{A
fragment of |bang : {alpha, beta, gamma} -> 1|, recall section \ref{sec:180905c}.}
such that:
\begin{eqnarray*}
	|_ V x = rcb exists b (x=f b) (w b = Left)|
\end{eqnarray*}
Vector |V| tells
whether at least one being of class |x| can be found in the reference bank.
Noting that there could be more than one |beta| there, we refine
the abstraction a bit so that the number of beings of each class is counted.\footnote{This
suggests that linear algebra would be a good alternative to relation algebra
here!} This leads to the following \emph{state-abstraction} (higher order)
function |h| based on |f|:
\vskip 1ex
\begin{quote}
	|h : (Being-> Bank) -> {alpha, beta, gamma}->{0,1,2}|
\\
	%|h whr = conv (const Left) . whr . (conv f)|
	|h w x = (rcb summation b (x=f b && w b = Left) 1)|
\end{quote}
For instance,
\begin{eqnarray*}
	|h (const Left)|&=&121
\\
	|h (const Right)|&=&000
\end{eqnarray*}
abbreviating by vector $xyz$ the mapping
|{alpha :-> x, beta :-> y, gamma :-> z}|.\footnote{This version of the model
is inspired in \cite{Ba11}.} To obtain the other bank just compute its complement: |cmp x = 121 - x|.
Note that there are |2><3><2=12| possible state vectors,
4 of which are invalid (these are marked in red):
\begin{eqnarray*}
\xymatrix@@C=1ex@@R=2em{
&&&
	121
		\ar@@{-}[d]
		\ar@@{-}[dll]
		\ar@@{-}[drr]
\\
&
	021
		\ar@@{-}[ld]
		\ar@@{-}[rd]
&&
	111
		\ar@@{-}[dr]
		\ar@@{-}[dlll]
		\ar@@{-}[drrr]
&&
	{\red 120}
		\ar@@{-}[dlll]
		\ar@@{-}[rd]
\\
	{\red 011}
		\ar@@{-}[dr]
		\ar@@{-}[drrr]
&&
	020
		\ar@@{-}[dr]
&&
	101
		\ar@@{-}[dlll]
		\ar@@{-}[dr]
&&
	{\red 110}
		\ar@@{-}[dlll]
		\ar@@{-}[dl]
\\
&
	{\red 001}
		\ar@@{-}[drr]
&&
	010
		\ar@@{-}[d]
&&
	100
		\ar@@{-}[dll]
&&
\\
&&&
	000
\\
}
\end{eqnarray*}
The ordering implicit in the lattice above is pointwise |(<=)|. As already
mentioned, this is complemented by |cmp x = 121 - x|, which gives the information of the other bank.

The 8 valid states can be further abstracted to only 4 of them,
\begin{eqnarray*}
\vcenter{\xymatrix@@C=1ex{
&&&
	121
		\ar@@{-}[d]
		\ar@@{-}[dll]
\\
&
	021
		\ar@@{-}[rd]
&&
	111
		\ar@@{-}[dr]
&&
\\
&&
	020
		\ar@@{-}[dr]
&&
	101
		\ar@@{-}[dr]
&&
\\
&
&&
	010
		\ar@@{-}[d]
&&
	100
		\ar@@{-}[dll]
&&
\\
&&&
	000
\\
}}
&|->|&
\vcenter{\xymatrix@@C=1ex{
&&&
	121
		\ar@@{-}[dll]
\\
&
	021
		\ar@@{-}[rd]
&&
&&
\\
&&
	020
		\ar@@{-}[dr]
&&
&&
\\
&
&&
	010
&&
&&
\\
&&&
\\
}}
\end{eqnarray*}
since, due to complementation (cf.\ the Left-Right margin symmetry), we only
need to reach state |010|. Then one reverses the path through the complements.
In this setting, the model is deterministic and is captured by the
%paragraph{Alcuin puzzle: abstract determinism}
abstract automaton:
\begin{eqnarray*}
\vcenter{\xymatrix@@C=5ex{
&&&
	121
		\ar[ddl]_{-101}
\\
&
	021
		\ar@@{<->}[rd]||-{|pm|001}
		\ar@@/_2pc/[ddrr]_-{-011}
&&
&&
\\
&&
	020
&&
&&
\\
&
&&
	010
&&
&&
\\
&&&
\\
}}
\end{eqnarray*}
Termination is ensured by disabling toggling between
states |021| and |020|:
\begin{eqnarray*}
\begin{array}[t]{r}
	121
\\
	-101
\\\hline
	020
\\
	+001
\\\hline
	021
\\
	-011
\\\hline
	010
\end{array}
\end{eqnarray*}
We then take the complemented path |111->100->101->000|. So the abstract solution for the Alcuin puzzle is, finally:
\begin{eqnarray*}
{\xymatrix@@C=2ex{
&&&
	121
		\ar[ddl]_{-101}
\\
&
	021
		\ar@@/_2pc/[ddrr]_-{-011}
&&
	111
		\ar@@/^2pc/[ddrr]_-{-011}
&&
\\
&&
	020
		\ar[lu]_{+001}
&&
	101
		\ar[ddl]^{-101}
&&
\\
&
&&
	010
		\ar[uu]||-{+101}
&&
	100
		\ar[lu]^{+001}
&&
\\
&&&
	000
\\
}}
&&
\begin{array}[t]{r}
	121
\\
	-101
\\\hline
	020
\\
	+001
\\\hline
	021
\\
	-011
\\\hline
	010
\\
	+101
\\\hline
	111
\\
	-011
\\\hline
	100
\\
	+001
\\\hline
	101
\\
	-101
\\\hline
	000
\end{array}
\end{eqnarray*}

At this point note that, according to the principles of abstract interpretation stated above, quite a few steps are pending in this exercise: abstract the |starving| invariant to the vector level, find an abstract simulation of |carry|, and so on and so forth. But --- why bother doing all that? There is no other operation in the problem, so the abstraction found is, in a sense, universal: we should have started from the vector model and not from the |Being->Bank| model, which is not \emph{sufficiently} abstract.

Abstract interpretation leads one to think about the essence of programming itself. The current scientific basis of programming enables the calculation of programs, following the scientific method. So, programming is lesser and lesser an \emph{art}. Where is creativity gone to? To the \emph{art} of abstract modelling and elegant proving --- this is where it can be found nowadays.

\begin{exercise}
Verification of code involves calculations of real numbers and is often done on the basis of an abstract interpretation called \emph{sign analysis}:
%format P = "+"
%format Z = "0"
%format N = "-"
\begin{code}
sign : Real -> {N,Z,P}
sign 0 = Z
sign x = if x > 0 then P else N
\end{code}
Suppose there is evidence that the operation
|theta : expn {N,Z,P} 2 -> {N,Z,P}| defined by
\begin{eqnarray}
\begin{array}{c||ccc}
|theta|&|N|&|Z|&|P|\\\hline
|N|&|P|&|Z|&|N|\\
|Z|&0&0&0\\
|P|&|N|&|Z|&|P|
\end{array}
	\label{eq:180104a}
\end{eqnarray}
is the abstract simulation induced by | sign | of a given concrete operation | f: Real><Real -> Real |, that is, that
\begin{eqnarray}
	|theta.(sign >< sign) = sign.f|
\end{eqnarray}
holds. % onde |S<-R| designa a ``seta the Reynolds": |f(S<-R)g <=> f . R atmost S . g|.
It is easy to see, by inspection of (\ref{eq:180104a}), that | theta | is a commutative operation, recalling (\ref{eq:180905d}).
\begin{itemize}
\item
Show that | sign.f | is necessarily commutative as well. (Hint: the free theorem of |swap| can be useful here.)
\item
Does the previous question guarantee that the concrete operation |f| is also commutative? Answer informally.
\end{itemize}
\end{exercise}

\section{``Free contracts''}
In design by contract, many functional \emph{contracts} arise naturally as corollaries of \emph{free theorems}. This has the advantage of {saving} us {from proving} such {contracts} explicitly.

The following exercises provide ample evidence of this.

\begin{exercise}
Confirm that (\ref{eq:190519b}) is the free theorem of functional composition |(.)|, which has type
\begin{quote}
	|(b -> c) -> (a -> b) -> a -> c|
\end{quote}
leading to \emph{contract composition} (\ref{eq:080229b}) as shown earlier on.
\end{exercise}

\begin{exercise}
Show that contract $\larrow{\Seq{p}}{|map f|}{\Seq{q}}$ holds provided contract $\larrow{{p}}{f}{{q}}$ holds.
\end{exercise}

\begin{exercise}
Suppose a functional programmer wishes to prove the following property of lists, to hold for all |a| and |s|:
%
\begin{eqnarray*}
	|(p a) && (rcb forall (a')(a' ins elems s)(p a')| & \implies& 
		|rcb forall (a'')(a'' ins elems(a:s))(p a'')|
\end{eqnarray*}
%
Show that this property is a contract arising (for free) from the polymorphic type
of the \emph{cons} operation |(:)| on lists.
\end{exercise}

\section{Reasoning by approximation}
Abstraction interpretation situations
	|larrow R h S|
\begin{eqnarray*}
	|simplediag C C A A h R h S|
\end{eqnarray*}
include the particular case
\begin{eqnarray*}
|simplediag C C A A alpha f alpha ((<=).g)|
\end{eqnarray*}
where |alpha| is left adjoint of a Galois connection
\begin{eqnarray*}
	|gcc ((<=)) (alpha) ((<<=)) gamma|
\end{eqnarray*}
that is,
\begin{eqnarray*}
	|conv alpha . (<=) = (<<=) . gamma|
\end{eqnarray*}
holds (\ref{eq:100109b}). Given concrete function |f|, we seek for functional abstract \emph{simulations} |g|
as solutions to the equation
\begin{eqnarray}
	|alpha.f (pw (<=)) g . alpha|
	\label{eq:180923a}
\end{eqnarray}
that is, |rcb forall x (x ins C)(alpha(f x) <= g(alpha x))|.
In words: abstract |g| is a ``good" simulation of concrete |f| with respect to the |(<<=)| ordering.
Note that (\ref{eq:180923a}) is equivalent to
\begin{eqnarray}
	|f (pw (<<=)) gamma . g . alpha|
\end{eqnarray}
So, the performance of concrete |f| is at most as good as that of simulation |g| at abstract level.

Let us try and solve the equation for unknown |g|:
\begin{eqnarray}
\start
	|alpha.f (pw (<=)) g . alpha|
	\nonumber
%
\just\equiv{ (\ref{eq:030827b}); shunting |alpha| to the left  }
%
	|alpha.f.(conv alpha) atmost (<=).g|
	\label{eq:181009a}
%
\just\implies{ monotonicity of composition }
%
	|alpha.f.(conv alpha).(<=) atmost (<=).g.(<=)|
	\nonumber
%
\just\implies{ |g| monotone: |g . (<=) atmost (<=) . g|; |(<=)| transitive }
%
	|alpha.f.(conv alpha).(<=) atmost (<=).g|
	\label{eq:191031a}
%
\just\equiv{ Galois connection (\ref{eq:100109b}) }
%
	|alpha.f.gamma.(<<=) atmost (<=).g|
	\label{eq:191031b}
%
\just\equiv { back to (\ref{eq:191031a}) }
%
	|alpha.f.(conv alpha).(<=) atmost (<=).g|
	\nonumber
%
\just\implies{ |id atmost (<=)| }
%
   |alpha.f.(conv alpha) atmost (<=).g|
	\nonumber
%
\end{eqnarray}

Note the circular implication. So, every step in the reasoning is equivalent to
the equation we started from (\ref{eq:180923a}). In particular,
%step (\ref{eq:191031b}) implies |alpha.f.gamma (pw (<=)) g| by |id atmost (<<=)| and
step  (\ref{eq:191031a}) is equivalent to
\begin{eqnarray*}
	|g a = rcb largest c (alpha c <= a)((alpha.f)c)|
\end{eqnarray*}
by (\ref{eq:180920a}) in case suprema exist (complete lattices).
So, in this situation --- existence of universal suprema --- (\ref{eq:180923a})
has one solution only, which we denote by |shp f|:
\begin{eqnarray*}
	|alpha.f (pw (<=)) g . alpha|
&\wider\equiv&
	|g a = underbrace(rcb largest c (alpha c <<= a)((alpha.f)c))(shp f a)|
\end{eqnarray*}
Step (\ref{eq:191031b}) implies |alpha.f.gamma (pw (<=)) g| --- by |id atmost (<<=)| ---,
which provides a hint to the pointfree definition of such a solution:
\begin{quote}
|shp f : A -> A|
\\
|shp f = alpha . f . gamma|
\end{quote}
Indeed, |shp f =  alpha . f . gamma| solves the equation:
\begin{eqnarray*}
\start
	|f (pw (<<=)) gamma . (shp f) . alpha|
%
\just\equiv{ |shp f = alpha . f . gamma|}
%
	|f (pw (<<=)) gamma . (alpha . f . gamma) . alpha|
%
\just\implied{ |id (pw (<<=))gamma . alpha| }
%
	|f (pw (<<=)) f . gamma . alpha|
%
\just\implied{|f| monotone: |f. (<<=) atmost (<<=).f|; monotonicity of composition}
%
	|id (pw (<<=)) gamma . alpha|
%
\just\equiv{ |id (pw (<<=))gamma . alpha| }
%
	|true|
\qed
\end{eqnarray*}
Summing up: for |alpha| the lower adoint of a Galois connection involving
complete lattices,
\begin{eqnarray*}
	|alpha.f (pw (<=)) g . alpha|
&\wider\equiv&
	|g = shp f|
\end{eqnarray*}
holds where
\begin{eqnarray*}
|shp f| &=& |alpha . f . gamma|
\\
&=&
	|(rcb largest c (alpha c <<= a)((alpha.f)c))|
\end{eqnarray*}
Example: suppose that, for some reason, we decide to abstact finite non-empty lists (of suitably ordered data) by
their suprema and infima,
\begin{eqnarray*}
	|alpha = split minimum maximum|
\end{eqnarray*}
and represent intervals in the expected way:
\begin{eqnarray*}
	|gamma (a,b) = [a..b]|
\end{eqnarray*}
Consider the concrete operation |(a:)|. Then, for instance,
\begin{eqnarray*}
\start
  |shp ((1:)) (2,4)|
%
\just={ |shp f = alpha . f . gamma| }
%
  |alpha (1:[2,3,4])|
%
\just={|alpha = split minimum maximum|}
%
  |(1,4)|
%
\end{eqnarray*}
That is:
\begin{eqnarray*}
|shp ((a:)) (x,y) = (if a < x then a else x, if a > y then a else y)|
\end{eqnarray*}
The underlying GC is
\begin{quote}
	|alpha x <= (a,b) <=> x <<= gamma (a,b)|
\end{quote}
where |(<=)| is
interval containment and |(<<=) = (conv elems).(atmost).elems|.
Abstraction interpretation here means that repetition and position of specific values in the list are irrelevant
for the analysis under way: only the range of values matters.

\iffalse % MESSY

\fbox{Follow-up, currently out of context}
Moreover, we have the following \emph{fixpoint abstraction} result
\fbox{Theorem 5.2 (Bruno Blanchet) pag 18}
\begin{eqnarray}
	|alpha(mu f) <= mu((shp f))|
\end{eqnarray}
which is easy to calculate:
\begin{eqnarray*}
\start
	|alpha(mu f) <= mu(alpha.f.gamma)|
%
\just\equiv{rolling rule}
%
	|alpha(mu f) <= alpha(mu(f.gamma.alpha)|
%
\just\implied{monotonicity}
%
	|mu f <<= mu(f.gamma.alpha)|
%
\just\implied{monotonicity}
%
	|f (pw (<<=)) f.gamma.alpha|
%
\just\implied{|id (pw (<<=)) gamma.alpha|; monotonicity}
%
	|f (pw (<<=)) f|
\qed
\end{eqnarray*}
\fbox{TBC}

\fi % MESSY

\section{Bibliography notes}
\fbox{To be completed}

\chapter{Programming from Relational Hylomorphisms} \label{ch:990126i}

This chapter relates to chapter \ref{ch:990115a} in the same way as
chapter \ref{ch:120411a} relates to chapter \ref{ch:990122a}.
In essence, we wish to know how to address inductive (recursive) relations.
It turns out that the concept of (functional) catamorphism extends relation-wise
in a very smooth way, starting from (\ref{eq:cataUniv-rel}) below.
But the richer algebra of relations enables us with a far wider treatment of
recursion. In particular,
we shall show how recursive programs arise as special cases of inductive relations.

Take the relation |S| in exercise \ref{ex:180805a} as the \emph{specification} of
\emph{sorting}. As the function |bag| that yields the multiset of elements of
a finite list can be expressed as a catamorphism,
\begin{eqnarray*}
\start	|bag [] = const 0|
\more	|bag (a:x) = bag x `oplus` a|
\end{eqnarray*}
for |(f `oplus` a) x = f x + (if x = a then 1 else 0)|,
then it comes to mind that, somehow,
\begin{eqnarray}
	|Perm = syd bag bag|
	\label{eq:160118b}
\end{eqnarray}
--- the \emph{permutes} equivalence relation among finite lists ---
should be expressible inductively over finite lists too.
We show this to be true and a special case of a much wider
setting in programming from (formal) specifications.

\section{Relational catamorphisms}
Recall from section \ref{sec:081203a} the notion of a \emph{relator} |fF|,
that is, a mathematical construction such that, for any type |A|, type |fF A|
is defined and for any relation |R: B <- A|, relation
|fF R :  fF B <-  fF A | is defined such that
|fF id = id|, |fF (conv R) = conv((fF R))| and
|fF(R . S) = (fF R) . (fF S)|.

Any relation |R:  A <-  fF A | is said to be a (relational) \emph{|fF|-algebra}.
Special cases include functional |fF|-algebras and, among these, those that
are isomorphisms. Within these, the so-called \emph{initial} |fF|-algebras, say
|inF : fT <- fF fT|, are such that, given any other |fF|-algebra |R: A <- fF A|,
there is a unique relation of type |A <- fT|, usually written |cata R|,
such that |cata R . inF = R . fF(cata R)| holds.

Type |fT| (often denoted by |muF| to express its relationship with the base
relator |fF|) is also referred to as \emph{initial}. The meaning of such
relations |cata R|, usually referred to as \emph{catamorphisms}, or
\emph{folds}, is captured by the \emph{universal property}:\footnote{\label{fn:200205f}
As will be seen in section \ref{sec:210115b},
relational catamorphisms can be shown to arise from functional ones via the
often called \emph{Eilenberg-Wright Lemma}, itself a consequence of the
adjoint catamorphism construction (\ref{eq:200204f}).}
% via the powerset monad which stems from adjunction (\ref{eq:040201a}).}
\begin{eqnarray}
	|X = cata R| & \wider\equiv & |X . inF = R . (fF X)|
	\label{eq:cataUniv-rel}
\end{eqnarray}
Functor (relator) |fF| captures the recursive pattern of type |fT|.
For instance, for |fT=Nat| one has
\begin{eqnarray}
	|lcbr (
	fF X = 1 + X
	)(
	fF f = id + f
	)|
\end{eqnarray}
as we have seen in previous chapters.

Let us see an example of relational catamorphism,
\begin{eqnarray}
	|(>=) = cata(either top succ)|
	\label{eq:081008b}
\end{eqnarray}
the |larrow Nat (>=) Nat| relation on the natural numbers:
%
\begin{eqnarray*}
\xymatrix@@R=2.1ex{
        \N_0
		\ar[dd]_-{|(>=)|}
		\ar@@/^1pc/[rr]^-{|inF|°}
&
	\iso
&
	1 + \N_0
		\ar[dd]_-{id+|(>=)|}
		\ar@@/^1pc/[ll]^-{|inF|}
\\
&
	%supseteq
\\
        \N_0
&
&
	1 + \N_0
		\ar[ll]^-{|either top succ|}
}
&&
	|(>=) . inF = either top succ . (id + (>=))|
\end{eqnarray*}
Note how |(>=)| compares with |cata inF = cata (either zero succ) = id| --- the base case
|zero| expands as much as possible to the largest relation |top| of its type (|larrow 1 () Nat0|).

Let us see what comes out of this catamorphism once rendered into
pointwise notation:
\begin{eqnarray*}
\start
	|(>=) . inF = either top succ . (id + (>=))|
%
\just\equiv{ |inF = either zero succ|; coproducts }
%
	|either ((>=) . zero)((>=).succ) = either top (succ . (>=))|
%
\just\equiv{ coproducts again }
%
	|lcbr((>=) . zero = top)
             ((>=).succ = succ . (>=))|
%
\just\equiv{ go pointwise }
%
	|lcbr(y >= 0 <=> True)
             (y >= x +1 <=> y(succ . (>=))x|
%
\just\equiv{ go pointwise }
%
	|lcbr(y >= 0 <=> True)
             (y >= x +1 <=> (rcb exists z (y = z+1)(z>= x)))|
%qed
\end{eqnarray*}
We get |(>=)| defined inductively over the natural numbers.

The cancellation law
\begin{eqnarray}
	|cata R = R . fF (cata R) . (conv inF)|
	\label{eq:xxx-a}
\end{eqnarray}
arises immediately from (\ref{eq:cataUniv-rel}) and the fact that the initial
algebra |larrow (fF muF) inF muF| is an isomorphism. By indirect equality
over (\ref{eq:xxx-a}) we get:
\begin{eqnarray*}
\start
	|X atmost (cata R)|
%
\just\equiv{ cancellation }
%
	|X atmost R . fF (cata R) . (conv inF)|
%
\just\implied{ since |X atmost (cata R)|; monotonicity of |fF| }
%
	|X atmost R . fF X . (conv inF)|
%qed
\end{eqnarray*}
That is:
\begin{eqnarray}
	|X atmost (cata R)|
	& \implied &
	|X atmost R . (fF X) . (conv inF)|
	\label{eq:190508c}
\end{eqnarray}
Similarly:
\begin{eqnarray}
	|cata R atmost X|
	& \implied &
	|R . fF X . (conv inF) atmost X|
	\label{eq:190508b}
\end{eqnarray}
Note that the cancellation law (\ref{eq:xxx-a}) expresses |cata R| as solution (fixpoint) to the equation
\begin{quote}
 |X = R . fF X . (conv inF)|.
\end{quote}
Law (\ref{eq:190508c}) --- resp.\ (\ref{eq:190508b}) --- tells that it is the greatest post-fixpoint --- resp.\ least pre-fixpoint --- of such an equation. Thus it is its unique solution.\footnote{Cf.\ the Knaster-Tarski fixpoint theorem.}

As expected, the relational catamorphism combinator is monotonic:
\begin{eqnarray}
	|cata R atmost (cata S)| & \wider\implied & |R atmost S|
	\label{eq:191022a}
\end{eqnarray}
This follows almost immediately from the above:
\begin{eqnarray*}
\start
	|cata R atmost (cata S)|
%
\just\implied{ (\ref{eq:190508b}) ; isomorphism |inF| }
%
	|R . fF (cata S) atmost (cata S) . inF|
%
\just\equiv{ cancellation }
%
	|R . fF (cata S) atmost S . fF (cata S)|
%
\just\implied{ monotonicity of composition }
%
	|R atmost S|
\qed
\end{eqnarray*}
By reflection |cata inF = id| and successively making |S := inF|, then |R
:= inF| in (\ref{eq:191022a}) we get sufficient conditions for catamorphisms
being coreflexive and reflexive:
\begin{eqnarray}
	|cata R atmost id| & \wider\implied & |R atmost inF|
	\label{eq:191023a}
\\
	|id atmost (cata S)| & \wider\implied & |inT atmost S|
\end{eqnarray}
Thus |(>=)| is reflexive, recall (\ref{eq:081008b}).

Can we calculate the converse |(<=) = conv((>=))| from its defining catamorphism (\ref{eq:081008b})?
By taking converses over cata-cancellation (\ref{eq:xxx-a}) we get:
\begin{eqnarray*}
\start
|
        (>=) = cataList(either top succ)
|
\just\equiv{ catamorphism; converses }
|
        (<=) = inT . (id + (<=)) . conv (either top succ)
|
\end{eqnarray*}
Can this be converted to a catamorphism? We reason:
\begin{eqnarray*}
\start
|
        (<=) = inT . (id + (<=)) . conv (either top succ)
|
\just\equiv{ |inT = either zero succ|; coproducts, including (\ref{eq:060303c}) }
|
 	(<=) = cup (zero . top) (succ  . (<=) . conv succ)
|
\just\equiv{ |top . f = top| ; |succ = inT . i2| }
|
	(<=) = cup (zero . top . conv inT) (succ  . (<=) . conv i2 . conv inT)
|
\just\equiv{ linearity ; |inT| is an isomorphism }
|
	(<=) . inT = cup (zero . top) (succ  . (<=) . conv i2)
|
\just\equiv{ |either bot R = R . conv i2| ; |+|-absorption }
|
	(<=) . inT = cup (zero . top) (either bot succ  . (id + (<=))
|
\just\equiv{ |top = top . R| for entire |R| }
|
	(<=) . inT = ((cup (zero . top) (either bot succ)) . (id + (<=))
|
\just\equiv{ drop |top| by making |zero = const 0|  polymorphic; |either (const k)(const k) = const k| }
|
	(<=) . inT = ((cup (either zero zero) (either bot succ)) . (id + (<=))
|
\just\equiv{ |cup (either R S) (either X Y) = either (cup R X)(cup S Y)| }
|
	(<=) . inT = either zero (cup zero succ) . (id + (<=))
|
\just\equiv{ catamorphism }
|
	(<=) = cata (either zero (cup zero succ))
|
\end{eqnarray*}
%We reason ("ping"):
%\begin{eqnarray*}
%\start
%	|cata R atmost (conv((>=))|
%%
%\just\implied{ (\ref{eq:190508b}) }
%%
%	|R . fF (conv((>=))) . (conv inT) atmost (conv((>=))|
%%
%\just\equiv{ take converses }
%%
%	|inT . fF (>=) . (conv R) atmost (>=)|
%%
%\just\equiv{let |R = either Q S|}
%%
%	|either zero (succ.(>=)) . (conv(either Q S)) atmost (>=)|
%%
%\just\equiv{ (\ref{eq:060303c}) ; (\ref{eq:071114a}) }
%%
%	|lcbr(zero.(conv Q) atmost (>=))(succ.(>=).(conv S) atmost (>=))|
%\qed
%\end{eqnarray*}
%Since we are constrained to using the components |zero| or |succ| of the Peano
%algebra, we are led to |Q,S := zero, (cup zero succ)|. Note that |S := succ| wouldn't work because |(<=)| should be larger than the identity. Summing up:
%\begin{eqnarray}
%	|cata (either zero (cup zero succ)) atmost (<=)|
%\end{eqnarray}
%Now the ``pong":
%\begin{eqnarray*}
%\start
%	|(<=) atmost (cata(either zero (cup zero succ)))|
%%
%\just\implied{ (\ref{eq:190508c}) ; converses }
%%
%%	|(<=)  atmost (either zero (cup zero succ)) . fF(<=) . (conv inT)|
%%
%%just\equiv{}
%%
%	|(>=) atmost inT . fF(>=) . conv(either zero (cup zero succ))|
%%
%\just\equiv{ catamorphism |(>=)| }
%%
%	|either top succ . fF(>=). (conv inT) atmost inT . fF(>=) . conv(either zero (cup zero succ))|
%%
%\just\equiv{ |fF (>=) = id + (>=)| }
%%
%	|cup (top.conv zero)(succ . (>=). (conv succ)) atmost
%	(lcbr(
%         	zero.conv zero `cup`  succ.(>=).conv zero `cup`
%	)(
%		succ.(>=).conv succ
%	))|
%%
%\just\implied{ |zero . top = zero|; cancel |succ.(>=).conv succ|}
%%
%	|conv zero atmost
%         (cup (zero.conv zero)(succ.(>=).conv zero))|
%%
%\just\implied{ |(>=)| necessarily reflexive }
%%
%	|conv zero atmost (cup (zero.conv zero)(succ.conv zero))|
%%
%\just\equiv{ (\ref{eq:060303c});  |inT = either zero succ|; |either (const k) (const k) = const k|; shunting |conv zero| }
%%
%	|id atmost inT . (conv zero) . zero|
%%
%\just\equiv{ shunting |inT = conv out|; kernel of constant function }
%%
%	|out atmost top|
%\qed
%\end{eqnarray*}
%Putting 'ping' and 'pong' together we have
Thus we get
\begin{eqnarray}
|
	(<=) = cata(either zero (cup zero succ))
|
	\label{eq:xxxk}
\end{eqnarray}
that is (in pointwise notation):
\begin{eqnarray*}
|
lcbr(
	y <= 0 <=> y = 0
)(
	y <= n+1 <=> y = 0 |||| rcb exists m (y = m+1)(m <= n)
)
|
\end{eqnarray*}

\begin{exercise}
Consider the following inductive definitions of two orderings on sequences:
prefix
\begin{eqnarray}
\start
    |pref : (Seq A) <- (Seq A)| \nonumber
\more
    |pref = cata(either nil (cup cons nil))|
	\label{eq:210107a}
\end{eqnarray}
and subsequence:
\begin{eqnarray}
\start
	|subseq : (Seq A) <- (Seq A)| \nonumber
\more
	|subseq = cata(either nil (cup cons p2))|
	\label{eq:201227a}
\end{eqnarray}
(a) Show that both orderings are reflexive;
(b) Show that (\ref{eq:201227a}) is equivalent to the pointwise 
\begin{eqnarray*}
	|lcbr(
		y subseq [] <=> y = []
	)(
		y subseq (h:t) <=> rcb exists t' (t' subseq t)(y = (h:t') |||| y = t')
	)|
\end{eqnarray*}
(c) Derive a similar pointwise version for (\ref{eq:210107a}). 
\end{exercise}

\begin{exercise}
By a process similar to the derivation of (\ref{eq:xxxk}) from (\ref{eq:081008b}), calculate the converse of 
(\ref{eq:210107a}):
\begin{eqnarray}
|
	conv ((pref)) = cata(either top cons)
|
\end{eqnarray}
\def\resolucao{
\begin{eqnarray*}
\start
|
        (pref) = cata (either nil (cup nil cons))
|
\just\equiv{ catamorphism }
|
        (pref) . inT = either nil (cup nil cons) . (id + (id>< (pref))
|
\just\equiv{ |cup (either R S) (either X Y) = either (cup R X)(cup S Y)| }
|
        (pref) . inT = ((cup (either nil nil) (either bot cons)) . (id + (id>< (pref))
|
\just\equiv{ drop |top| by making |nil = const 0|  polymorphic; |either (const k)(const k) = const k| }
|
        (pref) . inT = ((cup (nil . top) (either bot cons)) . (id + (id>< (pref))
|
\just\equiv{ |top = top . R| for entire |R| }
|
        (pref) . inT = cup (nil . top) (either bot cons  . (id + (id>< (pref))
|
\just\equiv{ |either bot R = R . conv i2| ; |+|-absorption }
|
        (pref) . inT = cup (nil . top) (cons  . (id>< (pref)) . conv i2)
|
\just\equiv{ linearity ; |inT| is an isomorphism }
|
        (pref) = cup (nil . top . conv inT) (cons  . (id>< (pref)) . conv i2 . conv inT)
|
\just\equiv{ |top . f = top| ; |cons = inT . i2| }
|
        (pref) = cup (nil . top) (cons  . (id>< (pref)) . conv cons)
|
\just\equiv{ |inT = either nil cons|; coproducts, including (\ref{eq:060303c}) }
|
        (pref) = inT . (id + (id>< (pref))) . conv (either top cons)
|
\just\equiv{ take converses }
|
        (conv((pref))) . inT  = (either top cons) . (id + (id>< (conv((pref))))) 
|
\just\equiv{ catamorphism }
|
        conv((pref)) = cata (either top cons)
|
\end{eqnarray*}
}
\end{exercise}

\paragraph{Cata-fusion}
Further to cancellation, which can also be written
\begin{eqnarray}
	|cata R . inF| &=& |R . fF (cata R)|
	\label{eq:150402b}
\end{eqnarray}
another property stems from (\ref{eq:cataUniv-rel}) that proves particularly
useful in calculations about |cata R|:
\begin{eqnarray}
	|S . (cata R) = (cata Q)| & \wider\implied & |S . R = Q . fF S|
	\label{eq:150402a}
\end{eqnarray}
This is known as the \emph{fusion} property.
Fusion is particularly helpful in the sense of finding a sufficient condition
on |S|, |R| and |Q| for merging |S . (cata R)| into |cata Q|. In the words
of \cite{BM97}, law (\ref{eq:150402a}) \emph{is probably the
most useful tool in the arsenal of techniques for program derivation}.

Let us see cata-fusion at work in proving that |(>=)| is transitive:
\begin{eqnarray*}
&&
	|(>=).(>=) atmost (>=)|
%
\just\implied{ ping-pong }
	|(>=).(>=) = (>=)|
%
\just\equiv{ definition (\ref{eq:081008b}) twice }
%
	|(>=) . (cata (either top succ)) =  (cata (either top succ))|
%
\just\implied{ cata-fusion (\ref{eq:150402a}) }
%
	|(>=) . (either top succ)| = |either top succ . (id + (>=))|
%
\just\equiv{ |(>=).top=top|; coproducts (\ref{eq:081008c}), etc) }
%
	|(>=) . succ =  succ . (>=)|
%
\just\equiv{cancellation (\ref{eq:150402b}) }
%
	\true
%
\end{eqnarray*}
Note that |(>=).top=top| because |(>=)| is reflexive --- just replace |(>=)| by |id| in |top atmost (>=).top|.

From (\ref{eq:190508c}, \ref{eq:190508b}) two ``weaker" versions of cata-fusion
can be easily derived:
\begin{eqnarray}
	|Q . (cata S) atmost (cata R)|
	& \implied &
	|Q . S atmost R . fF Q |
	\label{eq:r-cata-fusion-falta}
\\
	|cata R atmost Q . (cata S)|
	& \implied &
	|R . fF Q atmost Q . S|
	\label{eq:r-cata-fusion-falta'}
\end{eqnarray}
These are also quite useful in calculations. Consider, for instance, that |R| in |cata R| is injective, that is, |conv R . R atmost id|. Will |cata R| be injective too? We calculate:
\begin{eqnarray*}
\start
	|conv(cata R). (cata R) atmost id|
%
\just\equiv{ cata reflection }
%
	|(conv(cata R)) . (cata R) atmost (cata inT)|
%
\just\implied { relational cata-fusion (\ref{eq:r-cata-fusion-falta}) }
%
	 |(conv(cata R)) . R atmost inT . fF (conv(cata R)) |
%
\just\equiv{ cata-cancellation (\ref{eq:xxx-a}) ; converses  }
%
	 |inT . fF (conv(cata R)) . (conv R) . R atmost inT . fF (conv(cata R)) |
%
\just\implied{ cancel |inT . fF (conv(cata R))| }
%
	 |conv R . R atmost id|
%
\end{eqnarray*}
Thus injectivity is preserved by the relational catamorphism combinator.

\begin{exercise}
Adapt the previous argument to proving that |cata R| is entire provided |R|
is entire, now using the other relational cata-fusion law
(\ref{eq:r-cata-fusion-falta'}).
\end{exercise}

\begin{exercise}
As follow up to exercise \ref{ex:240531g} (page \pageref{ex:240531g}) show that
|unzip| is injective. % amounts to showing that |mu = split (p1 >< p1) (p2 >< p2)| is injective, which is actually a bijection.
\end{exercise}

\section{Relational hylomorphisms}
Given |fF|-algebras |R: A <- fF A| and |S: B <- fF B|, the composition
\begin{eqnarray}
	|H=cata R . (conv (cata S))|
\end{eqnarray}
of type |A<-B|, is usually referred to as a \emph{hylomorphism} \cite{BM97}.
As an example, define |delta = either id id|. Then the |(1+)|-hylomorphism
\begin{quote}
|H = cata(Q . delta) . (conv(cata delta))|
\end{quote}
is known as the transitive closure of |Q|, usually denoted by $Q^{+}$, cf:
\begin{eqnarray*}
\start
	|X = (either Q Q) . (id + X) . (conv(either id id))|
%
\just\equiv{ relational coproducts }
%
	|X = either Q (Q . X) . (conv(either id id))|
%
\just\equiv{ relational coproducts }
%
	|X = cup Q (Q . X)|
%
\end{eqnarray*}

The intermediate type |muF| generated by |conv (cata S)| and consumed by
|cata R| is known as the \emph{virtual data structure} \cite{SM93} of the
hylomorphism. This is regarded as the basis of so-called \emph{divide-and-conquer} programming
strategies. The opposite composition |conv(cata S).(cata R)|, for suitably
typed |S| and |R|, is sometimes termed a \emph{metamorphism} \cite{Gi07} or \emph{metaphorism} \cite{Ol17}.

\begin{figure}
\centering
	\includegraphics[width=0.7\textwidth]{dc.jpg}
	%the policy of maintaining control over one's subordinates or subjects by encouraging dissent between them.
	\caption{\small The divide \& conquer programming metaphor.}
\end{figure}

It can be shown that |H=cata R . (conv (cata S))| is the least solution
(fixpoint) of the relational equation |X = R . (fF X) . (conv S)| --- details in the following paragraph.

\paragraph{Fixpoints.} Let |psi| be a monotonic, relation-valued function.
Any solution to the equation |X = psi X| is usually termed a \emph{fixpoint} of |psi|,
and any solution to the equation |psi X atmost X| a \emph{pre-fixpoint} of |psi|.
The least fixpoint of |psi| is usually denoted by |mu psi|.
It can be shown \footnote{See e.g.\ \cite{Ba04a}.} that |mu psi| satisfies
\begin{eqnarray}
	|mu psi atmost X| & \wider{|<=.|} & |psi X atmost X|
	\label{eq:190508a}
\end{eqnarray}
that is, |mu psi| is also the least pre-fixpoint of monotonic function |psi|.
As an example, from (\ref{eq:190508b}) we see that |cata R| is the least pre-fixpoint of
	|psi X = R . fF X . (conv inT)|.
Define:
\begin{eqnarray*}
	|psi X = R . fF X . (conv S)|
\end{eqnarray*}
Below we show that
|mu psi = cata R . (conv (cata S))|, via (\ref{eq:190508a}):
\begin{eqnarray*}
\start
	|cata R . (conv (cata S)) atmost X|
%
\just\equiv{ cancellation of both catamorphisms; converses }
%
	|R . fF(cata R) . (conv inT) . inT . fF(conv(cata S)) . (conv S) atmost X|
%
\just\equiv{ |conv inT . inT = id|; relator |fF| }
%
	|R . fF(cata R . (conv(cata S))) . (conv S) atmost X|
%
\just\implied{ since |cata R . (conv (cata S)) atmost X|; relator |fF|; monotonicity }
%
	|R . fF X . (conv S) atmost X|
\qed
\end{eqnarray*}
\def\otherproof{\begin{eqnarray*}
\start
	|cata R . (conv (cata S)) atmost X|
%
\just\equiv{ division (\ref{eq:100707a}) }
%
	|cata R atmost X / (conv(cata S))|
%
\just\implied{ (\ref{eq:190508b}) }
%
	|R . fF (X / (conv(cata S))) . (conv inT)  atmost X / (conv(cata S)) |
%
\just\equiv{ division and converses }
%
	|R . fF (X / (conv(cata S))) atmost X / conv((cata S . inT))|
%
\just\equiv{ cata cancellation ; division; converses; relator |fF| }
%
	|R . fF (X / (conv(cata S))) . fF(conv(cata S)) . (conv S)  atmost X|
%
\just\implied{ |fF (R . S) = fF R . fF S|; division cancellation; monotonicity}
%
	|R . fF X . (conv S)  atmost X|
%
\end{eqnarray*}}
In summary:
\begin{eqnarray}
	|cata R . (conv (cata S)) atmost X| & \implied & |R . fF X . (conv S)  atmost X|
	\label{eq:200828a}
\end{eqnarray}
Thus |cata R . (conv (cata S))| is the least pre-fixpoint of |psi|, and therefore
its least fixpoint (solution). The following notation dispenses with naming |psi|
explicitly:
\begin{eqnarray}
	|rcb mu X () (R . fF X . (conv S)) = cata R . (conv (cata S))|
	\label{eq:200827a}
\end{eqnarray}

Note how (\ref{eq:200828a}) generalizes (\ref{eq:190508b}), by reflection (|S=inT|).
Similarly,
\begin{eqnarray}
	|X atmost (cata R) . (conv (cata S))| & \implied & |X atmost R . fF X . (conv S)|
	\label{eq:200830a}
\end{eqnarray}
will generalize (\ref{eq:190508c}).
Finally note that the image |cata R . (conv (cata R))| of a catamorfism
is a hylomorphism. By straight application of (\ref{eq:200828a},\ref{eq:200830a}) we obtain
\begin{eqnarray*}
	|cata R . (conv (cata R)) atmost id| & \implied & |R . (conv R)  atmost id|
\\
	|id atmost (cata R) . (conv (cata R))| & \implied & |id atmost R . (conv R)|
\end{eqnarray*}
Thus catamorphisms preserve simplicity and surjectivity.

\section{Inductive predicates}
Coreflexive catamorphisms (\ref{eq:191023a}) correspond to inductive predicates
over the inductive structure |muF|. The smallest such catamorphism is |bot|,
\begin{eqnarray*}
	|bot = cata R| & \wider\equiv & |bot = R . (fF bot)|
\end{eqnarray*}
cf. (\ref{eq:cataUniv-rel}). Such is the case of |cata (either bot succ)|,
for instance, since |either bot succ . (id + bot) = bot|.

A standard way of encoding inductive predicates is to pre-condition the initial
algebra |inF|,
\begin{eqnarray*}
	|crflx() = cata(inF.crflx p)|
\end{eqnarray*}
for some predicate |larrow (fF muF) p Bool|.
For instance, |p = either true (even.p1)| over |fF X = 1 + Nat >< X| will
let lists of even natural numbers pass, failing otherwise.

Another example of inductive predicate on finite lists
is |vPsi = cata(inF.(id + crflx p)| where
|p(a,x) = rcb forall a' (a' ins elems x)(a <= a')|,
which fails for any input list which is not in ascending order.

\emskip

\begin{exercise}\label{ex:csi2021q12'}
Recall the functional catamorphism
\begin{code}
map f : Seq A -> Seq A
map f = cata(either nil (cons .(f >< id)))
\end{code}
Now replace |f| by coreflexive |crflx p|:
\begin{code}
sbs X p : Seq A -> Seq A
sbs X p = cata(either nil (cons .(crflx p >< id)))
\end{code}
Which relation is this? Further generalize |crflx p| to some |R : A -> B|: which relation is |cata(either nil (cons .(R >< id)))| and what's its type?
\\ \textbf{Hint}: recall sections \ref{sec:120522a} and \ref{sec:081203a}.
\end{exercise}

\section{Inductive equivalence relations}
This section focusses on equivalence relations over
inductive data types. Let |larrow (fF muF) inF muF|, and  let |larrow (fF A) k A| be given,
so that |larrow muF (cata k) A|.
It turns out that not only is |R= syd (cata k)(cata k)| itself a relational catamorphism
\begin{eqnarray*}
	|R = cata (R . inF)|
\end{eqnarray*}
of type |larrow muF () muF|,
but also it is a \emph{congruence} for the algebra |inF|.
%footnote{The |Perm| equivalence relation is an example of this, recall (\ref{eq:160118b}).}
This follows from the following results:
\begin{itemize}
\item	
%paragraph{|fF|-congruences}
%begin{theorem}[|fF|-congruences]\label{th:150327a}
Let |R| be a congruence for an algebra |h: fF A -> A| of functor |fF|, that is,
relational type
\begin{eqnarray}
|larrow (fF R) h R|
%	|h.(fF R) atmost R . h| & ~~ i.e. ~~ &
%	 |y(fF R)x => (h y) R (h x)|
	\label{eq:150326a}
\end{eqnarray}
holds and |R| is an equivalence relation.
Then (\ref{eq:150326a}) is equivalent to:
\begin{eqnarray}
	|R . h = R . h . (fF R)|
	\label{eq:150326b}
\end{eqnarray}
\item
For the particular case |h = inF|, (\ref{eq:150326b}) is equivalent to:
\begin{eqnarray}
	|R = cata (R . inF)|
	\label{eq:160118c}
\end{eqnarray}
\item
For |R| presented as a kernel |R = syd f f|, (\ref{eq:150326a}) is also equivalent to
\begin{eqnarray}
	|f . h <= fF f|
	\label{eq:160120c}
\end{eqnarray}
where |<=| is the injectivity preorder (\ref{eq:041217a}).
\footnote{Proof:
Equality (\ref{eq:160118c}) follows immediately from (\ref{eq:150326b})
by cancellation (\ref{eq:150402b}). Next we show the equivalence
between (\ref{eq:150326b}) and (\ref{eq:150326a}):
\begin{eqnarray*}
\start
	|R . h = R . h . (fF R)|
%
\just\equiv{|R . h atmost R . h . (fF R)| holds by |sse id (fF R)|, since |sse id R|}
%
	|R . h . (fF R) atmost R . h|
%
\just\equiv{ |(R .)| is a {closure} operation, see (\ref{eq:060613c-modified})  below}
%
	|h . (fF R) atmost R . h|
\qed
\end{eqnarray*}
The last step relies on the fact that composition with equivalence relations is a \emph{closure}
operation:
\begin{eqnarray}
	 R \comp S \subseteq R \comp Q & \equiv & S \subseteq R \comp Q
	\label{eq:060613c-modified}
\end{eqnarray}
}
\end{itemize}

A standard result in algebraic specification states that if a function |f|
defined on an initial algebra is a catamorphism then |syd f f| is a congruence
\cite{EM85,Gi16}. We give below a proof
that frames this result in the ones above by making
|R = syd(cata k)(cata k)| in (\ref{eq:160118c}) and calculating:
\begin{eqnarray*}
\start
	|syd(cata k)(cata k) = cata (syd(cata k)(cata k) . inF)|
%
\just\equiv{ universal property (\ref{eq:cataUniv-rel}) ; function division (\ref{eq:160118d}) }
%
	|syd(cata k . inF)(cata k) = syd(cata k . inF)(cata k) . (syd (fF(cata k))(fF(cata k)))|
%
\just\equiv{ cancellation (\ref{eq:150402b}) ; |f.(syd f f)=f|}
%
	|syd(cata k . inF)(cata k) = syd(k . fF(cata k))(cata k)|
%
\just\implied{ Leibniz }
%
	|cata k . inF = k . fF(cata k)|
%
\just\equiv{ universal property (\ref{eq:cataUniv-rel}) }
%
	|true|
\qed
\end{eqnarray*}
For example, in the case |R=Perm| (\ref{eq:160118b}), (\ref{eq:160118c}) instantiates to
\begin{eqnarray*}
	|Perm . inF| = |Perm . inF . (F Perm)|
	%label{eq:150119b}
\end{eqnarray*}
whose useful part is:
\begin{eqnarray}
|Perm . cons = Perm . cons . (id >< Perm)|
	\label{eq:150328c}
\end{eqnarray}
In words, this means that permuting a sequence with at least one element
is the same as adding it to the front of a permutation of the tail and permuting
again.\footnote{
Recall the (Kronecker) \emph{product} (\ref{eq:960923c-rel}):
|(b,d)(R >< S)(a,c)| holds iff both |b R a| and |d S c| hold.
 Thus (\ref{eq:150328c}) is the same as
\[
	y\ Perm\ (a:x) = \rcb\exists z {z\ Perm\ x}{y\ Perm\ (a:z)}
\]
once written pointwise.}

The main usefulness of (\ref{eq:150326b},\ref{eq:160118c}) is that the inductive
definition of a kernel equivalence relation generated by a catamorphism is such
that the recursive branch (the |fF| term) can be added or removed where convenient.
%as shown in the sequel.

\section{Inductive datatype isomorphism revisited} \label{sec:200922b}
Recall section \ref{sec:conversion} where properties of catamorphisms involving
inductive types on both their input and output were considered. In particular, given
two parametric, inductive datatypes
\begin{eqnarray*}
	|arIso (fT1 A) (fB1(A,fT1 A)) inT1 outT1|
\end{eqnarray*}
and
\begin{eqnarray*}
	|arIso (fT2 A) (fB2(A,fT2 A)) inT2 outT2|
\end{eqnarray*}
one would like to be able to decide whether |fT1| and |fT2| are isomorphic, that is, whether they can be mutually converted into each other without losing information.

Think of a function |f : fT1 A -> fT2 A| converting |fT1|-shaped data into
|fT2|-shaped data, for instance, |f : BTree A -> Seq A|. Clearly, |f| is
bound to access |fT1|-shaped data via |outT1| and to generate |fT2|-shaped
data via |inT2|, inductively:
\begin{eqnarray*}
	|f = inT2 . ... f ... . outT1|
\end{eqnarray*}
Looking at the types of |inT2| and |outT1|, it is clear that one needs a bridge-function |alpha| between the base functors of the two inductive types. Using a diagram:
\begin{eqnarray*}
\xymatrix{
	|fT1 A|
		\ar[d]_{|f|}
		\ar[rr]^{|outT1|}
&
&
	|fB1(A,fT1 A)|
		\ar[d]^{|fB1(id,f)|}
\\
	|fT2 A|
&
	|fB2(A,fT2 A)|
		\ar[l]^{|inT2|}
&
	|fB1(A,fT2 A)|
		\ar[l]^{|alpha|}
}
\end{eqnarray*}
Clearly, |f = cata(inT2.alpha)|. In the example |f : BTree A -> Seq A|,
\begin{quote}
	|larrow (1 + A >< (Seq A >< Seq A)) alpha (1 + A >< Seq A)|
\end{quote}
is the expected function that concatenates the two lists resulting from visiting the two sub-trees of a nonempty |BTree|.
And |f| is the preorder traversal of the input tree.

It is intuitive that |f| loses information: the best |alpha = id + id >< ...| can do to preserve information is to concatenate the two lists in the "...". But, from the resulting list one cannot rebuild the original lists, since concatenation is not injective, for instance: |[a,b] ++ [c] = [a] ++ [b,c]|. Choosing one the input lists would be worse and issuing the empty list would be even worser.

How can one be sure that |f| is a bijection (isomorphism)? Recall the rule of thumb (\ref{eq:070515b}) that tells us that a function |f| is bijective iff |conv f| is a function. |conv f = conv(cata(inT2.alpha))| thus needs to be entire and simple, that is, |cata(inT2.alpha)| should be surjective and injective. Since catamorphisms preserve these properties, it will be enough if |inT2.alpha| is surjective and injective, which reduces to |alpha| being so, because |inT2| is bijective.

In summary, a bijective |alpha| will ensure that the two inductive types are isomorphic.
In case |alpha| is a natural transformation, this corresponds to the base functors |fB1| and |fB2| being isomorphic.

\section{The Eilenberg-Wright Lemma} \label{sec:210115b}
Recall the power transpose isomorphism (\ref{eq:040201a}) 
\begin{eqnarray*}
\myxym{
|A -> fP B|
	\ar@@/^1pc/[rr]^-{|(ins.)|}
&
\iso
&
|A -> B|
	\ar@@/^1pc/[ll]^-{|`pT`|}
}
\end{eqnarray*}
expressed by
	|f = pT R <=> ins . f = R|.
This isomorphism can be interpreted as an adjunction (\ref{eq:170429c})
between set-valued functions (on the left handside) and binary relations (on the right handside) where
\begin{eqnarray*}
\start	|fR = fP|
\more	|fL X = X|
\more	|fL f = f|
\more	|ceil R = pT R|
\more	\mbox{|ins| is the membership relation}
\end{eqnarray*}
Read |fL f = f| with care, as |f| on the left handside is a function and |f| on the right handside is the corresponding relation |y f x <=> y = f x| (\ref{eq:131015a}).
This leads to the following instance of diagram (\ref{eq:180526a}):
\begin{eqnarray}
|k = pT R| \wider\equivalent |R = underbrace (ins . k)(floor k)|
&&
        \myxym{
	|fP B|
&
	|fP B|
	\ar[r]^{|ins|}
&
B
\\
A
	\ar[u]^{|k= pT R|}
&
	|A|
	\ar[u]^{|k|}
	\ar[ru]_{R}
}
	\label{eq:180526a'}
\end{eqnarray}

Recall the adjoint catamorphism theorem (\ref{eq:200204f}):
\begin{eqnarray*}
	|f . (fL inT) = h . fG f . phi| & |<=>| & |ceil f = cata(ceil(h . fG ins . phi))|
\end{eqnarray*}
What is the outcome of this theorem for adjunction (\ref{eq:170429c})?
Let us make the corresponding substitutions, using uppercase symbols to denote relations (as usual):
\begin{eqnarray}
	|X . inT = R . fG X . phi <=> pT X = cata(pT((R . fG ins . phi)))|
	\label{eq:210725a}
\end{eqnarray}
Because |fL| is a mere representation of functions by the corresponding relations (\ref{eq:131015a}), and in particular |fL X = X|, one may take |fG = fF| but with care: |fG| operates over relations and |fF| on functions. That is, |fG| is the relator extension of |fF| and |phi| is the corresponding embedding, and can thus be removed. Thus one gets:
\begin{eqnarray*}
	|X . inT = R . fG X <=> pT X = cata(pT((R . fG ins)))|
\end{eqnarray*}
Since |pT X = cata(pT((R . fG ins))) <=> X = ins.(cata(pT((R . fG ins)))| one may write
\begin{eqnarray}
	|X . inT = R . fG X <=> X = underbrace(ins.cata(pT((R . fG ins))))(cata R)|
	\label{eq:210108d}
\end{eqnarray}
thus extending ``banana-bracket" notation to relations and reaching (\ref{eq:cataUniv-rel}), where this chapter started from.

The equivalence
\begin{eqnarray}
	|X = cata R| & \equiv & |pT X = cata(pT((R . fG ins)))|
	\label{eq:210115a}
\end{eqnarray}
is known as the Eilenberg-Wright Lemma \cite{BM97}. The reasoning above shows that this lemma, which gives birth to relational catamorphisms, is yet another corollary of the adjoint catamorphism theorem. (\ref{eq:210115a}) gives one a path towards implementing relational catamorphisms as set-valued recursive functions. 
Quite often, however, (\ref{eq:210115a}) is not enough and the more general (\ref{eq:210725a}) is required. A simple example of this is the list membership relation, |larrow (Seq A) inl A|, defined by
\begin{code}
a inl [] = False
a inl (h:t) = (a = h) || a inl t 
\end{code}
which converts to the point-free
\begin{code}
inl . inT = either bot (cup p1 (inl . p2))
\end{code}
that is, the relational hylomorphism
\begin{quote}
|inl =	(underbrace (either bot (either id id)) R) .
	(underbrace (id + (id + inl)) (fG inl)) .
	(underbrace (id + ((cup (i1.p1)(i2.p2)))) vPhi) . outT
|
\end{quote}
where
	|vPhi : underbrace (1 + A >< Seq A) (fF (Seq A)) -> (underbrace (1 + (A + Seq A)) (fG (Seq A))|
and |R . fG inl . vPhi| factors |either bot (cup p1 (inl . p2))|, as above. By the adjoint catamorphism theorem (\ref{eq:210725a}):
\begin{eqnarray}
\start
	|pT inl = cata(pT(either bot (cup p1 (ins.p2))))|
	\nonumber
%
\just\equiv{ (\ref{eq:210220c}) etc }
%
	|pT inl = cata(either (pT bot) (pT((cup p1 (ins.p2)))))|
	\nonumber
%
\just\equiv{ hints below, then (\ref{eq:zzz}) }
%
	|pT inl = elems|
	\label{eq:210826a}
%
\end{eqnarray}
Hints: |pT bot = empty| and |pT((cup p1 (ins.p2))) = join|, cf.\ |pT ((cup R S)) a = { b || b R a |||| b S a } = cup ((pT R a)) ((pT S a))|, |pT ins = id| etc.

By (\ref{eq:180526a'}), |pT inl = elems| is the same as |inl = ins . elems|, which is a familiar way of expressing list membership: |a inl x <=> a ins elems x|.
 

\section{Bibliography notes}

The main source in the pointfree treatment of inductive relations is the textbook written by Bird and Moor \cite{BM97}.
The current chapter (which is still incomplete) also borrows material from \cite{Ol17}.

%chapter{Quasi-inductive datatypes} \label{sec:050419b}
%fbox{not given in the current version of this textbook}

\chapter{Calculational Program Refinement}\label{ch:dataRef}
\fbox{
\begin{minipage}{0.8\textwidth}
This chapter will build mainly from references \cite{OR06,Ol08a}.
\end{minipage}
}

%chapter{Relational thinking at work}
%fbox{not given in the current version of this textbook}

\part{Calculating with Matrices} \label{pt:20200922a}
\chapter{Towards a Linear Algebra of Programming}

\fbox{
\begin{minipage}{0.8\textwidth}
This part of the book will build upon references \cite{Ol12a,MuO15,OM15}.
Another chapter will address the application of typed linear algebra to
analytical data processing, cf.\ e.g.\ \cite{OM17}.
The LAoP Haskell library \cite{SO20} already supports typed linear algebra.
\end{minipage}
}

\appendix

\chapter{Background --- Eindhoven quantifier calculus} \label{ch:180926a}
This appendix is a quick reference summary of section 4.3 of reference \cite{Ba04a}.
\section{Notation}
The Eindhoven quantifier calculus adopts the following notation standards:
\begin{itemize}
\item
|rcb forall x R T| means: ``\emph{for \textbf{all} |x| in the range |R|, term |T| holds}", where |R|
and |T| are logical expressions involving |x|.
\item
|rcb exists x R T| means: ``\emph{for \textbf{some} |x| in the range |R|, term |T| holds}".
\end{itemize}

\section{Rules} \label{sec:180805b}
The main rules of the Eindhoven quantifier calculus are listed below:
\emskip
\textbf{Trading:}
\begin{eqnarray}
	\rcb\forall{k}{R \land S}T &=& \rcb\forall k R{S\implies T}
	\label{eq:180805c}
\\
	\rcb\exists{k}{R \land S}T &=& \rcb\exists k R{S \land T}
	\label{eq:141125a}
\end{eqnarray}
\textbf{de Morgan:}
\begin{eqnarray}
%
	\neg\rcb\forall{k}RT &=& \rcb\exists k R {\neg T}
	\label{eq:141005d}
\\
	\neg\rcb\exists{k}RT &=& \rcb\forall k R {\neg T}
	\label{eq:141005e}
%
\end{eqnarray}
\textbf{One-point:}
\begin{eqnarray}
	\rcb\forall k {k=e} T &=& T[k := e]
	\label{eq:130228b}
\\
	\rcb\exists k {k=e} T &=& T[k := e]
	\label{eq:141010c}
\end{eqnarray}
\textbf{Nesting:}
\begin{eqnarray}
	\rcb\forall {a,b} {R \land S} T &=& \rcb\forall a R {\rcb\forall b S T}
	\label{eq:111025a}
\\
	\rcb\exists {a,b} {R \land S} T &=& \rcb\exists a R {\rcb\exists b S T}
\end{eqnarray}
\textbf{Rearranging-$\forall$:}
\begin{eqnarray}
	\rcb\forall{k}{R \lor S}T &=& \rcb\forall k R T \land \rcb\forall k S T
\\
	\rcb\forall{k}R{T \land S} &=& \rcb\forall k R T \land \rcb\forall k R S
	\label{eq:130228a}
\end{eqnarray}
\textbf{Rearranging-$\exists$:}
\begin{eqnarray}
	\rcb\exists{k}R{T \lor S} &=& \rcb\exists k R T \lor \rcb\exists k R S
\\
	\rcb\exists{k}{R \lor S}T &=& \rcb\exists k R T \lor \rcb\exists k S T
\end{eqnarray}
\textbf{Splitting:}
\begin{eqnarray}
	\rcb\forall{j} R {\rcb\forall k S T} &=& \rcb\forall k {\rcb\exists j R S} T
	\label{eq:091125a}
	\label{eq:111025b}
\\
	\rcb\exists{j} R {\rcb\exists k S T} &=& \rcb\exists k {\rcb\exists j R S} T
\end{eqnarray}

\chapter{Haskell support library}\label{ch:Set.hs}
This library, written in the Haskell functional programming language, is
still evolving.

\small

\begin{code}
infix 5  ><
infix 4  -|-
\end{code}

\subsection*{ Products }

\begin{code}
split :: (a -> b) -> (a -> c) -> a -> (b,c)
split f g x = (f x, g x)

(><) :: (a -> b) -> (c -> d) -> (a,c) -> (b,d)
f >< g = split (f . p1) (g . p2)
\end{code}
The 0-adic split is the unique function of its type
\begin{code}
(!) :: a -> ()
(!) = const (())
\end{code}
Renamings:
\begin{code}
p1        = fst
p2        = snd
\end{code}

\subsection*{ Coproduct }
Renamings:
\begin{code}
i1      = Left
i2      = Right
\end{code}
Either is predefined:
\begin{code}
(-|-) :: (a -> b) -> (c -> d) -> Either a c -> Either b d
f -|- g = either (i1 . f) (i2 . g)
\end{code}
McCarthy's conditional:
\begin{code}
cond p f g = (either f g) . (grd p)
\end{code}

\subsection*{ Exponentiation }
Curry is predefined.
\begin{code}
ap :: (a -> b,a) -> b
ap = uncurry (($))
\end{code}
Functor:
\begin{code}
expn :: (b -> c) -> (a -> b) -> a -> c
expn f = curry (f . ap)
\end{code}
Pair-to-predicate isomorphism (\ref{eq:170429b}):
\begin{code}
p2p :: (b, b) -> Bool -> b
p2p p b = if b then (p2 p) else (p1 p)
\end{code}
The exponentiation functor is |(a->)| predefined:
\begin{spec}
instance Functor ((->) s) where
fmap f g = f . g
\end{spec}

\subsection*{ Guards }
\begin{code}
grd :: (a -> Bool) -> a -> Either a a
grd p x = if p x then i1 x else i2 x
\end{code}

\subsection*{ Others }
|const :: a -> b -> a| such that |const a x = a| is predefined.

\subsection*{ Natural isomorphisms }

\begin{code}
swap :: (a,b) -> (b,a)
swap = split p2 p1

assocr :: ((a,b),c) -> (a,(b,c))
assocr = split ( p1 . p1 ) (snd >< id)

assocl :: (a,(b,c)) -> ((a,b),c)
assocl = split ( id >< p1 ) ( p2 . p2 )

undistr :: Either (a,b) (a,c) -> (a,Either b c)
undistr = either ( id >< i1 ) ( id >< i2 )

undistl :: Either (b, c) (a, c) -> (Either b a, c)
undistl = either ( i1 >< id ) ( i2 >< id )

coswap :: Either a b -> Either b a
coswap = either i2 i1

coassocr :: Either ((Either a b)) c -> Either a ((Either b c))
coassocr = either (id -|- i1) (i2 . i2)

coassocl :: Either b ((Either a c)) -> Either ((Either b a)) c
coassocl = either (i1.i1) (i2 -|- id)

distl :: (Either c a, b) -> Either (c, b) (a, b)
distl = uncurry (either (curry i1)(curry i2))

distr :: (b, Either c a) -> Either (b, c) (b, a)
distr = (swap -|- swap) . distl . swap

flatr :: (a,(b,c)) -> (a,b,c)
flatr (a,(b,c)) = (a,b,c)

flatl :: ((a,b),c) -> (a,b,c)
flatl ((b,c),d) = (b,c,d)

br = split id (!)

bl = swap . br
\end{code}

\subsection*{ Class bifunctor }
\begin{code}
class BiFunctor f where
      bmap :: (a -> b) -> (c -> d) -> (f a c -> f b d)

instance BiFunctor Either where
    bmap f g = f -|- g

instance BiFunctor (,) where
    bmap f g  = f >< g
\end{code}

\subsection*{ Monads }
Kleisli monadic composition:
\begin{code}
infix 4  .!

(.!) :: Monad a => (b -> a c) -> (d -> a b) -> d -> a c
(f .! g) a = (g a) >>= f
\end{code}
Multiplication, also known as join:
\begin{code}
mult :: (Monad m) => m (m b) -> m b
mult = (>>= id)
\end{code}
Monadic binding:
\begin{code}
ap' :: (Monad m) => (a -> m b, m a) -> m b
ap' = uncurry (flip (>>=))
\end{code}
List monad:
\begin{code}
singl :: a -> [a]
singl = return
\end{code}
Strong monads:
\begin{code}
class (Functor f, Monad f) => Strong f where
      rstr :: (f a,b) -> f(a,b)
      rstr(x,b) = do a <- x ; return (a,b)
      lstr :: (b,f a) -> f(b,a)
      lstr(b,x) = do a <- x ; return (b,a)

instance Strong IO

instance Strong []

instance Strong Maybe
\end{code}
Double strength:
\begin{code}
dstr :: Strong m => (m a, m b) -> m (a, b)
dstr = rstr .! lstr
\end{code}
Exercise 4.8.13 in Jacobs' "Introduction to Coalgebra" \cite{Ja16}:
\begin{code}
splitm :: Strong fF => fF (a -> b) -> a -> fF b
splitm = curry (fmap ap . rstr)
\end{code}
Monad transformers:
\begin{code}
class (Monad m, Monad (t m)) => MT t m where  -- monad transformer class
      lift :: m a -> t m a
\end{code}
Nested lifting:
\begin{code}
dlift :: (MT t (t1 m), MT t1 m) => m a -> t (t1 m) a
dlift = lift . lift
\end{code}

\subsection*{ Basic functions, abbreviations }

\begin{code}
zero = const 0

one  = const 1

nil = const []

cons = uncurry (:)

add = uncurry (+)

mul = uncurry (*)

conc = uncurry (++)

inMaybe :: Either () a -> Maybe a
inMaybe = either (const Nothing) Just
\end{code}

\subsection*{ More advanced }
\begin{code}
class (Functor f) => Unzipable f where
      unzp :: f(a,b) -> (f a,f b)
      unzp = split (fmap p1)(fmap p2)

class Functor g => DistL g where
      lamb :: Monad m => g (m a) -> m (g a)

instance DistL [] where lamb = sequence

instance DistL Maybe where
      lamb Nothing  = return Nothing
      lamb (Just a) = mp Just a where mp f = (return.f).!id
\end{code}
Convert Monad into Applicative:
\begin{code}
aap :: Monad m  => m (a->b) -> m a -> m b
aap mf mx = do { f <- mf ; x <- mx ; return (f x) }
\end{code}

\EXIT

\chapter{Relational recursion}
\Todo{ola}
Later in the \doc\ we shall need a number of standard constructions in relation algebra
that are briefly introduced next. (For the many details omitted please see e.g.\ the textbook by \cite{BM97}.)

Let |fF| be a \emph{relator} \cite{R*92}, that is, a mathematical construction such as, for any type |A|, type |fF A| is defined
and for any relation |R: B <- A|, relation
|fF R :  fF B <-  fF A | is defined such that |fF id = id|, |fF (conv R) = conv((fF R))| and
|fF(R . S) = (fF R) . (fF S)|.

Any relation |R:  A <-  fF A | is said to be a (relational) \emph{|fF|-algebra}.
Special cases include functional |fF|-algebras and, among these, those that
are isomorphisms. Within these, the so-called \emph{initial} |fF|-algebras, say
|inF : fT <- fF fT|, are such that, given any other |fF|-algebra |R: A <- fF A|,
there is a unique relation of type |A <- fT|, usually written |cata R|,
such that |cata R . inF = R . fF(cata R)| holds. Type |fT|
(often denoted by |muF| to express its relationship with the base relator |fF|)
is also referred to as \emph{initial}. The meaning of such relations |cata R|, usually
referred to as \emph{catamorphisms}, or \emph{folds}, is captured by the
\emph{universal property}:
\begin{eqnarray}
	|X = cata R| & \wider\equiv & |X . inF = R . (fF X)|
	\label{eq:cataUniv-rel}
\end{eqnarray}
The base |fF| captures the recursive pattern of type |fT| (which we write as |muF|). For instance, for |fT| the datatype of finite
lists over a given type |A| one has
\begin{eqnarray}
	|lcbr (
	fF X = 1 + A >< X
	)(
	fF f = id + id >< f
	)|
	\label{eq:170518a}
\end{eqnarray}
This instance is relevant for the examples that come  later in this \doc.

Given |fF|-algebras |R: A <- fF A| and |S: B <- fF B|, the composition
|H=cata R . (conv (cata S))|, of type |A<-B|, is usually referred to as
a \emph{hylomorphism} \cite{BM97}. |H| is the least fixpoint of the
relational equation |X = R . (fF X) . (conv S)|. The intermediate type |muF|
generated by |conv (cata S)| and consumed by |cata R| is known as the
\emph{virtual data structure} \cite{SM93} of the hylomorphism.
The opposite composition |conv(cata S).(cata R)|, for suitably typed |S| and |R|,
is sometimes termed a \emph{metamorphism} \cite{Gi07}.

Two properties stem from (\ref{eq:cataUniv-rel}) that prove particularly useful in calculations about |cata R|,
namely \emph{fusion}
\begin{eqnarray}
	|S . (cata R) = (cata Q)| & \wider\implied & |S . R = Q . fF S|
	\label{eq:150402a}
\end{eqnarray}
and \emph{cancellation} (cf.\ above):
\begin{eqnarray}
	|cata R . inF| &=& |R . fF (cata R)|
	\label{eq:150402b}
\end{eqnarray}
Fusion is particularly helpful in the sense of finding a sufficient condition
on |S|, |R| and |Q| for merging |S . (cata R)| into |cata Q|. In the words
of \cite{BM97}, law (\ref{eq:150402a}) \emph{is probably the
most useful tool in the arsenal of techniques for program derivation}.
The remainder of this \doc\ will give further evidence of this statement.

\fbox{which will play a role in the sequel) to relational composition.}
\footnote{Rule (\ref{eq:080105c}) \emph{connects}
division to multiplication, the latter helping to reason about the former.
Functions connected in this way are said to be \emph{adjoints}: multiplication
is adjoint of division. Equivalences of this are scalable, powerful devices
known in mathematics as Galois connections.}.

Both (\ref{eq:070829b}) and the same equivalence depicted using diagrams,
\begin{eqnarray*}
\xymatrix@@R=1ex{
%
	C
		\ar[dd]_{X}
&
&
	A
		\ar[ll]_{R}
		\ar[ddll]^{S}
\\
&
	\hskip-3em\subseteq
\\
	B
}
&
\xymatrix@@R=1ex{
\\
%	\mbox{ equivalent to }
	\wider\equiv
\\
}
&
\xymatrix@@R=1ex{
%
	C
		\ar[dd]_{X}
&
&
	C
		\ar[ll]_{id}
		\ar[ddll]^{S/R}
\\
&
	\hskip-3em\subseteq
\\
	B
}
\end{eqnarray*}
tell one and the same thing:
$S/R$ is the largest relation of its type which approximates $S$
holds (let $X:=S/R$ in (\ref{eq:070829b}) and simplify), so $(S/R)\comp R$
does approximate $S$. That this is the largest among all such approximations $X$
is easy to get from (\ref{eq:070829b}) too: just relax equivalence to
implication (|=>|).

% and the principle of indirect equality.
% In brief, most relational operators were identified as adjoints of
% Galois connections, inheriting the properties of these for free.
%\footnote{ Readers unfamiliar with this view of relation algebra are invited to read seminal paper \cite{DBW97} and tutorial paper \cite{Ol08b}, among others.}.

Equivalences such as (\ref{eq:080105c}, \ref{eq:070829b}) are known as Galois connections.
%cite{ABHVW92,DBW97,SO08,OR10}.
In general, a Galois connection is a pair of functions
$f$ and $g$ satisfying
\begin{eqnarray*}
  f~z \leq x ~\equiv~ z \sqsubseteq g~x\mbox{,}
\end{eqnarray*}
for all $z$ and $x$,
given preorders $(\leq)$ and $(\sqsubseteq)$ (which can be the same). Functions $f$ and $g$ are
said to be \emph{adjoints} of each other --- $f$ is the \emph{left} adjoint and
$g$ the \emph{right} adjoint. In the case of (\ref{eq:080105c}) the adjoint functions are as identified in
\begin{eqnarray*}
	z \underbrace{(\times y)}_{f} \leq x
\wider\equivalent
	z \leq x \underbrace{(\div y)}_{g}\mbox{.}
\end{eqnarray*}
This concept is very rich of algebraic properties which we gloss over for the moment.

%Often referred to as ``shunting rules'', equivalences such as (\ref{eq:080105c},\ref{eq:070829b}) are examples of Galois connections.
%which are of practical value because they encapsulate a number of generic properties
%which instantiate to every connection. For instance, property (\ref{eq:110118b})
%follows from (\ref{eq:070829b}), thanks to the generic property of lower
%adjoints distributing through
%least upper bounds.
% union.
Many other relational concepts are captured by such connections, in the same way. For instance, converse,

It should be mentioned that some rules in table \ref{tab:eq:040121a} appear in the
literature under different guises and usually not identified as GCs~\footnote{
For instance, the \emph{shunting} rule is called \emph{cancellation law}
in \cite{WD96}.}. For a thorough presentation of the relational calculus
in terms of GCs see \cite{ABHVW92,Ba04a}.

\F

The symmetry of the problem invites us to unify |Fox| with |Beans|: |16| possible states of type |Being->Bank|, |raise 4 2=16|. iOn the So Going from the left marThis problem has a double symmetry. One Abstract The state space of this puzzle --- the 16 functions in |expn Bank Being| can be reduced by abstracting beings

%partx{To be continued}

\fbox{ |grd p = conv(either (crflx p)(id-crflx p))| }
\begin{eqnarray*}
\start
	|starving((cond ((ins who)) (cross.w) w))|
%
\just\equiv{ |starving w = Eats atmost K => K . (const Farmer) where K=ker w| }
%
\just\equiv{}
\just\equiv{}
\just\equiv{}
\just\equiv{}
\just\equiv{}
\qed
\end{eqnarray*}

|ker((cond p f g)) = cond p (crflx p . (syd f f)) (conv ((cond p (syd f g)(syd g g))))|

\newpage

\section{Relational specification}

xxxx


|S = cap (syd true geq0) ((cup id sym))| where |geq0 x = x >= 0| and |sym x = -x|.

|f = cond lt0 sym id|


|f atmost S = either sym id . (grd (<0)) atmost ((>=). (const 0))| since  (\ref{eq:180830a}).

|syd true geq0|

|geq0 . sym = lt0|

\begin{code}
	abs: Int -> Int
	abs i = if i<0 then -i else i
\end{code}
followed by an \emph{implicit specification} of the same function:
\begin{quote}
	|abs (i:Int) r: Int|
\\
	|post (r >= 0 && (r=i |||| r=-i))|
\end{quote}

\fbox{
	|grd p = conv(either (crflx p)(id-crflx p))|
}

\fbox{
(\ref{eq:050112a}) --- lower bound?
}

%
\begin{eqnarray*}
&&
(R°)° \subseteq Y
%
\just\equiv{$°$-universal
$
{
\arrayin{
X° \subseteq Y
&
\equiv
&
X \subseteq Y°
}}
$ for $X := R°$}
%
R° \subseteq Y°
%
\just\equiv{$°$-monotonicity}
%
R \subseteq Y
%
\just{::}{indirection}
%
(R°)° = R
%
\end{eqnarray*}
%
$°$-monotonicity:
%
Then:
\begin{eqnarray}
\name{ Involution }
(R°)° = R
\label{eq:020624b}
\\
\name{ Contravariance }
(R \comp S)° = S° \comp R°
\label{eq:020624d}
\end{eqnarray}
These can be proved from
\textbf{$°$-universal}
by (elegant) indirect  proofs (example in next slide):
%
\end{Slide}

\section{Indirect proof of involution}

the fact that a relation is a function $f$ is equivalent to connection (\ref{eq:020617f})
in appendix \ref{sec:100202f}. Furthermore, the meaning of two relational operators
central to understanding the Alloy semantic rules of section \ref{sec:110115b}
--- domain ($\dom\relax$) and range ($\rng\relax$) of a relation ---
are captured by connections (\ref{eq:030608a}) and (\ref{eq:020604a'}) of the same appendix, respectively.

There is something else concerning the two operators just above: they yield
sets represented by fragments of the identity relation.
%
In general, for each predicate $p$ we define binary relation
$\crflx p$ such that
\(
	b \ \crflx p \ a
\) holds iff
\(
	(b = a) \land (p\ a)
\);
that is, $\crflx p$ is the relation that maps every $a$ which satisfies $p$
(and only such $a$) onto itself. Clearly, $\crflx p \subseteq id$. This
is why these relations are termed \emph{partial identities} or \emph{coreflexives}
\cite{BM97}. Given a set $S$, the coreflexive which represents $S$ is $\crflx{\in
S}$, also denoted by $\crflx{S}$. This is referred to in \cite{Jackson06}
as the \emph{identity on set $S$}.


\F
\F
Go on with \cite{Ol08b}
\F

\begin{Slide}{Specifications as ``properties''}
\begin{itemize}
\item
Specification of \emph{square root}:
\begin{eqnarray*}
(sqrt\ x)^2 = x
\end{eqnarray*}
that is
\begin{eqnarray*}
sq \comp sqrt = id
\end{eqnarray*}
(= $sqrt$ has left inverse $sq$)
\item
Specification of $sort$:
\begin{eqnarray*}
l'=\ap{sort}l	& \equiv & (IsOrdered\ l') \land IsPermutation(l',l)
\end{eqnarray*}
\end{itemize}
\end{Slide}

\begin{Slide}{Relational approach}
Need to model
\begin{itemize}
\item	total/\textbf{partial} functions
\item	\textbf{non-determinism}
\item	\textbf{properties}, datatype \textbf{invariants} and loop-invariants
\item	orders and \textbf{inductive} structures
\item	vagueness or \textbf{under-specification}\ldots
\end{itemize}
\fromSlide*{2}{%
$\implies$ adoption of {\red binary relations},
which have a long tradition in the\ldots
}
\end{Slide}

\begin{Slide}{Pre/post specification style} % \cite{Jo81,Jo83}.
\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny
\begin{verbatim}
  Sort(l: seq of int) r: seq of int
  post IsPermutation(r,l) and IsOrdered(r);

  IsPermutation: seq of int * seq of int -> bool
  IsPermutation(l1,l2) == .....................

  IsOrdered: seq of int -> bool
  IsOrdered(l) == .............

\end{verbatim}
\end{vdmraw}
\end{eqnarray*}

\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny
\begin{verbatim}
  gets(s: set of nat) r: nat * set of nat
  pre  card s > 0
  post r.#1 in set s and r.#2 = s \ {r.#1} ;

\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
\end{Slide}

\section{Pre/post specification layout}\small
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
  Spec(a: A) r: B
  pre Precond(a)
  post Postcond(r,a);

\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
where
\begin{eqnarray*}
Precond &:& A \tfunc 2
\\
Postcond &:& B \times A \tfunc 2
\end{eqnarray*}
leads to the \textbf{binary relation} approach:
\begin{eqnarray*}
Postcond \in 2^{B \times A }
& \equiv &
Postcond \subseteq B \times A
\end{eqnarray*}

\begin{Slide}{From predicates to relations}
\begin{itemize}
\item
\textbf{Predicate logic}
connectives such as e.g.\ $\land$ are ``overloaded'' operators
\item
They can be regarded as models of a more
structured logic --- that of \textbf{binary relations}
\item
\textbf{Functions} generalize to \textbf{binary relations}
in a very natural way.
\item
Predicates, sets, functions and relations can \textbf{all} be combined in a \textbf{single} \textbf{relational calculus}
%This calculus can be very \textbf{elegantly} expressed in terms
%of Galois connections
\item
Usual infix notation, \eg\ $\red a < b$, can be generalized to any relation $R$,
\eg\ $\red a R b$
\end{itemize}
\end{Slide}

\section{Sets / functions made relational}
Strategy: identify every
\begin{itemize}
\item
\textbf{function} $f : A \tfunc B $ with the binary relation relating $a$ and $b$
iff $b = f\ a$.
So, $\red b f a$ literally means $\red b=f\ a$.

\item
binary \textbf{predicate} $\rarrow{A \times B}{p}{bool}$ with binary relation $\mean p$
such that $ a \mean p b \equiv p(a,b)$.
\item
unary \textbf{predicate} $\rarrow{A}{q}{bool}$ with binary relation $\mean q$
such that $ a \mean q b \equiv a =b \land (q\ a)$.
\CUT{%
So $\mean p$ is
\textbf{coreflexive}
\begin{eqnarray*}
\mean p \subseteq id
\end{eqnarray*}
}

\item
\textbf{set} $S \subseteq A$ with $\mean{\lambda a . a \in S}$. So,
\begin{eqnarray*}
a\mean S b \equiv a =b \land a\in S
\end{eqnarray*}

\end{itemize}

\section{Arrows ``are'' binary relations}
\begin{itemize}
\item
\textbf{``Type''} relations in a way consistent with functions:
$\larrow A R B$ wherever $b R a$ involves $b \in B$ and $a \in A$.
\item
From now on, an arrow
\begin{eqnarray*}
\larrow A R B
\end{eqnarray*}
means a \textbf{binary relation} from $A$ (source)
to $B$ (target) and write $b R a$ to denote that pair $\tuple{b,a}$ is in $R$.
\end{itemize}

\section{Relations as Arrows}
\begin{itemize}
\item
\textbf{Ordering} on relations:
\begin{eqnarray*}
R \subseteq S
& \equiv &
b R a \implies b S a
\end{eqnarray*}
$R\subseteq S$ means that $R$ is either \textbf{less defined} or \textbf{more deterministic} than $S$.
\item
Extend \textbf{composition} $f \comp g$ to $R \comp S$ in the obvious way
\begin{eqnarray*}
b (R \comp S) c \equiv
\exists a\in A . b R a \land a S c
\end{eqnarray*}
\item
Introduce \textbf{converse} $R°$
\[
a (R°) b \equiv b R a
\]
\end{itemize}

\CUT{
\item
	Deal with
\(
\subseteq, \cap, \cup,
\)
instead of
\(
\implies, \land, \lor
\)
}

\section{Relational Equality}
\small
Pointwise equality:
\begin{eqnarray*}
R = S
& \equiv &
(b R a \equiv b S a)
\end{eqnarray*}
Pointfree equality:
\begin{itemize}
\item
%
\textbf{Cyclic implication} (``ping-pong'') rule:
%
\begin{eqnarray}
R = S
&
\equiv
&
R \subseteq S
\wedge
S \subseteq R
%
\label{eq:020616a}
\end{eqnarray}

\item
\textbf{Indirect equality} rules: % \footnote{Cf.\  \cite{BM97}, p. 82.}
\begin{eqnarray}
R = S
&
\equiv
&
\forall X.
(X \subseteq R \equiv X \subseteq S)
\label{eq:020614c}
\\
&
\equiv
&
\forall X.
(R \subseteq X \equiv S \subseteq X)
%label{eq:020614c}
%
\end{eqnarray}
\end{itemize}
%

\begin{Slide}{Basic relational combinators}
Given $\larrow B S C$ and $\larrow A R B$
\begin{itemize}
\item
\textbf{Composition} $S \comp R$ is s.t.\
\[
c (S \comp R) a
\]
holds wherever there exists some $b\in B$ such that
\(
c S b \land b R a
\).
\item
\textbf{Converse} $\larrow B{R°}A$ of $\larrow A{R}B$
\[
a (R°) b \equiv b R a
\]
\item
\textbf{Meet} $R \cap S$ --- recall set-theoretical intersection
%
\end{itemize}
\end{Slide}

\section{Basic Relation Calculus (II)}
%small
Bottom and top relations:
\begin{eqnarray*}
\bot \subseteq & R & \subseteq \top
\end{eqnarray*}
where $\larrow A \top B$ is the largest relation of its type.

\noindent Pointwise descriptions:
\begin{eqnarray*}
b \top a \equiv \true &,&
b \bot a \equiv \false
\end{eqnarray*}

\begin{Slide}{Converse}
%
$°$-universal
\begin{eqnarray*}
X° \subseteq Y
&
\equiv
&
X \subseteq Y°
%
\end{eqnarray*}
%
$°$-monotonicity:
\begin{eqnarray}
R \subseteq S \equiv R° \subseteq S°
\label{eq:020617h}
\end{eqnarray}
%
Then:
\begin{eqnarray}
\name{ Involution }
(R°)° = R
\label{eq:020624b}
\\
\name{ Contravariance }
(R \comp S)° = S° \comp R°
\label{eq:020624d}
\end{eqnarray}
These can be proved from
\textbf{$°$-universal}
by (elegant) indirect  proofs (example in next slide):
%
\end{Slide}

\section{Indirect proof of involution}
%
\begin{eqnarray*}
&&
(R°)° \subseteq Y
%
\just\equiv{$°$-universal
$
{\red
\arrayin{
X° \subseteq Y
&
\equiv
&
X \subseteq Y°
}}
$ for $X := R°$}
%
R° \subseteq Y°
%
\just\equiv{$°$-monotonicity}
%
R \subseteq Y
%
\just{::}{indirection}
%
(R°)° = R
%
\end{eqnarray*}

\begin{Slide}{Meet}
%
$\cap$-universal
\begin{eqnarray}
X \subseteq (R \cap S)
&
\equiv
&
(X \subseteq R) \wedge
(X \subseteq S)
%
\label{eq:020627a}
\end{eqnarray}
%
Converse distributes over $\cap$ (proof in next slide):
%
\begin{eqnarray*}
(R \cap S)° = R° \cap S°
\label{eq:converse-meet}
\end{eqnarray*}
%
\end{Slide}

\section{Another indirect proof }
\footnotesize
% Proof of (\ref{eq:converse-meet}):
\vskip-1em
\begin{eqnarray*}
&&
X \subseteq R° \cap S°
%
\just\equiv{$\cap$-universal}
%
(X \subseteq R°) \wedge
(X \subseteq S°)
%
\just\equiv{monotonicity and involution}
%
(X° \subseteq R) \wedge
(X° \subseteq S)
%
\just\equiv{$\cap$-universal}
%
X° \subseteq (R \cap S)
%
\just\equiv{monotonicity and involution}
%
X \subseteq (R \cap S)°
%
\just{::}{indirection}
%
R° \cap S° = (R \cap S)°
%
\end{eqnarray*}

\begin{Slide}{Pointwise vs pointfree notation}
\textbf{Function}
\begin{eqnarray*}
fac\ 0 &=& 1
\\
fac (n +1) &=& (n + 1) * fac\ n
\end{eqnarray*}
in pointfree notation:
\begin{eqnarray*}
fac \comp \alt{\kons 0}{suc} =  * \comp \alt{suc}{fac}
\end{eqnarray*}
%
\textbf{Property}
\begin{eqnarray*}
fac\ n = fac\ m &\implies& n = m
\end{eqnarray*}
($\equiv\ fac$ is injective) in pointfree notation?

\end{Slide}

\section{Properties in pointfree style (I)}
$fac$ is injective:
\begin{eqnarray*}
&&
\arrayin{
fac\ n = fac\ m &\implies& n = m
}
%
\just\equiv{ identity function / relation }
%
\arrayin{
(fac\ n)\ id\ (fac\ m) &\implies& n\ id\ m
}
%
\just\equiv{ rule $(f\ b) R (g\ a) \equiv b (f° \comp R \comp g) a$ }
%
\arrayin{
n(fac° \comp id \comp fac)m &\implies& n\ id\ m
}
%
\just\equiv{ dropping variables $n$ and $m$ ; natural-$id$ (\ref{eq:981211d}) }
%
\arrayin{
fac° \comp fac &\subseteq& id
}
%
\end{eqnarray*}

\section{Properties in pointfree style (II)}
\small
Example property of integer arithmetics:
\begin{eqnarray*}
&&
\arrayin{
\red
\begin{array}{c||c}
	n & d
\\\cline{2-2}
	r & q
\end{array}
&&
d \times q \leq n \equiv q \leq n / d
~~~ \CUT{
\begin{minipage}{.3\textwidth}\raggedright\small\red
``universal'' property of integer division
\end{minipage}
}}
%
\just\equiv{ using ``Haskell \textbf{section} notation'' }
%
\arrayin{
(d ×) q \leq n &\equiv& q \leq n (/ d)
}
%
\just\equiv{ rule $(f\ b) R a \equiv b (f° \comp R) a$ }
%
\arrayin{
q ((d ×)° \comp \leq) n &\equiv& q (\leq \comp (/ d)) n
}
%
%just\equiv{ dropping variables $q$ and $n$ }
\just\equiv{ pointwise equality }
%
\arrayin{
(d ×)° \comp \leq &=& \leq \comp (/ d)
}
%
\end{eqnarray*}

Reasoning:
\begin{eqnarray*}
&&
q \leq (n / m) / d
%
\just\equiv{ ``universal'' property }
%
d \times q \leq n / m
%
\end{eqnarray*}

\begin{Slide}{Orders and their taxonomy}
An order (or endo-relation) $\larrow A R A$ is
\begin{eqnarray*}
	\name{reflexive}	\mbox{iff~} id_A \subseteq R
\\
	\name{coreflexive}	\mbox{iff~} R \subseteq id_A
\\
	\name{transitive}	\mbox{iff~} R \comp R \subseteq R
\\
	\name{anti-symmetric}	\mbox{iff~} R \cap R° \ \subseteq id_A
\\
	\name{symmetric}	\mbox{iff~} R \subseteq R° (\equiv R = R°)
\label{eq:020617c}
\\
	\name{connected}	\mbox{iff~} R \cup R° = \top
\label{eq:021019a}
%
\end{eqnarray*}
where $\larrow A \top A$ is the largest relation of its type.
\end{Slide}

\margincomment{A connected order (\ref{eq:021019a}) is such that
\begin{eqnarray*}
\forall a,b. a R b \lor b R a
\end{eqnarray*}
\fbox{left linear?}
}

\marginproof{(\ref{eq:020617c})}{%
%
\begin{eqnarray*}
&&
R \subseteq R°
%
\just\equiv{$\wedge$-idempotency}
%
R \subseteq R°
\wedge
R \subseteq R°
%
\just\equiv{converse is $\subseteq$-monotone and involutive}
%
R \subseteq R°
\wedge
R° \subseteq R
%
\just\equiv{ping-pong}
%
R = R°
%
\end{eqnarray*}
}

\section{Order taxonomy (B)}
\begin{itemize}
\item
\textbf{Preorders} are reflexive and transitive orders.
\item
\textbf{Partial} orders are anti-symmetric preorders
\item
\textbf{Linear} orders are connected partial orders
\item
\textbf{Equivalences} are symmetric preorders
\item
% \textbf{Monotypes} \cite{Bac00}
\textbf{Predicates} are coreflexive orders:
the ``meaning'' of a predicate $\larrow A \phi {Bool}$ is a coreflexive
relation $\mean\phi$ such that
\begin{eqnarray*}
\ap\phi a&\equiv&a \mean\phi a
\end{eqnarray*}
mapping every $a$ which validates $\phi$ onto itself.
\end{itemize}

\section{Order taxonomy (C)}%
\tiny
\begin{tabular}{cccccc}
&&&
\rnode{0}{order}
\\ \rule{0pt}{2em} \\
\rnode{A}{symmetric}
&
\rnode{B}{reflexive}
&
&
\rnode{C}{transitive}
&
\rnode{D}{anti-symmetric}
&
\rnode{E}{connected}
\nccurve[linecolor=red,angleA=090,angleB=210]{-}{A}{0}
\nccurve[linecolor=red,angleA=090,angleB=220]{-}{B}{0}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{C}{0}
\nccurve[linecolor=red,angleA=090,angleB=-60]{-}{D}{0}
\nccurve[linecolor=red,angleA=090,angleB=-30]{-}{E}{0}
\\ \rule{0pt}{2em} \\
&
&
\rnode{F}{preorder}
\nccurve[linecolor=red,angleA=180,angleB=-30]{-}{F}{B}
\nccurve[linecolor=red,angleA=000,angleB=210]{-}{F}{C}
\\ \rule{0pt}{2em} \\
\rnode{G}{equivalence}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{G}{A}
\nccurve[linecolor=red,angleA=030,angleB=210]{-}{G}{F}
&
&
&
\rnode{H}{partial order}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{H}{F}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{H}{D}
\\ \rule{0pt}{2em} \\
&&&&
\rnode{I}{linear}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{I}{H}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{I}{E}
\end{tabular}

\section{Properties (A)}
\textbf{Dedekind}'s rule
(also known as the \textbf{modular law}):
{\red\begin{eqnarray*}
(R \comp S) \cap T & \subseteq & R \comp (S \cap (R° \comp T))
\label{eq:020605l}
\end{eqnarray*}}
Dually (apply converses and rename):
\begin{eqnarray*}
(R \comp S) \cap T & \subseteq & (R \cap ( T \comp S°)) \comp S
\label{eq:020608a}
\end{eqnarray*}
Symmetrical equivalent statement: % (\cite{BM97},p.84):
\begin{eqnarray*}
(R \comp S) \cap T
& \subseteq &
(R \cap ( T \comp S°)) \comp (S \cap ( R° \comp T))
\label{eq:020624h}
\end{eqnarray*}
= ``weak right-distribution of meet over composition''.

\begin{Slide}{Derived combinators}
\begin{itemize}
\item
%
\textbf{Kernel} of $\larrow A R B$ is $\larrow A{\ker R}A$ defined by
%
\begin{eqnarray*}
\ker R \deff R° \comp R
%label{eq:020624a}
\end{eqnarray*}
\item
\textbf{Image} of $\larrow A R B$ is $\larrow B{\img R}B$ defined by
%
\begin{eqnarray*}
\img R \deff R \comp R°
\end{eqnarray*}
\item
Duality:
\begin{eqnarray*}
\ker{(R°)}&=&\img R
\label{eq:020617d}
\\
\img{(R°)}&=&\ker R
\label{eq:020624c}
\end{eqnarray*}
\end{itemize}
\end{Slide}

\marginproof{(\ref{eq:020617d})}{%
\begin{eqnarray*}
&&
\ker{(R°)}
%
\just={ definition (\ref{eq:020624a}) }
%
(R°)° \comp R°
%
\just={ involution (\ref{eq:020624b}) }
%
R \comp R°
%
\just={ definition (\ref{eq:020624c}) }
%
\img R
%
\end{eqnarray*}
}

\section{Properties of kernel and image}%
Order-preservation:
\begin{eqnarray*}
R \subseteq S & \implies & \ker R \subseteq \ker S
\label{eq:020617i}
\\
R \subseteq S & \implies & \img R \subseteq \img S
\label{eq:020617j}
\end{eqnarray*}
Symmetry:
\begin{eqnarray*}
(\ker R)°&=&\ker R
\label{eq:ker-sym}
\\
(\img R)°&=&\img R
\end{eqnarray*}
Also:
\begin{eqnarray*}
R \subseteq R \comp \ker R  && (= \img R \comp R)
\label{eq:020605k}
\end{eqnarray*}


\marginproof{(\ref{eq:020617i}) and (\ref{eq:020617j}) }{%
From  (\ref{eq:020617h}) and (\ref{eq:020605g}) we get
\(
        R° \comp R \subseteq S° \comp S
\)
and
\(
R \comp R° \subseteq S \comp S°
\),
respectively.
}

\marginproof{(\ref{eq:ker-sym})}{%
\begin{eqnarray*}
&&
(\ker R)°
%
\just={ definition (\ref{eq:020624a}) }
%
(R° \comp R)°
%
\just={ contravariance (\ref{eq:020624d}) }
%
R° \comp (R°)°
%
\just={ involution (\ref{eq:020624b}) }
%
R° \comp R
%
\just={ definition (\ref{eq:020624a}) }
%
\ker R
%
\end{eqnarray*}
}

\marginproof{(\ref{eq:020605k})}{%
%
\begin{eqnarray*}
&&
R
%
\just={ (\ref{eq:020605c}) }
%
R \cap R
%
\just\subseteq{modular law}
%
R \comp (id \cap R° \comp R)
%
\just\subseteq{monotonicity}
%
R \comp R° \comp R
%
\end{eqnarray*}
}

\begin{Slide}{Entireness and simplicity}
An \textbf{entire} (or total) relation is such that its kernel is reflexive:
\begin{eqnarray*}
\mbox{$R$ is entire}
&
\equiv
&
id \subseteq \ker{R}
\label{eq:entireness}
\end{eqnarray*}
% that is: $\ker{R}$ is reflexive.
A \textbf{simple} (or functional) relation is such that its image is coreflexive:
\begin{eqnarray*}
R \mbox{\ is simple}
&
\equiv
&
\img{R} \subseteq id
\label{eq:020605f}
\end{eqnarray*}
%that is, $\img R$ is coreflexive.

Simplicity is the dual of entireness. Simple relations are also called \textbf{partial functions}.
\end{Slide}

\section{(Total) functions}
\textbf{Functions} are both simple and entire relations, usually denoted by lowercase letters $f$:
\begin{eqnarray*}
\underbrace{id \subseteq f° \comp f}_{\mbox{entire}}
&\wedge&
\underbrace{f \comp f° \subseteq id}_{\mbox{simple}}
\end{eqnarray*}
Thus:
\begin{eqnarray*}
f \subseteq R
\implies
\mbox{$R$ is entire}
\\
R \subseteq f
\implies
R \mbox{\ is simple}
\end{eqnarray*}
In general,
\emph{
        ``larger  than entire means entire''
}
and
\emph{
``smaller than simple means simple''
}
% --- \cf\ (\ref{eq:020617i},\ref{eq:020617j}).


\begin{Slide}{Surjectiveness and injectiveness}
More taxonomy:
\begin{itemize}
\item
$R$ is \textbf{surjective} iff $R°$ is entire
\item
$R$ is \textbf{injective} iff $R°$ is simple
\end{itemize}
Facts:
\begin{eqnarray*}
\mbox{$R$ is entire and injective} &\equiv & \ker R = id
\label{eq:020624e}
\\
\mbox{$R$ is simple and surjective} &\equiv & \img R = id
\end{eqnarray*}
Summary:
\begin{center}
\begin{tabular}{||c||||c||c||}\hline
&
\textbf{Reflexive}
&
\textbf{Coreflexive}
\\\hline\hline
$\ker R$
&
entire $R$
&
injective $R$
\\\hline
$\img R$
&
surjective $R$
&
simple $R$
\\\hline
\end{tabular}
\end{center}
\end{Slide}

\marginproof{(\ref{eq:020624e})}{%
\begin{eqnarray*}
&&
\mbox{$R$ is entire and injective}
%
\just\equiv{ definitions }
%
	id \subseteq \ker R \land \img{R°} \subseteq id
%
\just\equiv{ (\ref{eq:020624c}) }
%
	id \subseteq \ker R \land \ker R \subseteq id
%
\just\equiv{ ping-pong (\ref{eq:020616a}) }
%
	id = \ker R
%
\end{eqnarray*}
}

\section{Bijections}
$f$ is \textbf{bijective} iff it is an injective and surjective function
(thus simple and entire)
\begin{eqnarray*}
\mbox{$\larrow A f B$ bijective} &\equiv & \ker f = id \wedge \img f = id
\end{eqnarray*}
In this case
\begin{eqnarray*}
        {id = f° \comp f}
&\wedge&
        {f \comp f° = id}
\end{eqnarray*}


\begin{Slide}{Binary relation taxonomy}%
\tiny
\begin{tabular}{cccccccc}
&&&
\rnode{0}{relation}
\\ \rule{0pt}{2em} \\
\rnode{A}{injective}
	\nccurve[linecolor=red,angleA=090,angleB=210]{-}{A}{0}
&
&
\rnode{B}{entire}
	\nccurve[linecolor=red,angleA=090,angleB=220]{-}{B}{0}
&
&
\rnode{C}{simple}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{C}{0}
&
&
\rnode{D}{surjective}
	\nccurve[linecolor=red,angleA=090,angleB=-60]{-}{D}{0}
\\ \rule{0pt}{2em} \\
&
\rnode{E}{representation}
	\nccurve[linecolor=red,angleA=090,angleB=-30]{-}{E}{A}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{E}{B}
&
&
\rnode{F}{function}
	\nccurve[linecolor=red,angleA=180,angleB=-30]{-}{F}{B}
	\nccurve[linecolor=red,angleA=000,angleB=210]{-}{F}{C}
&
&
\rnode{G}{abstraction}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{G}{D}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{G}{C}
\\ \rule{0pt}{2em} \\
&
&
\rnode{H}{injection}
	\nccurve[linecolor=red,angleA=90,angleB=-90]{-}{H}{E}
	\nccurve[linecolor=red,angleA=90,angleB=-90]{-}{H}{F}
&
&
\rnode{I}{surjection}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{I}{F}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{I}{G}
\\ \rule{0pt}{2em} \\
&&&
\rnode{J}{bijection}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{J}{H}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{J}{I}
\end{tabular}
\end{Slide}

\begin{Slide}{Reasoning about functions}
\textbf{Shunting rules:}
\begin{eqnarray*}
f \comp R \subseteq S & \equiv & R  \subseteq f ° \comp S
	% \label{eq:020617e}
\\
R \comp f° \subseteq S & \equiv & R  \subseteq S \comp f
	% \label{eq:020617f}
\end{eqnarray*}
\textbf{Equality:}
\begin{eqnarray*}
f \subseteq g \equiv f = g \equiv f \supseteq g
	% \label{eq:020617g}
\end{eqnarray*}
Ping-pong proof of the equality rule % (\ref{eq:020617g})
follows.
\end{Slide}

\section{Proof of functional equality }
\small
\begin{eqnarray*}
&&
f \subseteq g
%
\just\equiv{identity}
%
f \comp id \subseteq g
%
\just\equiv{shunting on $f$}
%
id \subseteq f° \comp g
%
\just\equiv{shunting on $g$}
%
id \comp g° \subseteq f°
%
\just\equiv{converses}
%
g \subseteq f
%
\end{eqnarray*}

\section{Adding structure to the calculus}
Note a recurrent \textbf{pattern} in several laws above:
\begin{eqnarray*}
\underbrace{X\red°}_{{\red f}\ X} \subseteq Y
&
\equiv
&
X \subseteq \underbrace{Y\red°}_{{\red g}\ Y}
\\
\underbrace{{\red (h  \comp )} X}_{{\red f}\ X} \subseteq Y
&
\equiv
&
X \subseteq \underbrace{{\red (h°  \comp )} Y}_{{\red g}\ Y}
\\
\underbrace{X \red ( \comp h°)}_{{\red f}\ X} \subseteq Y
& \equiv &
X  \subseteq \underbrace{Y \red ( \comp h)}_{{\red g}\ Y}
\end{eqnarray*}
as well as in
\begin{eqnarray*}
\underbrace{{\red (d ×)} q}_{{\red f}\ q} \leq n
&\equiv &
q \leq \underbrace{n \red (/ d)}_{{\red g}\ n}
\end{eqnarray*}


\section{Back to the primary school desk}
The \textbf{integer division} algorithm
\begin{eqnarray*}
\red
\begin{array}{c||c}
	7 & 2
\\\cline{2-2}
	1 & 3
\end{array}
&&
{\green
2 \times 3 + 1 = 7
}
\mbox{~~~, ``ie.'' ~~~ $3 = 7 / 2$ }
\end{eqnarray*}
However
\begin{eqnarray*}
\begin{array}{c||c}
	7 & 2
\\\cline{2-2}
	3 & \red 2
\end{array}
&&
2 \times {\red2} + 3 = 7 ~~~ \land ~~~ {\red2} \not= 7 / 2
\\
\begin{array}{c||c}
	7 & 2
\\\cline{2-2}
	5 & \red 1
\end{array}
&&
2 \times {\red 1} + 5 = 7
~~~ \land ~~~ {\red 1} \not= 7 / 2
\end{eqnarray*}

\section{Quotient is a supremum}

\begin{eqnarray*}
\red
\begin{array}{c||c}
	n & d
\\\cline{2-2}
	r & q
\end{array}
&&
d \times q + r = n \equiv q = n / d
~~~ \fbox{
\begin{minipage}{.3\textwidth}\raggedright\small\red
provided $q$ is the largest such $q$ ($r$ is smallest)
\end{minipage}
}
\\
n / d	&=& \bigvee \setdef{q}{\exists r ~.~ d \times q + r = n}
\\
&=& \bigvee \setdef{q}{d \times q \leq n}
\end{eqnarray*}
Maths teachers tell: \emph{it takes a while before children master the
``$\bigvee$ semantics''!}
\\
What about you? Can you easily reason about $\red n / d$ in this format?

Try and prove $(n / m) / d = n / ( m \times d) $.


\section{``Universal'' property instead}
Alternative:
\begin{eqnarray*}
\red
\begin{array}{c||c}
	n & d
\\\cline{2-2}
	r & q
\end{array}
&&
d \times q \leq n \equiv q \leq n / d
~~~ \fbox{
\begin{minipage}{.3\textwidth}\raggedright\small\red
``universal'' property of integer division
\end{minipage}
}
\end{eqnarray*}
Reasoning:
\begin{eqnarray*}
&&
q \leq (n / m) / d
%
\just\equiv{ ``universal'' property }
%
d \times q \leq n / m
%
\end{eqnarray*}

\section{Reasoning continued}
\begin{eqnarray*}
&&
%
\just\equiv{ ``universal'' property again }
%
m \times (d \times q) \leq n
%
\just\equiv{ $ \times $ is associative }
%
(m \times d) \times q \leq n
%
\just\equiv{ ``universal'' property again }
%
q \leq n / (m \times d)
%
\end{eqnarray*}

\section{Indirect equality}
So we have
\begin{eqnarray*}
q \leq (n / m) / d
& \equiv &
q \leq n / (m \times d)
\end{eqnarray*}
that is,
\begin{eqnarray*}
(n / m) / d
& = &
n / (m \times d)
\end{eqnarray*}
by the \textbf{indirect equality} rule:
\begin{eqnarray*}
(q \leq x \equiv q \leq y) \equiv (x = y)
\end{eqnarray*}

\section{Also easy to check}
\small
\begin{eqnarray*}
\mbox{Cancellation law:}
&&
{\green d \times (n / d) \leq n}
%
\just\equiv{ universal property }
%
n / d \leq n / d
%
\just\equiv{ reflexive $\leq$ }
%
\true
\\
\mbox{``Reflection'':}
&&
d \times 1 \leq n \equiv 1 \leq n / d
%
\just\equiv{ $1$ is the unit of $ \times $}
%
{\green d \leq n \equiv 1 \leq n / d}
\end{eqnarray*}
%\end{slide}

\begin{Slide}{Galois connections}
$n / d$ is a Galois connection:
\begin{eqnarray*}
\red
\begin{array}{c||c}
	n & d
\\\cline{2-2}
	r & q
\end{array}
&&
\underbrace{ {\green d \times} q }_{{\green f}\ q}
	 \leq n
\equiv
q \leq \underbrace{n {\green / d}}_{{\green g}\ n}
\end{eqnarray*}
In general, for \textbf{preorders} $(A,\leq)$ and $(B,\sqsubseteq)$
and % $f$ and $g$,
\begin{eqnarray*}
\arLaw{(A,\leq)}{(B,\sqsubseteq)} {\green f} {\green g} {}
\end{eqnarray*}
$(f,g)$ are \emph{Galois connected} iff
\CUT{
\begin{eqnarray*}
{\green f} \ b
\leq a
&
\equiv
&
b \sqsubseteq {\green g} \ a
\end{eqnarray*}
}
\end{Slide}

\section{Galois adjoints}
\begin{eqnarray*}
\underbrace{\green f}_{\makebox(10,10){\red left adjoint}} \ b
\leq a
&
\equiv
&
b \sqsubseteq \underbrace{\green g}_{\makebox(10,10){\red right adjoint}} \ a
\end{eqnarray*}
that is
\begin{eqnarray*}
{\green f}° \comp \leq &=& \sqsubseteq \comp \green g
\end{eqnarray*}
\small
Remarks:
\begin{itemize}
%item	Cf.\ \emph{adjunctions} in category theory
\item	Galois (connected) adjoints enjoy a number of interesting
\emph{generic} properties
\item	\emph{Very elegant}
--- \textbf{calculational} --- way of performing
\emph{inequational} reasoning (including \emph{logical} deduction)
\end{itemize}
%\end{slide}

\section{Basic properties}
\emph{Cancellation}:
\begin{eqnarray*}
(f \comp g) a \leq a
&
\mbox{~and~}
&
b \sqsubseteq (g \comp f) b
\end{eqnarray*}
\emph{Distribution} (in case of lattice structures):
\begin{eqnarray*}
%
f(a \sqcup a') &=& (f\ a) \vee (f\ a')
\\
g(b \land b') &=& (g\ b) \sqcap (g\ b')
%
\end{eqnarray*}
\small
Conversely,
\begin{itemize}
\item	If $f$ distributes over $\sqcup$ then it has a right adjoint $g$ ($f^\#$)
\item	If $g$ distributes over $\land$  then it has a left adjoint $f$ ($g^\flat$)
\end{itemize}
%\end{slide}

\section{Other properties}
If $(f,g)$ are Galois connected,
\begin{itemize}
\item
$f$ ($g$) \textbf{uniquely} determines $g$ ($f$) --- thus the $\_^\flat$, $\_^\sharp$ notations
\item
$f$ and $g$ are \textbf{monotonic}
\item
$(g,f)$ are also Galois connected --- \textbf{reverse} the orderings
\item
$f = f \comp g \comp f$ and
$g = g \comp f \comp g$
\end{itemize}
etc % --- see chapter 5 of \cite{ABHVW92}.
%
%\end{slide}

\section{Summary}
\def\f{{\green f}}
\def\g{{\green g}}
\small
\begin{tabular}{||c||c||c||}\hline
\multicolumn{3}{||c||}{$(\f\ b) \leq a \equiv b \sqsubseteq (\g\ a)$}
\\\hline\hline
  \bf Description
& $  \f = \g ^\flat $
& $  \g = \f ^\sharp $
\\\hline\hline
  Definition
& $ \f\ b = \bigwedge \setdef{a}{b \sqsubseteq \g\ a} $
& $ \g\ a = \bigsqcup \setdef{b}{\f\ b \leq a}$
\\\hline
  Cancellation
& $ \f(\g\ a) \leq a $
& $ b \sqsubseteq \g(\f\ a) $
\\\hline
  Distribution
& $ \f (b \sqcup b') = (\f\ b) \vee (\f\ b') $
& $ \g ( a' \sqcap a) = (\g\ a') \sqcap (\g\ a) $
\\\hline
  Monotonicity
& $ b \sqsubseteq b' \implies \f\ b \leq \f\ b' $
& $ a \leq a' \implies \g\ a \sqsubseteq \g\ a' $
\\\hline
\end{tabular}
%\end{slide}

\begin{Slide}{Converse in a Galois connection}
%
\begin{eqnarray*}
\begin{tabular}{||c||c||c||c||}\hline
\multicolumn{4}{||c||}{$(f\ X) \subseteq Y \equiv X \subseteq (g\ Y)$}
\\\hline\hline
  \bf Description
& $  f = g^\flat $
& $  g = f^\sharp $
& \bf Obs.
\\\hline\hline
  converse
& $  (\_)° $
& $  (\_)° $
& $ b R° a \equiv a R b$
\\\hline
\end{tabular}
\end{eqnarray*}
Thus:
\begin{eqnarray*}
\mbox{ \textbf{Cancellation} }
&&
(R°)° = R
\\
\mbox{ \textbf{Monotonicity} }
&&
R \subseteq S \equiv R° \subseteq S°
\\
\mbox{ \textbf{Distributions} }
&&
(R \cap S)° =  R° \cap S° ,
(R \cup S)° =  R° \cup S°
%
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Functions in a Galois connection}
\small
\begin{eqnarray*}
\begin{tabular}{||c||c||c||c||}\hline
\multicolumn{4}{||c||}{$(f\ X) \subseteq Y \equiv X \subseteq (g\ Y)$}
\\\hline\hline
  \bf Description
& $  f = g^\flat $
& $  g = f^\sharp $
& \bf Obs.
\\\hline\hline
  shunting rule
& $  (h \comp ) $
& $  (h° \comp ) $
& NB: $h$ is a function
\\\hline
  ``converse'' shunting rule
& $  ( \comp h°) $
& $  ( \comp h ) $
& NB: $h$ is a function
\\\hline
\end{tabular}
\end{eqnarray*}
Consequences:
\begin{eqnarray}
\mbox{
Functional equality:
}
&&
\arrayin{
h \subseteq g \equiv & h = k & \equiv h \supseteq k
\label{eq:020617g}
}
\\
\mbox{
Functional division:
}
&&
h° \comp R
=
h \rdiv R
%
\end{eqnarray}
\textbf{Question:} what does $\red h \rdiv R$ mean?
\end{Slide}

\begin{Slide}{Relational division}
\small
\begin{eqnarray*}
\begin{tabular}{||c||c||c||c||}\hline
\multicolumn{4}{||c||}{$(f\ X) \subseteq Y \equiv X \subseteq (g\ Y)$}
\\\hline\hline
  \bf Description
& $  f = g^\flat $
& $  g = f^\sharp $
& \bf Obs.
\\\hline\hline
  right-division
& $  (R \comp ) $
& $  (R \rdiv ~) $
& right-factor
\\\hline
  left-division
& $  ( \comp R) $
& $  (~ \ldiv R) $
& left-factor
\\\hline
\end{tabular}
\end{eqnarray*}
Immediate:
$\red (R \comp )$ and $\red ( \comp R)$ distribute over union:
\begin{eqnarray*}
R \comp (S \cup T) &=& (R \comp S) \cup (R \comp T)
\\
(S \cup T) \comp R &=& (S \comp R) \cup (T \comp R)
\end{eqnarray*}
Some intuition about relational division operators follows.
\end{Slide}

\section{Relational division}
\small
The \textbf{relational division} operators are right-adjoints:
%
\begin{eqnarray*}
R \comp X \subseteq Y \equiv X \subseteq R \rdiv Y
\\
X \comp R \subseteq Y \equiv X \subseteq Y \ldiv X
%
\end{eqnarray*}
\textbf{Right division} abstracts a (pointwise) universal quantification
\begin{eqnarray*}
\arraycolsep=1em
\begin{array}{ccc}
%
\mnode{A}{A}
&
&
\mnode{C}{C}
	\arl{C}{A}{X \subseteq R \rdiv Y}
\\
% \subseteq
\\
&
\mnode{B}{B}
	\ardl{A}{B}{R}
	\ardr{C}{B}{Y}
\end{array}
&&	a (R \rdiv Y) c \equiv (\forall b. b R a \implies b Y c)
%	\label{eq:030608a}
\end{eqnarray*}
An example follows.
%\end{slide}

\section{Example}
Recall data division in the \textbf{relational model}:
\begin{eqnarray*}
\\
\arraycolsep=1em
\begin{array}{ccc}
%
\mnode{A}{A}
&
&
\mnode{C}{C}
	\arl{C}{A}{X \subseteq R \rdiv S}
\\
% \subseteq
\\
&
\mnode{B}{B}
	\ardl{A}{B}{R}
	\ardr{C}{B}{S}
\end{array}
&&	a (R \rdiv S) c \equiv (\forall b. b R a \implies b S c)
%	\label{eq:030608a}
\end{eqnarray*}
\begin{itemize}
\item[] $\red b \ R \ a$ = flight $\red b$ carries passenger $\red a$
\item[] $\red b \ S \ c$ = flight $\red b$ belongs to air-company $\red c$
\item[] $\red a \ (R \rdiv S) \ c$ = passenger $\red a$ is faithful to company $\red c$,
that is, (s)he only flies company $\red c$.
\end{itemize}

%\end{slide}

\section{Left division}
By taking converses we arrive at $S \ldiv R= (R° \rdiv S°)°$:
%
\begin{eqnarray*}
X \subseteq S \ldiv R
&
\equiv
&
X \subseteq (R° \rdiv S°)°
%
\just\equiv{converses and $(R° \rdiv)^\flat$}
%
R° \comp X° \subseteq S°
%
\just\equiv{converses}
%
X \comp R \subseteq S
%
\end{eqnarray*}
ie. Galois connection
\begin{eqnarray*}
X \comp R \subseteq S
& \equiv &
X \subseteq S \ldiv R
\end{eqnarray*}
%\end{slide}

\section{Meet}
\textbf{$\cap$-universal}
\begin{eqnarray*}
X \subseteq (R \cap S)
&
\equiv
&
(X \subseteq R) \wedge
(X \subseteq S)
%
%label{eq:020627a}
\end{eqnarray*}
is a Galois connection
\begin{eqnarray*}
(\Delta,\cap)
\end{eqnarray*}
where $\Delta\ X = (X,X)$,
cf.
\begin{eqnarray*}
(X,X)(\subseteq \times \subseteq)(R,S)
&
\equiv
&
X \subseteq \cap(R,S)
\end{eqnarray*}
So $ \cap = \Delta^\sharp$ distributes over itself, etc
%\end{slide}

\section{Properties of $\cap$}
From $\cap$-universal (\ref{eq:020627a})
infer:
\begin{itemize}
\item
\textbf{$\cap$-cancellation} ($X := R \cap S$)
\begin{eqnarray*}
R \cap S \subseteq R
&\wedge&
 R \cap S \subseteq S
%
\label{eq:020616b}
\end{eqnarray*}

\item
\textbf{$\cap$-abbreviation} ($X := R$)
%
\begin{eqnarray*}
R \subseteq S
&
\equiv
&
R = R \cap S
\label{eq:020605b}
%
\end{eqnarray*}
\item
\textbf{$\cap$-idempotency} ($S := R$)
\begin{eqnarray*}
R \cap R
&
=
&
R
\label{eq:020605c}
\end{eqnarray*}
\end{itemize}
%\end{slide}

\normalproof{(\ref{eq:020605b})}{%
\begin{eqnarray*}
&&
R \subseteq S
%
\just\equiv{inclusion is reflexive}
%
R \subseteq R \wedge R \subseteq S
%
\just\equiv{meet-universal (\ref{eq:020627a}) }
%
R \subseteq (R \cap S)
%
\just\equiv{cancellation (\ref{eq:020616b}) }
%
R \subseteq (R \cap S) \wedge
(R \cap S) \subseteq R
%
\just\equiv{ping-pong}
%
R = (R \cap S)
%
\end{eqnarray*}
}

\section{More properties of $\cap$}
$\cap$ is \textbf{commutative}:
%
\begin{eqnarray*}
R \cap S
&
=
&
S \cap R
\label{eq:020605d}
\end{eqnarray*}
$\cap$ is \textbf{associative}:
\begin{eqnarray*}
R \cap (S \cap T)
&
=
&
(R \cap S) \cap T
\end{eqnarray*}
\textbf{$\cap$-fusion}:
\begin{eqnarray*}
%
T \comp (R \cap S) &\subseteq& (T \comp R) \cap (T \comp S)
\label{eq:020617a}
\\
(R \cap S) \comp T &\subseteq& (R \comp T) \cap (S \comp T)
%
\end{eqnarray*}
%\end{slide}

\marginproof{(\ref{eq:020605c})}{
%
\begin{eqnarray*}
&&
X \subseteq (R \cap R)
%
\just\equiv{meet-universal}
%
(X \subseteq R) \wedge
(X \subseteq R)
%
\just\equiv{logic}
%
(X \subseteq R)
%
\just\equiv{indirection}
%
 R \cap R = R
%
\end{eqnarray*}
}

\marginproof{(\ref{eq:020605d})}{
%
\begin{eqnarray*}
&&
X \subseteq (R \cap S)
%
\just\equiv{universal}
%
(X \subseteq R) \wedge
(X \subseteq S)
%
\just\equiv{logic}
%
(X \subseteq S) \wedge
(X \subseteq R)
%
\just\equiv{universal}
%
X \subseteq (S \cap R)
%
\just\equiv{indirection}
%
 R \cap S = S \cap R
%
\end{eqnarray*}
}

\marginproof{(\ref{eq:020617a})}{
\begin{eqnarray*}
&&
T \comp (R \cap S) \subseteq (T \comp R) \cap (T \comp S)
%
\just\equiv{meet-universal (\ref{eq:020627a}) }
%
T \comp (R \cap S) \subseteq T \comp R
\wedge
T \comp (R \cap S) \subseteq T \comp S
%
\just\implied{monotonicity}
%
R \cap S \subseteq R
\wedge
R \cap S \subseteq S
%
\just\equiv{cancellation}
%
\true
\end{eqnarray*}
}

\begin{Slide}{Meet and join}
\begin{eqnarray*}
\begin{tabular}{||c||c||c||c||}\hline
\multicolumn{4}{||c||}{$
(f\ X) \leq Y \equiv X \sqsubseteq (g\ Y)
$}
\\\hline\hline
  \bf Description
& $  f = g^\flat $
& $  g = f^\sharp $
& \bf Obs.
\\\hline\hline
  meet
& $  \Delta $
& $ \cap $
& $ \leq $ is $ (\subseteq \times \subseteq)$
\\\hline\hline
  join
& $ \cup $
& $  \Delta $
& $ \sqsubseteq $ is $(\subseteq \times \subseteq)$
\\\hline
\end{tabular}
\end{eqnarray*}
Join:
\begin{eqnarray*}
\cup(R,S) \subseteq Y \equiv (R,S) (\subseteq \times \subseteq) (Y,Y)
\end{eqnarray*}
that is,
\begin{eqnarray*}
R \cup S \subseteq Y \equiv R \subseteq Y \land S \subseteq Y
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Relational \emph{split}}
\small
Functions:
\begin{eqnarray*}
x = \split f g
&
\equiv
&
\arrayin{
	\p1 \comp x = f &\land& \p2 \comp  x = g
}
%
\end{eqnarray*}
Relations:
\def\A{%
\begin{array}{c}
(A \longleftarrow C)
\\
×
\\
(B \longleftarrow C)
\end{array}}
\def\C{A \times B \longleftarrow C}
\begin{eqnarray*}
\arrayin{
X \subseteq \split R S
& \equiv &
	\arrayin{
	\p1 \comp X \subseteq R &\land& \p2 \comp  X \subseteq S
	}
}
\\
\arLaw{(\A,\subseteq \times \subseteq)}
{(\C,\subseteq)}
{\green ((\p1 \comp)  \times (\p2 \comp )) \comp \Delta}
{\green \split\_\_}
{}
\end{eqnarray*}
\end{Slide}

\section{Properties}
$\red \split\_\_$ is an \textbf{right-adjoint}, so it distributes over meet
\begin{eqnarray*}
\split{R}{S \cap T} &=& \split R S \cap \split R T
\\
\split {S \cap T} R &=& \split S R \cap \split T R
\end{eqnarray*}
etc.
Moreover:
\begin{eqnarray}
\split{R}{S} & = & (\p1° \comp R) \cap (\p2° \comp S)
\label{eq:030418a}
%
\end{eqnarray}
Why? Again Galois at work:
%\end{slide}

\section{Calculation}
\small
\begin{eqnarray*}
X \subseteq \red \split R S
&
\equiv
&
\p1 \comp X \subseteq R \land \p2 \comp  X \subseteq S
%
\just\equiv{Galois connected $((f  \comp ),( f° \comp ) )$}
%
X \subseteq \p1° \comp R \land X \subseteq \p2° \comp S
%
\just\equiv{Galois connected $(\cap^\flat,\cap)$}
%
X \subseteq \red (\p1° \comp R \cap \p2° \comp S)
%
\just{::}{indirect equality}
%
\split R S = \p1° \comp R \cap \p2° \comp S
%
\end{eqnarray*}
%\end{slide}

\section{Pointwise $\split R S$}
%
\begin{eqnarray*}
(a,b)\split{R}{S} c
& \equiv &
(a,b)(\p1° \comp R \cap \p2° \comp S)c
%
\just\equiv{pointwise $\cap$}
%
(a,b)(\p1° \comp R)c \land (a,b)(\p2° \comp S)c
%
\just={rule $ (f\ b) R a \equiv b (f° \comp R) a $ }
%
\p1(a,b)  R c \land \p2(a,b) S c
%
\just={projections}
%
a R c \land b S c
%
\end{eqnarray*}
%\end{slide}

\begin{Slide}{Relational \emph{either}}
\small
Functions:
\begin{eqnarray*}
\alt f g = x
&
\equiv
&
f = x \comp i_1 ~\land g = x \comp i_2
%
\end{eqnarray*}
Relations:
\begin{eqnarray}
\alt R S \subseteq X & \equiv &
R \subseteq X \comp i_1 ~\land S \subseteq X \comp i_2
\label{eq:030322b}
\end{eqnarray}
Thus $\alt\_\_$ is a \textbf{left-adjoint}, it distributes over $\cup$, etc.
Moreover,
\begin{eqnarray}
\alt R S & = & (R \comp |(conv i1)|) \cup (S \comp |(conv i2)|)
\label{eq:030407a}
\end{eqnarray}

\section{Domain and range}
Suppose one computes |ker(split R id)| instead of |ker R|.
Since |ker(split R id) = cap (ker R) id|, a coreflexive relation is obtained.
This is called the \emph{domain} of |R|, written:
\begin{eqnarray}
	|dom R = ker(split R id)|
\end{eqnarray}

\small
\begin{eqnarray*}
\begin{tabular}{||c||c||c||c||}\hline
\multicolumn{4}{||c||}{$(f\ X) \subseteq Y \equiv X \subseteq (g\ Y)$}
\\\hline\hline
  \bf Description
& $  f = g^\flat $
& $  g = f^\sharp $
& \bf Obs.
\\\hline\hline
  domain
& $  \dom{} $
& $  (\top \comp ) $
&    lower $\subseteq $ restricted to coreflexives
\\\hline
  range
& $  \rng{} $
& $  ( \comp \top) $
&    lower $\subseteq $ restricted to coreflexives
\\\hline
\end{tabular}
\end{eqnarray*}
cf.
\begin{eqnarray*}
\\
\arraycolsep=1em
\begin{array}{ccc}
%
\mnode{A}{A}
&
&
\mnode{C}{A}
	\arl{C}{A}{\dom X \subseteq Y}
\\
% \subseteq
\\
&
\mnode{B}{B}
	\ardl{A}{B}{\top}
	\ardr{C}{B}{X}
\end{array}
&&	\dom X \subseteq Y \equiv X \subseteq \top \comp Y
%	\label{eq:030608a}
\end{eqnarray*}
%\end{slide}

\section{Domain and range}
Dualization:
\begin{eqnarray*}
\dom R = \ran{R°}
\end{eqnarray*}
{Explicit definitions}:
%
\begin{eqnarray}
\ran R
&
=
&
\img R \cap id
%
\label{eq:020605n}
\\
\dom R
& =
& \img{R°} \cap id = \ker R \cap id
\label{eq:020624j}
\end{eqnarray}
Facts:
\begin{eqnarray}
R &=& R \comp (\dom R)
\label{eq:020619c}
\\
R &=& (\rng R) \comp R
\end{eqnarray}
%
%\end{slide}

\section{Domain and split}
The following fact holds:
\begin{eqnarray*}
\split R S °  \comp \split X Y
& = &
(R° \comp X) \cap (S° \comp Y)
\label{eq:BM97:(5.8)}
\end{eqnarray*}
Corollary:
\begin{eqnarray*}
\dom R
&
=
&
\ker{\split{id} R}
\end{eqnarray*}
Another consequence of the fact above:
\begin{eqnarray*}
\ker{R} \subseteq \ker{(S \comp R)}
&
\implied
&
\mbox{$S$ entire }
%
\end{eqnarray*}
Corollary:
\begin{eqnarray*}
\ker{R} &\subseteq& \ker{(f \comp R)}
\end{eqnarray*}
%\end{slide}

\section{Comprehending relations}
For each $\larrow A R B$ define its \textbf{graph} or \emph{comprehension} by
%
\begin{eqnarray*}
{\cal G} \ R = \setdef{(b,a)}{b R a}
\end{eqnarray*}
Clearly,
\(\red
R = \mean{{\cal G} \ R}
\)
and so we often abbreviate $\cal G\ R$ to $R$.

The graph of every \textbf{coreflexive} $S$ is made simpler for obvious reasons:
\begin{eqnarray*}
{\cal G}\ S = \setdef{a}{a S a}
\end{eqnarray*}
%\end{slide}
%
\section{Finite relations}
%small
$R$ is said to be \emph{finite} wherever $\cal G\ R$ is a finite set.
%
\begin{itemize}
\item	Finite relations, which can be enumerated, browsed and stored in a computer, are the subject of  \textbf{relational database} design.
\item	Every finite, \textbf{simple} relation expresses a \textbf{functional dependency}.
\item	The graphs of finite and simple relations are called \textbf{mappings} in VDM-SL terminology.
\item	We will use greek identifiers ($\sigma, \tau$ etc) to denote (finite) mappings
\end{itemize}
%\end{slide}

\section{VDM-SL mapping notation}
\begin{itemize}
\item	Datatype: $\red \vdmslMap A B$
\item	Pointwise % expression of (finite) mappings we will adopt the
VDM-SL concrete syntax
\begin{eqnarray*}
\setdef{ a \mapsto b}{b \mathbin\sigma  a}
\end{eqnarray*}
replaces $\red \setdef{(b,a)}{b \mathbin\sigma a}$.
\item	In VDM-SL notation, $\red b \mathbin\sigma a$ is furthermore rephrased as
$\red a \in \dom\sigma \land b = \sigma(a) $ --- cf.\ $\red \sigma = \sigma \comp \dom\sigma $ --- that is, we have
\begin{eqnarray*}
\sigma &=& \setdef{a \mapsto \sigma(a)}{a \in \dom\sigma}
\end{eqnarray*}
\end{itemize}
%\end{slide}

\begin{Slide}{Meaning of VDM-SL specs}
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
  Spec(a: A) r: B
  pre precond(a)
  post postcond(r,a);

\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
where
\begin{eqnarray*}
\larrow{A}{precond}{bool}
&,&
\larrow{B \times A}{postcond}{bool}
\end{eqnarray*}

means $\larrow A{Spec}B$ where
\begin{eqnarray*}
Spec &\deff& \mean{postcond} \comp \mean{precond}
\end{eqnarray*}
\end{Slide}

\section{VDM-SL $Sqrt$ spec }
\small
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
  Sqrt(x: real) r: real
  pre true
  post sq(r) = x ;
\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
means
\begin{eqnarray*}
&&
\arrayin{
Sqrt &=& \mean{\lambda(r,x). sq\ r = x}
}
%
\just\equiv{ meaning of a binary predicate }
%
\arrayin{
r\ Sqrt\ x &\equiv& (sq\ r)\ id\ x
}
%
\just\equiv{ converse of a function; natural-$id$ (\ref{eq:981211d}) }
%
\arrayin{
Sqrt &=& sq°
}
%
\end{eqnarray*}
%\end{slide}

\section{Turning implicit specifications...}
\emph{Sorting} in \Vdmsl\ notation:
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
  Sort(l: seq of int) r: seq of int
  post IsOrdered(r) and IsPermutation(r,l);

\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
where
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
  IsPermutation: seq of int * seq of int -> bool
  IsPermutation(l1,l2) ==
    forall e in set (elems l1 union elems l2) &
      card {i || i in set inds l1 & l1(i) = e} =
      card {i || i in set inds l2 & l2(i) = e};
\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
%\end{slide}

%\overlays{3}{%
\section{\ldots into relational models}
\ldots abbreviates to
\begin{eqnarray*}
Sort \deff \mean{IsOrdered}  \comp
\onlySlide*{1}{\red
{IsPermutation}
}
\fromSlide*{2}{\red
(\ker{\rnode1{seq2bag}})
}
\end{eqnarray*}

\def\s#1{\\\rule{#1ex}{0pt}}

\fromSlide*{2}{%
\noindent
assuming
\begin{eqnarray*}
\rnode2{
\begin{vdmraw}{1.0}\scriptsize
\begin{alltt}
~~seq2bag: seq of int -> map int to nat1
\s2
  seq2bag(l) ==
\s4
    \{ e ||-> card \{ i || i in set inds l \& l(i) = e \} ||
\s9
      e in set elems l \};
\s0
\end{alltt}
\end{vdmraw}
}
\end{eqnarray*}
\nccurve[linecolor=green,angleA=-150,angleB=150]{->}{1}{2}
}
\fromSlide*{3}{%small
\texttt{IsPermutation} is an \textbf{equivalence} because
$\ker f$ always is reflexive, symmetric and transitive.
}
%\end{slide}
%}

\CUT{
\section{Using kernel in specifications}
\small
Implict specification of \emph{sorting} in VDM notation:
\begin{vdmraw}{0.9}\scriptsize
\begin{verbatim}
  Sort(l: seq of real) r: seq of real
  post IsPermutation(r,l) and IsOrdered(r);
\end{verbatim}
\end{vdmraw}

\noindent where
\vdmbox1{%
  IsPermutation: seq of real * seq of real -> bool
\\
  IsPermutation(l1,l2) ==
\tab2
    forall e in set (elems l1 union elems l2) \&
\tab4
      card \{i || i in set inds l1 \& l1(i) = e\} =
\tab4
      card \{i || i in set inds l2 \& l2(i) = e\};
}
\noindent
abbreviates to
%\end{slide}

\begin{Slide}{Using kernel in specifications}
\small
\begin{eqnarray*}
Sort &\deff& IsOrdered \comp (\ker{seq2bag})
\end{eqnarray*}
where
\vdmbox1{%
seq2bag: seq of real -> map real to nat1
\\
seq2bag(l) ==
\tab1
\{ e ||-> card \{ i || i in set inds l \& l(i) = e \} ||
\tab4
e in set elems l \};
}
\end{Slide}
}

\begin{Slide}{Relational semantics of VDM-SL}
From the VDM-SL on-line manual:
\begin{center}\small
\begin{tabular}{||c||c||c||}
\hline
Operator & Name & Semantics description
\\\hline\hline
\texttt{s $\vdmslDrt$ m}
& Domain restrict to
&
\begin{minipage}{.5\textwidth}
~\\
Creates the map consisting of the elements in \texttt m whose key is in
\texttt s. \texttt s need not be a subset of
\texttt{dom m}.
\\
\end{minipage}
\\\hline
\end{tabular}
\end{center}
Formal \textbf{semantics}:
%
\begin{eqnarray*}
%
\mean{s \vdmslDrt m}
&
=
&
\mean m \comp \mean s
% \label{eq:030906a}
\end{eqnarray*}
where
\(\red
\mean s
\)
is correflexive and
\(\red
\mean m
\)
is simple.
\end{Slide}

\section{Relational semantics of VDM-SL}
From the VDM-SL on-line manual:
\begin{center}\small
\begin{tabular}{||c||c||c||}
\hline
Operator & Name & Semantics description
\\\hline\hline
\texttt{m1 $\vdmslPlus$ m2}
& Override
&
\begin{minipage}{.65\textwidth}
~\\
overrides and merges \texttt{m1} with \texttt{m2}, i.e.\ it is like a merge
except that \texttt{m1} and \texttt{m2} need not be compatible; any common
elements are as by \texttt{m2} (so \texttt{m2} overrides \texttt{m1}.)
\\
\end{minipage}
\\\hline
\end{tabular}
\end{center}
Formal \textbf{semantics}:
%
\begin{eqnarray*}
%
\mean{m_1 \vdmslPlus m_2}
&
=
&
\mcond	{
	\mean{m_2}
	}{
	\mean{m_2}
	}{
	\mean{m_1}
	}
\end{eqnarray*}
cf.\ relational \textbf{McCarthy} conditional:
%\end{slide}

\begin{Slide}{Relational {McCarthy} conditional}
\small
It is defined by
\begin{eqnarray*}
\mcond R S T
&
\deff
&
(S \comp \dom R) \cup T \comp (id - \dom R)
\end{eqnarray*}
where
\begin{eqnarray*}
\begin{tabular}{||c||c||c||c||}\hline
\multicolumn{4}{||c||}{$(f\ X) \subseteq Y \equiv X \subseteq (g\ Y)$}
\\\hline\hline
  \bf Description
& $  f = g^\flat $
& $  g = f^\sharp $
& \bf Obs.
\\\hline
  difference
& $  (\_- R) $
& $  (R \cup ~) $
& ~
\\\hline
\end{tabular}
\end{eqnarray*}
that is,
\CUT{%
\begin{eqnarray*}
X - R \subseteq Y & \equiv & X \subseteq R \cup Y
\end{eqnarray*}
and so
}
\begin{eqnarray*}
X - R \subseteq Y & \equiv & X \subseteq R \cup Y
\\
X - R &=& \bigcap \setdef{Y}{X \subseteq R \cup Y}
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Reasoning about VDM-SL}
We want to prove VDM-SL properties such as
\begin{eqnarray}
%
X \vdmslDrt (Y \vdmslDrt \sigma)
&
=
&
(X \cap Y) \vdmslDrt \sigma
\label{eq:030908a}
\\
\enset{} \vdmslDrt \sigma
&
=
&
\enset\mapsto
\label{eq:030908b}
\\
X \vdmslDrt (\sigma_1 \vdmslPlus \sigma_2)
&
=
&
(X \vdmslDrt \sigma_1) \vdmslPlus (X \vdmslDrt \sigma_2)
%
\end{eqnarray}
First, some properties of coreflexives:
\begin{itemize}
\item
Coreflexives are \textbf{symmetric} and \textbf{transitive}:
\begin{eqnarray}
 &
        R = R° = R \comp R = R \cap id
 &
\label{eq:020605j}
\end{eqnarray}
\item
\textbf{Meet} of two coreflexives is composition:
\begin{eqnarray}
 &
       R \cap S = R \comp S
&
\label{eq:020605i}
\end{eqnarray}
\item Trivial:
\begin{eqnarray}
       R \comp T \subseteq T
\label{eq:020617l}
\\
       T \comp R \subseteq T
\label{eq:020617m}
\end{eqnarray}
\end{itemize}
\end{Slide}

\marginproof{(\ref{eq:020605j})}{
\begin{eqnarray*}
&&
R \subseteq id
%
\just\equiv{abbreviation}
%
R = R \cap id
%
\end{eqnarray*}
Symmetry:
\begin{eqnarray*}
&&
R
%
\just\subseteq{fact (\ref{eq:020605k})}
%
R \comp R° \comp R
%
\just\subseteq{coreflexive $R$}
%
id \comp R° \comp id
%
\just={identities}
%
R°
\end{eqnarray*}
Transitivity:
\begin{eqnarray*}
&&
R \subseteq id
%
\just\equiv{fact (\ref{eq:020617l})}
%
R \comp R \subseteq R
%
\end{eqnarray*}
}

\normalproof{(\ref{eq:020605i})}{
%
Ping-pong $\implies$:
\begin{eqnarray*}
&&
\mbox{$R$ and $S$ are coreflexives}
%
\just\implies{by (\ref{eq:020617l}, \ref{eq:020617m})}
%
R \comp S\subseteq R \wedge R \comp S \subseteq S
%
\just\equiv{by (\ref{eq:020627a})}
%
R \comp S\subseteq (R \cap S)
%
\end{eqnarray*}
Ping-pong $\implied$:
%
\begin{eqnarray*}
&&
R \cap S \subseteq R \comp S
%
\just\equiv{identity and (\ref{eq:020605j})}
%
R \comp id \cap S \subseteq id \cap R \comp R° \comp S
%
\just\equiv{$S=id$ in (\ref{eq:020605l})}
%
\true
%
\end{eqnarray*}
}

\section{Example of proof}
\small
\begin{eqnarray*}
&&
\mean{X \vdmslDrt (Y \vdmslDrt \sigma)}
%
\just={relational meaning of $\vdmslDrt$}
%
\mean{Y \vdmslDrt \sigma} \comp \mean X
%
\just={relational meaning of $\vdmslDrt$}
%
(\mean\sigma \comp \mean Y) \comp \mean X
%
\just={associativity of $\comp$ and coreflexives}
%
\mean\sigma \comp (\mean X \comp \mean Y)
%
\just={ meet of two coreflexives is composition }
%
\mean\sigma \comp (\mean X \cap \mean Y)
%
\end{eqnarray*}
%\end{slide}

\section{Proof continued}
\small
\begin{eqnarray*}
&&
\mean\sigma \comp (\mean X \cap \mean Y)
%
\just={ meaning of set intersection }
%
\mean\sigma \comp \mean{X \cap Y}
%
\just={relational meaning of $\vdmslDrt$}
%
\mean {(X \cap Y) \vdmslDrt \sigma}
%
\end{eqnarray*}
%\end{slide}

\section{Another proof}
\small
\begin{eqnarray*}
&&
\mean{X \vdmslDrt (\sigma_1 \vdmslPlus \sigma_2)}
%
\just={relational meaning of $\vdmslDrt$ and $\vdmslPlus$}
%
(\mcond{\mean{\sigma_2}}{\mean{\sigma_2}}{\mean{\sigma_1}}) \comp \mean X
%
\just={McCarthy fusion law}
%
\mcond{\mean{\sigma_2} \comp \mean X}{\mean{\sigma_2} \comp \mean X}{\mean{\sigma_1} \comp \mean X}
%
\just={relational meaning of $\vdmslDrt$}
%
\mcond
{\mean{X \vdmslDrt \sigma_2}}
{\mean{X \vdmslDrt \sigma_2}}
{\mean{X \vdmslDrt \sigma_1}}
%
\just={relational meaning of $\vdmslPlus$}
%
\mean{(X \vdmslDrt \sigma_1) \vdmslPlus (X \vdmslDrt \sigma_2)}
%
\end{eqnarray*}
%\end{slide}

\section{Etc.}
Home work: define the relational semantics of \eg.
\begin{center}\small
\begin{tabular}{||c||c||c||}
\hline
Operator & Name & Semantics description
\\\hline
\texttt{m $\vdmslDrb$ s}
& Domain restricted by
&
\begin{minipage}{.4\textwidth}
~\\
Creates the map consisting of the elements in \texttt m whose key is not in
\texttt s. \texttt s need not be a subset of
\texttt{dom m}.
\\
\end{minipage}
\\\hline
\end{tabular}
\end{center}
and prove similar properties.
%\end{slide}

\section{Override pointwise}
Since
\begin{eqnarray*}
\dom{(\sigma_1 \vdmslPlus \sigma_2)} =
\dom{\sigma_1} \cup \dom{\sigma_2}
\end{eqnarray*}
we have, after expansion of the relational definition:
{\red\small
\begin{verbatim}
s1 ++ s2 ==
   { k ||-> if k in set dom s2
           then s2(k)
           else s1(k)
       || k in set dom s1 union dom s2 }
\end{verbatim}
}
The above proof over this definition would have been far less compact.
%\end{slide}

\section{Inductive override}
Another version of map override:
{\red\small
\begin{verbatim}
s1 ++ s2 ==
   if s1 = {||->}
   then s2
   else let k in set dom s1
        in  { k ||-> if k in set dom s2
           then s2(k)
           else s1(k) } munion { k } <-: s1 ++ s2

\end{verbatim}
}

How do we arrive at this recursive scheme?
\begin{center}
See next set of slides.
\end{center}
%\end{slide}

\section{Bibliography notes}
\F

\section{Alloy support library}
\fbox{not given in the current version of this textbook}\\

\part{Calculating with Relations}

\chapter{Introduction to Relational Calculation}
%label{cha:120411a}

\section{Functions are not enough}
Consider the following fragment of a  requirement posed by a (fictional) telecommunication
company:
\begin{quote}\it\small
(...) For each
\emph{list of calls} stored in the mobile phone (e.g.\ numbers dialled, SMS messages, lost calls), the \emph{store}
operation should work in a way such that
(a)
the more recently a \emph{call} is made the more accessible it is;
(b)
no number appears twice in a list;
(c)
only the last 10 entries in each list are stored.
\end{quote}
A tentative, functional implementation of the $store$ operation could be
\begin{eqnarray*}
\start	|store: Call -> ListOfCalls -> ListOfCalls|
\more	|store c l = c : l|
\end{eqnarray*}
However, such a version of $store$ \textbf{fails} to preserve the properties required
in the fragment above in case
\begin{itemize}
\item
$\relax length\ l = 10$, or
\item
$\relax c \in elems\ l$, equivalent to
$\relax \rcb\exists i {1 \leq i \leq length\ l}{l\ i = c}$
\end{itemize}
Here |elems l = {l i || i ins inds l}| yields
the set of all elements of a finite list $\relax l$, where $\relax inds\ l$
denotes the set of all indices of $\relax l$, that is, $\relax inds\
\enseq{} = \enset{}$ and $\relax inds\ l = \enset{1, \ldots, length\ l}$ otherwise.

Clearly, the designer will have to \textbf{restrict} the application of $store$
to input values $c,l$ such that the given properties are preserved.
This could be achieved by adding a \textbf{pre-condition}:
\begin{eqnarray*}
\start	|store: Call -> ListOfCalls -> ListOfCalls|
\more	|store c l = c : l|
\more	|pre (length l < 10 && not(c ins elems l)|
\end{eqnarray*}
Such a pre-condition is a predicate telling the range of \textbf{acceptable}
input values, to be read as a \emph{warning} provided by the designer that
the function may misbehave outside such range of values.

Thus $store$ would become a \textbf{partial function}, that is, a function defined
only for some of its inputs --- a symptom
that requirements have been misunderstood.
However, partial functions are the rule rather than the exception in mathematics
and computing.
For example, in the numeric field, we know what $1/2$ means; what about
$1/0$? --- \emph{division} is a partial function; and in list processing,
given a sequence $s$, what does $s\ i$ mean in case $i > length\ s$?
--- list \emph{indexing} is a partial operation.

Since the formal meaning of a program must always be a well-defined mathematical object,
one has to ensure that no partial function is used outside its domain of definition.
The following strategy is recommended for safety, in presence of partial functions:
\begin{itemize}
\item	Write your model as if all functions were total.
\item	Chase the partial ones and add predicates to the pre-condition which ensure that
all such functions are called within their domain of definition.
\end{itemize}

\paragraph{Pre-conditions for safety.}
Shifting to another example, we wish to specify the operation which subtracts
the first from the second element of a finite sequence of natural numbers
\begin{eqnarray*}
\TYPE
Sub21: \Seq\N \rightarrow \N_0
\FUNC
Sub21 \ s \deffVdm s\ 2 - s\ 1
\end{eqnarray*}
but realize that the argument list is \emph{required} to have at least two
elements. So we add a pre-condition
\begin{eqnarray*}
\TYPE
Sub21: \Seq\N \rightarrow \N_0
\FUNC
Sub21 \ s \deffVdm s\ 2 - s\ 1
\PRE
length\ l \geq 2
\end{eqnarray*}
However, within the natural numbers, subtraction is a partial function too.
So we add another clause to the precondition:
\begin{eqnarray}
\TYPE
Sub21: \Seq\N \rightarrow \N_0
\nonumber
\FUNC
Sub21 \ s \deffVdm s\ 2 - s\ 1
\nonumber
\PRE
length\ l \geq 2 \wider\land s\ 2 \geq s\ 1
\label{eq:071015a}
\end{eqnarray}
What if the specifier decides to write clause
\begin{eqnarray}
\textbf{pre~} length\ l = 2 \wider\land s\ 2 \geq s\ 1
\label{eq:071015b}
\end{eqnarray}
instead?

xxxxxxxxxxxxxxxxxxxxxxxxxx

\begin{eqnarray}
store \ c \wider\deffVdm (take \ 10) \comp (c:) \comp filter (c \not=)
\label{eq:070321a}
\end{eqnarray}
where $take$ and $filter$ are the obvious functions.


\fbox{
VOU AQUI
}

Recall from chapter \ref{ch:990122a} the following function declaration
\begin{eqnarray*}
|succ| &:& \rarrow \N {} \N
\\
|succ n| &\deff& n + 1
\end{eqnarray*}
which expresses the computation rule of the \emph{successor} function.
Now compare this with
\begin{eqnarray*}
AtMostSq &:& \rarrow \N {} \N
\\
m \ AtMostSq \ n &\deff& m \leq n^2
\end{eqnarray*}
What this says is that $AtMostSq$ is a (binary) relation on natural numbers,
the relation holding between two such numbers $m$ and $n$ ($m \ AtMostSq \ n$) iff
$m$ is at most the square of $n$ ($m \leq n^2).$

Relations generalize functions, as one can see by declaring |succ|
``as a relation'',
\begin{eqnarray*}
|succ| &:& \rarrow \N {} \N
\\
m \ |succ| n &\deff& m = n + 1
\end{eqnarray*}
As a rule, dummy $m$ is omitted because functions are \emph{univocal},
that is, no two different $m$ and $m'$ are such that $m \ |succ| n \land m' \ |succ| n$.
In fact, the following holds about \emph{any} function $f$,
where $b \ f \  a$ means the same as $b = f \ a$ --- as we have just learnt from |succ|:
\begin{itemize}
\item	\emph{univocality} (or \aspas{left} uniqueness):
\begin{eqnarray}
	\arrayin{b \ f \ a \land b' \ f \ a & \implies & b = b' }
	%label{eq:041213a}
\end{eqnarray}
\item	\emph{Leibniz principle}:
\begin{eqnarray}
\arrayin{ a = a' & \implies & f \ a = f \ a' }
\label{eq:041213b}
\end{eqnarray}
\end{itemize}
Clearly, not every relation obeys (\ref{eq:041213a}), for instance
\begin{eqnarray*}
2 < 3 \land 1 < 3 & \not\Rightarrow & 2 = 1
\end{eqnarray*}
Relations which do will be referred to as \emph{simple}, according to a terminology to
follow shortly.

Implication (\ref{eq:041213b}) expresses the (philosophically) interesting fact that
no function (observation) can be found able to distinguish between two equal objects.
This is another fact true about functions which does not generalize to binary relations,
as we shall see when we come back to this later.

The intuitions above should suffice for us to start generalizing what we know about
functions, from the preceding chapters, to binary relations. First of all,
such relations are denoted by arrows exactly in the same way functions are.
So we will write
\(
R : \larrow A{}B
\),
\(
R : \rarrow A{}B
\),
\(
\larrow A{R}B
\) or
\(
\rarrow A{R}B
\)
to indicate that relation $R$ relates $B$ values to $A$ values.
That is, relations are \emph{typed} in the same way as functions.
Following
a widespread convention, functions are denoted by lowercase characters (e.g.\ $f$,
$g$, $\phi$) or identifiers starting with a lowercase characters, while uppercase
letters are reserved to arbitrary relations.

However (as we have just seen),
relations do not have an associated computation rule. Instead, to define
the behaviour (or meaning) of a relation we write an input/output predicate,
such as e.g.\ $ m \leq n^2$ above, which is will be referred to as the relation's
\emph{post-condition}:
\begin{eqnarray*}
R &:& \rarrow A {} B
\\
b \ R \ a &\deff& \phi(b,a)
\end{eqnarray*}
This explains why some notations write the above as follows, introducing a keyword
\textsf{post} which assumes two dummies unambiguously associated to the input and
output types:
\begin{eqnarray*}
&& R (b: B) (a: A)
\\
&& \textsf{post} \ \phi(b,a)
\end{eqnarray*}
For example, the definition of the square root operation will be written
\begin{eqnarray*}
&& Sqrt (b: \R) (a: \R)
\\
&& \textsf{post} \ b^2 = a
\end{eqnarray*}
in this notation. In the sequel, we will privilege the format $b \ R \ a$ for
expressing relational assertions, as for instance in
\begin{eqnarray*}
1 &\leq& 2
\\
\texttt{John} & IsFatherOf & \texttt{Mary}
\\
3 & = (1 +) & 2
%
\end{eqnarray*}

It should be noted that relations are used in virtually every body of science and
it is hard to think of another way to express human knowledge in philosophy and
epistemology. Let us proceed with our study of the concept by analogy with a similar
study carried out about functions in chapter \ref{ch:990122a}.

\section{Relational composition and converse}
Such as functions, relations can be combined via composition ($R \comp S$),
defined as follows:
\begin{eqnarray}
b (R \comp S) c & \equiv & \rcb\exists a \relax {b \ R \ a \land a \ S \ c}
\end{eqnarray}
Example: $Uncle = Brother \comp Parent$, that expands to
\begin{eqnarray*}
	u\ Uncle\ c \wider\equiv \rcb\exists p{}{u \ Brother \ p \land p \ Parent \ c}
\end{eqnarray*}
(Note how this rule
% of the \textbf{PF}\footnote{PF stands for ``point-free''.}-transform
\emph{removes} $\exists$ when applied from right to left.)
%
A simple calculation shows this to instantiate to (\ref{eq:990115c}) for the
special case where $R$ and $S$ are functions:
\begin{eqnarray*}
%
	b (f \comp g) c & \equiv & |rcb exists a () (b f a && a g c)|
%
\just\equiv{ functions are univocal (simple) relations }
%
	\rcb\exists a \relax {b = f \ a \land a = g \ c}
%
\just\equiv{ |trading|-trading }
%
	|rcb exists a (b= f a) (a g c)|
%
\just\equiv{ substitution, cf.\  ``one-point'' rule }
%
b = f (g \ c)
%
\end{eqnarray*}

Everywhere $T = R \comp S$ holds, the replacement of $T$ by $R \comp S$ will be referred
to as a ``factorization'' and that of $R \comp S$ by $T$ as ``fusion''. (Equation
(\ref{eq:050523c}) is thus an example of a factorization.) Every relation $\larrow
A R B$ admits two trivial factorizations
\begin{eqnarray}
\start R = R \comp id_A
\more	R = id_B  \comp R
\end{eqnarray}
where, for every $X$, $id_X$ is the identity relation mapping every element
of $X$ onto itself (\ref{eq:990124a}).

In section \ref{sec:Isos} we introduced a very special case of function $f$
--- isomorphism --- which has a converse $f°$ such that (\ref{eq:060912a}) holds.
A major advantage of generalizing functions to relations is that \emph{every} relation
$R$ has a converse $R°$ defined by
\begin{eqnarray}
a (R°) b & \equiv & b R a
\end{eqnarray}
Converses of functions  enjoy a number of properties from which the following is singled
out as a way to introduce / remove then from expressions:
%
\begin{eqnarray}
b(f° \comp R \comp g)a
&
\equiv
&
(f\ b) R (g\ a)
\label{eq:040120c}
\end{eqnarray}
For instance, the consequent of implication (\ref{eq:041213b})
could have been written $a(f° \comp id \comp f)a'$, or even simpler as $a(f° \comp f)a'$,
as it takes very little effort to show:
\begin{eqnarray*}
&&
a(f° \comp id \comp f)a'
%
\just\equiv{ (\ref{eq:040120c}) }
%
(f\ a) id (f\ a')
%
\just\equiv{ $b \ f \  a \equiv b = f \ a$ }
%
(f\ a) = id (f\ a')
%
\just\equiv{ (\ref{eq:990124a}) }
%
f\ a = f\ a'
%
\end{eqnarray*}

\section{Relational equality}
Recall that function equality was established by extensionality (\ref{eq:060128a}).
Can we do the same for relations? The relational generalization of (\ref{eq:060128a})
will be
\begin{eqnarray}
R = S & \iff & \rcb\forall{a,b}{a\in A \land b\in B}{b \ R \ a ~ \equiv ~ b \ S \ a}
\label{eq:060912b}
\end{eqnarray}
Since equivalence is bi-implication, we can replace the body of the quantification
by
\begin{eqnarray*}
b \ R \ a ~ \implies ~ b \ S \ a \land b \ S \ a \implies b \ R \ a
\end{eqnarray*}
Now, what does $b \ R \ a ~ \implies ~ b \ S \ a$ mean? It simply is relational
\emph{inclusion},
\begin{eqnarray}
R \subseteq S & \iff & \rcb\forall{a,b}{}{b \ R \ a ~ \implies ~ b \ S \ a}
\label{eq:060913a}
\end{eqnarray}
So (\ref{eq:060912b}) can be written in less symbols as follows:
\begin{eqnarray}
R = S & \iff & R \subseteq S \land S \subseteq R
\label{eq:060912b?}
\end{eqnarray}

Equivalence (\ref{eq:060913a}) is what we need to complete the exercise of simplifying
(\ref{eq:041213b}):

\begin{eqnarray*}
&&
\rcb\forall{a,a'}\relax{ a = a' \ \implies \ f \ a = f \ a' }
%
\just\equiv{ introduction of $id$ in antecendent; consequent as calculated already }
%
\rcb\forall{a,a'}\relax{ a = id \ a' \ \implies \ a(f° \comp f)a' }
%
\just\equiv{ $b \ f \  a$ means the same as $b = f \ a$ }
%
\rcb\forall{a,a'}\relax{ a \ id \ a' \ \implies \ a(f° \comp f)a' }
%
\just\equiv{ (\ref{eq:060913a}) }
%
id \subseteq f° \comp f
%
\end{eqnarray*}

\F
Go on with \cite{Ol08b}
\F

Note that relational inclusion ($\subseteq$) is a partial order: it is reflexive,
\begin{eqnarray}
\rcb\forall R \relax {R \subseteq R}
\end{eqnarray}
it is transitive, ie.\ for all $R,S,T$
\begin{eqnarray}
R \subseteq S \land S \subseteq T & \implies & R \subseteq T
\end{eqnarray}
holds and it is antisymmetric:
(\ref{eq:060912b}) establishes $\subseteq$-antisymmetry, which
provides a method for calculating relational equality ($R \subseteq S$),
known as \emph{circular-inclusion} or jocosely as the ``ping-pong'' method:
first calculate $R \subseteq S$ (``ping'')
and then $S \subseteq R$ (``pong''). This can be performed in one go by adopting the
following calculation layout:
\begin{eqnarray*}
R &\subseteq& \ldots
\\
  &\subseteq& S
\\
  &\subseteq& \ldots
\\
  &\subseteq& R
\end{eqnarray*}
This has the advantage of making apparent that not only $R$ and $S$ are the same,
but also every two steps in the circular reasoning are so (just choose a different
starting and stop point in the circle).
\F

xxxxxxxxx

However (as we have just seen),
relations do not have an associated computation rule. Instead, to define
the behaviour (or meaning) of a relation we write an input/output predicate,
such as e.g.\ $ m \leq n^2$ above, which is will be referred to as the relation's
\emph{post-condition}:
\begin{eqnarray*}
R &:& \rarrow A {} B
\\
b \ R \ a &\deff& \phi(b,a)
\end{eqnarray*}
This explains why some notations write the above as follows, introducing a keyword
\textsf{post} which assumes two dummies unambiguously associated to the input and
output types:
\begin{eqnarray*}
&& R (b: B) (a: A)
\\
&& \textsf{post} \ \phi(b,a)
\end{eqnarray*}
For example, the definition of the square root operation will be written
\begin{eqnarray*}
&& Sqrt (b: \R) (a: \R)
\\
&& \textsf{post} \ b^2 = a
\end{eqnarray*}
in this notation. In the sequel, we will privilege the format $b \ R \ a$ for
expressing relational assertions, as for instance in
\begin{eqnarray*}
1 &\leq& 2
\\
\texttt{John} & IsFatherOf & \texttt{Mary}
\\
3 & = (1 +) & 2
%
\end{eqnarray*}

\begin{Slide}{Specifications as ``properties''}
\begin{itemize}
\item
Specification of \emph{square root}:
\begin{eqnarray*}
(sqrt\ x)^2 = x
\end{eqnarray*}
that is
\begin{eqnarray*}
sq \comp sqrt = id
\end{eqnarray*}
(= $sqrt$ has left inverse $sq$)
\item
Specification of $sort$:
\begin{eqnarray*}
l'=\ap{sort}l	& \equiv & (IsOrdered\ l') \land IsPermutation(l',l)
\end{eqnarray*}
\end{itemize}
\end{Slide}

\begin{Slide}{Relational approach}
Need to model
\begin{itemize}
\item	total/\textbf{partial} functions
\item	\textbf{non-determinism}
\item	\textbf{properties}, datatype \textbf{invariants} and loop-invariants
\item	orders and \textbf{inductive} structures
\item	vagueness or \textbf{under-specification}\ldots
\end{itemize}
\fromSlide*{2}{%
$\implies$ adoption of {\red binary relations},
which have a long tradition in the\ldots
}
\end{Slide}

\begin{Slide}{Pre/post specification style} % \cite{Jo81,Jo83}.
\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny
\begin{verbatim}
  Sort(l: seq of int) r: seq of int
  post IsPermutation(r,l) and IsOrdered(r);

  IsPermutation: seq of int * seq of int -> bool
  IsPermutation(l1,l2) == .....................

  IsOrdered: seq of int -> bool
  IsOrdered(l) == .............

\end{verbatim}
\end{vdmraw}
\end{eqnarray*}

\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny
\begin{verbatim}
  gets(s: set of nat) r: nat * set of nat
  pre  card s > 0
  post r.#1 in set s and r.#2 = s \ {r.#1} ;

\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
\end{Slide}

\section{Pre/post specification layout}\small
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
  Spec(a: A) r: B
  pre Precond(a)
  post Postcond(r,a);

\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
where
\begin{eqnarray*}
Precond &:& A \tfunc 2
\\
Postcond &:& B \times A \tfunc 2
\end{eqnarray*}
leads to the \textbf{binary relation} approach:
\begin{eqnarray*}
Postcond \in 2^{B \times A }
& \equiv &
Postcond \subseteq B \times A
\end{eqnarray*}
%\end{slide}

\begin{Slide}{From predicates to relations}
\begin{itemize}
\item
\textbf{Predicate logic}
connectives such as e.g.\ $\land$ are ``overloaded'' operators
\item
They can be regarded as models of a more
structured logic --- that of \textbf{binary relations}
\item
\textbf{Functions} generalize to \textbf{binary relations}
in a very natural way.
\item
Predicates, sets, functions and relations can \textbf{all} be combined in a \textbf{single} \textbf{relational calculus}
%This calculus can be very \textbf{elegantly} expressed in terms
%of Galois connections
\item
Usual infix notation, \eg\ $\red a < b$, can be generalized to any relation $R$,
\eg\ $\red a R b$
\end{itemize}
\end{Slide}

\section{Sets / functions made relational}
Strategy: identify every
\begin{itemize}
\item
\textbf{function} $f : A \tfunc B $ with the binary relation relating $a$ and $b$
iff $b = f\ a$.
So, $\red b f a$ literally means $\red b=f\ a$.

\item
binary \textbf{predicate} $\rarrow{A \times B}{p}{bool}$ with binary relation $\mean p$
such that $ a \mean p b \equiv p(a,b)$.
\item
unary \textbf{predicate} $\rarrow{A}{q}{bool}$ with binary relation $\mean q$
such that $ a \mean q b \equiv a =b \land (q\ a)$.
\CUT{%
So $\mean p$ is
\textbf{coreflexive}
\begin{eqnarray*}
\mean p \subseteq id
\end{eqnarray*}
}

\item
\textbf{set} $S \subseteq A$ with $\mean{\lambda a . a \in S}$. So,
\begin{eqnarray*}
a\mean S b \equiv a =b \land a\in S
\end{eqnarray*}

\end{itemize}
%\end{slide}

\section{Arrows ``are'' binary relations}
\begin{itemize}
\item
\textbf{``Type''} relations in a way consistent with functions:
$\larrow A R B$ wherever $b R a$ involves $b \in B$ and $a \in A$.
\item
From now on, an arrow
\begin{eqnarray*}
\larrow A R B
\end{eqnarray*}
means a \textbf{binary relation} from $A$ (source)
to $B$ (target) and write $b R a$ to denote that pair $\tuple{b,a}$ is in $R$.
\end{itemize}
%\end{slide}

\section{Relations as Arrows}
\begin{itemize}
\item
\textbf{Ordering} on relations:
\begin{eqnarray*}
R \subseteq S
& \equiv &
b R a \implies b S a
\end{eqnarray*}
$R\subseteq S$ means that $R$ is either \textbf{less defined} or \textbf{more deterministic} than $S$.
\item
Extend \textbf{composition} $f \comp g$ to $R \comp S$ in the obvious way
\begin{eqnarray*}
b (R \comp S) c \equiv
\exists a\in A . b R a \land a S c
\end{eqnarray*}
\item
Introduce \textbf{converse} $R°$
\[
a (R°) b \equiv b R a
\]
\end{itemize}
%\end{slide}

\CUT{
\item
	Deal with
\(
\subseteq, \cap, \cup,
\)
instead of
\(
\implies, \land, \lor
\)
}

\section{Relational Equality}
\small
Pointwise equality:
\begin{eqnarray*}
R = S
& \equiv &
(b R a \equiv b S a)
\end{eqnarray*}
Pointfree equality:
\begin{itemize}
\item
%
\textbf{Cyclic implication} (``ping-pong'') rule:
%
\begin{eqnarray}
R = S
&
\equiv
&
R \subseteq S
\wedge
S \subseteq R
%
\label{eq:020616a}
\end{eqnarray}

\item
\textbf{Indirect equality} rules: % \footnote{Cf.\  \cite{BM97}, p. 82.}
\begin{eqnarray}
R = S
&
\equiv
&
\forall X.
(X \subseteq R \equiv X \subseteq S)
\label{eq:020614c}
\\
&
\equiv
&
\forall X.
(R \subseteq X \equiv S \subseteq X)
%label{eq:020614c}
%
\end{eqnarray}
\end{itemize}
%
%\end{slide}

\begin{Slide}{Basic relational combinators}
Given $\larrow B S C$ and $\larrow A R B$
\begin{itemize}
\item
\textbf{Composition} $S \comp R$ is s.t.\
\[
c (S \comp R) a
\]
holds wherever there exists some $b\in B$ such that
\(
c S b \land b R a
\).
\item
\textbf{Converse} $\larrow B{R°}A$ of $\larrow A{R}B$
\[
a (R°) b \equiv b R a
\]
\item
\textbf{Meet} $R \cap S$ --- recall set-theoretical intersection
%
\end{itemize}
\end{Slide}

\section{Basic Relation Calculus (I)}
\noindent
Composition is associative:
\begin{eqnarray*}
R \comp (S \comp T) = (R \comp S) \comp T
\end{eqnarray*}
Identity
%
\begin{eqnarray*}
&
R \comp id = id \comp R = R
&
\end{eqnarray*}
Empty relation
%
\begin{eqnarray*}
&
R \comp \bot = \bot \comp R = \bot
&
\end{eqnarray*}
where $\larrow A \bot B$ is the smallest relation of its type.
%\end{slide}

\section{Basic Relation Calculus (II)}
%small
Composition is monotonic:
\begin{eqnarray}
\begin{array}{c}
R \subseteq S
\\
T \subseteq U
\\
\hline
(R \comp  T) \subseteq (S \comp U)
\end{array}
\label{eq:020605g}
\end{eqnarray}
Bottom and top relations:
\begin{eqnarray*}
\bot \subseteq & R & \subseteq \top
\end{eqnarray*}
where $\larrow A \top B$ is the largest relation of its type.

\noindent Pointwise descriptions:
\begin{eqnarray*}
b \top a \equiv \true &,&
b \bot a \equiv \false
\end{eqnarray*}
%\end{slide}

\begin{Slide}{Meet}
%
$\cap$-universal
\begin{eqnarray}
X \subseteq (R \cap S)
&
\equiv
&
(X \subseteq R) \wedge
(X \subseteq S)
%
\label{eq:020627a}
\end{eqnarray}
%
Converse distributes over $\cap$ (proof in next slide):
%
\begin{eqnarray*}
(R \cap S)° = R° \cap S°
\label{eq:converse-meet}
\end{eqnarray*}
%
\end{Slide}

\section{Another indirect proof }
\footnotesize
% Proof of (\ref{eq:converse-meet}):
\vskip-1em
\begin{eqnarray*}
&&
X \subseteq R° \cap S°
%
\just\equiv{$\cap$-universal}
%
(X \subseteq R°) \wedge
(X \subseteq S°)
%
\just\equiv{monotonicity and involution}
%
(X° \subseteq R) \wedge
(X° \subseteq S)
%
\just\equiv{$\cap$-universal}
%
X° \subseteq (R \cap S)
%
\just\equiv{monotonicity and involution}
%
X \subseteq (R \cap S)°
%
\just{::}{indirection}
%
R° \cap S° = (R \cap S)°
%
\end{eqnarray*}
%\end{slide}

\section{Converses of functions}
Function converses $\red f°, g°$ etc.\ always exist (as \textbf{relations}) enjoying the
following property:
\begin{eqnarray*}\red
	(f\ b) R (g\ a) \equiv b (f° \comp R \comp g) a
\end{eqnarray*}
which unfolds to
\begin{eqnarray*}
b R (g\ a) \equiv b (R \comp g) a	&& \mbox{(f := id)}
\label{eq:030620a}
\\
(f\ b) R a \equiv b (f° \comp R) a	&& \mbox{(g := id)}
%
\end{eqnarray*}
%\end{slide}

{
\begin{Slide}{Pointwise vs pointfree notation}
\textbf{Function}
\begin{eqnarray*}
fac\ 0 &=& 1
\\
fac (n +1) &=& (n + 1) * fac\ n
\end{eqnarray*}
in pointfree notation:
\begin{eqnarray*}
fac \comp \alt{\kons 0}{suc} =  * \comp \alt{suc}{fac}
\end{eqnarray*}
%
\textbf{Property}
\begin{eqnarray*}
fac\ n = fac\ m &\implies& n = m
\end{eqnarray*}
($\equiv\ fac$ is injective) in pointfree notation?

\end{Slide}
}

\section{Properties in pointfree style (I)}
$fac$ is injective:
\begin{eqnarray*}
&&
\arrayin{
fac\ n = fac\ m &\implies& n = m
}
%
\just\equiv{ identity function / relation }
%
\arrayin{
(fac\ n)\ id\ (fac\ m) &\implies& n\ id\ m
}
%
\just\equiv{ rule $(f\ b) R (g\ a) \equiv b (f° \comp R \comp g) a$ }
%
\arrayin{
n(fac° \comp id \comp fac)m &\implies& n\ id\ m
}
%
\just\equiv{ dropping variables $n$ and $m$ ; natural-$id$ (\ref{eq:981211d}) }
%
\arrayin{
fac° \comp fac &\subseteq& id
}
%
\end{eqnarray*}
%\end{slide}

\section{Properties in pointfree style (II)}
\small
Example property of integer arithmetics:
\begin{eqnarray*}
&&
\arrayin{
\red
\begin{array}{c||c}
	n & d
\\\cline{2-2}
	r & q
\end{array}
&&
d \times q \leq n \equiv q \leq n / d
~~~ \CUT{
\begin{minipage}{.3\textwidth}\raggedright\small\red
``universal'' property of integer division
\end{minipage}
}}
%
\just\equiv{ using ``Haskell \textbf{section} notation'' }
%
\arrayin{
(d ×) q \leq n &\equiv& q \leq n (/ d)
}
%
\just\equiv{ rule $(f\ b) R a \equiv b (f° \comp R) a$ }
%
\arrayin{
q ((d ×)° \comp \leq) n &\equiv& q (\leq \comp (/ d)) n
}
%
%just\equiv{ dropping variables $q$ and $n$ }
\just\equiv{ pointwise equality }
%
\arrayin{
(d ×)° \comp \leq &=& \leq \comp (/ d)
}
%
\end{eqnarray*}

Reasoning:
\begin{eqnarray*}
&&
q \leq (n / m) / d
%
\just\equiv{ ``universal'' property }
%
d \times q \leq n / m
%
\end{eqnarray*}
%\end{slide}

\begin{Slide}{Orders and their taxonomy}
An order (or endo-relation) $\larrow A R A$ is
\begin{eqnarray*}
	\name{reflexive}	\mbox{iff~} id_A \subseteq R
\\
	\name{coreflexive}	\mbox{iff~} R \subseteq id_A
\\
	\name{transitive}	\mbox{iff~} R \comp R \subseteq R
\\
	\name{anti-symmetric}	\mbox{iff~} R \cap R° \ \subseteq id_A
\\
	\name{symmetric}	\mbox{iff~} R \subseteq R° (\equiv R = R°)
\label{eq:020617c}
\\
	\name{connected}	\mbox{iff~} R \cup R° = \top
\label{eq:021019a}
%
\end{eqnarray*}
where $\larrow A \top A$ is the largest relation of its type.
\end{Slide}

\margincomment{A connected order (\ref{eq:021019a}) is such that
\begin{eqnarray*}
\forall a,b. a R b \lor b R a
\end{eqnarray*}
\fbox{left linear?}
}

\marginproof{(\ref{eq:020617c})}{%
%
\begin{eqnarray*}
&&
R \subseteq R°
%
\just\equiv{$\wedge$-idempotency}
%
R \subseteq R°
\wedge
R \subseteq R°
%
\just\equiv{converse is $\subseteq$-monotone and involutive}
%
R \subseteq R°
\wedge
R° \subseteq R
%
\just\equiv{ping-pong}
%
R = R°
%
\end{eqnarray*}
}

\section{Order taxonomy (B)}
\begin{itemize}
\item
\textbf{Preorders} are reflexive and transitive orders.
\item
\textbf{Partial} orders are anti-symmetric preorders
\item
\textbf{Linear} orders are connected partial orders
\item
\textbf{Equivalences} are symmetric preorders
\item
% \textbf{Monotypes} \cite{Bac00}
\textbf{Predicates} are coreflexive orders:
the ``meaning'' of a predicate $\larrow A \phi {Bool}$ is a coreflexive
relation $\mean\phi$ such that
\begin{eqnarray*}
\ap\phi a&\equiv&a \mean\phi a
\end{eqnarray*}
mapping every $a$ which validates $\phi$ onto itself.
\end{itemize}
%\end{slide}

\section{Order taxonomy (C)}%
\tiny
\begin{tabular}{cccccc}
&&&
\rnode{0}{order}
\\ \rule{0pt}{2em} \\
\rnode{A}{symmetric}
&
\rnode{B}{reflexive}
&
&
\rnode{C}{transitive}
&
\rnode{D}{anti-symmetric}
&
\rnode{E}{connected}
\nccurve[linecolor=red,angleA=090,angleB=210]{-}{A}{0}
\nccurve[linecolor=red,angleA=090,angleB=220]{-}{B}{0}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{C}{0}
\nccurve[linecolor=red,angleA=090,angleB=-60]{-}{D}{0}
\nccurve[linecolor=red,angleA=090,angleB=-30]{-}{E}{0}
\\ \rule{0pt}{2em} \\
&
&
\rnode{F}{preorder}
\nccurve[linecolor=red,angleA=180,angleB=-30]{-}{F}{B}
\nccurve[linecolor=red,angleA=000,angleB=210]{-}{F}{C}
\\ \rule{0pt}{2em} \\
\rnode{G}{equivalence}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{G}{A}
\nccurve[linecolor=red,angleA=030,angleB=210]{-}{G}{F}
&
&
&
\rnode{H}{partial order}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{H}{F}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{H}{D}
\\ \rule{0pt}{2em} \\
&&&&
\rnode{I}{linear}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{I}{H}
\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{I}{E}
\end{tabular}
%\end{slide}

\section{Properties (A)}
\textbf{Dedekind}'s rule
(also known as the \textbf{modular law}):
{\red\begin{eqnarray*}
(R \comp S) \cap T & \subseteq & R \comp (S \cap (R° \comp T))
\label{eq:020605l}
\end{eqnarray*}}
Dually (apply converses and rename):
\begin{eqnarray*}
(R \comp S) \cap T & \subseteq & (R \cap ( T \comp S°)) \comp S
\label{eq:020608a}
\end{eqnarray*}
Symmetrical equivalent statement: % (\cite{BM97},p.84):
\begin{eqnarray*}
(R \comp S) \cap T
& \subseteq &
(R \cap ( T \comp S°)) \comp (S \cap ( R° \comp T))
\label{eq:020624h}
\end{eqnarray*}
= ``weak right-distribution of meet over composition''.
%\end{slide}

\begin{Slide}{Derived combinators}
\begin{itemize}
\item
%
\textbf{Kernel} of $\larrow A R B$ is $\larrow A{\ker R}A$ defined by
%
\begin{eqnarray*}
\ker R \deff R° \comp R
%label{eq:020624a}
\end{eqnarray*}
\item
\textbf{Image} of $\larrow A R B$ is $\larrow B{\img R}B$ defined by
%
\begin{eqnarray*}
\img R \deff R \comp R°
\end{eqnarray*}
\item
Duality:
\begin{eqnarray*}
\ker{(R°)}&=&\img R
\label{eq:020617d}
\\
\img{(R°)}&=&\ker R
\label{eq:020624c}
\end{eqnarray*}
\end{itemize}
\end{Slide}

\marginproof{(\ref{eq:020617d})}{%
\begin{eqnarray*}
&&
\ker{(R°)}
%
\just={ definition (\ref{eq:020624a}) }
%
(R°)° \comp R°
%
\just={ involution (\ref{eq:020624b}) }
%
R \comp R°
%
\just={ definition (\ref{eq:020624c}) }
%
\img R
%
\end{eqnarray*}
}

\section{Properties of kernel and image}%
Order-preservation:
\begin{eqnarray*}
R \subseteq S & \implies & \ker R \subseteq \ker S
\label{eq:020617i}
\\
R \subseteq S & \implies & \img R \subseteq \img S
\label{eq:020617j}
\end{eqnarray*}
Symmetry:
\begin{eqnarray*}
(\ker R)°&=&\ker R
\label{eq:ker-sym}
\\
(\img R)°&=&\img R
\end{eqnarray*}
Also:
\begin{eqnarray*}
R \subseteq R \comp \ker R  && (= \img R \comp R)
\label{eq:020605k}
\end{eqnarray*}

%\end{slide}

\marginproof{(\ref{eq:020617i}) and (\ref{eq:020617j}) }{%
From  (\ref{eq:020617h}) and (\ref{eq:020605g}) we get
\(
        R° \comp R \subseteq S° \comp S
\)
and
\(
R \comp R° \subseteq S \comp S°
\),
respectively.
}

\marginproof{(\ref{eq:ker-sym})}{%
\begin{eqnarray*}
&&
(\ker R)°
%
\just={ definition (\ref{eq:020624a}) }
%
(R° \comp R)°
%
\just={ contravariance (\ref{eq:020624d}) }
%
R° \comp (R°)°
%
\just={ involution (\ref{eq:020624b}) }
%
R° \comp R
%
\just={ definition (\ref{eq:020624a}) }
%
\ker R
%
\end{eqnarray*}
}

\marginproof{(\ref{eq:020605k})}{%
%
\begin{eqnarray*}
&&
R
%
\just={ (\ref{eq:020605c}) }
%
R \cap R
%
\just\subseteq{modular law}
%
R \comp (id \cap R° \comp R)
%
\just\subseteq{monotonicity}
%
R \comp R° \comp R
%
\end{eqnarray*}
}

\begin{Slide}{Entireness and simplicity}
An \textbf{entire} (or total) relation is such that its kernel is reflexive:
\begin{eqnarray*}
\mbox{$R$ is entire}
&
\equiv
&
id \subseteq \ker{R}
\label{eq:entireness}
\end{eqnarray*}
% that is: $\ker{R}$ is reflexive.
A \textbf{simple} (or functional) relation is such that its image is coreflexive:
\begin{eqnarray*}
R \mbox{\ is simple}
&
\equiv
&
\img{R} \subseteq id
\label{eq:020605f}
\end{eqnarray*}
%that is, $\img R$ is coreflexive.

Simplicity is the dual of entireness. Simple relations are also called \textbf{partial functions}.
\end{Slide}

\section{(Total) functions}
\textbf{Functions} are both simple and entire relations, usually denoted by lowercase letters $f$:
\begin{eqnarray*}
\underbrace{id \subseteq f° \comp f}_{\mbox{entire}}
&\wedge&
\underbrace{f \comp f° \subseteq id}_{\mbox{simple}}
\end{eqnarray*}
Thus:
\begin{eqnarray*}
f \subseteq R
\implies
\mbox{$R$ is entire}
\\
R \subseteq f
\implies
R \mbox{\ is simple}
\end{eqnarray*}
In general,
\emph{
        ``larger  than entire means entire''
}
and
\emph{
``smaller than simple means simple''
}
% --- \cf\ (\ref{eq:020617i},\ref{eq:020617j}).

%\end{slide}

\begin{Slide}{Surjectiveness and injectiveness}
More taxonomy:
\begin{itemize}
\item
$R$ is \textbf{surjective} iff $R°$ is entire
\item
$R$ is \textbf{injective} iff $R°$ is simple
\end{itemize}
Facts:
\begin{eqnarray*}
\mbox{$R$ is entire and injective} &\equiv & \ker R = id
\label{eq:020624e}
\\
\mbox{$R$ is simple and surjective} &\equiv & \img R = id
\end{eqnarray*}
Summary:
\begin{center}
\begin{tabular}{||c||||c||c||}\hline
&
\textbf{Reflexive}
&
\textbf{Coreflexive}
\\\hline\hline
$\ker R$
&
entire $R$
&
injective $R$
\\\hline
$\img R$
&
surjective $R$
&
simple $R$
\\\hline
\end{tabular}
\end{center}
\end{Slide}

\marginproof{(\ref{eq:020624e})}{%
\begin{eqnarray*}
&&
\mbox{$R$ is entire and injective}
%
\just\equiv{ definitions }
%
	id \subseteq \ker R \land \img{R°} \subseteq id
%
\just\equiv{ (\ref{eq:020624c}) }
%
	id \subseteq \ker R \land \ker R \subseteq id
%
\just\equiv{ ping-pong (\ref{eq:020616a}) }
%
	id = \ker R
%
\end{eqnarray*}
}

\section{Bijections}
$f$ is \textbf{bijective} iff it is an injective and surjective function
(thus simple and entire)
\begin{eqnarray*}
\mbox{$\larrow A f B$ bijective} &\equiv & \ker f = id \wedge \img f = id
\end{eqnarray*}
In this case
\begin{eqnarray*}
        {id = f° \comp f}
&\wedge&
        {f \comp f° = id}
\end{eqnarray*}

%\end{slide}

\begin{Slide}{Binary relation taxonomy}%
\tiny
\begin{tabular}{cccccccc}
&&&
\rnode{0}{relation}
\\ \rule{0pt}{2em} \\
\rnode{A}{injective}
	\nccurve[linecolor=red,angleA=090,angleB=210]{-}{A}{0}
&
&
\rnode{B}{entire}
	\nccurve[linecolor=red,angleA=090,angleB=220]{-}{B}{0}
&
&
\rnode{C}{simple}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{C}{0}
&
&
\rnode{D}{surjective}
	\nccurve[linecolor=red,angleA=090,angleB=-60]{-}{D}{0}
\\ \rule{0pt}{2em} \\
&
\rnode{E}{representation}
	\nccurve[linecolor=red,angleA=090,angleB=-30]{-}{E}{A}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{E}{B}
&
&
\rnode{F}{function}
	\nccurve[linecolor=red,angleA=180,angleB=-30]{-}{F}{B}
	\nccurve[linecolor=red,angleA=000,angleB=210]{-}{F}{C}
&
&
\rnode{G}{abstraction}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{G}{D}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{G}{C}
\\ \rule{0pt}{2em} \\
&
&
\rnode{H}{injection}
	\nccurve[linecolor=red,angleA=90,angleB=-90]{-}{H}{E}
	\nccurve[linecolor=red,angleA=90,angleB=-90]{-}{H}{F}
&
&
\rnode{I}{surjection}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{I}{F}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{I}{G}
\\ \rule{0pt}{2em} \\
&&&
\rnode{J}{bijection}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{J}{H}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{J}{I}
\end{tabular}
\end{Slide}

\begin{Slide}{Reasoning about functions}
\textbf{Shunting rules:}
\begin{eqnarray*}
f \comp R \subseteq S & \equiv & R  \subseteq f ° \comp S
	% \label{eq:020617e}
\\
R \comp f° \subseteq S & \equiv & R  \subseteq S \comp f
	% \label{eq:020617f}
\end{eqnarray*}
\textbf{Equality:}
\begin{eqnarray*}
f \subseteq g \equiv f = g \equiv f \supseteq g
	% \label{eq:020617g}
\end{eqnarray*}
Ping-pong proof of the equality rule % (\ref{eq:020617g})
follows.
\end{Slide}

\section{Proof of functional equality }
\small
\begin{eqnarray*}
&&
f \subseteq g
%
\just\equiv{identity}
%
f \comp id \subseteq g
%
\just\equiv{shunting on $f$}
%
id \subseteq f° \comp g
%
\just\equiv{shunting on $g$}
%
id \comp g° \subseteq f°
%
\just\equiv{converses}
%
g \subseteq f
%
\end{eqnarray*}
%\end{slide}

\section{Adding structure to the calculus}
Note a recurrent \textbf{pattern} in several laws above:
\begin{eqnarray*}
\underbrace{X\red°}_{{\red f}\ X} \subseteq Y
&
\equiv
&
X \subseteq \underbrace{Y\red°}_{{\red g}\ Y}
\\
\underbrace{{\red (h  \comp )} X}_{{\red f}\ X} \subseteq Y
&
\equiv
&
X \subseteq \underbrace{{\red (h°  \comp )} Y}_{{\red g}\ Y}
\\
\underbrace{X \red ( \comp h°)}_{{\red f}\ X} \subseteq Y
& \equiv &
X  \subseteq \underbrace{Y \red ( \comp h)}_{{\red g}\ Y}
\end{eqnarray*}
as well as in
\begin{eqnarray*}
\underbrace{{\red (d ×)} q}_{{\red f}\ q} \leq n
&\equiv &
q \leq \underbrace{n \red (/ d)}_{{\red g}\ n}
\end{eqnarray*}

%\end{slide}

\section{Back to the primary school desk}
The \textbf{integer division} algorithm
\begin{eqnarray*}
\red
\begin{array}{c||c}
	7 & 2
\\\cline{2-2}
	1 & 3
\end{array}
&&
{\green
2 \times 3 + 1 = 7
}
\mbox{~~~, ``ie.'' ~~~ $3 = 7 / 2$ }
\end{eqnarray*}
However
\begin{eqnarray*}
\begin{array}{c||c}
	7 & 2
\\\cline{2-2}
	3 & \red 2
\end{array}
&&
2 \times {\red2} + 3 = 7 ~~~ \land ~~~ {\red2} \not= 7 / 2
\\
\begin{array}{c||c}
	7 & 2
\\\cline{2-2}
	5 & \red 1
\end{array}
&&
2 \times {\red 1} + 5 = 7
~~~ \land ~~~ {\red 1} \not= 7 / 2
\end{eqnarray*}
%\end{slide}

\section{Quotient is a supremum}

\begin{eqnarray*}
\red
\begin{array}{c||c}
	n & d
\\\cline{2-2}
	r & q
\end{array}
&&
d \times q + r = n \equiv q = n / d
~~~ \fbox{
\begin{minipage}{.3\textwidth}\raggedright\small\red
provided $q$ is the largest such $q$ ($r$ is smallest)
\end{minipage}
}
\\
n / d	&=& \bigvee \setdef{q}{\exists r ~.~ d \times q + r = n}
\\
&=& \bigvee \setdef{q}{d \times q \leq n}
\end{eqnarray*}
Maths teachers tell: \emph{it takes a while before children master the
``$\bigvee$ semantics''!}
\\
What about you? Can you easily reason about $\red n / d$ in this format?

Try and prove $(n / m) / d = n / ( m \times d) $.

%\end{slide}

\section{``Universal'' property instead}
Alternative:
\begin{eqnarray*}
\red
\begin{array}{c||c}
	n & d
\\\cline{2-2}
	r & q
\end{array}
&&
d \times q \leq n \equiv q \leq n / d
~~~ \fbox{
\begin{minipage}{.3\textwidth}\raggedright\small\red
``universal'' property of integer division
\end{minipage}
}
\end{eqnarray*}
Reasoning:
\begin{eqnarray*}
&&
q \leq (n / m) / d
%
\just\equiv{ ``universal'' property }
%
d \times q \leq n / m
%
\end{eqnarray*}
%\end{slide}

\section{Reasoning continued}
\begin{eqnarray*}
&&
%
\just\equiv{ ``universal'' property again }
%
m \times (d \times q) \leq n
%
\just\equiv{ $ \times $ is associative }
%
(m \times d) \times q \leq n
%
\just\equiv{ ``universal'' property again }
%
q \leq n / (m \times d)
%
\end{eqnarray*}
%\end{slide}

\section{Indirect equality}
So we have
\begin{eqnarray*}
q \leq (n / m) / d
& \equiv &
q \leq n / (m \times d)
\end{eqnarray*}
that is,
\begin{eqnarray*}
(n / m) / d
& = &
n / (m \times d)
\end{eqnarray*}
by the \textbf{indirect equality} rule:
\begin{eqnarray*}
(q \leq x \equiv q \leq y) \equiv (x = y)
\end{eqnarray*}
%\end{slide}

\section{Also easy to check}
\small
\begin{eqnarray*}
\mbox{Cancellation law:}
&&
{\green d \times (n / d) \leq n}
%
\just\equiv{ universal property }
%
n / d \leq n / d
%
\just\equiv{ reflexive $\leq$ }
%
\true
\\
\mbox{``Reflection'':}
&&
d \times 1 \leq n \equiv 1 \leq n / d
%
\just\equiv{ $1$ is the unit of $ \times $}
%
{\green d \leq n \equiv 1 \leq n / d}
\end{eqnarray*}
%\end{slide}

\begin{Slide}{Galois connections}
$n / d$ is a Galois connection:
\begin{eqnarray*}
\red
\begin{array}{c||c}
	n & d
\\\cline{2-2}
	r & q
\end{array}
&&
\underbrace{ {\green d \times} q }_{{\green f}\ q}
	 \leq n
\equiv
q \leq \underbrace{n {\green / d}}_{{\green g}\ n}
\end{eqnarray*}
In general, for \textbf{preorders} $(A,\leq)$ and $(B,\sqsubseteq)$
and % $f$ and $g$,
\begin{eqnarray*}
\arLaw{(A,\leq)}{(B,\sqsubseteq)} {\green f} {\green g} {}
\end{eqnarray*}
$(f,g)$ are \emph{Galois connected} iff
\CUT{
\begin{eqnarray*}
{\green f} \ b
\leq a
&
\equiv
&
b \sqsubseteq {\green g} \ a
\end{eqnarray*}
}
\end{Slide}

\section{Galois adjoints}
\begin{eqnarray*}
\underbrace{\green f}_{\makebox(10,10){\red lower adjoint}} \ b
\leq a
&
\equiv
&
b \sqsubseteq \underbrace{\green g}_{\makebox(10,10){\red upper adjoint}} \ a
\end{eqnarray*}
that is
\begin{eqnarray*}
{\green f}° \comp \leq &=& \sqsubseteq \comp \green g
\end{eqnarray*}
\small
Remarks:
\begin{itemize}
%item	Cf.\ \emph{adjunctions} in category theory
\item	Galois (connected) adjoints enjoy a number of interesting
\emph{generic} properties
\item	\emph{Very elegant}
--- \textbf{calculational} --- way of performing
\emph{inequational} reasoning (including \emph{logical} deduction)
\end{itemize}
%\end{slide}

\section{Basic properties}
\emph{Cancellation}:
\begin{eqnarray*}
(f \comp g) a \leq a
&
\mbox{~and~}
&
b \sqsubseteq (g \comp f) b
\end{eqnarray*}
\emph{Distribution} (in case of lattice structures):
\begin{eqnarray*}
%
f(a \sqcup a') &=& (f\ a) \vee (f\ a')
\\
g(b \land b') &=& (g\ b) \sqcap (g\ b')
%
\end{eqnarray*}
\small
Conversely,
\begin{itemize}
\item	If $f$ distributes over $\sqcup$ then it has an upper adjoint $g$ ($f^\#$)
\item	If $g$ distributes over $\land$ then it has a lower adjoint $f$ ($g^\flat$)
\end{itemize}
%\end{slide}

\section{Other properties}
If $(f,g)$ are Galois connected,
\begin{itemize}
\item
$f$ ($g$) \textbf{uniquely} determines $g$ ($f$) --- thus the $\_^\flat$, $\_^\sharp$ notations
\item
$f$ and $g$ are \textbf{monotonic}
\item
$(g,f)$ are also Galois connected --- \textbf{reverse} the orderings
\item
$f = f \comp g \comp f$ and
$g = g \comp f \comp g$
\end{itemize}
etc % --- see chapter 5 of \cite{ABHVW92}.
%
%\end{slide}

\section{Summary}
\def\f{{\green f}}
\def\g{{\green g}}
\small
\begin{tabular}{||c||c||c||}\hline
\multicolumn{3}{||c||}{$(\f\ b) \leq a \equiv b \sqsubseteq (\g\ a)$}
\\\hline\hline
  \bf Description
& $  \f = \g ^\flat $
& $  \g = \f ^\sharp $
\\\hline\hline
  Definition
& $ \f\ b = \bigwedge \setdef{a}{b \sqsubseteq \g\ a} $
& $ \g\ a = \bigsqcup \setdef{b}{\f\ b \leq a}$
\\\hline
  Cancellation
& $ \f(\g\ a) \leq a $
& $ b \sqsubseteq \g(\f\ a) $
\\\hline
  Distribution
& $ \f (b \sqcup b') = (\f\ b) \vee (\f\ b') $
& $ \g ( a' \sqcap a) = (\g\ a') \sqcap (\g\ a) $
\\\hline
  Monotonicity
& $ b \sqsubseteq b' \implies \f\ b \leq \f\ b' $
& $ a \leq a' \implies \g\ a \sqsubseteq \g\ a' $
\\\hline
\end{tabular}
%\end{slide}

\begin{Slide}{Converse in a Galois connection}
%
\begin{eqnarray*}
\begin{tabular}{||c||c||c||c||}\hline
\multicolumn{4}{||c||}{$(f\ X) \subseteq Y \equiv X \subseteq (g\ Y)$}
\\\hline\hline
  \bf Description
& $  f = g^\flat $
& $  g = f^\sharp $
& \bf Obs.
\\\hline\hline
  converse
& $  (\_)° $
& $  (\_)° $
& $ b R° a \equiv a R b$
\\\hline
\end{tabular}
\end{eqnarray*}
Thus:
\begin{eqnarray*}
\mbox{ \textbf{Cancellation} }
&&
(R°)° = R
\\
\mbox{ \textbf{Monotonicity} }
&&
R \subseteq S \equiv R° \subseteq S°
\\
\mbox{ \textbf{Distributions} }
&&
(R \cap S)° =  R° \cap S° ,
(R \cup S)° =  R° \cup S°
%
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Functions in a Galois connection}
\small
\begin{eqnarray*}
\begin{tabular}{||c||c||c||c||}\hline
\multicolumn{4}{||c||}{$(f\ X) \subseteq Y \equiv X \subseteq (g\ Y)$}
\\\hline\hline
  \bf Description
& $  f = g^\flat $
& $  g = f^\sharp $
& \bf Obs.
\\\hline\hline
  shunting rule
& $  (h \comp ) $
& $  (h° \comp ) $
& NB: $h$ is a function
\\\hline
  ``converse'' shunting rule
& $  ( \comp h°) $
& $  ( \comp h ) $
& NB: $h$ is a function
\\\hline
\end{tabular}
\end{eqnarray*}
Consequences:
\begin{eqnarray}
\mbox{
Functional equality:
}
&&
\arrayin{
h \subseteq g \equiv & h = k & \equiv h \supseteq k
\label{eq:020617g}
}
\\
\mbox{
Functional division:
}
&&
h° \comp R
=
h \rdiv R
%
\end{eqnarray}
\textbf{Question:} what does $\red h \rdiv R$ mean?
\end{Slide}

\begin{Slide}{Relational division}
\small
\begin{eqnarray*}
\begin{tabular}{||c||c||c||c||}\hline
\multicolumn{4}{||c||}{$(f\ X) \subseteq Y \equiv X \subseteq (g\ Y)$}
\\\hline\hline
  \bf Description
& $  f = g^\flat $
& $  g = f^\sharp $
& \bf Obs.
\\\hline\hline
  right-division
& $  (R \comp ) $
& $  (R \rdiv ~) $
& right-factor
\\\hline
  left-division
& $  ( \comp R) $
& $  (~ \ldiv R) $
& left-factor
\\\hline
\end{tabular}
\end{eqnarray*}
Immediate:
$\red (R \comp )$ and $\red ( \comp R)$ distribute over union:
\begin{eqnarray*}
R \comp (S \cup T) &=& (R \comp S) \cup (R \comp T)
\\
(S \cup T) \comp R &=& (S \comp R) \cup (T \comp R)
\end{eqnarray*}
Some intuition about relational division operators follows.
\end{Slide}

\section{Relational division}
\small
The \textbf{relational division} operators are upper-adjoints:
%
\begin{eqnarray*}
R \comp X \subseteq Y \equiv X \subseteq R \rdiv Y
\\
X \comp R \subseteq Y \equiv X \subseteq Y \ldiv X
%
\end{eqnarray*}
\textbf{Right division} abstracts a (pointwise) universal quantification
\begin{eqnarray*}
\arraycolsep=1em
\begin{array}{ccc}
%
\mnode{A}{A}
&
&
\mnode{C}{C}
	\arl{C}{A}{X \subseteq R \rdiv Y}
\\
% \subseteq
\\
&
\mnode{B}{B}
	\ardl{A}{B}{R}
	\ardr{C}{B}{Y}
\end{array}
&&	a (R \rdiv Y) c \equiv (\forall b. b R a \implies b Y c)
%	\label{eq:030608a}
\end{eqnarray*}
An example follows.
%\end{slide}

\section{Example}
Recall data division in the \textbf{relational model}:
\begin{eqnarray*}
\\
\arraycolsep=1em
\begin{array}{ccc}
%
\mnode{A}{A}
&
&
\mnode{C}{C}
	\arl{C}{A}{X \subseteq R \rdiv S}
\\
% \subseteq
\\
&
\mnode{B}{B}
	\ardl{A}{B}{R}
	\ardr{C}{B}{S}
\end{array}
&&	a (R \rdiv S) c \equiv (\forall b. b R a \implies b S c)
%	\label{eq:030608a}
\end{eqnarray*}
\begin{itemize}
\item[] $\red b \ R \ a$ = flight $\red b$ carries passenger $\red a$
\item[] $\red b \ S \ c$ = flight $\red b$ belongs to air-company $\red c$
\item[] $\red a \ (R \rdiv S) \ c$ = passenger $\red a$ is faithful to company $\red c$,
that is, (s)he only flies company $\red c$.
\end{itemize}

%\end{slide}

\section{Left division}
By taking converses we arrive at $S \ldiv R= (R° \rdiv S°)°$:
%
\begin{eqnarray*}
X \subseteq S \ldiv R
&
\equiv
&
X \subseteq (R° \rdiv S°)°
%
\just\equiv{converses and $(R° \rdiv)^\flat$}
%
R° \comp X° \subseteq S°
%
\just\equiv{converses}
%
X \comp R \subseteq S
%
\end{eqnarray*}
ie. Galois connection
\begin{eqnarray*}
X \comp R \subseteq S
& \equiv &
X \subseteq S \ldiv R
\end{eqnarray*}
%\end{slide}

\section{Meet}
\textbf{$\cap$-universal}
\begin{eqnarray*}
X \subseteq (R \cap S)
&
\equiv
&
(X \subseteq R) \wedge
(X \subseteq S)
%
%label{eq:020627a}
\end{eqnarray*}
is a Galois connection
\begin{eqnarray*}
(\Delta,\cap)
\end{eqnarray*}
where $\Delta\ X = (X,X)$,
cf.
\begin{eqnarray*}
(X,X)(\subseteq \times \subseteq)(R,S)
&
\equiv
&
X \subseteq \cap(R,S)
\end{eqnarray*}
So $ \cap = \Delta^\sharp$ distributes over itself, etc
%\end{slide}

\section{Properties of $\cap$}
From $\cap$-universal (\ref{eq:020627a})
infer:
\begin{itemize}
\item
\textbf{$\cap$-cancellation} ($X := R \cap S$)
\begin{eqnarray*}
R \cap S \subseteq R
&\wedge&
 R \cap S \subseteq S
%
\label{eq:020616b}
\end{eqnarray*}

\item
\textbf{$\cap$-abbreviation} ($X := R$)
%
\begin{eqnarray*}
R \subseteq S
&
\equiv
&
R = R \cap S
\label{eq:020605b}
%
\end{eqnarray*}
\item
\textbf{$\cap$-idempotency} ($S := R$)
\begin{eqnarray*}
R \cap R
&
=
&
R
\label{eq:020605c}
\end{eqnarray*}
\end{itemize}
%\end{slide}

\normalproof{(\ref{eq:020605b})}{%
\begin{eqnarray*}
&&
R \subseteq S
%
\just\equiv{inclusion is reflexive}
%
R \subseteq R \wedge R \subseteq S
%
\just\equiv{meet-universal (\ref{eq:020627a}) }
%
R \subseteq (R \cap S)
%
\just\equiv{cancellation (\ref{eq:020616b}) }
%
R \subseteq (R \cap S) \wedge
(R \cap S) \subseteq R
%
\just\equiv{ping-pong}
%
R = (R \cap S)
%
\end{eqnarray*}
}

\section{More properties of $\cap$}
$\cap$ is \textbf{commutative}:
%
\begin{eqnarray*}
R \cap S
&
=
&
S \cap R
\label{eq:020605d}
\end{eqnarray*}
$\cap$ is \textbf{associative}:
\begin{eqnarray*}
R \cap (S \cap T)
&
=
&
(R \cap S) \cap T
\end{eqnarray*}
\textbf{$\cap$-fusion}:
\begin{eqnarray*}
%
T \comp (R \cap S) &\subseteq& (T \comp R) \cap (T \comp S)
\label{eq:020617a}
\\
(R \cap S) \comp T &\subseteq& (R \comp T) \cap (S \comp T)
%
\end{eqnarray*}
%\end{slide}

\marginproof{(\ref{eq:020605c})}{
%
\begin{eqnarray*}
&&
X \subseteq (R \cap R)
%
\just\equiv{meet-universal}
%
(X \subseteq R) \wedge
(X \subseteq R)
%
\just\equiv{logic}
%
(X \subseteq R)
%
\just\equiv{indirection}
%
 R \cap R = R
%
\end{eqnarray*}
}

\marginproof{(\ref{eq:020605d})}{
%
\begin{eqnarray*}
&&
X \subseteq (R \cap S)
%
\just\equiv{universal}
%
(X \subseteq R) \wedge
(X \subseteq S)
%
\just\equiv{logic}
%
(X \subseteq S) \wedge
(X \subseteq R)
%
\just\equiv{universal}
%
X \subseteq (S \cap R)
%
\just\equiv{indirection}
%
 R \cap S = S \cap R
%
\end{eqnarray*}
}

\marginproof{(\ref{eq:020617a})}{
\begin{eqnarray*}
&&
T \comp (R \cap S) \subseteq (T \comp R) \cap (T \comp S)
%
\just\equiv{meet-universal (\ref{eq:020627a}) }
%
T \comp (R \cap S) \subseteq T \comp R
\wedge
T \comp (R \cap S) \subseteq T \comp S
%
\just\implied{monotonicity}
%
R \cap S \subseteq R
\wedge
R \cap S \subseteq S
%
\just\equiv{cancellation}
%
\true
\end{eqnarray*}
}

\begin{Slide}{Meet and join}
\begin{eqnarray*}
\begin{tabular}{||c||c||c||c||}\hline
\multicolumn{4}{||c||}{$
(f\ X) \leq Y \equiv X \sqsubseteq (g\ Y)
$}
\\\hline\hline
  \bf Description
& $  f = g^\flat $
& $  g = f^\sharp $
& \bf Obs.
\\\hline\hline
  meet
& $  \Delta $
& $ \cap $
& $ \leq $ is $ (\subseteq \times \subseteq)$
\\\hline\hline
  join
& $ \cup $
& $  \Delta $
& $ \sqsubseteq $ is $(\subseteq \times \subseteq)$
\\\hline
\end{tabular}
\end{eqnarray*}
Join:
\begin{eqnarray*}
\cup(R,S) \subseteq Y \equiv (R,S) (\subseteq \times \subseteq) (Y,Y)
\end{eqnarray*}
that is,
\begin{eqnarray*}
R \cup S \subseteq Y \equiv R \subseteq Y \land S \subseteq Y
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Relational \emph{split}}
\small
Functions:
\begin{eqnarray*}
x = \split f g
&
\equiv
&
\arrayin{
	\p1 \comp x = f &\land& \p2 \comp  x = g
}
%
\end{eqnarray*}
Relations:
\def\A{%
\begin{array}{c}
(A \longleftarrow C)
\\
×
\\
(B \longleftarrow C)
\end{array}}
\def\C{A \times B \longleftarrow C}
\begin{eqnarray*}
\arrayin{
X \subseteq \split R S
& \equiv &
	\arrayin{
	\p1 \comp X \subseteq R &\land& \p2 \comp  X \subseteq S
	}
}
\\
\arLaw{(\A,\subseteq \times \subseteq)}
{(\C,\subseteq)}
{\green ((\p1 \comp)  \times (\p2 \comp )) \comp \Delta}
{\green \split\_\_}
{}
\end{eqnarray*}
\end{Slide}

\section{Properties}
$\red \split\_\_$ is an \textbf{upper-adjoint}, so it distributes over meet
\begin{eqnarray*}
\split{R}{S \cap T} &=& \split R S \cap \split R T
\\
\split {S \cap T} R &=& \split S R \cap \split T R
\end{eqnarray*}
etc.
Moreover:
\begin{eqnarray}
\split{R}{S} & = & (\p1° \comp R) \cap (\p2° \comp S)
\label{eq:030418a}
%
\end{eqnarray}
Why? Again Galois at work:
%\end{slide}

\section{Calculation}
\small
\begin{eqnarray*}
X \subseteq \red \split R S
&
\equiv
&
\p1 \comp X \subseteq R \land \p2 \comp  X \subseteq S
%
\just\equiv{Galois connected $((f  \comp ),( f° \comp ) )$}
%
X \subseteq \p1° \comp R \land X \subseteq \p2° \comp S
%
\just\equiv{Galois connected $(\cap^\flat,\cap)$}
%
X \subseteq \red (\p1° \comp R \cap \p2° \comp S)
%
\just{::}{indirect equality}
%
\split R S = \p1° \comp R \cap \p2° \comp S
%
\end{eqnarray*}
%\end{slide}

\section{Pointwise $\split R S$}
%
\begin{eqnarray*}
(a,b)\split{R}{S} c
& \equiv &
(a,b)(\p1° \comp R \cap \p2° \comp S)c
%
\just\equiv{pointwise $\cap$}
%
(a,b)(\p1° \comp R)c \land (a,b)(\p2° \comp S)c
%
\just={rule $ (f\ b) R a \equiv b (f° \comp R) a $ }
%
\p1(a,b)  R c \land \p2(a,b) S c
%
\just={projections}
%
a R c \land b S c
%
\end{eqnarray*}
%\end{slide}

\begin{Slide}{Relational \emph{either}}
\small
Functions:
\begin{eqnarray*}
\alt f g = x
&
\equiv
&
f = x \comp i_1 ~\land g = x \comp i_2
%
\end{eqnarray*}
Relations:
\begin{eqnarray}
\alt R S \subseteq X & \equiv &
R \subseteq X \comp i_1 ~\land S \subseteq X \comp i_2
\label{eq:030322b}
\end{eqnarray}
Thus $\alt\_\_$ is a \textbf{lower-adjoint}, it distributes over $\cup$, etc.
Moreover,
\begin{eqnarray}
\alt R S & = & (R \comp |(conv i1)|) \cup (S \comp |(conv i2)|)
\label{eq:030407a}
\end{eqnarray}
\end{Slide}

\section{Domain and range}
\small
\begin{eqnarray*}
\begin{tabular}{||c||c||c||c||}\hline
\multicolumn{4}{||c||}{$(f\ X) \subseteq Y \equiv X \subseteq (g\ Y)$}
\\\hline\hline
  \bf Description
& $  f = g^\flat $
& $  g = f^\sharp $
& \bf Obs.
\\\hline\hline
  domain
& $  \dom{} $
& $  (\top \comp ) $
&    lower $\subseteq $ restricted to coreflexives
\\\hline
  range
& $  \rng{} $
& $  ( \comp \top) $
&    lower $\subseteq $ restricted to coreflexives
\\\hline
\end{tabular}
\end{eqnarray*}
cf.
\begin{eqnarray*}
\\
\arraycolsep=1em
\begin{array}{ccc}
%
\mnode{A}{A}
&
&
\mnode{C}{A}
	\arl{C}{A}{\dom X \subseteq Y}
\\
% \subseteq
\\
&
\mnode{B}{B}
	\ardl{A}{B}{\top}
	\ardr{C}{B}{X}
\end{array}
&&	\dom X \subseteq Y \equiv X \subseteq \top \comp Y
%	\label{eq:030608a}
\end{eqnarray*}
%\end{slide}

\section{Domain and range}
Dualization:
\begin{eqnarray*}
\dom R = \ran{R°}
\end{eqnarray*}
{Explicit definitions}:
%
\begin{eqnarray}
\ran R
&
=
&
\img R \cap id
%
\label{eq:020605n}
\\
\dom R
& =
& \img{R°} \cap id = \ker R \cap id
\label{eq:020624j}
\end{eqnarray}
Facts:
\begin{eqnarray}
R &=& R \comp (\dom R)
\label{eq:020619c}
\\
R &=& (\rng R) \comp R
\end{eqnarray}
%
%\end{slide}

\section{Domain and split}
The following fact holds:
\begin{eqnarray*}
\split R S °  \comp \split X Y
& = &
(R° \comp X) \cap (S° \comp Y)
\label{eq:BM97:(5.8)}
\end{eqnarray*}
Corollary:
\begin{eqnarray*}
\dom R
&
=
&
\ker{\split{id} R}
\end{eqnarray*}
Another consequence of the fact above:
\begin{eqnarray*}
\ker{R} \subseteq \ker{(S \comp R)}
&
\implied
&
\mbox{$S$ entire }
%
\end{eqnarray*}
Corollary:
\begin{eqnarray*}
\ker{R} &\subseteq& \ker{(f \comp R)}
\end{eqnarray*}
%\end{slide}

\section{Comprehending relations}
For each $\larrow A R B$ define its \textbf{graph} or \emph{comprehension} by
%
\begin{eqnarray*}
{\cal G} \ R = \setdef{(b,a)}{b R a}
\end{eqnarray*}
Clearly,
\(\red
R = \mean{{\cal G} \ R}
\)
and so we often abbreviate $\cal G\ R$ to $R$.

The graph of every \textbf{coreflexive} $S$ is made simpler for obvious reasons:
\begin{eqnarray*}
{\cal G}\ S = \setdef{a}{a S a}
\end{eqnarray*}
%\end{slide}
%
\section{Finite relations}
%small
$R$ is said to be \emph{finite} wherever $\cal G\ R$ is a finite set.
%
\begin{itemize}
\item	Finite relations, which can be enumerated, browsed and stored in a computer, are the subject of  \textbf{relational database} design.
\item	Every finite, \textbf{simple} relation expresses a \textbf{functional dependency}.
\item	The graphs of finite and simple relations are called \textbf{mappings} in VDM-SL terminology.
\item	We will use greek identifiers ($\sigma, \tau$ etc) to denote (finite) mappings
\end{itemize}
%\end{slide}

\section{VDM-SL mapping notation}
\begin{itemize}
\item	Datatype: $\red \vdmslMap A B$
\item	Pointwise % expression of (finite) mappings we will adopt the
VDM-SL concrete syntax
\begin{eqnarray*}
\setdef{ a \mapsto b}{b \mathbin\sigma  a}
\end{eqnarray*}
replaces $\red \setdef{(b,a)}{b \mathbin\sigma a}$.
\item	In VDM-SL notation, $\red b \mathbin\sigma a$ is furthermore rephrased as
$\red a \in \dom\sigma \land b = \sigma(a) $ --- cf.\ $\red \sigma = \sigma \comp \dom\sigma $ --- that is, we have
\begin{eqnarray*}
\sigma &=& \setdef{a \mapsto \sigma(a)}{a \in \dom\sigma}
\end{eqnarray*}
\end{itemize}
%\end{slide}

\begin{Slide}{Meaning of VDM-SL specs}
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
  Spec(a: A) r: B
  pre precond(a)
  post postcond(r,a);

\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
where
\begin{eqnarray*}
\larrow{A}{precond}{bool}
&,&
\larrow{B \times A}{postcond}{bool}
\end{eqnarray*}

means $\larrow A{Spec}B$ where
\begin{eqnarray*}
Spec &\deff& \mean{postcond} \comp \mean{precond}
\end{eqnarray*}
\end{Slide}

\section{VDM-SL $Sqrt$ spec }
\small
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
  Sqrt(x: real) r: real
  pre true
  post sq(r) = x ;
\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
means
\begin{eqnarray*}
&&
\arrayin{
Sqrt &=& \mean{\lambda(r,x). sq\ r = x}
}
%
\just\equiv{ meaning of a binary predicate }
%
\arrayin{
r\ Sqrt\ x &\equiv& (sq\ r)\ id\ x
}
%
\just\equiv{ converse of a function; natural-$id$ (\ref{eq:981211d}) }
%
\arrayin{
Sqrt &=& sq°
}
%
\end{eqnarray*}
%\end{slide}

\section{Turning implicit specifications...}
\emph{Sorting} in \Vdmsl\ notation:
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
  Sort(l: seq of int) r: seq of int
  post IsOrdered(r) and IsPermutation(r,l);

\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
where
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
  IsPermutation: seq of int * seq of int -> bool
  IsPermutation(l1,l2) ==
    forall e in set (elems l1 union elems l2) &
      card {i || i in set inds l1 & l1(i) = e} =
      card {i || i in set inds l2 & l2(i) = e};
\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
%\end{slide}

%\overlays{3}{%
\section{\ldots into relational models}
\ldots abbreviates to
\begin{eqnarray*}
Sort \deff \mean{IsOrdered}  \comp
\onlySlide*{1}{\red
{IsPermutation}
}
\fromSlide*{2}{\red
(\ker{\rnode1{seq2bag}})
}
\end{eqnarray*}

\def\s#1{\\\rule{#1ex}{0pt}}

\fromSlide*{2}{%
\noindent
assuming
\begin{eqnarray*}
\rnode2{
\begin{vdmraw}{1.0}\scriptsize
\begin{alltt}
~~seq2bag: seq of int -> map int to nat1
\s2
  seq2bag(l) ==
\s4
    \{ e ||-> card \{ i || i in set inds l \& l(i) = e \} ||
\s9
      e in set elems l \};
\s0
\end{alltt}
\end{vdmraw}
}
\end{eqnarray*}
\nccurve[linecolor=green,angleA=-150,angleB=150]{->}{1}{2}
}
\fromSlide*{3}{%small
\texttt{IsPermutation} is an \textbf{equivalence} because
$\ker f$ always is reflexive, symmetric and transitive.
}
%\end{slide}
%}

\CUT{
\section{Using kernel in specifications}
\small
Implict specification of \emph{sorting} in VDM notation:
\begin{vdmraw}{0.9}\scriptsize
\begin{verbatim}
  Sort(l: seq of real) r: seq of real
  post IsPermutation(r,l) and IsOrdered(r);
\end{verbatim}
\end{vdmraw}

\noindent where
\vdmbox1{%
  IsPermutation: seq of real * seq of real -> bool
\\
  IsPermutation(l1,l2) ==
\tab2
    forall e in set (elems l1 union elems l2) \&
\tab4
      card \{i || i in set inds l1 \& l1(i) = e\} =
\tab4
      card \{i || i in set inds l2 \& l2(i) = e\};
}
\noindent
abbreviates to
%\end{slide}

\begin{Slide}{Using kernel in specifications}
\small
\begin{eqnarray*}
Sort &\deff& IsOrdered \comp (\ker{seq2bag})
\end{eqnarray*}
where
\vdmbox1{%
seq2bag: seq of real -> map real to nat1
\\
seq2bag(l) ==
\tab1
\{ e ||-> card \{ i || i in set inds l \& l(i) = e \} ||
\tab4
e in set elems l \};
}
\end{Slide}
}

\begin{Slide}{Relational semantics of VDM-SL}
From the VDM-SL on-line manual:
\begin{center}\small
\begin{tabular}{||c||c||c||}
\hline
Operator & Name & Semantics description
\\\hline\hline
\texttt{s $\vdmslDrt$ m}
& Domain restrict to
&
\begin{minipage}{.5\textwidth}
~\\
Creates the map consisting of the elements in \texttt m whose key is in
\texttt s. \texttt s need not be a subset of
\texttt{dom m}.
\\
\end{minipage}
\\\hline
\end{tabular}
\end{center}
Formal \textbf{semantics}:
%
\begin{eqnarray*}
%
\mean{s \vdmslDrt m}
&
=
&
\mean m \comp \mean s
% \label{eq:030906a}
\end{eqnarray*}
where
\(\red
\mean s
\)
is correflexive and
\(\red
\mean m
\)
is simple.
\end{Slide}

\section{Relational semantics of VDM-SL}
From the VDM-SL on-line manual:
\begin{center}\small
\begin{tabular}{||c||c||c||}
\hline
Operator & Name & Semantics description
\\\hline\hline
\texttt{m1 $\vdmslPlus$ m2}
& Override
&
\begin{minipage}{.65\textwidth}
~\\
overrides and merges \texttt{m1} with \texttt{m2}, i.e.\ it is like a merge
except that \texttt{m1} and \texttt{m2} need not be compatible; any common
elements are as by \texttt{m2} (so \texttt{m2} overrides \texttt{m1}.)
\\
\end{minipage}
\\\hline
\end{tabular}
\end{center}
Formal \textbf{semantics}:
%
\begin{eqnarray*}
%
\mean{m_1 \vdmslPlus m_2}
&
=
&
\mcond	{
	\mean{m_2}
	}{
	\mean{m_2}
	}{
	\mean{m_1}
	}
\end{eqnarray*}
cf.\ relational \textbf{McCarthy} conditional:
%\end{slide}

\begin{Slide}{Relational {McCarthy} conditional}
\small
It is defined by
\begin{eqnarray*}
\mcond R S T
&
\deff
&
(S \comp \dom R) \cup T \comp (id - \dom R)
\end{eqnarray*}
where
\begin{eqnarray*}
\begin{tabular}{||c||c||c||c||}\hline
\multicolumn{4}{||c||}{$(f\ X) \subseteq Y \equiv X \subseteq (g\ Y)$}
\\\hline\hline
  \bf Description
& $  f = g^\flat $
& $  g = f^\sharp $
& \bf Obs.
\\\hline
  difference
& $  (\_- R) $
& $  (R \cup ~) $
& ~
\\\hline
\end{tabular}
\end{eqnarray*}
that is,
\CUT{%
\begin{eqnarray*}
X - R \subseteq Y & \equiv & X \subseteq R \cup Y
\end{eqnarray*}
and so
}
\begin{eqnarray*}
X - R \subseteq Y & \equiv & X \subseteq R \cup Y
\\
X - R &=& \bigcap \setdef{Y}{X \subseteq R \cup Y}
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Reasoning about VDM-SL}
We want to prove VDM-SL properties such as
\begin{eqnarray}
%
X \vdmslDrt (Y \vdmslDrt \sigma)
&
=
&
(X \cap Y) \vdmslDrt \sigma
\label{eq:030908a}
\\
\enset{} \vdmslDrt \sigma
&
=
&
\enset\mapsto
\label{eq:030908b}
\\
X \vdmslDrt (\sigma_1 \vdmslPlus \sigma_2)
&
=
&
(X \vdmslDrt \sigma_1) \vdmslPlus (X \vdmslDrt \sigma_2)
%
\end{eqnarray}
First, some properties of coreflexives:
\begin{itemize}
\item
Coreflexives are \textbf{symmetric} and \textbf{transitive}:
\begin{eqnarray}
 &
        R = R° = R \comp R = R \cap id
 &
\label{eq:020605j}
\end{eqnarray}
\item
\textbf{Meet} of two coreflexives is composition:
\begin{eqnarray}
 &
       R \cap S = R \comp S
&
\label{eq:020605i}
\end{eqnarray}
\item Trivial:
\begin{eqnarray}
       R \comp T \subseteq T
\label{eq:020617l}
\\
       T \comp R \subseteq T
\label{eq:020617m}
\end{eqnarray}
\end{itemize}
\end{Slide}

\marginproof{(\ref{eq:020605j})}{
\begin{eqnarray*}
&&
R \subseteq id
%
\just\equiv{abbreviation}
%
R = R \cap id
%
\end{eqnarray*}
Symmetry:
\begin{eqnarray*}
&&
R
%
\just\subseteq{fact (\ref{eq:020605k})}
%
R \comp R° \comp R
%
\just\subseteq{coreflexive $R$}
%
id \comp R° \comp id
%
\just={identities}
%
R°
\end{eqnarray*}
Transitivity:
\begin{eqnarray*}
&&
R \subseteq id
%
\just\equiv{fact (\ref{eq:020617l})}
%
R \comp R \subseteq R
%
\end{eqnarray*}
}

\normalproof{(\ref{eq:020605i})}{
%
Ping-pong $\implies$:
\begin{eqnarray*}
&&
\mbox{$R$ and $S$ are coreflexives}
%
\just\implies{by (\ref{eq:020617l}, \ref{eq:020617m})}
%
R \comp S\subseteq R \wedge R \comp S \subseteq S
%
\just\equiv{by (\ref{eq:020627a})}
%
R \comp S\subseteq (R \cap S)
%
\end{eqnarray*}
Ping-pong $\implied$:
%
\begin{eqnarray*}
&&
R \cap S \subseteq R \comp S
%
\just\equiv{identity and (\ref{eq:020605j})}
%
R \comp id \cap S \subseteq id \cap R \comp R° \comp S
%
\just\equiv{$S=id$ in (\ref{eq:020605l})}
%
\true
%
\end{eqnarray*}
}

\section{Example of proof}
\small
\begin{eqnarray*}
&&
\mean{X \vdmslDrt (Y \vdmslDrt \sigma)}
%
\just={relational meaning of $\vdmslDrt$}
%
\mean{Y \vdmslDrt \sigma} \comp \mean X
%
\just={relational meaning of $\vdmslDrt$}
%
(\mean\sigma \comp \mean Y) \comp \mean X
%
\just={associativity of $\comp$ and coreflexives}
%
\mean\sigma \comp (\mean X \comp \mean Y)
%
\just={ meet of two coreflexives is composition }
%
\mean\sigma \comp (\mean X \cap \mean Y)
%
\end{eqnarray*}
%\end{slide}

\section{Proof continued}
\small
\begin{eqnarray*}
&&
\mean\sigma \comp (\mean X \cap \mean Y)
%
\just={ meaning of set intersection }
%
\mean\sigma \comp \mean{X \cap Y}
%
\just={relational meaning of $\vdmslDrt$}
%
\mean {(X \cap Y) \vdmslDrt \sigma}
%
\end{eqnarray*}
%\end{slide}

\section{Another proof}
\small
\begin{eqnarray*}
&&
\mean{X \vdmslDrt (\sigma_1 \vdmslPlus \sigma_2)}
%
\just={relational meaning of $\vdmslDrt$ and $\vdmslPlus$}
%
(\mcond{\mean{\sigma_2}}{\mean{\sigma_2}}{\mean{\sigma_1}}) \comp \mean X
%
\just={McCarthy fusion law}
%
\mcond{\mean{\sigma_2} \comp \mean X}{\mean{\sigma_2} \comp \mean X}{\mean{\sigma_1} \comp \mean X}
%
\just={relational meaning of $\vdmslDrt$}
%
\mcond
{\mean{X \vdmslDrt \sigma_2}}
{\mean{X \vdmslDrt \sigma_2}}
{\mean{X \vdmslDrt \sigma_1}}
%
\just={relational meaning of $\vdmslPlus$}
%
\mean{(X \vdmslDrt \sigma_1) \vdmslPlus (X \vdmslDrt \sigma_2)}
%
\end{eqnarray*}
%\end{slide}

\section{Etc.}
Home work: define the relational semantics of \eg.
\begin{center}\small
\begin{tabular}{||c||c||c||}
\hline
Operator & Name & Semantics description
\\\hline
\texttt{m $\vdmslDrb$ s}
& Domain restricted by
&
\begin{minipage}{.4\textwidth}
~\\
Creates the map consisting of the elements in \texttt m whose key is not in
\texttt s. \texttt s need not be a subset of
\texttt{dom m}.
\\
\end{minipage}
\\\hline
\end{tabular}
\end{center}
and prove similar properties.
%\end{slide}

\section{Override pointwise}
Since
\begin{eqnarray*}
\dom{(\sigma_1 \vdmslPlus \sigma_2)} =
\dom{\sigma_1} \cup \dom{\sigma_2}
\end{eqnarray*}
we have, after expansion of the relational definition:
{\red\small
\begin{verbatim}
s1 ++ s2 ==
   { k ||-> if k in set dom s2
           then s2(k)
           else s1(k)
       || k in set dom s1 union dom s2 }
\end{verbatim}
}
The above proof over this definition would have been far less compact.
%\end{slide}

\section{Inductive override}
Another version of map override:
{\red\small
\begin{verbatim}
s1 ++ s2 ==
   if s1 = {||->}
   then s2
   else let k in set dom s1
        in  { k ||-> if k in set dom s2
           then s2(k)
           else s1(k) } munion { k } <-: s1 ++ s2

\end{verbatim}
}

How do we arrive at this recursive scheme?
\begin{center}
See next set of slides.
\end{center}
%\end{slide}

\section{Bibliography notes}
\F

\EXIT

\chapter{An Introduction to Relational Hylomorphisms}

\overlays{4}{%
\begin{Slide}{``How'' does one specify?}
\onlySlide*{1}{General problem solving strategy?}
\fromSlide{2}{\textbf{Divide-and-conquer}:}
\begin{center}
\begin{psmatrix}
\\
\ADJnode{adj:hs}{Problem}
&
\fromSlide*{2}{%
\ADJnode{adj:mc}{Sub-problems}
\ADJarcA{30}{150}{hs}{mc}{divide (analysis)}
}
\\
\fromSlide*{4}{%
\ADJnode{adj:o}{Solution}
}
&
\fromSlide*{3}{%
\ADJnode{adj:cs}{Sub-solutions}
\ADJarcR{-60}{60}{mc}{cs}{%
	\begin{tabular}{l}solve\\sub-problems
	\end{tabular}}
}
\\
\fromSlide*{4}{%
\ADJarcB{-140}{-40}{cs}{o}{combine (synthesis)}
}
\end{psmatrix}
\end{center}
\end{Slide}
}

\overlays{5}{%
\begin{Slide}{Divide-and-conquer (formally)}
\arraycolsep=2cm
\onlySlide{1}{%
\mnode{0a}{{\green Problem space}}
}
\onlySlide{2}{%
\mnode{0b}{~\hfill {\green Sub-problem structure}}
}
~ % NB: dummy, filling space only
%
\begin{eqnarray*}
\begin{array}{cc}
\\
\mnode{1}{A}
&
\fromSlide*{2}{%
\mnode{2}{\ff A}
	\arra{1}{2}{Divide}
}
\\\\\\
\mnode{3}{B}
	\ardl{1}{3}{Solve}
&
\fromSlide*{3}{%
\mnode{4}{\ff B}
	\arlb{4}{3}{Conquer}
}
\fromSlide*{4}{%
	\ardr{2}{4}{\ff{Solve}}
}
\end{array}
\end{eqnarray*}
\onlySlide*{1}{%
\mnode{9}{{\green Solution space}}
\nccurve[linecolor=green,angleA=-150,angleB=150]{-}{0a}{1}
\nccurve[linecolor=green,angleA=120,angleB=-120]{-}{9}{3}
}
\onlySlide*{2}{%
\nccurve[linecolor=green,angleA=-150,angleB=150]{-}{0b}{2}
}
\fromSlide*{5}{%
Questions:
\small
\begin{itemize}
\item
What are the mathematics of $Divide$, $Conquer$, $Solve$?
\item
What do $\red (\ff A)$, $\red (\ff{Solve})$ mean?
\end{itemize}
}
\end{Slide}
}

\begin{Slide}{Relators}
Symbol $\red \f$ is overloaded:
\begin{itemize}
\item
$\red \ff A$ means a (parametric) \textbf{datatype}, e.g.\
\(
\Seq A
\)
--- \textvdm{seq of A} in \Vdmsl;

\fromSlide{2}{%
\item
\(
\red	\ff X
\)
means a \textbf{relation}
\begin{eqnarray*}
\arraycolsep=5mm
\begin{array}{cccc}
\mnode 1 A
&
\mnode 2 {\ff A}
\\\\
\mnode 3 B
	\ardl{1}{3}{X}
&
\mnode 4 {\ff B}
	\ardr{2}{4}{\ff X}
\end{array}
\end{eqnarray*}
\end{itemize}
}
\fromSlide{3}{%
Example:
\(\red
\Seq X
\)
will be such that
\begin{eqnarray*}
l (\Seq X) l' & \equiv & \len l = \len{l'} \land
	\forall i \in \inds l. (l\ i) X (l'\ i)
\end{eqnarray*}
}
\end{Slide}

\overlays{3}{%
\begin{Slide}{Properties of relators}
Every \textbf{relator} |fF| is monotone,
\begin{eqnarray*}
R \subseteq S & \implies & (\ff R) \subseteq (\ff S)
\end{eqnarray*}
and commutes with $( \comp )$ , $(\_)°$ and $id$:
\begin{eqnarray*}
\ff{(R \comp S)} &=& (\ff R) \comp (\ff S)
\\
\ff{id} &=& id
\\
\ff{(R°)} &=& (\ff R)°
\end{eqnarray*}
Terminology:
\begin{quote}
~\\
\onlySlide*{2}{%
$\larrow{\ff A} R A$ is called an |fF|-\textbf{algebra}
}
\onlySlide*{3}{%
$\rarrow A S {\ff A}$ is called an |fF|-\textbf{coalgebra}
}
\end{quote}
\end{Slide}
}

\section{Back to divide-and-conquer}
\arraycolsep=5mm
Divide-and-conquer = relational \textbf{hylomorphism}:
\begin{eqnarray*}
\begin{array}{cc}
\\
\mnode{1}{A}
&
\mnode{2}{\ff A}
	\arra{1}{2}{S}
\\\\
&
\\\\
\mnode{5}{B}
&
\mnode{6}{\ff B}
	\arlb{6}{5}{R}
	\ardl{1}{5}{X}
	\ardr{2}{6}{\ff X}
\end{array}
&
\mbox{that is,}
&
{\red X} = R \comp (\ff{{\red X}}) \comp S
%
\end{eqnarray*}
How do we solve this (hylo) equation for $\red X$?
%\end{slide}

\section{An example first}
\small
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
  mergeSort: seq of int -> seq of int
  mergeSort(l) ==
     cases l :
        [e] -> [e] ,
        others -> let l1 ^ l2
                  in set {l} be st
                          abs (len l1 - len l2) < 2 in
                  lmerge(mergeSort(l1), mergeSort(l2))
     end;
\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
is a \textbf{relational} hylomorphism for
%
\begin{eqnarray*}
\ff X
&
=
&
\texttt{int} + X \times X
\end{eqnarray*}
%\end{slide}

\section{In fact}
%
{\arraycolsep=5mm
\begin{eqnarray*}
\begin{array}{cc}
\\
\mnode{1}{\texttt{seq of int}}
&
\mnode{2}{\ff{\texttt{seq of int}}}
	\arra{1}{2}{S}
\\\\
&
\\\\
\mnode{5}{\texttt{seq of int}}
&
\mnode{6}{\ff{\texttt{seq of int}}}
	\arlb{6}{5}{R}
	\ardl{1}{5}{mergeSort}
	\ardr{2}{6}{ \ff{mergeSort} }
\end{array}
\end{eqnarray*}
}
that is,
\begin{eqnarray*}
mergeSort &=& R \comp (\ff{mergeSort}) \comp S
%
\end{eqnarray*}
where
\(
\arrayin{
R
&
=
&
\alt{singl}{lmerge}
}
\), for $singl = \lambda e.\enlist e$
%\end{slide}

\section{$mergeSort$ algebra and coalgebra}
and $S$ is
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
  S: seq of int -> ( int || seq of int * seq of int )
  S(l) ==
     cases l :
        [e] -> e ,
        others -> let l1 ^ l2
                  in set {l} be st
                          abs (len l1 - len l2) < 2 in
                  mk_(l1,l2)
     end;
\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
%\end{slide}

\begin{Slide}{Equations and fixpoints}
Given an \textbf{equation} of pattern
\begin{eqnarray*}
x &=& f\ x
	\label{eq:011119a}
\end{eqnarray*}
where $\larrow A f A$ for some $A$,
we will say that any \textbf{solution} to this equation ---
that is, any $a_0 \in A$ such that
\begin{eqnarray*}
a_0 &=& f\ a_0
\end{eqnarray*}
is a \textbf{fixpoint} of $f$.
\end{Slide}

\section{Equations versus recursion}
Equation
\(
\red
x = \ap f x
\)
can also be regarded as a \emph{``recursive''} definition of its fixpoints,
e.g.
\begin{itemize}
\item
$\red x = 1 + \frac x 2$ is a recursive definition of number $\red 2$.
\end{itemize}
However,
\begin{itemize}
\item
\(\red
   x= \frac{x^2+3}{4}
\)
has two solutions (=fixpoints) $\red 1$ e $\red 3$.
What are we ``recursively defining'' here?
\item
Furthermore,
\(\red
    x=x
\)
defines any object!
\item Last but not least,
some equations don't have any solution at all. Think e.g.\ of
\(\red
    x = x+1
\)
in $\N$.
\end{itemize}
%\end{slide}

\begin{Slide}{Solving (Fixpoint) Equations}
Let $\larrow A {\leq_A} A$ be a \textbf{partial order}.
Then,
every $a\in A$ such that
\begin{eqnarray*}
    a & \leq_A \ap f{a}
\end{eqnarray*}
is said to be a \emph{post-fixpoint} of $f$,
and
every $a\in A$ such that
\begin{eqnarray*}
    a & \geq_A \ap f{a}
\end{eqnarray*}
is said to be a \emph{pre-fixpoint} of $f$.
Clearly,
\begin{quote}
Every $a\in A$ which is both a pre-fixpoint and a post-fixpoint of $f$
is a \emph{fixpoint} of $f$.
\end{quote}
\end{Slide}

\section{Solving (Fixpoint) Equations II}
Function $\larrow A f B$ is \textbf{monotone} wherever
\begin{eqnarray*}
f \comp \leq_A &\subseteq& \leq_B \comp f
\end{eqnarray*}
for partial orders $\leq_A$ and $\leq_B$, that is:
\small
\begin{eqnarray*}
&&
\arrayin{
f \comp \leq_A &\subseteq& \leq_B \comp f
}
%
\just\equiv{shunting}
%
\arrayin{
\leq_A &\subseteq& f° \comp \leq_B \comp f
}
%
\just\equiv{going pointwise}
%
\arrayin{
	a\leq_A a' &\implies & (\ap f a)\leq_B (\ap f{a'})
}
%
\end{eqnarray*}
%\end{slide}

\begin{Slide}{Solving (Fixpoint) Equations III}
Pointwise ordering on functions
$\larrow A {f,g} B$:
\begin{eqnarray*}
f \lift{\leq_B} g
&\equiv &
\arrayin{
f & \subseteq & \leq_B \comp g
}
\end{eqnarray*}
meaning
\begin{eqnarray*}
f \lift\leq_B g
&\equiv &
\arrayin{
f & \subseteq & \leq_B \comp g
}
%
\just\equiv{shunting}
%
id \subseteq f° \comp \leq_B \comp g
%
\just\equiv{going pointwise}
%
	\forall a. \ap f a \leq_B \ap g{a}
%
\end{eqnarray*}
\end{Slide}

\section{Solving (Fixpoint) Equations IV}
Lattice fixpoint theorem (Tarski 1955) for \textbf{monotone} $f$ as above
and $\leq_A$ defining a \textbf{complete lattice}:
\begin{itemize}
\item The set of all fixpoints of $f$,
\[
     P = \setdef{a\in A}{a = \ap f a}
\]
is non-empty and $\tuple{P;\leq_A}$ is a complete (sub)lattice.
\item % In particular,
The least of all fixpoints $(\bigwedge P)$
      and the greatest one $(\bigvee P)$ are as follows:
\begin{eqnarray*}
\mu f &=&
\arrayin{
    \bigwedge P& = & \bigwedge\setdef{x}{x \geq \ap f x}	\label{eq:43b}
}
\\
    \nu f &=&
\arrayin{
    \bigvee P  & = & \bigvee\setdef{x}{x \leq_A \ap f x}	\label{eq:43a}
}
\end{eqnarray*}
\end{itemize}
% In the sequel we shall be focussing on \emph{least} fixpoints.
%\end{slide}

\begin{Slide}{Solving relational equations}
Hylo-equation \hfill
\(
{\red X} =
\underbrace{
	R \comp (\ff{{\red X}}) \comp S
}_{
	f\ X
}
\)
\hfill ~\\
and other relational equations such as
\begin{eqnarray*}
{\red X} =
\underbrace{
	R \cup R \comp {\red X}			\label{eq:011204a}
}_{
	g\ X
}
\end{eqnarray*}
(cf.\ \textbf{transitive} closure)
have least solutions % in the relation calculus,
\begin{eqnarray*}
µf &=& \sshylo R S
\\
µg &=& R^+
\end{eqnarray*}
because both $f,g$ are monotone.
\end{Slide}

\begin{Slide}{Laws of the Fixpoint Calculus}
\textbf{
Computation rule:
}
\begin{eqnarray*}
µf &=& \ap f {µf}			\label{eq:011119b}
\end{eqnarray*}
Example: hylo-cancellation law
\begin{eqnarray*}
\sshylo R S  &=& R \comp \ff{\sshylo R S} \comp S
\end{eqnarray*}

\textbf{
Rolling rule:
}
\begin{eqnarray*}
        µ(g \comp h)        &=&     g(µ(h \comp g))             \label{eq:011119e}
\end{eqnarray*}
Example:
$f = g \comp h$ where $\ap h X = R \comp X$ and $\ap g X = R \cup X$.
Then
\end{Slide}

\section{Rolling rule}
\small
\begin{eqnarray*}
        µf &=& µ(g \comp h)
%
\just={ rolling rule }
%
g(µ(h \comp g))
%
\just={ definitions of $g, h$}
%
R \cup (µx.(R \comp (R \cup x))
%
\just={ $(R \comp )$ is a lower-adjoint }
%
R \cup µx.(R^2 \cup R \comp x)
\end{eqnarray*}
Further application of this rule will ``factor out'' $R^2$, $R^3$, \etc,
% leading to ``smaller and smaller'' fixpoints.
In the limit, % one gets
$\red µf=\bigcup^{\infty}_{j=1} R^j=R^+$.
%\end{slide}

\section{Hylo rolling rule}
\small
Let
$f = g \comp h$ where $\ap h X = \ff X \comp S$ and $g = (R \comp ) $.
Then
\begin{eqnarray*}
\arrayin{
        µf &=& µ(g \comp h)
} &=&
%
%just={ rolling rule }
%
g(µ(h \comp g))
%
\just={ definitions of $g, h$}
%
R \comp (µX.(\f(R \comp X) \comp S)
%
\just={ relators }
%
R \comp (µX. \ff R \comp \ff X \comp S)
\end{eqnarray*}
that is,
\begin{eqnarray*}
\sshylo R S &=& R \comp \sshylo {\ff R} S
\end{eqnarray*}
%\end{slide}

\section{Other rules}
\textbf{
Square rule:
}
\begin{eqnarray*}
µf = µ(f²)				\label{eq:011119f}
\end{eqnarray*}

\textbf{
Monotonicity:
}
\begin{eqnarray*}
f \lift\leq g
& \implies &
µf \leq µg				\label{eq:011119d}
\end{eqnarray*}
Thus
\begin{eqnarray*}
\sshylo T U \subseteq \sshylo R S
& \implied &
T \subseteq R \land U \subseteq S
\end{eqnarray*}
%\end{slide}

\section{Other rules}
\textbf{
Induction rule:
}
\begin{eqnarray*}
\ap f x \leq x
&	\implies	&
µf \leq x	\label{eq:011119c}
\end{eqnarray*}
Thus
\begin{eqnarray*}
\sshylo R S \subseteq T
& \implied &
R \comp \ff T \comp S \subseteq T
\end{eqnarray*}
and, in particular (\textbf{coreflexive} hylos):
\begin{eqnarray*}
\sshylo R S \subseteq id
& \implied &
R \comp S \subseteq id
\\
\sshylo R {R°} \subseteq id
& \implied &
\mbox{$R$ is simple}
\end{eqnarray*}

Last --- but not least --- \textbf{   $\mu$-fusion}:
%\end{slide}

\begin{Slide}{$\mu$-fusion theorem}
Let
\begin{eqnarray*}
\arraycolsep=1cm
\begin{array}{cc}
%
\mnode{A}{A}
&
\mnode{B}{B}
	\arla{B}{A}{f^\flat}
\\\\
\mnode{C}{A}
	\arul{C}{A}{g}
&
\mnode{D}{B}
	\arlb{D}{C}{f^\flat}
	\arur{D}{B}{h}
%
\end{array}
\end{eqnarray*}
\begin{itemize}
\item	$h,g$ be monotonic,
\item	$(A,\leq)$ and $(B,\sqsubseteq)$ be complete \textbf{lattices},
\item	$f^\flat$ be a lower-adjoint.
\end{itemize}
Then
%
{\red
\begin{eqnarray*}
f^\flat(µ h) =	 µ g
&
\implied
&
f^\flat  \comp h = g  \comp f^\flat
\\
%
\end{eqnarray*}
}
%	Proof: see \cite{Bac00}
\end{Slide}

\section{Applications of $\mu$-fusion theorem}
Converse of a hylo
\begin{eqnarray*}
\red
\sshylo S R ° = \sshylo{R°}{S°}
\end{eqnarray*}
Proof: let
\(
f^\flat  = (\_)°
\) and
\begin{eqnarray*}
%
h\ X &=& S  \comp \ff X \comp R
\\
g\ X &=& T  \comp \ff X \comp U
%
\end{eqnarray*}
that is,
\begin{eqnarray*}
µ h = \sshylo S R
\\
µ g = \sshylo T U
\end{eqnarray*}
%\end{slide}

\section{Proof}
Then
\begin{eqnarray*}
&&
%
\sshylo S R ° = \sshylo T U
%
\just\implied{   $\mu$-fusion theorem }
%
(S  \comp \ff X \comp R)° = T  \comp \ff{(X°)} \comp U
%
\just\equiv{converse and  |fF| is a relator}
%
R°  \comp \ff{ X°} \comp S° = T  \comp \ff{X°} \comp U
%
\just\implied{Leibniz}
%
R°=T \land S° = U
%
\end{eqnarray*}
% So, we know how to compute the converse of a relational hylomorphism:
%	\sshylo S R ° = \sshylo{R°}{S°}
%\end{slide}

\begin{Slide}{Hylo(cata)-fusion}
{\red
\begin{eqnarray*}
%
V \comp \sshylo S R = \sshylo T R
%
&\implied&
%
V \comp S  = T  \comp (\ff V)
%
\end{eqnarray*}
}
\small
\textbf{Proof:} since $(V  \comp ) = (V \rdiv)^\flat$,
\begin{eqnarray*}
&&
%
V \comp \sshylo S R = \sshylo T R
%
\just\implied{   $\mu$-fusion theorem }
%
V \comp (S  \comp \ff X \comp R) = T  \comp \ff{(V \comp X)} \comp R
%
\just\equiv{associative $( \comp )$ and relator |fF| }
%
(V \comp S)  \comp \ff X \comp R = T  \comp (\ff V) \comp (\ff X) \comp R
%
\just\implied{Leibniz}
%
V \comp S  = T  \comp (\ff V)
%
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Hylo(ana)-fusion}
{\red
\begin{eqnarray*}
%
\sshylo S R \comp V = \sshylo S U
%
&\implied&
%
R \comp V  = \ff V \comp U
%
\end{eqnarray*}
}
\small
\textbf{Proof:}
$( \comp V) = (\ldiv V)^\flat$.
Then
\begin{eqnarray*}
&&
%
\sshylo S R \comp V = \sshylo S U
%
\just\implied{   $\mu$-fusion theorem }
%
(S  \comp \ff X \comp R) \comp V = S  \comp \ff{(X \comp V)} \comp U
%
\just\equiv{associative $( \comp )$ and relator |fF| }
%
S \comp \ff X \comp (R \comp V) = S  \comp (\ff X) \comp (\ff V) \comp U
%
\just\implied{Leibniz}
%
R \comp V  = \ff V \comp U
%
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Examples: VDM collective types}
\begin{eqnarray*}
\arraycolsep=1cm
\begin{array}{cc}
\\
\mnode{1}{\vdmslSet A}
&
\mnode{2}{1 + A \times \vdmslSet A}
	\arra{1}{2}{ins°}
\\\\
&
\\\\
\mnode{5}{B}
&
\mnode{6}{1 + A \times B}
	\arlb{6}{5}{R}
	\ardl{1}{5}{\seth R}
	\ardr{2}{6}{id + id \times \seth R}
\end{array}
\end{eqnarray*}
that is,
\begin{eqnarray*}
\arrayin{
\seth R &=& \sshylo R {ins°}
}
& \mbox{where}
&
\arrayin{
ins&\deff&\alt{\kons\emptyset}{puts}
}
\end{eqnarray*}
and \ldots
\end{Slide}

\section{VDM-SL collective type $\vdmslSet A$}
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
  puts[@@A] :  @@A * set of @@A -> set of @@A
  puts(e,s) == {e} union s
  pre not e in set s ;

\end{verbatim}
\end{vdmraw}
\end{eqnarray*}
Pointfree version (for $R=\alt{\kons u}{f}$):

\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
shylo[@@A,@@B] : (@@A*@@B -> @@B) * @@B -> set of @@A -> @@B
shylo(f,u)(s) ==
      if s={} then u
      else let a in set s,
               r = s \ {a}
           in f(a,shylo[@@A,@@B](f,u)(r));
\end{verbatim}
\end{vdmraw}
%\end{slide}

\section{VDM-SL collective type $\vdmslSet A$}
\begin{itemize}
\item
For \texttt{shylo(f,u)} to be a function the following must hold:
\begin{eqnarray*}
f(a,f(a',b)) &=& f(a',f(a,b))
\end{eqnarray*}
\item
\textbf{Fusion} law
\begin{eqnarray*}
%
T \comp \seth R  = \seth S
%
&\implied&
%
T \comp R  = S  \comp (\ff T)
%
\end{eqnarray*}
arises from hylo(cata)-fusion
\item
The \textbf{reflection} law holds:
\begin{eqnarray}
\seth{ins} &=& id
%label{eq:000311a}
\end{eqnarray}
\end{itemize}
%\end{slide}

\begin{Slide}{Relational cata(ana)morphisms}
%
Define
\begin{eqnarray*}
\scata R &=& \sshylo R {in°}
\\
\sana S &=& \sshylo {in} S
\end{eqnarray*}
where
\(
\arIso{\ff{µ\f}}{µ\f}{in}{in°}
\).
For instance,
\begin{eqnarray*}
&
elems = \scata{ins}
&
\end{eqnarray*}
\end{Slide}

\section{Relational cata(ana)morphisms}
From
\begin{eqnarray*}
\red
\sshylo S R ° = \sshylo{R°}{S°}
\end{eqnarray*}
infer
\begin{eqnarray*}
%
& & \sana{S}
\\
&=& {\sshylo{in} S °}°
\\
&=& \sshylo{S°}{in°}°
\\
&=& \scata{S°}°
%
\end{eqnarray*}
(=\emph{ana} is the converse of the \emph{cata} of the converse)
%\end{slide}

\begin{Slide}{Inductive coreflexives}
Recall
\begin{eqnarray*}
\sshylo R S \subseteq id
& \implied &
R \comp S \subseteq id
\end{eqnarray*}
which entails
\begin{eqnarray*}
\scata R \subseteq id
& \implied &
R \subseteq in
\end{eqnarray*}
that is,
\begin{eqnarray*}
\scata{in \comp S} \subseteq id
& \implied &
S \subseteq id
\end{eqnarray*}
Example
(on finite lists):
\begin{eqnarray*}
%
IsOrdered
&
\deff
&
\scata{in \comp (id+ok)}
%
\end{eqnarray*}
\end{Slide}

\section{Inductive coreflexives}
where $\red ok$ is the coreflexive induced by predicate

\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
     ok(a,x) == forall b in set elems x & a <= b

\end{verbatim}
\end{vdmraw}
\end{eqnarray*}

This leads to
\begin{eqnarray*}
IsOrdered
&
=
&
\alt{nil}{cons \comp ok} \comp
\\&&
(id + id \times IsOrdered) \comp
\\&&
\alt{nil}{cons}°
\\
&
=
&
\alt{nil}{cons \comp ok \comp (id \times IsOrdered)} \comp
\\&&
\alt{nil}{cons}°
\end{eqnarray*}
%\end{slide}

\section{Inductive coreflexives}
\ldots and, finally, to

\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}
IsOrdered(l) ==
      if l = []
      then true
      else (forall b in set elems tl l & hd l <= b) and
           IsOrdered (tl l) ;
\end{verbatim}
\end{vdmraw}
\end{eqnarray*}

Exercise: calculate the above from
\(\red
\scata{in \comp (id+ok)}
\)
%\end{slide}

\section{VDM-SL data type $\vdmslMap A B$}
\begin{eqnarray*}
\arraycolsep=1cm
\begin{array}{cc}
\\
\mnode{1}{\vdmslMap A C}
&
\mnode{2}{1 + (A \times C) \times \vdmslMap A C}
	\arra{1}{2}{ins°}
\\\\
&
\\\\
\mnode{5}{B}
&
\mnode{6}{1 + (A \times C) \times B}
	\arlb{6}{5}{R}
	\ardl{1}{5}{\seth R}
	\ardr{2}{6}{id + id \times \split{id}{\seth R}}
\end{array}
\end{eqnarray*}
leading to the following pointwise syntax:
%\end{slide}

\section{VDM-SL data type $\vdmslMap A B$}
\begin{vdmraw}{1.0}\scriptsize
\begin{verbatim}

    mhylo[@@A,@@B,@@C] : (@@A*@@C*@@B -> @@B) * @@B ->
                      map @@A to @@C ->
                      @@B
    mhylo(f,u)(s) ==
          if s={||->} then u
          else let a in set dom s,
                   c = s(a),
                   r = s <-: {a}
               in f(c,mhylo[@@A,@@B,@@C](f,u)(r));

\end{verbatim}
\end{vdmraw}
%\end{slide}

\begin{Slide}{Hylos as unique solutions}
A standard % remarkable
result of the relational calculus
% known as the \textbf{hylo theorem}
establishes the following condition for
\begin{eqnarray*}
µX.(R \comp \ff X \comp S) &=& X
\end{eqnarray*}
to be a \textbf{unique} solution:
\begin{itemize}
\item	the ``accessibility relation'' of $S$ is required to be
\emph{inductive} (cf.\ ``well-founded'' relations)
\item	This ensures \textbf{termination} insofar as
the ``size'' of a sub-problem generated by $S$ is strictly smaller than
its source.
\item	One can perform \textbf{induction} over $S$.
\end{itemize}
\end{Slide}

\begin{Slide}{Accessibility and membership}
\small
\emph{Accessibility} relation for $\larrow A S {\ff A}$:
\begin{eqnarray*}
&&	\larrow{A}{\prec_{S}   }{A}
\\
&&	\prec_{S}     \deff {\in_\f} \comp {S}
\end{eqnarray*}
where $\larrow {\ff A}{\in_\f}A$
extends $\larrow {\pow A}{\in}A$ inductively over \emph{polynomial} functors,
as follows:
\begin{eqnarray*}
        \in_{\pow{}} &\deff& \in
\\
        \in_{C} &\deff& \bot
\\
        \in_{\lambda X.X} &\deff& id
\\
        \in_{{\fun F}\times{\fun G}} &\deff&
                        (\in_{\fun F} \comp \p1) \cup (\in_{\fun G} \comp \p2)
\\
        \in_{{\fun F} + {\fun G}} &\deff&
	     \alt{\in_{\fun F}}{\in_{\fun G}}
%
\end{eqnarray*}
\end{Slide}

\section{Example}
\small
Let $\ff X = 1 + B \times X$. Then,
\begin{eqnarray*}
&&	\in_{1 + B \times X}
%
\just={ $\in$ for coproduct bifunctor }
%
\alt{\in_{1}}{\in_{ B \times X}}
%
\just={ $\in$ for constant and product (bi)functors }
%
\alt{\bot}{(\in_{B} \comp \p1) \cup (\in_{\lambda X.X} \comp \p2)}
%
\just={ $\in$ for constant and identity functor }
%
\alt{\bot}{(\bot \comp \p1) \cup (id  \comp \p2)}
%
\just={ $\bot$ and $\alt R S  =  (R \comp |(conv i1)|) \cup (S \comp |(conv i2)|)$ }
%
\p2 \comp |(conv i2)|
%
\end{eqnarray*}
%\end{slide}

\section{Example (pointwise)}
Then,
\begin{eqnarray*}
\prec_{S} &     =    & {\in_{1 + B \times X}} \comp {S}
\\
&=&	(\p2 \comp |(conv i2)|) \comp S
\\
&=&	 \p2 \comp (|(conv i2)| \comp S)
\end{eqnarray*}
meaning
\begin{eqnarray*}
a' \prec_{S} a & \equiv & a' = \p2\ x \land (i_2\ x) S a
\end{eqnarray*}
For example, for $S=\alt{nil}{cons}°$ on finite sequences, we get
%\end{slide}

\section{Accessibility on finite sequences}
\begin{eqnarray*}
&&
\p2 \comp (|(conv i2)| \comp \alt{nil}{cons}°)
\\
&=&
\p2 \comp (\alt{nil}{cons} \comp i_2)°
\\
&=&
\p2 \comp cons°
%
\end{eqnarray*}
and therefore
\begin{eqnarray*}
&&
\arrayin{
a' \prec_{\alt{nil}{cons}°} a
& \equiv &
a' = \p2(b,a') \land a= cons(b,a')
}
\\
&\equiv&
a' \prec_{\alt{nil}{cons}°} cons(b,a')
\\
&\equiv&
\unary{tl} a \prec_{\alt{nil}{cons}°} a
\end{eqnarray*}
%\end{slide}

\section{Hylo factorization (2)}
For such inductive $S$, we can factor $\sshylo R S$ in two components

~ \hfill
\(
\begin{array}{rcl}
\mnode 7 {µ\f}
&
\iso
&
\mnode 8 {\f(µ\f)}
\fromSlide*{2}{%
\nccurve[linecolor=green,angleB=40,angleA=150]{->}{8}{7}\taput{in}
\nccurve[linecolor=green,angleB=-150,angleA=-40]{->}{7}{8}\tbput{in°}
}
\end{array}
\)

\arraycolsep=5mm
%
\begin{eqnarray*}
\begin{array}{cc}
%
\mnode{1}{A}
&
\mnode{2}{\ff A}
	\arra{1}{2}{S}
\\\\\\
\mnode{3}{µ\f}
	\ardl{1}{3}{X_1}
&
\mnode{4}{\ff µ\f}
	\arla{4}{3}{in}
	\ardr{2}{4}{\ff{X_1}}
\\\\\\
\mnode{5}{B}
	\ardl{3}{5}{X_2}
&
\mnode{6}{\ff B}
	\arlb{6}{5}{R}
	\ardr{4}{6}{\ff{X_2}}
\end{array}
&&
\arrayin{
	X1 & = & in \comp F{X_1} \comp S
}
\end{eqnarray*}
%\end{slide}

\overlays{3}{%
\begin{Slide}{Hylo-factorization Theorem}
% Under a \emph{number of} conditions, one has:
\onlySlide*{1}{%
Using $\scata\_, \sana\_$ notation:
\begin{eqnarray*}
&
µX.(R \comp \ff X \comp S)
=
\scata R \comp \sana{S}
%	\label{eq:020613c}
&
\\\\
&
\arraycolsep=1cm
\begin{array}{cc}
%
\mnode{1}{A}
&
\mnode{2}{\ff A}
	\arra{1}{2}{S}
\\\\\\
\mnode{3}{µ\f}
	\ardl{1}{3}{\sana{S}}
&
\mnode{4}{\ff µ\f}
	\arla{4}{3}{in}
	\ardr{2}{4}{\ff{\sana S    }}
\\\\\\
\mnode{5}{B}
	\ardl{3}{5}{\scata R}
&
\mnode{6}{\ff B}
	\arlb{6}{5}{R}
	\ardr{4}{6}{\ff{\scata R}}
\end{array}
&
\end{eqnarray*}
}
\onlySlide*{2}{%
Taking converses:
\begin{eqnarray*}
&
µX.(R \comp \ff X \comp S°)
=
\scata R \comp \scata{S}°
%	\label{eq:020613c}
&
\\\\
&
\arraycolsep=1cm
\begin{array}{cc}
%
\mnode{1}{A}
&
\mnode{2}{\ff A}
	\arla{2}{1}{S}
\\\\\\
\mnode{3}{µ\f}
	\ardl{1}{3}{\scata{S}°}
&
\mnode{4}{\ff µ\f}
	\arla{4}{3}{in}
	\ardr{2}{4}{\ff{\scata{S}°}}
\\\\\\
\mnode{5}{B}
	\ardl{3}{5}{\scata R}
&
\mnode{6}{\ff B}
	\arlb{6}{5}{R}
	\ardr{4}{6}{\ff{\scata R}}
\end{array}
&
\end{eqnarray*}
}
\onlySlide*{3}{%
\emph{Entire} /{\green simple} factorization if both $R$ and $S°$ are \emph{entire} /{\green simple} (=$S$ \emph{surjective} /{\green injective})
\begin{eqnarray*}
&
\arraycolsep=1cm
\begin{array}{cc}
%
\mnode{1}{A}
&
\mnode{2}{\ff A}
	\arla{2}{1}{S}
\\\\\\
\mnode{3}{µ\f}
	\ardl{1}{3}{\scata{S}°}
&
\mnode{4}{\ff µ\f}
	\arla{4}{3}{in}
	\ardr{2}{4}{\ff{\scata{S}°}}
\\\\\\
\mnode{5}{B}
	\ardl{3}{5}{\scata R}
&
\mnode{6}{\ff B}
	\arlb{6}{5}{R}
	\ardr{4}{6}{\ff{\scata R}}
\end{array}
&
\end{eqnarray*}
}
\end{Slide}
}

\begin{Slide}{Virtual data-structuring}
% Perspectives on the divide-and-conquer scheme:
\begin{itemize}
\item
 Particular choice of |fF| for sub-problem organization induces \textbf{intermediate} type {\red $µ\f$}.
\item[]
This is made explicit by hylo-factorization.
\item
\textbf{Intermediate} data-structure saves the outcome of a ``one go'' \textbf{\emph{divide}} step {\red $\scata S°$} and passes it on to the \textbf{\emph{conquer}} step {\red $\scata R$} for processing.
\item
 In general, people \textbf{``fuse''} things very early in design, thus \textbf{\emph{virtualizing}} this structure.
\item
Factorization helps in spec \textbf{understanding} and \textbf{classification}.
\end{itemize}
\end{Slide}

\begin{Slide}{Final note on inductive relation $\prec$}
Is such that the validity of a predicate $\phi$ can be proved by \textbf{structural induction} over it:
\begin{eqnarray*}
(\forall a.\ \phi\ a) &\implied&
	(\underbrace{\forall a.\ \phi\ a \implied
		(\forall c \prec a.\ \phi\ c
		)
	}_{\mbox{\emph{induction step}}})
\end{eqnarray*}
which corresponds to pointfree definition
\begin{eqnarray*}
\prec \rdiv X \subseteq X & \implies & \top \subseteq X
\end{eqnarray*}
where $X$ generalizes $\phi$ such that $\phi\ a = a X b$,
for some fixed $b$.
\end{Slide}

\section{Bibliography notes}
\F

\chapter{Quasi-inductive datatypes}

\def\bb#1#2{(id + #1 \times #2)}

\section{Introducing Non-inductive Datatypes}
Recall from chapter \ref{ch:990115a} that an inductive datatype is defined up
to isomomphism
\begin{eqnarray*}
\arIso{\T}{\ff\T}{in}{out}
\end{eqnarray*}
and that from its definition two isomorphisms emerge --- algebra \( in\) and coalgebra \( out \) --- which are each other's inverses:
\begin{eqnarray*}
in \comp out &=& id_{\T}
\\
out \comp in &=& id_{(\ff\T)}
\end{eqnarray*}
Algebra \(in\) provides the datatype constructors upon which one may build
inductive definitions, algorithms, \etc\ (catamorphisms). It also sets up the basis for inductive proofs about the datatype. Conversely, coalgebra \(out\) provides a \aspas{grammar} for observing the datatype in a
structural, \aspas{recursive descent} fashion.

Because \(in\) and \(out\) are each-other inverses, structuring algoritms around \(in\) or \(out\) is simply a matter of taste: the former leads to an \aspas{axiomatic} (structural, inductive) style, the latter to a more algorithmic (recursive, interpretative) style~\footnote{
Recall from chapter \ref{ch:990115a} that this and other
facts about $\larrow{\ff\T}{in}{\fun\T}$ arise from its being
\emph{initial} (in category-theoretical terms)
among other algebras of the same type |fF|.
}.

Not every datatype is inductive in this way. Think for instance of the \emph{powerset} datatype \( \pow A\) containing all subsets of a finite set \(A\):
\begin{eqnarray*}
\pow A
& = &
\setdef{s}{s\subseteq A}
\end{eqnarray*}
We know that the empty set \( \emptyset\) is a subset of \( A \) --- and
therefore an inhabitant of \(\pow A\) --- and that, given a subset \( s \) of \( A \) and some \( a\in A \), then \( \enset a \cup s \) is another (possibly larger) subset of \( A \). So
 \(
\larrow{1+A \times \pow{A}}
{ins}
{\pow A}
\),
where
\(
ins=\alt{\kons\emptyset}
{\lambda(a,s). \enset a \cup s}
\),
is an algebra for synthesizing \( \pow A\) data values.
We will write
\begin{eqnarray}
ins=\alt{\kons\emptyset}{puts}
\end{eqnarray}
by introducing
\begin{eqnarray}
puts \deff \cup \comp (sings \times id)
\label{eq:puts}
\end{eqnarray}
where \(\ap{sings}{x}=\enset{x}\) ($sings$ stands for \aspas{singleton set}).
Conversely, if \(s \subseteq A\) is nonempty, it can always be decomposed
into a pair \( \pair{a,s-\enset{a}}\) for some \(a\in A\). So we can think of
\(
\rarrow{\pow A}
{outs}
{1+A \times \pow{A}}
\)
where
\begin{eqnarray}
outs = (! + gets) \comp (=_\emptyset)?	\label{eq:000323a}
\end{eqnarray}
and where, for nonempty \(s\),
we define~\footnote{
\label{fn:000620a}
To the reader feeling uncomfortable about the undeterminacy of the
choice of \(a\) in the definition of \( gets\):
we will come back to this later in chapter \ref{ch:120411a}.
\jnowarning{verificar promessa!}
As a matter of fact,
$gets$ (and therefore $out$) are not functions:
they are binary relations, and can only be properly dealt with
in a \emph{relational} approach to inductive datatypes.
}:
%
\begin{eqnarray}
\ap{gets}{s}
& \deff &
\LET a \in s
\IN \pair{a,s - \enset a}
\TEL
\end{eqnarray}

From the outset, \( \pow A\) is a datatype similar to \( \Seq A \): both share the same generative \aspas{grammar}, or inductive \aspas{shape}, defined by functor \( \ff X = 1 + A \times X \). However, a major distinction between the two types can be identified at once:
\(outs\) is not a left inverse of \(ins\) on \( \pow A \), that is,
\begin{eqnarray*}
outs \comp ins &\not=& id
\end{eqnarray*}
in general.
Because of the unordered structure of a set \(s\) one cannot reconstruct the
steps along which it was built.
So a powerset is not inductively generated,
\ie\ it is \emph{non initial} in category-theoretical terms.
This explains why \(outs\) above could not be defined inductively
--- as happens with the similar coalgebra in datatype $\Seq A$,
recall (\ref{eq:990126a})
--- and why set-theoretical equality had to become explicit. Nevertheless,
\begin{eqnarray*}
ins \comp outs &=& id
\end{eqnarray*}
holds ($outs$ is a right-inverse of $ins$).
Altogether, this means that \(1+A \times \pow A\) contains
\aspas{more information} than \( \pow A \) alone.
We convey this fact by writing
\begin{eqnarray}
\arLeq	{\pow A}
	{1+A \times\pow{A}}
	{ins}
	{outs}
\label{eq:000606b}
\end{eqnarray}
The $\leq$-ordering of (\ref{eq:000606b}) will be dealt with in detail in
chapter \ref{ch:dataRef}.
For the moment,
we focus our attention to the main consequence of the lack of \(in/out\)
invertibility:
one cannot build catamorphisms over \(\pow A\) and only \(outs\)-based
hylomorphisms
\begin{eqnarray*}
\xymatrix{
\pow A
	\ar[r]^-{outs}
	\ar[d]_{\sshylo{outs}{g}}
&
1+A \times \pow A
	\ar[d]^{id + id \times \sshylo{outs}{g}}
\\
B
&
1 + A \times B
	\ar[l]^{g}
}
\end{eqnarray*}
can be defined over some suitable target $(1+A \times\_)$-algebra \(g\).
For instance, the \(\card{}\) operator
\begin{code}
card s `deff`
     if s = {}
    then 0
    else let a ins s in 1 + card (s-{a})
\end{code}
counting the number of elements of a finite set is one such hylomorphism
\(\sshylo{outs}{g}\), for \(B=\N_0\) and \(g = \alt{\kons 0}{|succ| \comp \p2}\).

We will adopt notation \(\seth g\) as an abbreviation of \(\sshylo g {outs}\),
itself a notation equivalent to \(\scata  g \comp \sana{outs}\) over
finite sequences ($\Seq A$):
\begin{eqnarray}
\seth g &\deff& \scata  g \comp \sana{outs}	\label{eq:000331b}
\end{eqnarray}
Due to the nondeterminism of $outs$ (\cf\ $gets$ and footnote \ref{fn:000620a})
the $g$ algebra must be
insensitive to the order of $A$ values picked up by $gets$ --- otherwise,
$\seth g$ would be a relation and not a function.
This can be expressed as follows,
where $g_2$ is the second alternative of $g = \alt{g_1}{g_2}$:
\begin{eqnarray}
g_2(a,g_2(a',b)) &=& g_2(a',g_2(a,b))
\end{eqnarray}

Which properties of catamorphisms extend to \(\seth g\)?
The powerset fusion-law
\begin{eqnarray}
f \comp \seth{g} = \seth{h} &\implied& f \comp g = h \comp (id+id \times f)
\label{eq:000311b}
\end{eqnarray}
can be drawn straight away from ana-cata decomposition followed by cata-fusion:
\begin{eqnarray*}
&&	f \comp \seth{g} = \seth{h}
%
\just\equivalent{powerset morphism definition (\ref{eq:000331b})}
%
f \comp \scata{g} \comp \sana{outs} = \scata{h} \comp \sana{outs}
%
\just\implied{ equals by equals composition }
%
f \comp \scata{g} = \scata{h}
%
\just\implied{ cata-fusion }
%
f \comp g = h \comp (id+id \times f)
%
\end{eqnarray*}

Powerset cancellation, however, will no longer remain valid, since
%
\begin{eqnarray}
\seth  g \comp ins &=& g \comp \bb{id}{\seth g}	\label{eq:000322a}
\end{eqnarray}
does not hold in general.
As counter-example take,
for instance,
\(
\seth  g = \card{}
\). Then (\ref{eq:000322a}) would entail
\(
\card{} \comp puts = |succ| \comp \card{} \comp \p2
\)
which is false wherever the first argument of \( puts \) belongs to the
second one.

Some algebras $g$ will obey (\ref{eq:000322a}) and for those we have an
interesting property,
\begin{eqnarray}
        \seth  g \comp \elems{} &=& \scata g		\label{eq:000603b}
\end{eqnarray}
an immediate consequence of cata-fusion (\ref{eq:cata-fusion})
where
\begin{eqnarray}
\elems{} \deff \scata{in}
\label{eq:000620b}
\end{eqnarray}
is the function which \aspas{setifies} a finite list
(for $in$ the initial algebra of $\Seq A$).
This expresses the fact that the second alternative $g_2$ of some
$g = \alt{g_1}{g_2}$ satisfying (\ref{eq:000322a})
is insensitive not only to order but also to repetition on its first argument
(a kind of idempotency).

An example of this situation is provided by the powerset (type) functor,
which is defined by
\begin{eqnarray}
\pow{f} &=& \seth{ins \comp (id+f \times id)}	\label{eq:000331a}
\end{eqnarray}
and boils down to pointwise set-theoretical comprehension:
\begin{eqnarray*}
        (\pow{f})s &=& \setdef{\ap f a}{a\in s}
\end{eqnarray*}
%
It can be easily checked that $\pow{f}$ satisfies (\ref{eq:000322a}):
%
\begin{eqnarray*}
&&
\pow f \comp ins = (ins \comp (id+f \times id)) \comp \bb{id}{\pow f}
%
\just\equivalent{$+$ and $\times$ functors and identity}
%
\pow f \comp ins = ins \comp (id+f\times\pow f)
%
\just\equivalent{ free theorem of polymorphic $ins$ }
%
        \true
%
\end{eqnarray*}

Powerset-absorption
\begin{eqnarray}
\seth g \comp (\pow f)
&=&
\seth{g \comp (id+f \times id)}
\label{eq:000603a}
\end{eqnarray}
is applicable to algebras $g$ satisfying (\ref{eq:000322a})
(our unknown is $\alpha$):
%
\let\tf=\pow
%
\begin{eqnarray*}
&&
        \seth g \comp \tf f = \seth \alpha
%
\just\equivalent{ powerset-functor definition (\ref{eq:000331a}) }
%
        \seth  g \comp \seth {ins \comp \bb f {id}} = \seth  \alpha
%
\just\equivalent{ powerset-morphism definition (\ref{eq:000331b}), twice }
%
        \seth  g \comp \scata{ins \comp \bb f {id}} \comp \sana{outs} = \scata\alpha \comp \sana{outs}
%
\just\implied{ composition of equals by equals}
%
        \seth  g \comp \scata{ins \comp \bb f {id}} = \scata\alpha
%
\just\implied{ cata-fusion (\ref{eq:cata-fusion}) }
%
        \seth  g \comp ins \comp \bb f {id} = \alpha \comp \bb{id}{\seth  g}
%
\just\equivalent{ $g$ assumed to obey to property (\ref{eq:000322a}) }
%
        g \comp \bb{id}{\seth  g} \comp \bb f {id} = \alpha \comp \bb{id}{\seth  g}
%
\just\equivalent{ bi-functors $+$ and $\times$ }
%
        g \comp \bb{id \comp f}{\seth  g \comp id} = \alpha \comp \bb{id}{\seth  g}
%
\just\equivalent{ $id$ is natural (\ref{eq:981211e}) }
%
        g \comp \bb{f \comp id}{id \comp \seth  g} = \alpha \comp \bb{id}{\seth  g}
%
\just\equivalent{ bi-functors $+$ and $\times$ again }
%
        g \comp \bb f {id} \comp \bb{id}{\seth  g} = \alpha \comp \bb{id}{\seth  g}
%
\just\implied{ composition of equals by equals}
%
        g \comp \bb f {id} = \alpha
%
\end{eqnarray*}

Powerset-absorption (\ref{eq:000603a}) is helpful in showing that powerset-map
$\pow f$ commutes with composition:
%
\begin{eqnarray*}
(\pow g) \comp (\pow f)
%
\just={powerset definition}
%
\seth{ins \comp (id+g \times id)} \comp (\pow f)
%
\just={powerset-absorption (\ref{eq:000603a})}
%
\seth{(ins \comp (id+g \times id)) \comp (id+f \times id)}
%
\just={$+$ and $\times$ functors, composition and identity}
%
\seth{(ins \comp ( id + (g \comp f) \times id) }
%
\just={powerset definition}
%
\pow{(g \comp f)}
%
\end{eqnarray*}
%
Finally,
the fact that $\pow{(~\_~)}$ (\ref{eq:000331a}) indeed defines a functor
requires property
\begin{eqnarray*}
\pow{id} &=& id
\end{eqnarray*}
to hold. From (\ref{eq:000331a}) we draw
\begin{eqnarray*}
        \pow{id} &=& \seth{ins \comp (id+id \times id)}
%
\just={ $+,\times$-bifunctors, composition and identity}
%
\seth{ins}
%
\end{eqnarray*}
However, does powerset reflection
\begin{eqnarray}
\seth{ins} &=& id_{(\pow A)}
\label{eq:000311a}
\end{eqnarray}
hold?
It does, but the truth of this fact can no longer be proved on the basis
of an universal property because \(ins\) is not initial, \ie, a bijection.
We shall have to use induction. But this raises another question: \emph{\aspas{which}
induction?} --- a pertinent question given the fact that \(\pow A\) is not
inductively generated!

\begin{exercise}
From (\ref{eq:000603b}) infer the natural property (free-theorem) of $\elems{}$:
\begin{eqnarray}
        (\pow g) \comp \elems{} &=& \elems{} \comp \Seq g
\end{eqnarray}
\end{exercise}

\begin{exercise}
ZF-set-abstraction
\begin{eqnarray*}
\setdef{\ap f a}{a\in s \wedge (\ap p a)}
\end{eqnarray*}
corresponds to powerset filter-and-map:
\begin{eqnarray}
filter(f,p)
& \deff &
\unary{Union}{} \comp \pow{(p\rightarrow sings \comp f, \kons\emptyset)}
\label{eq:000604a}
\end{eqnarray}
where
\begin{eqnarray}
\unary{Union}{}
&=&
\seth{ \alt{\kons\emptyset}{\cup}}
\end{eqnarray}
is finitely distributed union.
Show that, for $p=\kons\true$,
\( \setdef{\ap f a}{a\in s \wedge (\ap p a)} = \pow f \).
\textbf{Hint}:
resort to powerset-absorption (\ref{eq:000603a}).
\end{exercise}

\section{Structural Induction}\label{sec:strInd}
The question above brings us into the core of the inductive proof method
in general: the principle of \emph{structural induction} based on
\emph{well-founded} relations.
A relation \(\prec\subseteq A \times A\) is said to be well-founded wherever
any nonempty subset \(C\) of \(A\) has a minimum,
that is,
if
\begin{eqnarray}
    \universal{\emptyset \subset C \subseteq A}
              {(\existential{m\in C}
                            {{\prec}_m\cap C = \emptyset})}
\end{eqnarray}
holds, where ${\prec}_m$ denotes

\[
    {\prec}_m = \setdef{a\in A}{a \prec m}
\]
The principle of \emph{structural induction} based on an well-founded relation
\(\pair{A;\prec}\) is stated as follows: in order to prove the validity of a predicate
$p$ on $A$,
\[
    \universal{a\in A}{\ap p a}
\]
proceed as follows:
\begin{enumerate}
\item {\em Induction basis}: prove
\[ \ap p m
\]
for all $m\in A$ such that ${\prec}_m = \emptyset$.
\item {\em Inductive step}: let $a\in A$ be such that ${\prec}_a \supset \emptyset$.
      \begin{enumerate}
      \item {\em Induction hypothesis}:
\[
    \universal{x \prec a}{\ap p x}
\]
holds.
      \item {\em Step}: prove
\[
    (\universal{x \prec a}{\ap p x)\Rightarrow \ap p a}
\]
      \end{enumerate}
\end{enumerate}
$\Box$

A famous well-founded relation is \(m\prec n\deff  n>0 \wedge m=n-1\),
because it supports the well-known first induction principle on the natural
numbers.
Suppose one wants to prove the validity of fact $\ap p n$,
for an arbitrary predicate $p$ over $\N_0$.
Clearly, $\prec_0=\emptyset$ and, for $n>0$, $\prec_n=\enset{n-1}$.
Therefore,
%
\begin{enumerate}
\item {\em Induction basis} ($n=0$): prove
\[	\ap p 0
\]
\item {\em Inductive step} ($n>0$):
      \begin{enumerate}
      \item {\em Induction hypothesis}: $p(n-1)$ holds
      \item {\em Step}: prove
\begin{eqnarray*}
p(n-1) & \implies & \ap p n
\end{eqnarray*}
      \end{enumerate}
\end{enumerate}
$\Box$

\begin{exercise}\label{ex:es:square}
Let $f$ be the following recursive function
\begin{eqnarray}
    \begin{array}{rcl}
    f &:& \N_0 \longrightarrow \N_0\\
    f(k) &\deff&
        \begin{lcbr}
                k=0 \implies 0 \\
                k>0 \implies odd(k) + f(k-1)
        \end{lcbr}
\end{array}
\end{eqnarray}
where
\[
    \begin{array}{rcl}
      odd &:& \N \longrightarrow \N\\
      odd(j) &\deff& 2j - 1
    \end{array}
\]
%
Show by $\N_0$ induction that $f$ computes the square of $k$,
\ie\ that $f(k) = k^2$.
(Conclude that the sum of the $n$ first odd numbers is $n^2$).
\end{exercise}

\section{Well-founded coalgebras and induction}\label{sec:wfc}
Well-foundedness is not only closely related to induction but also to
termination. A given hylomorphism \(\sshylo g h\) will not terminate unless
\(h\) is a \emph{well-founded coalgebra}.
A coalgebra is said to be well-founded if its \emph{accessibility relation}
is well-founded.
The accessibility relation \(\prec_h\) implicit in coalgebra
\(\rarrow{A}{h}{\ff A}\) is defined as follows:
\begin{eqnarray*}
b \prec_h a
&\equivalent&
b \in_{\f} (\ap h a)
\end{eqnarray*}
where \(\in_{\f}\) denotes \emph{structural membership}.
This is defined structurally over polynomial functors as follows:
\begin{eqnarray}
        k \in_{C} x &\deff& \false			\label{eq:336q}
\\
        k \in_{\lambda X.X} x &\deff& k=x
\\
        k \in_{{\fun F}\times{\fun G}}\tuple{x,y} &\deff&
                        k \in_{\fun F} x \vee k \in_{\fun G} y
\\
        k \in_{{\fun F} + {\fun G}} x &\deff&
                         \begin{lcbr}
	     k \in_{\fun F} y \Leftarrow x = \ap{i_1}y \\
	     k \in_{\fun G} z \Leftarrow x = \ap{i_2}z
                                \end{lcbr}
\end{eqnarray}

For instance,
let $\rarrow{\N_0}{h}{1+\N_0}$ be coalgebra $h \deff (! + pred) \comp (=_0)?$.
One has
\begin{eqnarray*}
k \in_{1+X} x
&=&
\begin{lcbr}
	 x = \ap{i_1}y \implies \false
\\
	 x = \ap{i_2}z \implies k = z
\end{lcbr}
\end{eqnarray*}
that is
\begin{eqnarray*}
        k \in_{1+X} x
&\equivalent&
x = \ap{i_2} k
\end{eqnarray*}
So,
\begin{eqnarray*}
m \prec_h n
\equivalent
(\ap h n) = \ap{i_2} m
\equivalent
n > 0  \land m=n-1
\end{eqnarray*}
Therefore, this coalgebra supports the first induction principle over $\N_0$,
as seen above.

Let us now go back to the \(\seth g\) hylomorphism.
It can be checked that,
for finite $A$,
\(outs\) (\ref{eq:000323a}) is well-founded and that its accessibility relation is defined over powerset \(\pow A\) as follows:
\begin{eqnarray*}
r \prec_{outs} s
&\deff&
s \supset\emptyset \wedge \existential{a\in s}{r=s-\enset{a}}
\end{eqnarray*}
This leads to the finite powerset induction principle which follows (we want to prove the validity of $\ap\varphi s$ for every $s\in\pow A$):
%
\begin{enumerate}
\item {\em Induction basis} ($s=\emptyset$): prove $\ap\varphi\emptyset$.
\item {\em Inductive step} ($s\supset\emptyset$):
      \begin{enumerate}
       \item {\em Induction hypothesis}:
             \[ \universal{e\in s}{\varphi(s-\enset{e})} \]
       \item {\em Step}:
             \[ \universal{e\in s}
                             {\varphi(s - \enset{e})}
                   \Rightarrow (\ap\varphi s)
                \]
      \end{enumerate}
\end{enumerate}
$\Box$

This principle is illustrated next in the proof of powerset-reflection
(\ref{eq:000311a}),
\ie\ the validity of
\(
\ap\varphi s \deff \ap{\seth{ins}}s = s
\).
By calculation we get
\begin{eqnarray*}
        \ap{\seth{ins}}s
&\deff&
        \IF     s = \emptyset
        \THEN   \emptyset
        \ELSE
                \LET e \in s
                \IN  \enset e \cup (\seth{ins}(s-\enset e))
                \TEL
        \FI
\end{eqnarray*}
The base case \(s = \emptyset\) is obvious. The induction hypothesis is
\(
\ap{\seth{ins}}(s-\enset e) = s - \enset e
\).
A basic fact about sets,
\(
A \cup (B-A) = B
\)
--- \ie\
\(
\enset e \cup (s-\enset e) = s
\)
---
completes the proof.

\begin{exercise}
Establish the induction principle associated with the polynomial datatypes
catalogued in (\ref{eq:991129a}).
\end{exercise}

\section{Datatype invariants and proof obligations}\label{sec:000607a}
As a rule,
the formal specification of real-life problems involves datatypes affected
by properties which formalize real-life conventions, laws, rules, norms or
natural constraints.

Such particularly relevant properties of a specification
--- which should hold forever the lifetime of any program caliming to
implement such a specification
--- are called {\em invariant properties}.
Other such \aspas{eternal} properties will hold as consequences of such basic
datatype invariants.

A well-known example of an invariant concerns datatype
\[
        Date \cong 31 \times 12 \times \N
\]
which requires (in the Gregorian calendar)
a nontrivial invariant:

{\small
\begin{eqnarray}
\leftfunc{dateOk : Date \longrightarrow 2}
         {dateOk\tuple{d,m,y}}
         \lcb\begin{array}{lcl}
                        m\in\enset{1,3,5,7,8,10,12} &\Rightarrow&
                             d\leq 31 \wedge {}\\
                             & & (\neg (y=1582 \wedge m=10)\\
                             & & \vee (d<5) \vee (14<d))\\
                        m\in\enset{4,6,9,11} &\Rightarrow& d\leq 30 \\
                        m=2 \wedge \ap{leapYear}{y} &\Rightarrow& d\leq 29\\
                        m=2 \wedge \neg \ap{leapYear}{y} &\Rightarrow& d\leq 28
             \end{array}\right.
\label{eq:dateOk}
\end{eqnarray}
where
\[
        \begin{array}{rcl}
        leapYear      & :     & \N   \longrightarrow 2\\
        \ap{leapYear}{y} & \deff &
        rem(y,\lcb\begin{array}{lcl}
                        1700\leq y \wedge rem(y,100)=0 &\Rightarrow& 400\\
                        1700>  y \vee rem(y,100)\not=0 &\Rightarrow& 4
                  \end{array}
              \right.) = 0
      \end{array}
\]
}

Predicate $dateOk$ (\ref{eq:dateOk}) is a good illustration of the {\em ad hoc}
character of most constraints formally imposed to specifications.
It arises not only from a natural, cosmological fact
--- the number of days of the year is not a natural number ---
but also from several historical attempts to devise a norm able to finitely
approximate such a number~\footnote{
The situation is actually more complex,
        because this invariant is \aspas{geography} dependent.
        In fact, the 1582 discontinuity
        (10 days omitted in October of that year)
        of the Gregorian calendar (\ref{eq:dateOk})
        was adopted much later in several countries
        --- \eg\ Poland (1586), Hungary (1587), Germany (1700),
        England (1752) \etc\ \cite{Le84}.
        A world-wide \aspas{date} datatype taking into account
        current and past dating systems, \eg\ Chinese, Indian, \etc,
        would be overwhelming in complexity.
}.

In practice,
both the need to bring \emph{legislation} into many computer applications and
the overall interest in devising adequate models for real-life problems
justify our study of datatype invariants and their impact in the formal
specification life-cycle.

Data-type invariants are a burden for the software developer because
formal arguments have to be produced ensuring that they are preserved by
all the operations which create the corresponding data.
Such arguments are called invarianyt \emph{proof obligations}.

Given a predicate $\alpha : A \tfunc 2$,
let $A_\alpha$ denote set
\[ \setdef{a\in A}{\ap{\alpha}{a}}
\]
that is,
the outcome of imposing invariant $\alpha$ upon $A$,
for example,
\[
   Date_{dateOk}
\]
denotes the set of $dateOk$-valid dates.

\noindent
Suppose that one wishes to define a function \( f : B \tfunc A_\alpha \).
Because of the occurrence of invariant $\alpha$ on the codomain of $f$,
its definition cannot be regarded as complete until the following
proof obligation (called \emph{output invariant preservation}) is discharged:
\begin{eqnarray}
\universal{b\in B}{\alpha(\ap f b)}
\label{eq:000620c}
\end{eqnarray}
Invariants may decorate function input domains as well as output domains.
While in the latter case they are a burden and force a formal proof,
in the former they are welcome because they provide an antecedent for the proof
of (\ref{eq:000620c}) --- \ie\ they act as \emph{preconditions}.
For instance,
the correctness of the definition of function \( f : B_\beta \tfunc A_\alpha \)
is established by
\begin{eqnarray}
        \universal{b\in B}{\ap\beta b \implies \alpha(\ap f b)}
\end{eqnarray}
Wherever $B$ is an inductive or quasi-inductive datatypes,
proof-obligations will be carried out by means induction proofs as studied in
the previous section.
In many situations $B$ is the same as $A$ (ibid.\ $\beta$ and $\alpha$) or,
more generally, $A_\alpha$ occurs in the domain of $f$. In this case one
says that $f$ is an $A_\alpha$ \aspas{transformer} and that invariant
$\alpha$ is \emph{maintained} by $f$.

Datatype invariants restrict pre-existing datatypes wherever on reaches
the limits of formal modelling by discrete mathematics techniques and logic
has to be added to the design. Sometimes one finds such restricted datatypes
so useful that particular notation is invented and properties are investigated
for them.
The finite mapping datatype discussed in the following section is one such
piece of formal notation.

\begin{exercise}\label{ex:mfp9596jG}
Let the following function specify a particular list insertion
discipline:
\begin{eqnarray*}
   ins   &:& \N^* \times \N \longrightarrow \N^*
\\ ins(l,a) &\deff&
         \CONDX{l=\emptylist}
               {\enlist a}
               {l\not=\emptylist}
               {\LET h=\hd l\\t=\tl l
                \IN \CASE
                           a=h \VALUE l\\
                           a<h \VALUE cons(a,l)\\
                           a>h \VALUE cons(h,ins(t,a))
                    \ESAC
                \TEL}
\end{eqnarray*}
Does $ins$ maintain the following datatype invariant on finte lists?
\[
     \phi(l) \deff length(l) = card(\elems l)
\]
Produce an (inductive) proof or a counter-example.
\end{exercise}

\section{Binary relations and finite mappings}
There are two standard specializations of the powerset datatype which are particularly useful for the formal specification practitioner: finite binary relations (\(n\)-ary relations in general) and  finite mappings.

A finite binary relation is an inhabitant of datatype \(\pow{(A \times B)}\), for finite \(A\) and \(B\).
A finite mapping is a finite binary relation subject to a datatype invariant
\(\unary{fdp}{}\)
establishing an \aspas{\(A\rightarrow B\)} functional dependency
\begin{eqnarray*}
\ap{fdp}r
&\deff&
\universal
{a\in A}
{\card{(\ap{(\ap{collect}{r})}a)}\leq 1}
\end{eqnarray*}

\noindent
over datatype \(\pow{(A \times B)}\), for finite \(A\) and \(B\),
where $collect$ is isomorphism
\begin{eqnarray}
\arIso{\pow{(A \times B)}}
	{(\pow B)^A}
	{discollect}
	{collect}
\end{eqnarray}
which stems from a more basic one
\begin{eqnarray}
        \arIso  { \pow A }
                {2^A}
                {zf}
                {cf}
\label{eq:ps2exp}
\end{eqnarray}
where
\begin{eqnarray*}
        \ap{zf}\phi & \deff & \setdef{a\in A}{\ap\phi a}
\\
        \ap{cf}s & \deff & \lambda a. a \in s
\end{eqnarray*}

The finite mapping data model (restricting binary relations) is so useful in
practice that the special notation
\begin{eqnarray}
        \map A B &=& {\pow{(A \times B)}}_{fdp}
\label{eq:334a}
\end{eqnarray}
is introduced,
as well as some dedicated operators
\footnote{%
We adopt the following \emph{curryied notation} conventions concerning
a binary operator $\larrow{A \times B}\theta C$:
$(a \theta)$ denotes $\ap{\trans\theta} a$;
$(\theta b)$ denotes $\ap{\trans{\ap{flip}\theta}} b$
(where $\ap{flip}\theta = \theta \comp swap$ swaps the order of
arguments of a binary function);
$\theta_x$ denotes either $(x \theta)$ or $(\theta x)$ depending upon
the context.}:
\begin{eqnarray}
        \dom{}	&\deff& \seth{ins \comp (id+\p1\times id)}
	\ascom{finite mapping domain}
\\
        \rng{}	&\deff& \seth{ins \comp (id+\p2\times id)}
	\ascom{finite mapping range}
\\
        \map A f &=& \seth{ins \comp (id+(id \times f)\times id)}
	\ascom{finite mapping type functor}
\label{eq:000331c}
\\
        (\mapdr s) &\deff& filter(id,(\in s) \comp \p1)
	\ascom{domain restriction}
\\
        (\mapds s) &\deff& filter(id,\neg \comp (\in s) \comp \p1)
	\ascom{domain subtraction}
\\
        pap &\deff& the \comp \rng{} \comp \mapdr \comp (id \times sings)
	\ascom{application ($the$ is partial)}
\\
\plus	&\deff&
	 \cup \comp \split{(\mapds) \comp (id \times \dom{})}{\p2}
	\ascom{mapping overwrite union}
\end{eqnarray}
For monic (injective) $f$ one also has
\begin{eqnarray}
        \map f B &=& \seth{ins \comp (id+(f \times id)\times id)}
	\ascom{finite mapping type functor}
\end{eqnarray}
and, of course, the binary map operator:
\begin{eqnarray}
        \map f g &=& \seth{ins \comp (id+(f \times g)\times id)}
	\ascom{finite mapping type functor}
\end{eqnarray}

Partial map application $pap(\sigma,a)$ is abbreviated by $\ap\sigma a$,
by analogy with (total) functions.
A pair $\pair{a,b}$ in $\map A B$ is usually denoted $a \mapsto b$.
Converted to pointwise notation using these conventions,
a finite mapping morphism $f=\seth{\alt{\kons k}{h}}$ takes the following shape:
\begin{eqnarray}
        \ap f \sigma
&\deff&
        \IF     \sigma = \enset{}
        \THEN   k
        \ELSE
                \LET a \in \dom\sigma
		\\
                     \sigma'=\sigma \mapds \enset a
                \IN  h((a,\ap\sigma a),\ap f{\sigma'})
                \TEL
        \FI
\end{eqnarray}
In pointwise notation finite mappings are enumerated by writing \eg
\[
     \enset{1\mapsto a,2\mapsto b,3\mapsto c}.
\]
This notation extends to mapping-comprehension,
as in \eg
\[
     \setdef{i \mapsto i+1}{i\in 3}
\]
which denotes the same mapping as
\( \enset{1\mapsto 2,2\mapsto 3,3\mapsto 4} \)
or in the following pointwise definition of the very useful \aspas{mapping join}
operator,
\begin{eqnarray}
    \sigma \Join \tau & \deff &
       \nmapdef	{a}
	{\pair{\ap\sigma a,\ap\tau a}}
	{a\in\dom\sigma \cap \dom\tau}
        \label{eq:801}
\end{eqnarray}
the finite mapping counterpoint of the $unzip$ operator
\cite{JJ98} on finite lists.

\section{Finite mapping induction principle}
The finite mapping induction principle is an instance of the
finite powerset induction principle presented in section \ref{sec:strInd}:
%
\begin{enumerate}
\item {\em Induction basis} ($s=\emptyset$): prove $\ap\varphi\emptyset$.
\item {\em Inductive step} ($s\supset\emptyset$):
      \begin{enumerate}
       \item {\em Induction hypothesis}:
             \[ \universal{e\in\dom s}{\varphi(s \mapds \enset{e})} \]
       \item {\em Step}:
             \[ \universal{e\in\dom s}
                             {\varphi(s \mapds \enset{e})}
                   \Rightarrow (\ap\varphi s)
                \]
      \end{enumerate}
\end{enumerate}
$\Box$

\section{An overview of the powerset and finite mapping algebras}
A permutative law is one which can be regarded as stating a
homomorphism % (Definition \ref{def:Fhomo})
between two algebras of the identity functor
(unary case) or of the product diagonal functor $\ap{\fun F}X=X \times X$
(binary case).
%
Using diagrams, one will have
\begin{eqnarray*}
\begin{array}{ccc}
\textbf{Unary} & \makebox[6em]{} & \textbf{Binary}
\\\\
\xymatrix{
   A \ar[d]^f & A \ar[d]^{f} \ar[l]_-\alpha
\\
   B & B \ar[l]^-\beta
}
&&
\xymatrix{
   A \ar[d]^f & A \times A \ar[d]^{f \times f} \ar[l]_-\alpha
\\
   B & B \times B \ar[l]^-\beta
}
\\\\
\begin{array}{rcl} f \comp \alpha &=& \beta \comp f \end{array}
&&
\begin{array}{rcl} \commEq{999x}{f}\alpha\beta \end{array}
\end{array}
\end{eqnarray*}
In pointwise notation, \eg\ for the binary case, one has:
\begin{eqnarray*}
        f(\alpha\tuple{x,y}) &=& \beta(\ap f x, \ap f y)
\end{eqnarray*}

In the following collection of permutative laws,
$||_S$ abbreviates curried map restriction,
that is, $||_S = || \comp \const{id, \Kons S}$.

\begin{eqnarray}
\commEq{960117b}{\elems{}}\conc\cup
\\
\commEq{999xx}{\len{}}\conc{+}
\\
\commEq{999xxx}{\dom{}}\cup\cup
\\
\commEq{980411b}{\dom{}}\plus\cup
\\
\commEq{es:ff06}{\rng{}}\cup\cup
\\
\commEq{534g}{\setminus_S}\cup\cup
\\
\commEq{A2-es9394st}{\mapr_S}\plus\plus % old {eq:es:ff23}
\\
\commEq{999xxxx}{\setminus_S}\plus\plus
\\
{||_S} \comp \Join &=& \Join \comp (||_S \times ||_S)	\label{eq:615b}
\end{eqnarray}

\CUT{
\section{The relational database model}
\F
A data model is said to be compliant with
the {\em relational database model} if it is a finitary product
of expressions of the following kind:
\begin{itemize}
\item \textbf{relations} ---
      $\pow{(A_1 \times \ldots \times A_n)}$ where every $A_i$
      is regarded as an \aspas{atomic type} in the target relational
      environment;
\item \textbf{mappings} ---
      $(A_1 \times \ldots \times A_n) \pfunc{(B_1 \times \ldots \times B_m)}$
      where every $A_i$ and $B_j$
      is regarded as an \aspas{atomic type} in the target relational
      environment.
\end{itemize}
%
Then:
\begin{itemize}
\item
Laws such as (\ref{eq:333g-ar},\ref{eq:333k},\ref{eq:333l},\ref{eq:333o-ar}) and
(\ref{eq:970425a-ar}) play an important r\^ole in derived construct reification.
They can be used to \aspas{decompose} complex/nested mappings or sequences
into tuples of simpler maps.
\item
Since finite maps are easily refined into binary relations
--- recall (\ref{eq:334a}) ---
our calculus fragment above is useful in refining elaborate,
finite-mapping/sequence based data models into relational database schemata.
\item
It has been proved elsewhere \cite{Ro93} that \textbf{3NF} is guaranteed by mere
application of the above laws, among others.
\end{itemize}

\begin{exercise}\label{ex:000506a}
Infer abstraction functions \(\theta_1\) and \(\theta_2\) whose righ-inverses are \(\map A {i_1}\) and \(\map A {i_2}\), respectively.
Infer the signatures of \(\theta_1\) and \(\theta_2\).
Explain
why \(\theta_1\) and \(\theta_2\) are not the righ-inverses of \(\map A {i_1}\) and \(\map A {i_2}\), respectively.
\end{exercise}

\begin{exercise}
In relational data refinement (\ie\ the representation of data in the relational
database model) one often ignores normalization wherever data storage is not
a problem,
\ie,
one is dealing with small data sets.
The following law describes one such refinement step:
\begin{eqnarray}
(\map A B) \times (\map A C) & \leq & \map A {((B + 1) \times (C + 1))}
\label{eq:990916a}
\end{eqnarray}
It merges two tables into a single one by,
for instance,
representing
\[
\begin{tabular}{||c||c||}\hline
\sc Número&\sc Nome\\\hline\hline
1010&Manuel\\\hline
11230&Maria\\\hline
\end{tabular}
\]
and
\[
\begin{tabular}{||c||c||}\hline
\sc Número&\sc Curso\\\hline\hline
11230&LESI\\\hline
15234&LMCC\\\hline
\end{tabular}
\]
by
\[
\begin{tabular}{||c||c||c||}\hline
\sc Número&\sc Nome&\sc Curso\\\hline\hline
1010&Manuel&NIL\\\hline
11230&Maria&\sc Lesi\\\hline
15234&NIL& \sc Lmcc\\\hline
\end{tabular}
\]
\begin{enumerate}
\item
Resort to \(\theta_1\) of exercise \ref{ex:000506a} to define an abstration map
\(f\) for (\ref{eq:990916a}) in point-free notation.
\jnoomit{Solution:
\(f = (\theta_1\times\theta_1) \comp \split{\map A {\p1}}{\map A {\p2}}
\)}
\item
Define the obvious righ-inverse of \(f\).
\jnoomit{Solution:
\begin{eqnarray*}
\ap{r}{\pair{\sigma_1,\sigma_2}}
&	\deff	&
(\map A{\split{i_1}{!}}) \sigma_1	\plus
(\map A{\split{!}{i_1}}) \sigma_2	\plus
(\map A{\split{i_1}{i_1}})(\sigma_1 \Join\sigma_2)
\end{eqnarray*}
}
\end{enumerate}
\end{exercise}

\F
}

\section{Exercises}
\begin{exercise}
Define the natural properties of the main mapping operators,
\eg\ $\rng{}$, $\Join$ \etc
\end{exercise}

\begin{exercise}
Define set union $s \cup t$ in terms of powerset morphisms.
\textbf{Hint}: describe $(\cup t)$ as a powerset morphism.
\end{exercise}

\begin{exercise}\label{ex:mi9899q03}
Suppose that
\(
        \map A B
\)
describes the statement ($B$) of all accounts ($A$) stored in the information
system of bank \emph{X}.
Let $s \subseteq A$ be the set of accounts which have been selected by
the bank's manager to be awarded the \aspas{\textsc{Top X 2000}} prize,
whereby all such accounts will be credited some amount dependent on
the accounts' statement.
Let
\(
\rarrow B f B
\)
be the formula which updates each account balance in order to credit the award.

One of the analysts of the \aspas{\textsc{Top X 2000}} package
wrote
\[
\plus \comp \const{ id,(\map A f) \comp ||_s }
\]
as a formal specification of the operation which will implement the award
procedure.

Inspect this solution by converting it to pointwise notation
and answer informally to the following questions:
\textbf{(a)}
what will happen if the bank manager includes in $s$ accounts which no
longer exist?
\textbf{(b)}
should the bank manager decide to award all current accounts,
find an expression simpler than the above to describe the award procedure.
\textbf{(c)}
and what if the award amounts to nothing to be credited?
\end{exercise}

\begin{exercise}
Function $f$ in exercise \ref{ex:mi9899q03} is an instance of
the co-called \aspas{selective update} functional,
\begin{eqnarray*}
\xymatrix{
B \ar[d]_f & \map A B \ar[d]^{\ap{\fun U_S}f}
\\
B	   & \map A B
}
\end{eqnarray*}
defined thus:
\begin{eqnarray}
\ap{\fun U_S}f &\deff&
\plus \comp \const{ id,(A\pfunc f) \comp ||_S }		\label{eq:selUp}
\end{eqnarray}
\begin{enumerate}
\item
Write \( \ap{\fun U_S}f \) in pointwise notation.
\item
Prove or contradict the following
properties of $\fun U_S$:
\begin{eqnarray}
        \ap{\fun U_S}{id} &=& id                        \label{eq:980428c}
\\
        \ap{\fun U_\emptyset}{f} &=& id
\\
        \ap{\fun U_S}{(f\comp g)} &=& (\ap{\fun U_S}f) \comp (\ap{\fun U_S}{g})
\\
        (\map A {\Kons c}) \comp \ap{\fun U_S}f &=& \map A {\Kons c}
\\
        (\ap{\fun U_S}f) \comp (\map A g) &=&
        (\map A g) \comp (\ap{\fun U_S}h)
         \makebox[2cm]{if} f \comp g = g \comp h  \label{eq:980418d}
\end{eqnarray}
\end{enumerate}
\end{exercise}

\section{Bibliography notes}
\fbox{
To be completed
}

\chapter{Theorems for Free}
%def\bb#1#2{\ap{\fun B}{\tuple{#1,#2}}}
%
% Local macros
%
\def\x#1{\begin{array}{c}#1\end{array}}

\def\textvdm#1{{\ttfamily #1}}

\begin{Slide}{Parametric polymorphism: why?}
\begin{itemize}
\item
Less code (
	\textbf{specific} solution =
	\textbf{generic} solution + \textbf{customization}
)
\item
Intellectual reward
\item
Last but not least, {quotation}
        (from \emph{Theorems for free!}, by Philip Wadler \cite{Wa89}):
\begin{quote}
        \em From the \emph{type} of a polymorphic function we can derive
            a \emph{theorem} that is satisfies.
        \em (...)
        \em How useful are the theorems so generated?
            Only time and experience will tell
        \em (...)
\end{quote}
\item
No doubt: free theorems are \textbf{very} useful!
\end{itemize}
\end{Slide}

\section{Polymorphic type signatures}
Polymorphic function signature:
\begin{eqnarray*}
f &:& t
\end{eqnarray*}
where $t$ is a functional type, according to the following ``grammar'' of types:
\begin{eqnarray*}
%
t &::=& t' |<-| t''
\\
t &::=& \f(t_1,\ldots,t_n)
\\
t &::=& v \mbox{~~~~~~ type \emph{variables} $v$, cf.\ \emph{polymorphism}}
%
\end{eqnarray*}
What does it mean that $f$ is \textbf{parametrically} polymorphic?
%\end{slide}

\begin{Slide}{Free theorem of type $t$}
Let
\begin{itemize}
\item
$V$ be the set of type variables involved in type $t$
\item
$\enset{R_v}_{v \in V}$ be a $V$-indexed family of relations
($f_v$ in case all such $R_v$ are functions).
\item
$R_t$ be a relation defined inductively as follows:
\begin{eqnarray*}
R_{t=\f(t_1,\ldots,t_n)}	&=& \f(R_{t_1},\ldots,R_{t_n})
\\
R_{t=v}	&=& R_{v}
\\
R_{t=t' |<-| t''}	&=& R_{t'} |<-| R_{t''}
%
\end{eqnarray*}
\item
What kind of relation is $R_{t'} |<-| R_{t''}$?
\end{itemize}
\end{Slide}

\begin{Slide}{Reynolds arrow operator}
\begin{eqnarray*}
\arrayin{
f(R |<-| S)g & \equiv & f \comp S \subseteq R \comp g
}
&&
\xymatrix{ % @@C=20ex @@R=10ex{
A
	\ar[d]_{f}
&
B
	\ar[l]_{S}
	\ar[d]^{g}
\\
C
&
D
	\ar[l]^{R}
}
\end{eqnarray*}
\small
\(\arrayin{
\mbox{That is to say,} &&
\begin{array}[t]{c}
        \larrow B S A
\\ \larrow D R C
\\ \hline
~\rule{0pt}{1.7em}
       \larrow {D^B}{R |<-| S}{C^A}
\end{array}
}\)

\noindent
For instance,
\(
\arrayin{
f(id |<-| id )g & \equiv & f = g
}
\)
that is,
\(
\arrayin{
id |<-| id & = & id
}
\)
\end{Slide}

\section{Free theorem (FT) of type $t$}
The following (remarkable) theorem
--- due to J.\ Reynolds and advertised by P.\ Wadler --- holds:
\begin{quote}\em
Given any function $\red \theta : t$, and $\red V$ as above,
then $\red \theta \mathbin{R_t} \theta$ holds, for any relational instantiation
of type variables in $V$.
\end{quote}
Note that this theorem
\begin{itemize}
\item	is a result about $t$
\item	holds \textbf{independently} of the actual definition of $\theta$.
\item	holds about any function of type $t$
\end{itemize}
%\end{slide}

\section{First example}
\begin{itemize}
\item	The target function:
 $\theta = invl : \Seq a |<-| \Seq a$.
\item
Calculation of $R_{t=\Seq a |<-| \Seq a}$:
\begin{eqnarray*}
&&
R_{\Seq a |<-| \Seq a}
%
\just\equiv{ rule
\( \arrayin{
	R_{t=t' |<-| t''}	&=& R_{t'} |<-| R_{t''}
} \)
}
%
R_{\Seq a} |<-| R_{\Seq a}
%
\just\equiv{ rule
\( \arrayin{
R_{t=\f(t_1,\ldots,t_n)}	&=& \f(R_{t_1},\ldots,R_{t_n})
} \)
}
%
\Seq{R_a} |<-| \Seq{R_a}
%
\end{eqnarray*}
\item
Calculation of FT $invl \ (R_{\Seq a |<-| \Seq a}) \ invl$ follows
\end{itemize}
%\end{slide}

\section{$invl$ FT calculation}
\small
The FT itself will predict ($R_a$ abbreviated to $R$):
\begin{eqnarray*}
&&
invl(\Seq{R} \mathbin\leftarrow \Seq{R})invl
%
\just\equiv{ definition
\( \arrayin{
	f(R |<-| S)g & \equiv & f \comp S \subseteq R \comp g
} \)
}
%
invl \comp \Seq{R} \subseteq (\Seq{R}) \comp invl
%
\end{eqnarray*}
In case R is a function $r$, the FT theorem boils down to $invl$'s
\textbf{natural} property:
\begin{eqnarray*}
%
invl \comp \Seq{r} & = & \Seq{r} \comp invl
%
\end{eqnarray*}
Further calculation (back to $R$):
%\end{slide}

\begin{Slide}{Pointwise version of FT}
\small
\begin{eqnarray*}
&&
invl \comp \Seq{R} \subseteq (\Seq{R}) \comp invl
%
%
\just\equiv{ shunting rule }
%
\Seq{R} \subseteq invl° \comp (\Seq{R}) \comp invl
%
\just\equiv{ going pointwise }
%
\arrayin{
l (\Seq{R}) r &\implies& (invl\ l) (\Seq{R}) (invl\ r)
}
%
\just\equiv{ pointwise definition of $\Seq{R}$ }
%
\arrayin{
\forall i\in inds\ l. (l\ i){R}(r\ i) &\implies& (invl\ l) (\Seq{R}) (invl\ r)
}
%
\end{eqnarray*}
%end{Slide}
%
%begin{Slide}{Pointwise version of FT}
For example,
$invl$ will respect orderings:
\begin{eqnarray*}
&&	\forall i\in inds\ l. (l\ i) < (r\ i)
\\
&\implies&
\forall j\in inds(invl\ l). (invl\ l)j < (invl\ r)j
%
\end{eqnarray*}
\textbf{Exercise:} calculate the FT of
\begin{eqnarray*}
sort : \Seq a |<-| \Seq a |<-| (2 |<-| (a \times a))
\end{eqnarray*}
(the first parameter stands for the ordering relation.)
\end{Slide}

\begin{Slide}{Second example: FT of $\scata\_$}
\begin{itemize}
\item
$\scata\_$ has generic type
\begin{eqnarray*}
\scata\_ : b |<-| \ff a |<-| (b |<-| \bb a b)
\end{eqnarray*}
where $\ff a \iso \bb{a}{\ff a}$.
\item
FT-$\scata\_$:
\begin{eqnarray*}
\scata\_ \comp (R_b \mathbin\leftarrow \bb{R_a}{R_b})
&\subseteq&
(R_b \mathbin\leftarrow \ff{R_a}) \comp \scata\_
\end{eqnarray*}
\item
FT-$\scata\_$ calculation follows
($R_a, R_b$ abbreviated to $R, S$):
\end{itemize}
\end{Slide}

\section{FT-$\scata\_$ corollaries }
\begin{eqnarray*}
&&
\arrayin{
\scata\_ \comp (S |<-| \bb R S)
&\subseteq&
(S |<-| \ff R) \comp \scata\_
}
%
\just\equiv{ definition
\( \arrayin{
	f(R |<-| S)g & \equiv & f \comp S \subseteq R \comp g
} \)
}
%
\arrayin{
f(S |<-| \bb R S)g
&\implies &
\scata f (S |<-| \ff R) \scata g
}
%
\just\equiv{ idem }
%
\arrayin{
f \comp \bb R S \subseteq S \comp g
&\implies &
\scata f \comp \ff R \subseteq S \comp \scata g
}
%
\end{eqnarray*}
At this point, we can infer \ldots
%\end{slide}

\section{FT-$\scata\_$ corollaries }
From this, infer
\begin{itemize}
\item
$\scata\_$-\emph{fusion} ($R,S := id, s$):
%
\begin{eqnarray*}
&&
\arrayin{
	(f \comp \bb {id} s = s \comp g)
& \implies &
\scata f = s \comp \scata g
}
\end{eqnarray*}
%
\item
$\scata\_$-\emph{absorption} ($R,S := r, id$):
%
\begin{eqnarray*}
&&
\arrayin{
	(f \comp \bb r {id} = g)
& \implies &
\scata f \comp \ff r = \scata g
}
%
\just\equiv{ replacement of $g$ }
%
\scata f \comp \ff r = \scata{f \comp \bb r {id}}
%
\end{eqnarray*}
\end{itemize}
%\end{slide}

\section{Bibliography notes}
\F

\part{Data Refinement by Calculation}

\chapter{On Data Representation}\label{ch:dataRef}
Data isomorphism was studied in chapter \ref{ch:990122a}.
It provides us with a notion of data-equivalence.
How do we \aspas{order} data-structures according to their
\aspas{size} or \aspas{expressive power}?
Are there \aspas{better} or \aspas{worse} data-structures for a given purpose?
%
In this chapter
\fbox{--- which is currently in a very drafty version ---}
we address the field of \emph{formal} data processing and refinement by
transformation.

\section{Introduction}
The definition of a function
\(
\larrow A f B
\)
can be regarded as a kind of \aspas{contract}:
function $f$ is committed to produce an $A$-value provided it is supplied with
a $B$-value.
%
Such a \aspas{functional contract} can be of two kinds:
(a)
$f$ intentionally loses information, because $B$ is found too detailed and
one wants to capture only the $A$-aspect of $B$-values
---
so, $A$ is an \emph{abstraction} of $B$ ($f$ is non-injective);
(b)
$f$ faithfully converts data from the $B$-format to the $A$-format
---
so, $f$ is injective and, in the limit, the two formats are the same
($f$ is the identity).

Case (a) above is perhaps more interesting than (b) and supports the following
aphorism about a facet of \emph{functional programming}: it is the \emph{art}
of transforming or losing information in a controlled and precise way.
In this way,
it is close to \emph{data-mining} which is nothing but a series of clever,
highly scrutinized formal reductions of a complex input structure.

Case (a) also includes
the process of \emph{transforming} data from one format to another
so that it fits in a particular context or matches a given requirement.
One of the aspects of this is \emph{data refinement}, which usually means
a change of \emph{data representation}: a problem is abstractly characterized
in terms of clever, mathematically nice data models which either don't fit in
traditional data structuring techniques, or they do but at a severe cost of
efficiency.

Refinement is the process of converting (with a variable concern for formality) abstract software specifications into real applications intended to run on some available hardware.
Formal refinement is one of the most relevant branches of formal methods. It splits into \emph{data refinement} and \emph{algorithmic refinement}, depending on where refinement decisions take place: changing the format of \emph{real} data in the former case, or replacing a \emph{virtual} data-structure
\footnote{
Recall section \ref{sec:991127a}.
}
by a more efficient (though equally virtual) one in the latter.

Formal refinement is not yet widely used due to the difficulty of scaling its mathematical reasoning to real size problems. By contrast, informal refinement enforces so little discipline in software design that results are very often catastrophic, particularly in the case of very large applications which have a long life-span. As a rule, such applications lack in documentation, have bugs and raise serious maintenance problems. Using or selling them becomes a risky business.

In this chapter we concentrate on data representation and refinement
because, in formal software design, data calculation preceeds and
paves the way to correct algorithm design by calculation.

Most of \cite{Ol08a} fits here.

\fbox{mfpii.tex}

\section{FM software design process}
\begin{itemize}
\item
\emph{Formal specification} --- \aspas{what} the intended software system should do
\item
\emph{Implementation} ---
machine code produced instructing the hardware about \aspas{how} to do it
\end{itemize}
In general, there is more than one way in which a particular machine
can accomplish \aspas{what} the specifier bore in mind:
\begin{itemize}
\item
Relationship between
specifications and implementations is \textbf{one-to-many}
\item
Specifications are more \emph{abstract} than implementations.
\end{itemize}
%\end{slide}

\section{Recall\ldots}
\small
\emph{Kernel}
\begin{eqnarray}
\ker R \deff R° \comp R
\label{eq:020624a}
\end{eqnarray}
%
\emph{Image} (its dual)
\begin{eqnarray*}
\img R \deff \ker{(R°)}
        \label{eq:020624f}
\end{eqnarray*}
Taxonomy
\begin{eqnarray*}
\mbox{\small
\begin{tabular}{||c||||c||c||}\hline
&
\emph  {Reflexive}
&
\emph  {Coreflexive}
\\\hline\hline
$\ker R$
&
entire $R$
&
injective $R$
\\\hline
$\img R$
&
surjective $R$
&
simple $R$
\\\hline
\end{tabular}
}
\label{eq:040128f}
\end{eqnarray*}

%\end{slide}

\section{Recall\ldots}
\tiny
\def\x#1{\begin{tabular}{c} #1 \end{tabular} }
\centering{
\hskip  -10mm
\begin{tabular}{cccccccc}
&&&
\rnode{0}{relation}
\\ \rule{0pt}{2em} \\
\rnode{A}{injective}
	\nccurve[linecolor=red,angleA=090,angleB=210]{-}{A}{0}
&
&
\rnode{B}{entire}
	\nccurve[linecolor=red,angleA=090,angleB=230]{-}{B}{0}
&
&
\rnode{C}{simple}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{C}{0}
&
&
\rnode{D}{surjective}
	\nccurve[linecolor=red,angleA=090,angleB=-40]{-}{D}{0}
\\ \rule{0pt}{2em} \\
&
\rnode{E}{representation}
	\nccurve[linecolor=red,angleA=090,angleB=-30]{-}{E}{A}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{E}{B}
&
&
\rnode{F}{function}
	\nccurve[linecolor=red,angleA=180,angleB=-30]{-}{F}{B}
	\nccurve[linecolor=red,angleA=000,angleB=210]{-}{F}{C}
&
&
\rnode{G}{abstraction}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{G}{D}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{G}{C}
\\ \rule{0pt}{2em} \\
&
&
\rnode{H}{injection}
	\nccurve[linecolor=red,angleA=90,angleB=-90]{-}{H}{E}
	\nccurve[linecolor=red,angleA=90,angleB=-90]{-}{H}{F}
&
&
\rnode{I}{surjection}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{I}{F}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{I}{G}
\\ \rule{0pt}{2em} \\
&&&
\rnode{J}{\x{bijection \\ (isomorphism)}}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{J}{H}
	\nccurve[linecolor=red,angleA=090,angleB=-90]{-}{J}{I}
\end{tabular}
}
%\end{slide}

\begin{Slide}{Data refinement}
%
Principle of \textbf{data abstraction}: $A$ abstracts $B$ wherever
\begin{itemize}
\item
A surjective \emph{abstraction} $\larrow B{\smp f}A$ can be found:
\begin{eqnarray}
\img{\smp f} &=& id
\label{eq:030224a}
\end{eqnarray}
$\smp f$ is thus \textbf{simple} but possibly partial.
\item
Any \textbf{entire} subrelation $R$ of $\smp f°$ is said to be a
\emph{representation} for $\smp f$. So $R\subseteq \smp f°$.
\end{itemize}
\end{Slide}

\begin{Slide}{Representation relations}
\small
\begin{itemize}
\item
It follows that $R$ is \textbf{injective}, since $\ker R \subseteq \ker{\smp f°}$ and
$\ker{\smp f°}= \img{\smp f} = id$.
\item
So, no two different abstract values $a,a'\in A$ get mixed up along the
representation process.

\item
Altogether, $\ker R=id$ because $id\subseteq \ker R \subseteq id$ ($R$ is entire).
\item
It follows that $R$ is a \textbf{right-inverse} of $\smp f$, that is
\begin{eqnarray}
\smp f \comp R &=& id
\label{eq:030221a}
\end{eqnarray}
This is proved by circular inclusion
\[
\smp f \comp R \subseteq id \subseteq \smp f \comp R
\]
in the next slide.
\end{itemize}
%
\end{Slide}

\begin{Slide}{Right invertibility}
\small
\begin{eqnarray*}
&&		\smp f \comp R \subseteq id \land id \subseteq \smp f \comp R
%
\just\equiv{ $\img{\smp f} = id$ and $\ker R = id$}
%
\smp f \comp R \subseteq F \comp F° \land R° \comp R \subseteq \smp f \comp R
%
\just\equiv{ converses }
%
\smp f \comp R \subseteq {\smp f} \comp {\smp f}° \land R° \comp R \subseteq R° \comp \smp f°
%
\just\implied{$(\smp f \comp )$ and $(R° \comp )$ are monotone }
%
R \subseteq {\smp f}° \land R \subseteq \smp f°
%
\just\equiv{ $R \subseteq {\smp f}°$ is assumed }
%
\true
%
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Refinement inequations}
\begin{eqnarray*}
\arLeq A B {\smp f} R &\mbox{such that}& \smp f \comp R = id_A
\end{eqnarray*}
This inequation has several informal interpretations:
\begin{itemize}
\item[-]
$A$ is \aspas{smaller} than $B$
\item[-]
$B$ is able to \aspas{represent} $A$
\item[-]
$B$ is \aspas{abstracted} by $A$
\item[-]
$A$ is \aspas{implemented} by $B$
\item[-]
$B$ is a refinement (\aspas{refines}) $A$
\end{itemize}
\end{Slide}

\section{Refinement equations}
\small
\begin{eqnarray*}
\textbf{Isomorphisms: ~~~~~~~~~~}
\arIso A B f r &\mbox{such that}& r = f°
\end{eqnarray*}
%This equation has the following interpretation:
\begin{eqnarray*}
&&
r = f°
%
\just\equiv{add variables }
%
\arrayin{ b \ r \ a & \equiv & b {f°} a }
%
\just\equiv{functions and converses }
%
\arrayin { b = r \ a & \equiv & f \ b = a }
%
\end{eqnarray*}
%\end{slide}

\section{Example}
Representing finite \textbf{sets} by finite \textbf{lists}:
\small
\[
\begin{array}{cccccc}
&
\makebox(100.00,20.00)[cc]{$\smp f = \elems{}$}
&&
\rnode{0}{\enlist{1,2}}
\\ \rule{0pt}{2em} \\
\rnode{A}{\enset{1,2}}
&
&
&
\rnode{C}{\enlist{2,1}}
&
&
\nccurve[linecolor=red,angleA=180,angleB=030]{->}{0}{A}
\nccurve[linecolor=red,angleA=180,angleB=000]{->}{C}{A}
\\ \rule{0pt}{2em} \\
&
&
&
\rnode{H}{\enlist{1,2,1}}
\nccurve[linecolor=red,angleA=180,angleB=-30]{->}{H}{A}
\end{array}
\]
Among the many $R \subseteq \smp F°$, we may choose the following:
%\end{slide}

\begin{Slide}{Relational representation}
\small
\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny\bf
\begin{code}
  Listify : set of nat -> seq of nat
  Listify(s) ==
        if s = {} then []
                  else let e in set s
                       in [e] ^ Listify(s \ {e});
\end{code}
\end{vdmraw}
\end{eqnarray*}
Intuitively,
\begin{eqnarray*}
\rng{Listify} = \mean{noRepeats}
\end{eqnarray*}
where
\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny\bf
\begin{code}
  noRepeats(s) == card elems s = len s
\end{code}
\end{vdmraw}
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Functional representation}
\small
\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny\bf
\begin{code}
  listify : set of nat -> seq of nat
  listify(s) ==
        if s = {} then []
                  else let e = minset(s)
                       in [e] ^ listify(s \ {e});
\end{code}
\end{vdmraw}
\end{eqnarray*}
Intuitively,
\begin{eqnarray*}
\rng{listify} = \mean{IsOrdered} \comp \mean{noRepeats}
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Concrete invariants}
\small
\begin{itemize}
\item
Wherever
\begin{eqnarray*}
\arLeq A B {\smp f} R
&&
\mbox{such that $ R \subseteq \smp f°$ and $\ran R = \mean\phi$}
\end{eqnarray*}
we say that $\phi$ is the \textbf{concrete invariant} induced by $R$.

\item
In case $R$ is a function, and because it always is injective,
one has
\begin{eqnarray*}
        A
&
        \iso
&
        B_\phi
\end{eqnarray*}
where $B_\phi$ denotes the subset of $B$ which satisfies concrete-invariant
$\phi$.
\end{itemize}
\end{Slide}

\section{Example of a partial abstraction}
\small
Every element of datatype $A$ can be represented by a \aspas{\emph{pointer}}:
\begin{eqnarray*}
        \arLeq	{A}
	{A + 1}
	{|(conv i1)|}
	{i_1}
\end{eqnarray*}
\begin{itemize}
\item
\emph{Simplicity} of the abstraction is ensured by a known fact: the converse of
an injective relation is simple.
\item
Concrete \emph{invariant}: $\phi = \alt{\kons\true}{\kons\false}$
\end{itemize}
%\end{slide}

\section{Another partial abstraction}
\footnotesize
Finite mappings ``are'' (simple) finite relations:
\begin{eqnarray*}
        \arLeq	{\vdmslMap A B}
	{\vdmslSet{(A*B)}}
	{mkf=mkr°}
	{mkr}
\end{eqnarray*}
\Vdmsl:
\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny\bf
\begin{code}
  mkr : map A to B -> set of (A * B)
  mkr(f) == { mk_(a,f(a)) || a in set dom f };

  mkf : set of (A * B) -> map A to B
  mkf(r) == { p.#1 ||-> p.#2 || p in set r }
  pre isSimple(r);
\end{code}
\end{vdmraw}
\end{eqnarray*}
(Guess the concrete invariant.)
\CUT{
\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny\bf
\begin{code}
  isSimple[@@A,@@B] : set of (@@A * @@B) -> bool
  isSimple(r) == forall p,q in set r & p.#1 = q.#1 => p.#2 = q.#2;
\end{code}
\end{vdmraw}
\end{eqnarray*}
}
%\end{slide}

\begin{Slide}{A fundamental iso abstraction}
\small
\begin{eqnarray}
        \arIso  { \map A B }
                {(B+1)^A}
                {untot}
                {tot}
\label{eq:331l-ar}
\end{eqnarray}
where, for types \texttt A, \texttt B and \texttt{JustB::value:B},
\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny\bf
\begin{code}
  tot: map A to B -> A -> [JustB]
  tot(sigma)(a) ==
      if a in set dom(sigma) then mk_JustB(sigma(a)) else nil;

  untot: (A -> [JustB]) -> map A to B
  untot(f) == { a ||-> b || a: A, b: B & f(a) = mk_JustB(b) };
\end{code}
%  untot(f) == { a ||-> f(a).value || a: A & f(a) <> nil }
\end{vdmraw}
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Pointfree $untot = (|(conv i1)| \comp )$}
As checked next:
\begin{eqnarray*}
&&	untot\ f = |(conv i1)| \comp f
%
\just\equiv{relations as set comprehensions}
%
untot\ f = \setdef{\pair{b,a}}{a\in A, b\in B: b(|(conv i1)| \comp f)a}
%
\just\equiv{ using rule $b (f° \comp R \comp g) a \equiv (f\ b) R (g\ a)$ }
%
untot\ f = \setdef{\pair{b,a}}{a\in A, b\in B: i_1\ b = f\ a}
%
\just\equiv{ \Vdmsl\ notation}
%
untot\ f = {\small \verb!{a||->b||a:A,b:B & f(a)=mk_JustB(b)}!}
%
\end{eqnarray*}

\end{Slide}

\section{Easy consequence of $tot/untot$:}
\small
\begin{eqnarray*}
\arIso { A^1 }{A} {} {}
\end{eqnarray*}
extends to partial functions as follows:
\begin{eqnarray*}
\arIso {\map 1 A}{A+1}{f}{f°} &&
\mbox{
(guess $f$ and $f°$).
}
\end{eqnarray*}

That is, the ``singleton'' finite map is a disguise of a ``pointer'' structure.
%\end{slide}

\begin{Slide}{Properties of $\leq$}
\small
\noindent\textbf{Reflexivity}
\begin{eqnarray*}
\arLeq A A {id} {id} & \mbox\cf &
        id \comp id = id
\end{eqnarray*}

\noindent\textbf{Transitivity}
\footnotesize
\begin{eqnarray*}
        \arLeq A B {\smp f} R \land \arLeq B C {\smp g} S
\implies
\arLeq A C {{\smp f} \comp {\smp g}} {S \comp R}
\end{eqnarray*}
\end{Slide}

\section{Proof of transitivity}
\small
\begin{itemize}
\item
First show that composition preserves simplicity and surjectiveness:
\begin{eqnarray*}
&&
\img{(F \comp G)} = id
%
\just\equiv{expanding and converses}
%
F \comp (\img G) \comp F° = id
%
\just\equiv{$G$ is simple and surjective}
%
\img F = id
%
\just\equiv{$F$ is simple and surjective}
%
id = id
%
\end{eqnarray*}
\item
Then note that $\red S \comp R \subseteq (F \comp G)°$ by monotonicity.
\end{itemize}
%\end{slide}

\begin{Slide}{Structural data refinement}
\small
\begin{eqnarray*}
\arLeq A B {\smp f} R
& \implies &
\arLeq {\ff A} {\ff B} {\ff {\smp f}} {\ff R}
\end{eqnarray*}
where |fF| is an arbitrary relator (functor):
\tiny
%
\begin{eqnarray*}
&&
        (\ff {\smp f}) \comp (\ff R)
%
\just={functors commute with composition}
%
        \ff{(\smp f \comp R)}
%
\just={$R$ is right-inverse of ${\smp f}$}
%
        \ff{id}
%
\just={functors commute with $id$}
%
        id
%
\end{eqnarray*}
therefore $\ff R$ is right-inverse of $\ff f$.
Of course, this result extends to bifunctors.
\end{Slide}

\section{Refining finite sets (I) }
\small
\begin{eqnarray*}
        \arIso  {\pow A}
                {\map A 1}
                {}
                {}
\end{eqnarray*}
Calculation:
\tiny
\begin{eqnarray*}
&&
        \map A 1
%
\just\iso{$tot$ representation } % (\ref{eq:331l-ar})}
%
        (1 + 1)^{A}
%
\just\iso{basic}
%
        2^A
%
\just\iso{ $2^A$ is isomorphic to $\pow A$ } % by (\ref{eq:ps2exp})}
%
\pow A
%
\end{eqnarray*}
%\end{slide}

\section{Refining finite sets (Ia) }
\small
\begin{eqnarray*}
        \arIso  {\pow A}
                {\map A 1}
                {dom}
                {set2fm}
\end{eqnarray*}
\Vdmsl
\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny\bf
\begin{code}
  set2fm : set of A -> map A to Nil
  set2fm(s) == { a ||-> nil || a in set s };
\end{code}
\end{vdmraw}
\end{eqnarray*}
Pointfree
\begin{eqnarray*}
set2fm & \deff & (! \comp )
\end{eqnarray*}
%\end{slide}

\section{Right-invertibility}
\small
Calculation:
\begin{eqnarray*}
&&
\dom{} \comp set2fm = id
%
\just\equiv{}
%
\dom{(set2fm\ s)} = s
%
\just\equiv{}
%
\dom{(! \comp s )} = s
%
\just\equiv{$!$ is a function, $\dom{(f \comp R)}=\dom R$}
%
\dom{s} = s
%
\just\equiv{$s$ is coreflexive}
%
s = s
%
\end{eqnarray*}

%\end{slide}

\section{Refining finite sets (II) }
\emph{List} (cf.\ example before):
\begin{eqnarray*}
        \arLeq  {\vdmslSet A}
                {\vdmslSeq A}
                {elems}
                {}
\end{eqnarray*}
\emph{Index} $A$:
\begin{eqnarray*}
        \arLeq  {\vdmslSet A}
                {\vdmslMap\vdmslNat A}
                {rng}
                {}
\end{eqnarray*}
%\end{slide}

\section{Refining finite sets (III) }
\emph{Classify} $A$ by $B$ ($B \supset \enset{}$):
\begin{eqnarray*}
        \arLeq  {\vdmslSet A}
                {\vdmslMap A B}
                {dom}
                {}
\end{eqnarray*}
\emph{Quantify} $A$ (``multisets''):
\begin{eqnarray*}
        \arLeq  {\vdmslSet A}
                {\vdmslMap A \vdmslNat}
                {dom}
                {}
\end{eqnarray*}
%\end{slide}

\section{Refining finite maps (I) }
\small
%Assume
\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny\bf
\begin{code}
      JustB::value:B;
      JustC::value:C;
      BorC = JustB || JustC ;
\end{code}
\end{vdmraw}
\end{eqnarray*}
%in
\begin{eqnarray*}
        \arIso  {\vdmslMap {(BorC)} A}
                {(\vdmslMap B A) \times (\vdmslMap C A)}
                {peither}
                {}
\end{eqnarray*}
%where
\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny\bf
\begin{code}
  peither: (map B to A) * (map C to A) -> map BorC to A
  peither(m,n) == { mk_JustB(b) ||-> m(b) || b in set dom m} munion
                  { mk_JustC(c) ||-> n(c) || c in set dom n};
\end{code}
\end{vdmraw}
\end{eqnarray*}
NB: \emph{ a \emph{``1st NF'' representation} rule }
%\end{slide}

\section{Refining finite maps (Ia) }
\begin{eqnarray*}
        \arIso  {\map {(B + C)} A}
                {(\map B A) \times (\map C A)}
                {peither}
                {unpeither}
\label{eq:332k-ar}
\end{eqnarray*}
where
\begin{eqnarray*}
peither(\sigma,\tau) &=& \alt\sigma\tau
\end{eqnarray*}
for $ \alt R S  =  (R \comp |(conv i1)|) \cup (S \comp |(conv i2)|)$, that is
\begin{eqnarray*}
 peither = \cup \comp (( \comp |(conv i1)|)×( \comp |(conv i2)|))
\end{eqnarray*}
%\end{slide}

\begin{Slide}{The finite map bifunctor }
\begin{itemize}
\item
Note the $( \comp |(conv i1)|)$s, $(i_1 \comp )$s, etc
\item
In general, for an injective $f$ and any $g$,
define bifunctor
\begin{eqnarray*}
 \map f g \deff (g \comp ) \comp ( \comp f°)
\end{eqnarray*}
that is
\begin{eqnarray*}
	(\map f g)\sigma = g \comp \sigma \comp f°
\end{eqnarray*}
\item
So, we could have written \eg
\begin{eqnarray*}
 peither = \cup \comp ((\map{i_1}{id})×(\map{i_2}{id}))
\end{eqnarray*}
\end{itemize}
\end{Slide}

\section{Refining finite maps (II) }
\begin{eqnarray*}
        \arLeq  {\map A {(B + C)}}
                {(\map A B) \times (\map A C)}
                {cojoin}
                {uncojoin}
\label{eq:333o-ar}
\end{eqnarray*}
where
\begin{eqnarray*}
 cojoin = \cup \comp ((i_1 \comp )×(i_2 \comp ))
\end{eqnarray*}
NB: $cojoin$ is partial since the union of two partial functions not always is
a partial function.
%\end{slide}

\section{Refining finite maps (IIa) }
Note the representation function:
\begin{eqnarray*}
\begin{vdmraw}{1.05}\scriptsize\bf
\begin{code}
  uncojoin : map A to BorC -> (map A to B) * (map A to C)
  uncojoin(f) ==
      mk_( { a ||-> f(a).value
                 || a in set dom f & is_JustB(f(a)) },
           { a ||-> f(a).value
                 || a in set dom f & is_JustC(f(a)) }
         );
\end{code}
\end{vdmraw}
\end{eqnarray*}
%\end{slide}

\section{Refining finite maps (III) }
\small
\begin{eqnarray*}
        \arLeq  {\vdmslMap A {B * C}}
                {(\vdmslMap A B) \times (\vdmslMap A C)}
                {\Join}
                {}
\end{eqnarray*}
where (writing \texttt{join} for $\Join$)
\tiny
\begin{eqnarray*}
\begin{vdmraw}{1.0}\bf
\begin{code}
  join :(map A to B) * (map A to C) -> map A to (B * C)
  join(m,n) == { a ||-> mk_(m(a),n(a))
                 || a in set dom m inter dom n };
\end{code}
\end{vdmraw}
\end{eqnarray*}
%\end{slide}

\section{Refining finite maps (IIIa) }
\small
\begin{eqnarray}
        \arLeq  {\map A {B \times C}}
                {(\map A B) \times (\map A C)}
                {\Join}
                {unjoin}
\label{eq:333g-ar}
\end{eqnarray}
where
\begin{eqnarray*}
\sigma \Join \tau & \deff& \split\sigma\tau
\end{eqnarray*}
where	$
\split{R}{S} \deff (\p1° \comp R) \cap (\p2° \comp S)
$.
A right-inverse of $join$ is
\begin{eqnarray}
        unjoin &\deff& \split{\map{id}{\p1}}{\map{id}{\p2}}
\label{eq:unjoin}
\end{eqnarray}
%\end{slide}

\begin{equation}\label{eq:333k}
    A\pfunc{(B\pfunc{C})} \unlhd 2^A \times ((A\times B)\pfunc{C})
\end{equation}

\section{Refining finite maps (IV) }
How do we extend
\begin{eqnarray*}
        \arIso{B^{C \times A}}{{(B^A)}^C}{uncurry}{curry}
\end{eqnarray*}
to partial functions?
%
Case $B := B+1$
\begin{eqnarray*}
&&
        {(B+1)^{C \times A}} \iso {((B+1)^A)}^C
%
\just\equiv{ that is }
%
        \map {(C \times A)} B \iso (\map A B)^C
%
\end{eqnarray*}
%\end{slide}

\section{Refining finite maps (IVa) }
In general:
\begin{eqnarray*}
        \arLeq	{\map{(C \times A)}B}
	{\map C {(\map A B)}}
	{unpcurry}
	{pcurry}
\end{eqnarray*}
\begin{eqnarray*}
\begin{vdmraw}{1.05}\scriptsize\bf\bf
\begin{code}
  unpcurry : map C to (map A to B) -> map (C * A) to B
  unpcurry(f) ==
       merge { let g=f(a)
               in { mk_(a,b) ||-> g(b) || b in set dom g }
             || a in set dom f };
\end{code}
\end{vdmraw}
\end{eqnarray*}
%\end{slide}

\section{Refining finite maps (IVb) }
\begin{eqnarray*}
\begin{vdmraw}{1.05}\scriptsize\bf
\begin{code}
  pcurry : map (C * A) to B -> map C to (map A to B)
  pcurry(f) ==
        let y = { x.#1 || x in set dom f }
        in { a ||-> { p.#2 ||-> f(p)
                   || p in set dom f & p.#1=a }
           || a in set y };
\end{code}
\end{vdmraw}
\end{eqnarray*}
%\end{slide}

\begin{Slide}{Transposing relations }
\small
Let $B := 2$ in the $curry/uncurry$ isomorphism and obtain
\begin{eqnarray*}
        \arIso{\pow{(A \times C)}}{(\pow A)^C}{\Lambda°}{\Lambda}
\end{eqnarray*}
where
\begin{eqnarray}
f = \Lambda R & \equiv & R =\ \in  \comp f
\end{eqnarray}
and $\larrow{\pow A}\in A$ is the membership relation.
\end{Slide}

\begin{Slide}{Transposing finite relations }
\begin{eqnarray*}
        \arLeq{\vdmslSet{(C * A)}}{\vdmslMap C \vdmslSet A}{discollect}{collect}
\end{eqnarray*}
\begin{eqnarray*}
\begin{vdmraw}{1.05}\scriptsize\bf
\begin{code}
  collect : set of (C * A) -> map C to set of A
  collect(r) == { c ||-> { q.#2 || q in set r & c=q.#1 }
                    || c in set { p.#1 || p in set r } };

  discollect : map C to set of A -> set of (C * A)
  discollect(f) == dunion { { mk_(c,a) || a in set f(c) }
                          || c in set dom f };
\end{code}
\end{vdmraw}
\end{eqnarray*}
\end{Slide}

\section{Refining finite maps (V) }
\small
Last but not least
\begin{eqnarray}
        \arLeq  {A\pfunc{D\times(B\pfunc{C})}}
                {(A\pfunc{D}) \times ((A\times B)\pfunc{C})}
                {\nJoin}
                {unnjoin}
\label{eq:333l}
\end{eqnarray}

\noindent
where
\let\kons=\underline
\begin{eqnarray}
\nJoin & \deff &
            \Join \comp
            \const{\p1,
                   \plus\comp((\map{id}{\kons\emptyset})\times pcurry)}
            \label{eq:607e} % old \label{eq:333n}
\end{eqnarray}
and
\begin{eqnarray*}
unnjoin
& \deff &
(id \times unpcurry) \comp unjoin
\end{eqnarray*}
%\end{slide}

\begin{Slide}{Recursive data refinement}
\small
How does one refine \emph{recursive} \Vdmsl\ models such as \eg\
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{code}
   FS :: D: map Id to Node; -- FS means file system
   Node = File || FS;        -- a Node is either a file
                            --   or a directory
   Id = seq of char;        -- node identifiers
   File :: F: seq of token  -- sequential files
\end{code}
\end{vdmraw}
\end{eqnarray*}
that is, $FS = µ\f$ for
$\ff X = \map{Id}{(File+X})$:
\begin{eqnarray*}
\arIso{µ\f}{\map{Id}{(File+µ\f)}}{in}{out}
\end{eqnarray*}
%
\end{Slide}

\section{Recursive data refinement}
\small
or\ldots
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{code}
   DecTree :: question: What
              answers: map Answer to DecTree
   What = seq of char;
   Answer = seq of char;
\end{code}
\end{vdmraw}
\end{eqnarray*}
that is, $DecTree = µ\f$ in
\begin{eqnarray*}
    \Iso { DecTree }{ What \times (\map{Answer}{DecTree}) }{}{}
\end{eqnarray*}
for
$\ff X = What \times (\map{Answer}{X})$
%\end{slide}

\begin{Slide}{Recursion ``removal''}
Given
\begin{eqnarray*}
\arIso{µ\f}{\ff{µ\f}}{in}{out}
\end{eqnarray*}
one has
\begin{equation}\label{eq:336f}
        \arLeq{µ\f}{(\map K {\ff K}) \times K }{\smp f}{}
\end{equation}

\noindent
for $K$ a domain of \aspas{pointers} such that $K\iso\N$.
\end{Slide}

\section{Abstraction function}
\small
\begin{itemize}
\item
Main rôle in representation is played by a (partial) |fF|-coalgebra
\(
\larrow{K}{\sigma}{\ff K}
\),
assumed as a (finite) piece of \aspas{linear storage},
a ``heap'' or a \aspas{database}.
\item
$\trans{\smp f}$ (the transpose of abstraction $\smp f$) is of type
\(
(\map K {\ff K}) \tfunc K \tfunc µ\f
\)
and one can build hylomorphism
\begin{eqnarray*}
\arraycolsep=1cm
\begin{array}{cc}
%
\mnode{1}{µ\f}
&
\mnode{2}{K}
	\arla{2}{1}{\trans{\smp f} \sigma}
\\\\\\
\mnode{3}{\f(µ\f)}
	\arul{3}{1}{in}
&
\mnode{4}{\ff K}
	\
\arlb{4}{3}{\f(\trans{\smp f} \sigma)}
	\ardr{2}{4}{\sigma}
\end{array}
&& \trans{\smp f} \sigma = in \comp {\f(\trans{\smp f} \sigma)} \comp \sigma
\end{eqnarray*}
\end{itemize}
%\end{slide}

\section{Partiality of implementation}
$\smp f(\sigma,k) = (\trans{\smp f} \sigma) k$ will be undefined wherever
\begin{itemize}
\item	$k \not\in \dom{\sigma}$
\item	$\sigma$ is not ``closed'' over itself (see below)
\item	$\sigma$ is non-well-founded         (see below)
\end{itemize}
Thus concrete invariant
\begin{eqnarray*}
\phi(\sigma,k) & \deff & k \in \dom\sigma \land (closed\ \sigma) \land (wellf\ \sigma)
\end{eqnarray*}
In order to define $closed\ \sigma$ and $wellf\ \sigma$ we need
$\sigma$'s \emph{accessibility} relation $\prec_\sigma$ (next slide).
%\end{slide}

\section{Accessibility and membership}
\small
\emph{Accessibility} relation for $\sigma$:
\begin{eqnarray*}
&&	\larrow{K}{\prec_\sigma}{K}
\\
&&	\prec_\sigma  \deff {\in_\f} \comp \sigma
\end{eqnarray*}
where $\larrow {\ff K}{\in_\f}K$
extends $\larrow {\pow K}{\in}K$ inductively over \emph{polynomial} functors,
as follows:
\begin{eqnarray*}
        \in_{\pow{}} &\deff& \in
\\
        \in_{C} &\deff& \bot
\\
        \in_{\lambda X.X} &\deff& id
\\
        \in_{{\fun F}\times{\fun G}} &\deff&
                        (\in_{\fun F} \comp \p1) \cup (\in_{\fun G} \comp \p2)
\\
        \in_{{\fun F} + {\fun G}} &\deff&
	     \alt{\in_{\fun F}}{\in_{\fun G}}
%
\end{eqnarray*}
%\end{slide}

\section{Example}
\small
Let $\ff X = 1 + A \times X$. Then,
\begin{eqnarray*}
&&	\in_{1 + A \times X}
%
\just={ $\in$ for coproduct bifunctor }
%
\alt{\in_{1}}{\in_{ A \times X}}
%
\just={ $\in$ for constant and product (bi)functors }
%
\alt{\bot}{(\in_{A} \comp \p1) \cup (\in_{\lambda X.X} \comp \p2)}
%
\just={ $\in$ for constant and identity functor }
%
\alt{\bot}{(\bot \comp \p1) \cup (id  \comp \p2)}
%
\just={ $\bot$ and $\alt R S  =  (R \comp |(conv i1)|) \cup (S \comp |(conv i2)|)$ }
%
\p2 \comp |(conv i2)|
%
\end{eqnarray*}
%\end{slide}

\section{Example (pointfree)}
\small
\begin{eqnarray*}
&&	k \in_{1 + A \times X} x
%
\just\equiv{ calculation above }
%
k (\p2 \comp |(conv i2)|) x
%
\just\equiv{ relational composition }
%
k (\p2) (a,k') \land x = i_2(a,k')
%
\just\equiv{ trivia }
%
x = i_2(a,k') \land k = k'
%
\just\equiv{ trivia }
%
x = i_2(a,k)
%
\end{eqnarray*}
%\end{slide}

\section{Accessibility (example)}
\small
Pointer reachability in case of a ``linear'' heap
\(
\larrow{K}{\sigma}{(1 + A \times K)}
\):

\begin{eqnarray*}
k_1 \prec_\sigma k_2 &\equiv& k_2 \in\dom\sigma \land (\sigma\ k_2) = i_2(a,k_1)
\end{eqnarray*}
In a drawing:
\begin{eqnarray*}
\sigma =
\begin{array}{||c||||c||c||}
\multicolumn{1}{c}{K} & \multicolumn{1}{c}{A} & \multicolumn{1}{c}{K}
\\
k_1 & ... & \mnode{0}{k_0}
\\\hline
\mnode{2}{k_2} & \mnode{A}{a} & \mnode{1}{k_1}
\\\hline
&	... & ...
%
\end{array}
\nccurve[linecolor=red,angleA=-90,angleB=-90]{->}{2}{1}
\nccurve[linecolor=red,angleA=150,angleB=210]{->}{1}{0}
&&
\begin{array}{c}
k_1 \prec_\sigma k_2
\\
k_0 \prec_\sigma k_1
\end{array}
\end{eqnarray*}

%\end{slide}

\begin{Slide}{Closure and wellfoundedness}
Let $\prec_\sigma^+$ denote the transitive closure of $\prec_\sigma$.
Then,
\begin{itemize}
\item	$closed\ \sigma = \rng{\prec_\sigma^+} \subseteq \dom\sigma $
that is, all reacheable $k$ are defined.
\item	$wellf\ \sigma = (\prec_\sigma^+) \cap id = \bot$,
that is, $\prec_\sigma^+$ is irreflexive (no cycles)
\end{itemize}
\end{Slide}

\begin{Slide}{Object oriented Data Implementation}
UML:
\begin{eqnarray*}
\begin{array}{ccccc}
&
        \lUMLclass{A}{
class\_a}{
attribA : A}{
        ~}
\\
        \lUMLclass{B}{
class\_b}{
attribB : B}{
        ~}
&&
        \lUMLclass{C}{
class\_c}{
attribC : C}{
        ~}
\end{array}
\nccurve[linecolor=red,angleA=0,angleB=-150]{->}{B}{A}
\nccurve[linecolor=red,angleA=180,angleB=-20]{->}{C}{A}
\end{eqnarray*}

Formal model:
\(
     K \pfunc{Structure}
\) where
\begin{eqnarray*}
     Structure & =    & A + A \times B + A \times C
\\             & \iso & A \times  (1 + B + C)
\end{eqnarray*}

\begin{eqnarray*}
     K \pfunc{(A + A \times B)}
\end{eqnarray*}

\end{Slide}

\begin{Slide}{Multiple inheritance}
\scriptsize
\begin{eqnarray*}
\begin{array}{ccccc}
&
        \lUMLclass{A}{
class\_a}{
attribA : A}{
        ~}
\\
        \lUMLclass{B}{
class\_b}{
attribB : B}{
        ~}
&&
        \lUMLclass{C}{
class\_c}{
attribC : C}{
        ~}
\\
&
        \lUMLclass{D}{
class\_d}{
attribD : D}{
        ~}
\end{array}
\nccurve[linecolor=red,angleA=90,angleB=180]{->}{B}{A}
\nccurve[linecolor=red,angleA=90,angleB=0]{->}{C}{A}
\nccurve[linecolor=red,angleA=180,angleB=-90]{->}{D}{B}
\nccurve[linecolor=red,angleA=0,angleB=-90]{->}{D}{C}
\end{eqnarray*}

\begin{eqnarray*}
     \map K { A \times  (1 + B + C + B \times C \times D) }
\end{eqnarray*}
\end{Slide}

\section{Example}
\tiny
\begin{eqnarray*}
\begin{array}{ccccc}
%
        \lUMLclass{S}{
student}{
name : String}{
        ~}
\\
&	\lUMLclass{A}{
active}{
course: String}{
        ~}
\\
        \lUMLclass{B}{
engineering}{
workstudy : String}{
        ~}
&&
        \lUMLclass{C}{
special~plan}{
equivalences : E}{
        ~}
\\
&
        \lUMLclass{D}{
engineering\_\&\_special}{
}{
        ~}
\end{array}
\nccurve[linecolor=red,angleA=90,angleB=180]{->}{B}{A}
\nccurve[linecolor=red,angleA=90,angleB=0]{->}{A}{S}
\nccurve[linecolor=red,angleA=90,angleB=0]{->}{C}{A}
\nccurve[linecolor=red,angleA=180,angleB=-90]{->}{D}{B}
\nccurve[linecolor=red,angleA=0,angleB=-90]{->}{D}{C}
\end{eqnarray*}

\begin{eqnarray*}
     \map K { A \times  (1 + B + C + B \times C ) }
\end{eqnarray*}
%\end{slide}

\section{Bibliography notes}
\F

\chapter{On Algorithmic Refinement}

\fbox{
NB: should build on \cite{OR06}.
}

\begin{Slide}{Implicit/explicit refinement}
Given \Vdmsl\ implicit specification
\begin{vdmraw}{1.0}\scriptsize
\begin{code}
    S(a:A) r:B
    pre ...
    post ...
\end{code}
\end{vdmraw}
function $\larrow A f B$ is said to \emph{satisfy}, to \emph{refine}, or to \emph{implement} $S$, written
%
\begin{eqnarray*}
S
&
\issat
&
f
%
\end{eqnarray*}
iff, for every $a$,
%
\begin{eqnarray*}
\forall a \in A . &&
\pre{S}\ a
\implies
\post{S}(f\ a, a)
\end{eqnarray*}
\end{Slide}

\section{In pointfree notation}
\small
\begin{eqnarray*}
&&
a \in \dom S
\implies
(f\ a) S a
%
\just\equiv{ rule $(f\ b) R a \equiv b (f° \comp R) a$ }
%
\dom S
\subseteq
f° \comp S
%
\just\equiv{ shunting }
%
f \comp \dom S
\subseteq
S
%
\end{eqnarray*}

Summary:
\textbf{explicit} specification (= \textbf{implementation} )
\(
f
\)
is thus more defined and more deterministic than \textbf{implicit} specification $S$:
%
\begin{eqnarray}
%
S \issat f
&
\equiv
&
f \comp \dom S
\subseteq
S
%
\label{eq:030429a}
\end{eqnarray}
%
%\end{slide}

\section{Example}
\small
Recall
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{code}
  IsPermutation: seq of int * seq of int -> bool
  IsPermutation(l1,l2) ==
    forall e in set (elems l1 union elems l2) &
      card {i || i in set inds l1 & l1(i) = e} =
      card {i || i in set inds l2 & l2(i) = e};
\end{code}
\end{vdmraw}
\end{eqnarray*}
We want to find $f$ such that
\begin{eqnarray*}
IsPermutation \issat f
\end{eqnarray*}
Recall that \(
%begin{eqnarray*}
  IsPermutation = \ker{seq2bag}
%end{eqnarray*}
\), where\ldots
%\end{slide}

\section{About \texttt{seq2bag}}
\small
\Vdmsl\ definition:
\begin{eqnarray*}
\begin{vdmraw}{1.0}\tiny\bf
\begin{code}
  seq2bag(s) ==
    cases s:
      []      -> {||->}
      others  -> { hd s ||-> 1 } bunion seq2bag(tl s)
    end;
\end{code}
\end{vdmraw}
\end{eqnarray*}

Definition of gene $g$ of the \texttt{seq2bag} catamorphism:
%
\begin{eqnarray*}
g
&=&
\alt	{\kons\emptyb}
	{\bunion \comp (singb \times id)}
%
\end{eqnarray*}
where $singb\ a = \enset{a \mapsto 1}$ and $\bunion$ denotes bag union
(\texttt{bunion} is not standard \Vdmsl: define it).
%\end{slide}

\section{Implementing $IsPermutation$}
\scriptsize
%
\begin{eqnarray*}
&&
IsPermutation \issat f
%
\just\equiv{ definition }
%
f \comp \dom{IsPermutation}
\subseteq
IsPermutation
%
\just\equiv{ definition }
%
f \comp \dom{(\ker{seq2bag})}
\subseteq
\ker{seq2bag}
%
\just\equiv{ kernel of a function }
%
f \comp id
\subseteq
seq2bag° \comp seq2bag
%
\just\equiv{ shunting rule }
%
seq2bag \comp f
\subseteq
seq2bag
%
\just\equiv{ equality of functions }
%
seq2bag \comp f
=
seq2bag
\end{eqnarray*}
%\end{slide}

\begin{Slide}{Handling refinement equations}
\small
$f$ is the ``unknown'' of refinement equation
\[
seq2bag \comp f
=
seq2bag
\]
Since $seq2bag$ and $f$ are list catamorphisms, one can resort to cata-fusion,
%
\begin{eqnarray*}
&&
seq2bag \comp f
=
seq2bag
%
\just\equiv{let $f = \scata\alpha$ and $seq2bag = \scata g$}
%
seq2bag \comp \scata\alpha
=
\scata g
%
\just\implied{ cata-fusion }
%
seq2bag \comp \alpha
=
g \comp (id + id \times seq2bag)
%
%
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Solving refinement equations}
\small
By decomposing $\alpha := \alt\beta\gamma$, we obtain equations
%
\begin{eqnarray*}
\beta
&=&
\kons\emptyseq
\\
seq2bag \comp \gamma
&=&
\bunion \comp (singb \times seq2bag)
%
\end{eqnarray*}
%
\begin{itemize}
\item
Cata-cancellation yields solution $\gamma=cons$,
leading to $\alpha=in$ and  $f=id$.
\item
$\bunion$ is commutative, thus solution
\(
\gamma(a,l) =
l \conc \enseq a
\)
leading to $f={|reverse|}$.
\end{itemize}
Guessing further solutions:
any list \emph{sorting} function will solve the equation!
(More about this later\ldots)
%
\end{Slide}

\begin{Slide}{Properties of $\issat$}
Basic:
\begin{eqnarray}
\bot \issat f
&
,
&
\top \issat f
\\
(S \cap R) \issat f &\implied& S \issat f \land R \issat f
\\
(S \cup R) \issat f &\implied& S \issat f \land R \issat f
\\
(\ker g) \issat f & \equiv & g \comp f=g
\\
g \issat f & \equiv & f=g
%\\
%	S \issat f \cup R &\implied& S \issat f \land \dom R \subseteq \dom S
\end{eqnarray}
Monotonicity:
\begin{eqnarray}
S \issat f & \implies & \ff S \issat \ff f
\end{eqnarray}
\end{Slide}

\section{Proof of monotonicity}
\scriptsize
\begin{eqnarray*}
&&	\ff S \issat \ff f
%
\just\equiv{definition}
%
(\ff f) \comp \dom{(\ff S)} \subseteq \ff S
%
\just\equiv{ property $\dom{(\ff S)} = \f(\dom R)$ }	% ex 5.5 p.114 BM97
%
(\ff f) \comp \f(\dom S) \subseteq \ff S
%
\just\equiv{ relators commute with composition }
%
\f(f \comp \dom S) \subseteq \ff S
%
\just\implied{ relators are monotone }
%
f \comp \dom S \subseteq S
%
\just\equiv{ definition }
%
S \issat f
%
\end{eqnarray*}
%\end{slide}

\begin{Slide}{Stepwise refinement}
\small
Extend $f$ in $ S \issat f$ to a relation
\begin{eqnarray}
%
S \issat R
&
\equiv
&
%	\begin{array}{c}
R \comp \dom S \subseteq S
%	\\
\land
%	\\
\dom S \subseteq \dom R
%	\end{array}
%
\label{eq:030506a}
\end{eqnarray}
Obs.:
\begin{itemize}
\item	clause $\dom S \subseteq \dom R$ ensures that implementations can only
be \textbf{more defined}
\item	clause $R \comp \dom S \subseteq S$ ensures that implementations can only
be \textbf{more deterministic}
\item
Note that $\bot \issat R$ still holds but, in general, $\top \issat R$ requires
$R$ to be \textbf{entire}, since $\dom\top=id$.
\end{itemize}
\end{Slide}

\section{Example}
Let spec $S_{\nu,\epsilon}$ be
\begin{eqnarray*}
\begin{vdmraw}{1.0}\scriptsize
\begin{code}
    sqrt (x: real) r: real
    pre  abs(x) <= nu
    post abs(r*r-x) <= epsilon
\end{code}
\end{vdmraw}
\end{eqnarray*}
Then, wherever $\nu_1 \leq \nu_2$ and $\epsilon_1 \geq \epsilon_2$,
\begin{eqnarray*}
S_{\nu_1,\epsilon_1} \issat S_{\nu_2,\epsilon_2}
\end{eqnarray*}
In the ``limit'', $\cdots \issat S_{\infty,0} = sq° \issat f$ where
$f\ x = + \sqrt{x}$ or $f\ x = - \sqrt{x}$.
%\end{slide}

\begin{Slide}{Refinement is a partial order}
\small
\textbf{Reflexivity:} $id \subseteq \issat$, that is
\begin{eqnarray*}
S \issat S
\end{eqnarray*}
\textbf{Transitivity:} $ \issat \comp \issat \subseteq \issat$, that is
\begin{eqnarray*}
S \issat R \land R \issat T &\implies& S \issat T
\end{eqnarray*}
\textbf{Antisymmetry:} $\issat \cap \issat° \subseteq id$
\begin{eqnarray*}
S \issat R \land R \issat S &\implies& S = R
\end{eqnarray*}
\textbf{$F$-monotonicity:}
\begin{eqnarray*}
S \issat R & \implies & \ff S \issat \ff R
\end{eqnarray*}
\end{Slide}

\section{Stepwise refinement}
The laws of $\issat$ make it possible to refine a starting spec $S$
along several steps,
\begin{eqnarray*}
S \issat S_1 \issat S_2 \issat \ldots
\end{eqnarray*}
each one introducing more and more definition and/or determinism,
and
very often leading into a function (totally defined deterministic algorithm):
\begin{eqnarray*}
S \issat S_1 \issat S_2 \issat \ldots \issat S_n \issat f
\end{eqnarray*}
What do we do after $f$?
%\end{slide}

\section{Back to $g \issat f$}
\begin{itemize}
\item
Formally,
$g \issat f \equiv g = f$,
that is, spec $g$ is \textbf{extensionally} equivalent to implementation $f$.
\item
But there is more to it:
in general, we think of $f$ as being ``more \textbf{efficient}'' than $g$.
\item
Efficiency can only be formalized in the discipline of
\textbf{algorithmic complexity} (out of scope here)
\item
We will study functional laws which add to efficiency and generalize
well-known (\texttt{while}) loop generation and intercombination rules.
\end{itemize}
%\end{slide}

\begin{Slide}{Main refinement strategies}
\begin{itemize}
\item	Refinement by \aspas{sequential loop} inter-combination:
\textbf{fusion} and \textbf{absorption} laws:
\begin{quote}
\textbf{``Deforestation''} --- removal of intermediate data-structures
\end{quote}
\item	Refinement by \aspas{parallel loop} inter-combination:
\textbf{mutual recursion} elimination:
\begin{quote}
On this purpose, recall see Fokkinga's law and its well-known
 corollary, the \aspas{banana-split} law (\ref{eq:970511c}).
\end{quote}
\end{itemize}
\end{Slide}

\begin{Slide}{Data refinement in full}
\small
Simultaneous \emph{algorithm/data} refinement: given
\begin{itemize}
\item
a spec
\(
\larrow B S A
\)
\item abstraction function
\(
\larrow C{F_1}A
\)
\item representation relation
\(
\larrow B{R_2}D
\)
\end{itemize}
then
\(
\larrow D I C
\)
will be said to \emph{implement} $S$ iff
\begin{eqnarray}
S
\issat
F_1 \comp I \comp R_2
&
&
\arraycolsep=1cm
\begin{array}{cc}
%
\mnode{A}{A}
&
\mnode{B}{B}
	\arla{B}{A}{S}
\\\\
\mnode{C}{C}
	\arul{C}{A}{F_1}
&
\mnode{D}{D}
	\arlb{D}{C}{I}
	\ardr{B}{D}{R_2}
%
\end{array}
%
\label{eq:030527a}
\end{eqnarray}
\end{Slide}

\begin{Slide}{Analysis of refinement equation}
\small
\begin{itemize}
\item
The above refinement equation % (\ref{eq:030527a})
is to be solved for $I$ (the unknown),
and will in general exhibit more than one solution.
\item
\(
S
\issat
F_1 \comp I \comp R_2
\)
means
%
\begin{eqnarray*}
F_1 \comp I \comp R_2 \comp \dom S \subseteq S
&
\land
&
\dom S \subseteq \dom{(F_1 \comp I \comp R_2)}
%
\end{eqnarray*}
\item
In case $F_i=R_i=id$ ($i=1,2$) --- no data refinement involved ---
it boils down to algorithmic refinement: % (\ref{eq:030506a}):
\begin{eqnarray*}
S
\issat
id \comp I \comp id
\end{eqnarray*}
\end{itemize}
\end{Slide}

\section{Example}
{\arraycolsep=2cm
%
\begin{eqnarray*}
\begin{array}{cc}
%
\mnode{A}{2}
&
\mnode{B}{2}
	\arla{B}{A}{\neg}
\\\\\\
\mnode{C}{\N_0}
	\arul{C}{A}{(>0)}
&
\mnode{D}{\N_0}
	\arlb{D}{C}{ \mcond{\mean{(=0)}}{>}{\kons 0}}
	\ardr{B}{D}{\mcond{\mean{=\true}}{\kons 1}{\kons 0}}
%
\end{array}
\end{eqnarray*}
}
recall
\begin{eqnarray*}
\mcond R S T
&
\deff
&
(S \comp \dom R) \cup T \comp (id - \dom R)
\end{eqnarray*}
Note how non-determinism of implementation is coped with by the target abstraction  function.
%\end{slide}

\begin{Slide}{Solving refinement equations}
\small
Since
\(
\dom{(S \comp R)}
=
\dom{(\dom S \comp R)}
%
\),
the second clause above rewrites to
\begin{eqnarray*}
\dom S \subseteq \dom{(\dom{F_1} \comp (I \comp R_2))}
%
\end{eqnarray*}
In case $F_1$ ($f_1$) is entire:
%
\begin{eqnarray*}
&&
\dom S \subseteq \dom{(I \comp R_2))}
%
\end{eqnarray*}
In case spec $S$ and $F_1$ ($f_1$) are entire and $R_2=f_2°$,
%
$I$ will be entire and such that
%
\begin{eqnarray*}
I
&
\subseteq
&
f_1° \comp S \comp f_2
%
\end{eqnarray*}
\end{Slide}

\begin{Slide}{Functional solutions}
\small
Case in which all entities in a refinement equation are total functions
(note the lowercase letters):
\begin{eqnarray}
f_1 \comp i
&
=
&
s \comp f_2
%
\end{eqnarray}
\begin{itemize}
\item
Example: $i=\Seq f$ will implement $s=\pow f$ under data-refinement $f_1=f_2=elems$.
\item
 $i=\Seq f$ is not a unique solution. These arise wherever $f_1$ is iso ($f_1°$ is a function):
%
\begin{eqnarray*}
i
&=&
f_1° \comp s \comp f_2
%
\end{eqnarray*}
This appeals to calculating $i$ by cata-fusion over inductve implementation type $D$.
\end{itemize}
\end{Slide}

\section{Example}
\small
Set by list refinement:
\begin{eqnarray*}
(a\ belongs)
&=&
(a \in) \comp elems
%
\end{eqnarray*}
($f_1=id$):
\arraycolsep=1cm
\begin{eqnarray*}
\begin{array}{cc}
%
\mnode{A}{2}
&
\mnode{B}{\pow A}
	\arla{B}{A}{(a \in)}
\\\\
\mnode{C}{2}
	\arul{C}{A}{id}
&
\mnode{D}{\Seq A}
	\arlb{D}{C}{a\ belongs}
	\arur{D}{B}{elems}
%
\end{array}
\end{eqnarray*}
We know that $elems =\scata{ins}$. Since target function is a list cata
$(a\ belongs) =\scata\beta$,
by cata-fusion refinement equation will hold provided
\(
(a\in) \comp ins = \beta \comp (id + id \times (a\in))
\) holds.
%\end{slide}

\section{Example (cont.)}
\small
Let $\beta=\alt{\beta_1}{\beta_2}$.
\begin{itemize}
\item
Since $a \in \emptyset = \false$,
we calculate $\beta_1=\kons\false$.
\item
We are left with
\begin{eqnarray*}
a \in (\enset x \cup s) = \beta_2(x,a\in s)
\end{eqnarray*}
From $a\in\enset x \cup s = (a \in \enset x) \lor (a \in s)$, we infer
$\beta_2(x,b) \equiv a = x \lor b$.
\item
All in all:
\begin{vdmraw}{1.0}\scriptsize
\begin{code}
    belongs(a)(l) ==
         if l = [] then false
         else (a = hd l) or belongs(a)(tl l)
\end{code}
\end{vdmraw}
\end{itemize}
\end{slide}

\begin{Slide}{Calculation of \texttt{while/for} loops}
Left-linear recursion: refinement towards \texttt{while/for} loops
--- see pp. 125--131 of
\begin{quote}\em
    J.N. Oliveira.
    Operation refinement, June 2000.
Departamento de Informática, Universidade do Minho. Chapter of book in preparation.
\end{quote}
\end{Slide}

\section{Bibliography notes}
\F

\appendix

\chapter{Haskell Support Library in Haskell} \label{sec:990104a}
\fbox{modules already available - to be completed}

\subsection{Set.hs}
\fbox{module already available - to be completed}

\chapter{Solutions to Selected Exercises}

\section{Exercises from chapter ONE}

\begin{solucao}{991120b}
Para a gram\'atica dada prop\~oe-se a seguinte  assinatura:
\[ \assina G = \left\{
\begin{array}{rcl}
        pop  &:&  \bnfnt{pilha}  \rightarrow \bnfnt{pilha}
\\
        push &:& \bnfnt{elem} \times \bnfnt{pilha} \rightarrow  \bnfnt{pilha}
\\
        empty &:&  \rightarrow  \bnfnt{pilha}
\\
        top  &:&  \bnfnt{pilha}  \rightarrow \bnfnt{elem}
\\
        true &:&  \rightarrow \bnfnt{bool}
\\
        false &:&  \rightarrow \bnfnt{bool}
\\
        empty?&:& \bnfnt{pilha}  \rightarrow \bnfnt{bool}
\end{array}\right.
\]
\end{solucao}

\F

\begin{eqnarray*}
\xymatrix{
        \fun T          \ar@@/^1pc/[rr]^-{out} &
        \iso &
        \ff{\fun T}     \ar@@/^1pc/[ll]^-{in}
}
\end{eqnarray*}

\F

\end{document}

