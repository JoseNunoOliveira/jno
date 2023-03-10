\documentclass{elsarticle}
%% Front Matter

% Title
%
\title{
%	Why Adjunctions Matter (Extended Abstract)
	Why Adjunctions Matter --- a Functional Programmer Perspective
}

% Authors
\author[uminho]{Jos\'{e} Nuno Oliveira} %corref{cor1}}
\ead{jno@@di.uminho.pt}

%cortext[cor1]{Corresponding author.}

\address[uminho]{
          High Assurance Software Laboratory\\
	 (http://haslab.uminho.pt) \\
          INESC TEC and University of Minho\\
	  Braga, Portugal
}
%----------------------------------------------------------------------------
\date\today
%---------
\newtheorem{theorem}{Theorem} % [section]
\newtheorem{lemma}[theorem]{Lemma} % [section]
\newtheorem{definition}[theorem]{Definition} % [section]
\def\junc#1#2{\mathopen{[} #1,#2 \mathclose{]}}
\long\def\ToDo#1{\par\hskip-6em\noindent\fbox{
\begin{minipage}{1.2\textwidth}
\begin{todobody}#1\end{todobody}
\end{minipage}
}\vskip 1ex}
\newtheorem{todobody}{To-do} % [section]
%-------------------------------------------
\usepackage{xcolor,colortbl}
\newcommand{\one}{\cellcolor{gray!20}1}
%-------------------------------------------
\usepackage{jnoxy}
%include polycode.fmt
%include lhsmacros.sty
%format insn = "\mathsf{in}_{sn}"
\def\rcbnb#1#2#3#4{\def\nothing{}\def\range{#3}#1 \ #2 \ \ifx\range\nothing::\else: \ #3 :\fi \ #4}
%format (rcbnb q (v) (r) (t)) = "\rcbnb{`` q ''}{`` v ''}{`` r ''}{`` t ''}"
%---- exceptions -----
%format conc = "\mathit{conc}"
%format (crflx (p)) = p "\hskip-1pt\mathit{?}"
%format (dom (p)) = "\ap{\delta}" p
%format (rng (p)) = "\ap{\rho}" p
%format (wlp (f)(p)) = "\textsf{wp} (`` f '',`` p '')"
%format V = "\mathsf{V}"
%format inF = "\mathsf{in}_{\fun F}"
%format inH = "\mathsf{in}_{\fun H}"
%format inG = "\mathsf{in}_{\fun G}"
%format inK = "\mathsf{in}_{\fun K}"
%---- other ----------
%format empty = "\mathsf{empty}"
%format node = "\mathsf{node}"
%format Leaf = "\mathsf{leaf}"
%format Fork = "\mathsf{fork}"
%format inW = "\mathsf{in}_{\fun W}"
%format inV = "\mathsf{in}_{\fun V}"
%format inT = "\mathsf{in}_{\fun T}"
%format t1 = "t_1"
%format t2 = "t_2"
%format elemT = "\epsilon_{\muF}"
%format elemW = "\epsilon_{\muG}"
%format elemB = "\epsilon_{\fun B}"
%format elemS = "{\in}"
%format x1 = "x_1"
%format x2 = "x_2"
%format b1 = "b_1"
%format b2 = "b_2"
%format Z1 = "Z_1"
%format Z2 = "Z_2"
%format `max`= "\sqcup "
\def\kr{\mathbin{\hbox{\tiny${}^\vartriangle$}}}
\def\Kr{\vartriangle}
%format (cataK (x)) = "\mathopen{(\!|}`` x ''\mathclose{|\!)_{\fun K}}"
%format (cataG (x)) = "\mathopen{(\!|}`` x ''\mathclose{|\!)_{\fun G}}"
%format (cataF (x)) = "\mathopen{(\!|}`` x ''\mathclose{|\!)_{\fun F}}"
%format (anaG (x)) = "\mathopen{[\!(}`` x ''\mathclose{)\!]_{\fun G}}"
%format (thinnedby (a) (b)) = "{`` a ''}\thinnedby{`` b ''}"
%format `thinnedby` = "\thinnedby "
%format (curry_ (f)) = "\mathbf{curry}\hskip 1pt {" f "}"
%format (uncurry_ (f)) = "\mathbf{uncurry}\ {" f "}"
\def\thinnedby{\mathbin{\downharpoonleft}}
%----------------------------------------------------------------------------
\usepackage{fleqn}
\usepackage[utf8x]{inputenc}
\usepackage{wrapfig}
%------ using amssymb,amsmath -----------------------------------------------
\usepackage{amssymb,amsmath}
%newcommand{\deffVdm}{\triangleq}
%------ using natbib --------------------------------------------------------
%\usepackage{natbib}
%\def\bibname{References}
%%bibpunct[,]{(}{)}{;}{a}{,}{,}
%\bibpunct[,]{[}{]}{,}{n}{,}{,}
%%bibliographystyle{plainnat}
%\bibliographystyle{elsarticle-num-names}
%%bibliographystyle{splncsnat}
%\def\citeyearpar#1{\cite{#1}} % redefining
\newcommand\bibsection{\section*{References}}
%------ using hyperref ------------------------------------------------------
\usepackage{hyperref}
%------ xy ------------------------------------------------------------------
\usepackage[all]{xy}
\def\larrow#1#2#3{\xymatrix{ #3 & #1 \ar[l]_-{#2} }}
\def\rarrow#1#2#3{\xymatrix{ #1 \ar[r]^-{#2} & #3 }}
\def\bdarrow#1#2#3#4{\xymatrix{#1\ar@@<.5ex>[r]^{#2}&#4\ar@@<.5ex>[l]^{#3}}}
\let\fdep=\larrow
\let\lhoare=\larrow
\let\rhoare=\rarrow
\let\longlfdep=\longlarrow
\def\arLaw#1#2#3#4#5{
\xymatrix{
        #1      \ar@@/^1pc/[rr]^-{#4} &
        #5 &
        #2      \ar@@/^1pc/[ll]^-{#3}
}}
\def\arIso#1#2#3#4{\arLaw{#1}{#2}{#3}{#4}\iso}
%------ local macros --------------------------------------------------------
\def\eqnnewpagex{\end{eqnarray}\newpage~\vskip-2em\begin{eqnarray}\nonumber}
\def\secref#1{Sect.~\ref{#1}}
\def\quotes#1{``#1''}
\def\htmladdnormallink#1#2{#1}
\def\fst{\mathit{fst}}
\def\snd{\mathit{snd}}
\def\implied{\mathbin\Leftarrow}
\def\fork{\mathbin{\hbox{\tiny${}^\vartriangle$}}}
\def\choice#1{\mathbin{_{#1}\diamond}}
\def\bang{{!}}
\def\uncurry #1{\widehat{#1}}
\def\mcond#1#2#3{#1 \rightarrow #2\ ,\ #3}
\def\etaT{\eta_{\fun T}}
\def\muT{\mu_{\fun T}}
\def\etaF{\eta_{\fun F}}
\def\muF{\mu_{\fun F}}
\def\klei#1{\overline{#1}}
\def\flt#1{{#1}^\flat}
\def\bibliometrics#1#2{\relax} % #2 to swallow full stop :-)
\def\enset#1{\mathopen{ \{ }#1\mathclose{ \} }}
\def\mblock#1#2#3#4{\left[\begin{array}{c||c}#1&#2\\\hline#3&#4\end{array}\right]}
%------ redefined --------------------------
\def\equiv{\Leftrightarrow}
\def\B{\mathbb{B}}
%format True = "\textsc{t}"
%format False = "\textsc{f}"
%format ap = "\mathsf{ev}"
\def\quanta#1{\mathopen{\langle\!||}#1\mathclose{||\!\rangle}}
%format (env(f)) = "\quanta{" f "}"
%-------------------------------------------

\begin{document}

\begin{abstract}
For the average programmer, \emph{adjunctions} are (if at all known!) more
respected than loved. At best, they are regarded as an algebraic device of theoretical interest
only, not useful in common practice. This paper is aimed at showing the
opposite: that adjunctions underlie most of the work we do as programmers,
in particular those using the functional paradigm.

However, functions alone are not sufficient to express the whole spectrum of programming,
with its dichotomy between \emph{specifications} --- \emph{what} is (often vaguely) required ---
and \emph{implementations} --- \emph{how} what is required is (hopefully well) implemented.
For this, one needs to extend functions to \emph{relations}.

Motivated by the pioneering work of Ralf Hinze on "adjoint (un)folds", this paper shows how 
the core of the so-called (relational) Algebra of Programming 
% for programming by calculation
arises from adjunctions. Moreover, it also shows how to calculate recursive
programs from specifications expressed by Galois connections --- a special kind of adjunction.

Because Galois connections are easier to understand than adjunctions in general,
the paper adopts a tutorial style, starting from the former and leading to the latter
(a path usually not followed in the literature). The main aim is to reconcile the
functional programming community with a concept that is central to software design
as a whole, but rarely accepted as such.

\end{abstract}

\begin{keyword}
%
	Algebra of programming
\sep
	Programming from specifications
\sep
	Adjunctions
%
\end{keyword}

\maketitle

%epigraph{I recall seeing a package to make quotes}{Snowball}
\vskip2em ~ \hfill
\begin{minipage}{.60\textwidth}\footnotesize\em
``(...) and Jim Thatcher proposed the name \emph{ADJ} as a (terrible) pun on the title of the book that we had planned to write (...) [recalling] that \emph{adjointness} is a very important concept in category theory (...)"
\vskip 1.5ex \em
--- Joseph A. Goguen, \emph{Memories of ADJ}, EATCS nr. 36, 1989
\end{minipage}

\section{Context}
The notion of an \emph{algebraic data type} is central to the theoretical
advances in computer science of the 1980s --- a ``vintage decade" that turned
\emph{program semantics} into a branch of scientific knowledge \cite{BG82,BL84},
and the trend in which the WADT series of workshops arose. In particular, the 'ADJ
group' promoted what can be regarded as the first effective use of category
theory in computer science, centered upon notions such as \emph{initiality},
\emph{freeness} and 
\emph{institution} \cite{BG82,GB92}.

The categorial concept of an \emph{adjunction} \cite{Ma71} underlies all such techniques
and is so important that the ADJ group decided to carve it in their own acronym,
as quoted above. However, for the average programmer \emph{adjunctions}
are (if at all known) regarded, at best, as working at
the meta-level only \cite{GB92}. In fact, explicit use of {adjunctions}
as an instrumental device for abstract reasoning in programming is relatively
rare. Less rare is the use of Galois connections (a special case of adjunction)
to structure relational algebra techniques \cite{BB04,Ba04a}, but even so the
topic is not mainstream.

This contribution to the WADT series tries to show how relevant adjunctions are in
explaining many things we do as programmers. In a tutorial flavour,  it will try to
show how practical adjunctions are by revealing their ``chemistry in action''.

It is common practice to introduce the adjunction concept first, and only then
refer to what is regarded as a modest instance: the Galois connection (GC).
That is, general concept first, instances later.
Below we go in the opposite direction, which is easier to grasp: GCs are presented
first, together with a set of examples and applications. Only after these are understood 
and appreciated does one step into full generality.

\section{Galois connections}
Things in everyday life often come ``in pairs", as dichotomies such as
e.g.\ \emph{ good/bad, action/reaction, the left/the right, lower/upper, {easy}/{hard}}
and so on.
In a sense, each pair defines itself: one element of the pair exists...\ because
the other also exists, and is its \emph{opposite} (i.e.\ \emph{antithesis}).
Despite the circularity, common everyday language survives over such dualities.
%

\paragraph{Perfect antithesis}
The perfect antithesis (opposition, inversion) is the \emph{bijection} or \emph{isomorphism}.
For instance, \emph{multiplication} and \emph{division} are inverses of each other in the positive reals:
|(frac x y) >< y = x| and |frac (x >< y) y = x|. That is, there is no loss of information when dividing or multiplying. In general,
|f| and |g| such that
\begin{eqnarray}
        \arIso{|B|}{|A|}{|f|}{|g|}
&&
|lcbr(
	f (g b) = b
)(
	g (f a) = a
)|
	\label{eq:230206a}
\end{eqnarray}
hold are termed \emph{isomorphisms} and regarded as \emph{lossless} transformations.
% (Also ``energy preserving" \fbox{FALTA}.)

\paragraph{Imperfect antithesis}
However, data transformations in practice are \emph{lossy}, e.g.
\begin{eqnarray*}
\xymatrix@@C=2em@@R=3em{
	\mbox{\includegraphics[width=2.70em]{K6-T1-jpg}}
		\ar@@/^1.2pc/[rr]^-{|jpg2pdf|}
&
	\not\cong
&
	\mbox{\includegraphics[width=2.20em]{pdf.png}}
		\ar@@/^1.2pc/[ll]^-{|pdf2jpg|}
}
&&
\arrayin{
	&|jpg2pdf . pdf2jpg| \not= |id|&
\\
	&|pdf2jpg . jpg2pdf| \not= |id|&
}
\end{eqnarray*}
even though our eyes can hardly spot the difference in most cases.

It is often the case that loss of information in such imperfect inversions
can be expressed in this way,
\begin{eqnarray}
|lcbr(
	f (g b) <= b
)(
	a <<= g (f a)
)|
	\label{eq:220625a}
\end{eqnarray}
telling ``how bad" each \emph{``round trip"} is. This relies on
under and over \emph{approximations} captured by two \emph{preorders},
\begin{eqnarray*}
        \arLaw{|(<=)|}{|(<<=)|}{|f|}{|g|}{}
\end{eqnarray*}
%
\begin{wrapfigure}[7]{r}{12.5em}
\vskip -2em \includegraphics[width=0.35\textwidth]{hasse.png}
\end{wrapfigure}
%
where |f| and |g| are assumed  monotonic.

\paragraph{Handling approximations}
Let us write the arrow |(rarrow x ((<=)) y)| (resp.\ |(rarrow x ((<<=)) y)|)
to denote |x <= y| (resp.\ |x <<= y|) in (\ref{eq:220625a}). We shall drop
the ordering symbols, e.g.\ simply writing |(rarrow x () y)|, wherever these are clear from the context, as
in the Hasse diagram aside. This arrow-notation will enable us to express
our reasoning {graphically}, as in the following diagram:
\begin{eqnarray}
\vcenter{\mbox{
\begin{picture}(200,112)(0,0)
\unitlength=0.4mm
%thicklines
\let\framebox=\makebox
%
\put(10,80){\framebox(10,10){|(<<=)|}}
\put(10,10){\framebox(10,10){|a|}}
\put(10,50){\framebox(10,10){|g x|}}
\put(15,20){\vector(0,1){30}}
%
\put(24,85){\vector(1,0){22}}
\put(30,85){\framebox(10,10){|f|}}
\put(50,80){\framebox(10,10){|(<=)|}}
\put(50,10){\framebox(10,10){ |f a|}}
\put(55,20){\vector(0,1){28}}
\put(40,50){\framebox(30,10){ |f(g x)|}}
%
\put(90,50){\framebox(10,10){|x|}}
\put(72,55){\vector(1,0){18}}
\put(60,20){\vector(1,1){30}}
%
\put(64,85){\vector(1,0){55}}
\put(90,85){\framebox(10,10){|g|}}
%
\put(125,80){\framebox(10,10){|(<<=)|}}
\put(80,10){\framebox(30,10){|g(f a)|}}
\put(95,20){\vector(1,1){30}}
\put(125,50){\framebox(10,10){|g x|}}

\put(125,10){\framebox(10,10){|a|}}
\put(125,15){\vector(-1,0){15}}

\put(130,20){\vector(0,1){30}}
\end{picture}
}} \rule{ 9em}{0pt} %% why need for this?
	\label{eq:221027b}
\end{eqnarray}

Let us ``parse'' this diagram without rushing: arrow |a -> g x| means |a <<= g x|.
By monotonicity we get |f a <= f(g x)|, i.e.\  arrow |f a -> f(g x)|. From (\ref{eq:220625a}) we
get |f(g x) -> x| and, by transitivity (``composition'' of these two
arrows) we get |f a -> x|. We are done with the first ``triangle".

The triangle on the right starts with |g(f a) -> g x|, which follows
by monotonicity from |f a -> x| in the first one. Again from (\ref{eq:220625a})
and transitivity we get |a -> g x| where we started from. Summing up:
\begin{eqnarray*}
\xarrayin{
	|a <<= g x| & |=>| & |f a <= x| & |=>| & |a <<= g x|
}
\end{eqnarray*}
By circular implication, the equivalence
\begin{eqnarray}
	|f a <= x| & |<=>| & |a <<= g x|
	\label{eq:230305b}
\end{eqnarray}
holds for any |a| and |x|, and we say that |f| and |g| are \emph{Galois connected},
writing |gc f g| to declare so.
Terminology: |f| is said to be the \emph{lower} (a.k.a.\ \emph{left}) adjoint
of the connection and |g| the \emph{upper} (a.k.a.\ \emph{right}) adjoint. The
intuition behind this terminology is captured by the superlatives in the
following interpretation of (\ref{eq:230305b}):
\begin{itemize}
\item	|f a| --- \emph{lowest} |x| such that |a <<= g x|
\item	|g x| --- \emph{greatest} |a| such that |f a <= x|.
\end{itemize}
Did we write \emph{``superlatives"}? Note that we have plenty of these in \emph{software
requirements}, e.g.
\begin{itemize}
\item ... the \emph{largest} prefix of |x| with at most |n| elements (i.e.\ the meaning of function |take n x| in Haskell)
\item ... the \emph{largest} number that multiplied by |y| is at most |x| (i.e.\ the meaning of integer division |div x y|).
\end{itemize}
Back to the perfect/imperfect dichotomies above, compare {numeric division} in the reals (|Real|), for |y/=0|,
\begin{eqnarray*}
	|a >< y = x| & |<=>| & |a = x / y|
\end{eqnarray*}
--- an \emph{isomorphism} --- with (whole) division in the natural numbers (|Nat0|),
\begin{eqnarray}
	|a >< y <= x| & |<=>| & |a <= div x y|
	\label{eq:221026b}
\end{eqnarray}
--- a Galois \emph{connection}: |gc ((><y)) ((`div`y))|.

\section{The easy and the hard}
It is the experience of every child in school that |x `div` y| is much harder to calculate by hand than |x >< y|.
Indeed, division is perhaps the very first ``hard" problem (algorithm) that children encounter in their basic maths education.
Interestingly, |gc ((><y)) ((`div`y))| bears a simple message:
\begin{quote}
\emph{hard} |(`div`y)| is explained by \emph{easy} |(><y)|.
\end{quote}
This pattern extends to program specifications, recall 
\begin{quote}
|take n xs| should yield the \emph{longest} possible \emph{prefix} of |xs| not exceeding |n| in \emph{length}
\end{quote}
from above.
The corresponding \emph{formal specification},
\begin{eqnarray}
	|underbrace(length ys <= n && ys <<= xs) easy| \wider{\wider\equiv} |underbrace(ys <<= take n xs) hard|
	\label{eq:220629a}
	\label{eq:100101a'}
\end{eqnarray}
is another GC, where |(<<=)| is the list-prefix partial ordering. Many other examples can be found in programming, for
instance:
\begin{itemize}
\item	The function |takeWhile p xs| should yield the \emph{longest prefix} of |xs| whose elements all satisfy predicate |p|.
\item	The function |filter p xs| should yield the \emph{longest sublist} of $ xs$ all elements of which satisfy predicate $ p$.
\end{itemize}

\section{Indirect equality}
Back to |gc ((><y)) ((`div`y))|, can the well-known \emph{implementation} of whole division
\begin{eqnarray}
|
	div x y = if x >= y then 1+ div ((minus x y)) y else 0
|
	\label{eq:230109a}
\end{eqnarray}
be calculated from \emph{specification} (\ref{eq:221026b})?
Note that, because subtraction in |Nat0| is not invertible, one needs to resort
to ``truncated minus'' |minus x y| which, as one might suspect, is an adjoint
of another GC in |Nat0|:
\begin{eqnarray}
|
	(minus a b) <= x <=> a <= x+b
|
\end{eqnarray}

To address the question, one needs yet another brick in the wall: the principle of \emph{indirect equality}, valid for any partial order \cite{Ba04a}:
\begin{eqnarray}
	|a = b| & |<=>| & |rcb forall z () (z <= a <=> z <= b)|
	\label{eq:230109b}
\end{eqnarray}
%
This principle of \emph{indirect equality} blends nicely with GCs, as the following calculation sketch suggests:
\begin{eqnarray*}
\start
	|z <= g a|
%
\just\equiv{... }
%
	\dots \mbox{(go to the \emph{easy} side, do things there and come back})
%
\just\equiv{... }
%
	|z <= ... g ... a' ...|
%
\just{::}{ indirect equality }
%
	| g a = ... g ... a' ...|
%
\end{eqnarray*}
Note how a difficult |g| can in principle be calculated by \emph{going to the \emph{easy} side of the specification GC and coming back}.

As a simple example of using (\ref{eq:230109b}), let us calculate |div x y|
(\ref{eq:221026b}) in case |x >= y| holds:
\begin{eqnarray*}
\start
	|z <= x `div` y|
%
%cjust\equiv{}
%
%	|z >< y <= x|
%
\just\equiv{ |gc ((><y)) ((`div` y))| and |((minus x y)) + y = x| for |x>=y|}
%
	|z >< y <= ((minus x y)) + y|
%
\just\equiv{ |gc ((minus ()y)) ((+y))| }
%
	|minus((z >< y)) y <= minus x y|
%
\just\equiv{ factoring out |y| works also for |minus()()|}
%
	|((minus z 1)) >< y <= minus x y|
%
\just\equiv{ chain the two \emph{GC}s }
%
%	|minus z 1 <= div ((minus x y)) y|
%
%cjust\equiv{}
%
	|z <= 1 + div ((minus x y)) y|
%
\just{::}{recursive branch of (\ref{eq:230109a}) calculated thanks to indirect equality (\ref{eq:230109b}) }
%
	|div x y = 1 + div ((minus x y)) y|
%
\qed
\end{eqnarray*}
The other case (|x < y|) also stems from (\ref{eq:221026b}):
\begin{eqnarray*}
\start
|
	x<y
|
\just\equiv{trivial}
|
	not(y<=x)
|
\just\equiv{ \ref{eq:221026b}, for |a := 1| }
|
	1 > div x y
|
\just\equiv{trivial (in |Nat0|)}
|
	div x y = 0
|
\qed
\end{eqnarray*}
Altogether, we have calculated the recursive implementation (\ref{eq:230109a}) of |div x y|  from its GC specification (\ref{eq:221026b}). 

\section{GCs as formal specifications} \label{seq:230303d}
Let us now try a similar exercise for |take|, formally specified by (\ref{eq:220629a}).
This time, however, no known implementation is assumed.
Moreover, we wish to show how to draw properties from specification (\ref{eq:220629a})
\emph{before} implementing |take|, i.e.\ \emph{without} knowing anything about its actual implementation.

For instance, what happens if we chain two |take|s in a row, |(take m) . (take n)|?
We \emph{calculate}:
\begin{eqnarray*}
\start
	|ys <<= take m (take n xs)|
%
\just\equiv{GC (\ref{eq:220629a}) }
%
	|length ys <= m && ys <<= take n xs|
%
\just\equiv{again GC (\ref{eq:220629a}) }
%
	|length ys <= m && length ys <= n && ys <<= xs|
%
\just\equiv{min GC: |a <= x && a <= y <=> a <= x `min` y|}
%
	|length ys <= (m `min` n) && ys <<= xs|
%
\just\equiv{again GC (\ref{eq:220629a}) }
%
	|ys <= take (m `min` n) xs|
%
\just{::}{ indirect equality (\ref{eq:230109b}) }
%
	|take m (take n xs)) = take (m `min` n) xs|
%
\end{eqnarray*}
Note the fully \emph{deductive} calculation --- no recursion, no \emph{induction}.
There could be none, in fact, because we have no implementation of |take| yet!
Calculating this is the subject of the reasoning that follows.

A quick inspection of (\ref{eq:220629a}) invites us to consider the cases |n=0| and |xs = []| because they trivialize the \emph{easy side} of the GC, as is easy to show. Case |n=0| first:
%
\begin{eqnarray*}
\start
	|ys <<=  take 0 _|
%
\just\equiv{ GC }
%
	|length ys <= 0 && ys <<= _|
%
\just\equiv{ |length [] <= 0 <=> ys = []|}
%
	|ys = []|
%
\just\equiv{ antisymmetry of |(<<=)|}
%
	|ys <<= []|
%
\just{::}{ indirect equality }
%
	|take 0 _ = []|
%qed
\end{eqnarray*}
Now case |xs = []|:
\begin{eqnarray*}
\start
	|ys <<= take _ []|
%
\just\equiv{ GC }
%
	|length ys <= _ && ys <<= []|
%
\just\equiv{ |ys <<= [] <=> ys = []| }
%
	|ys <<= []|
%
\just{::}{ indirect equality }
%
	|take _ [] = []|
%qed
\end{eqnarray*}
Thus we get the base cases:
\begin{code}
take 0 _   = []
take _ []  = []
\end{code}

By pattern matching, the remaining case is |take (n+1)(h:xs)|.
The following fact about list-prefixing,
\begin{eqnarray}
\start
	|s <<=f (h:t)| \wider\equiv
	s = |[]| \wider\lor \rcb\exists {s'}{s = (h:s')}{|s' <<= t|}
	\label{eq:100101c}
\end{eqnarray}
will be required. This property is quite obvious but... where does it come from?\footnote{
The question also applies to |ys <<= [] <=> ys = []| which was taken for granted above.
}
Let us accept it from the moment, leaving the answer to the question to
section \ref{sec:230305d} later on. Once again, we calculate:
%
\begin{eqnarray*}
\start
|
	ys <<= take(n+1) (h:xs)
|
\just\equiv{ GC (\ref{eq:100101a'}) ; prefix (\ref{eq:100101c}) }
|
	length ys <= n+1 && (ys= [] |||| (rcb exists ys' (ys = (h:ys')) (ys' <<= xs)))
|
\just\equiv{ distribution ; |length [] = 0 <= n + 1| }
|
	ys= [] |||| (rcb exists ys' (ys = (h:ys')) (length ys <= n+1 && ys' <<= xs))
|
\just\equiv{ |length (h:t) = 1 + length t| }
|
	ys= [] |||| (rcb exists ys' (ys = (h:ys')) (length ys' <= n && ys' <<= xs))
|
\just\equiv{ GC (\ref{eq:100101a'}) }
|
	ys= [] |||| (rcb exists ys' (ys = (h:ys')) (ys' <<= take n xs))
|
\just\equiv{ fact (\ref{eq:100101c}) }
%
	|ys <<= h:take n xs|
%
\just{::}{indirect equality over list prefixing |(<<=)| }
%
	|take(n+1) (h:xs) = h:take n xs|
%
\end{eqnarray*}
By putting everything together we have an implementation of |take|, indeed
the standard one in Haskell:
\begin{code}
take 0 _         = []
take _ []        = []
take(n+1) (h:xs) = h:take n xs
\end{code}

In summary, by expressing the formal specification of a particular (e.g.\ recursive) function
in the form of a GC, one not only can prove properties but also calculate
an implementation (program) without performing inductive proofs.
However, the final implementation is inductive. So, the question arises:
\begin{quote}
	\emph{Where does this induction come from?}
\end{quote}
The answer is not immediate and calls for the generalization from GCs to adjunctions.

\section{From GCs to adjunctions} \label{sec:230302a}
Recall our arrow notation |rarrow a ((<=)) b| for |a <= b| in  (\ref{eq:221027b}).
In the ``set of pairs" interpretation of a binary relation, one might write
\begin{quote}
|(<=) (a,b) = {(a,b)}|
\end{quote}
meaning that the evidence that we have that |a <= b| holds is |{(a,b)}| --- the singleton set made of exactly the pair |(a,b) ins (<=)|.

Now compare
|(<=) (a,b) = {(a,b)}|
with something like (broadening scope):
%format stuff = "\mbox{ ``the things that relate $a$ to $b$ in some context $\cat{C}$'' }"
\begin{quote}
|CC(a,b) = {stuff}|
\end{quote}
So, every such ``thing'' |m ins CC(a,b)| acts as a \emph{witness} of the
|CC|-relationship between |a| and |b|. Moreover, assuming |CC| (whatever this is), |m ins CC(a,b)| can be written |m : a ->b|, recovering the arrow notation used before.
(Notation |m : a ->b| can also be read as telling that |m| is of \emph{type} |a->b|, a view that matches with some examples below.)

We thus land into a \emph{category} --- |CC| --- where |a| and |b| are \emph{objects} and |m| is said to be a \emph{morphism}. In general, there will be more than one morphism between |a| and |b|, thus the need to name them. The set |CC(a,b)| of all such morphisms is called a \emph{homset}. 

Categories are an extremely versatile concept, as the following instances of categories show,
%format stuff1 = "\mbox{ ''matrices with $ a$-many columns and $ b$-many rows'' }"
\begin{quote}
|CC(a,b) = {stuff1}|
\end{quote}
or
%format stuff2 = "\mbox{ ''Haskell functions from type $ a$ to type $ b$'' }"
\begin{quote}
|CC(a,b) = {stuff2}|
\end{quote}
or
%format stuff3 = "\mbox{ ''binary relations in ${ a}\times{ b}$'' }"
\begin{quote}
|CC(a,b) = {stuff3}|
\end{quote}
among many others relevant to maths and programming.

\begin{figure}
\centering\footnotesize
\begin{tabular}{l||l}
\bf Preorder & \bf Category
\\\hline
   Object pair & Morphism
\\ Reflexivity & Identity
\\ Transitivity & Composition
\\ Monotonic function & Functor
\\ Equivalence & Isomorphism
\\ Pointwise ordering & Natural transformation
\\ Closure & Monad
\\ Galois connection & Adjunction
\\ Indirect equality & Yoneda lemma
\end{tabular}
\caption{From preorders to categories\label{fig:221027a}}
\end{figure}

Compared to the preorders they generalize, categories purport a ``dramatic"
increase in expressiveness (Fig.\ \ref{fig:221027a}).
For instance, |a <= a| always holds in a preorder (\emph{reflexivity}), that
is, homset |(<=)(a,a)| is non-empty. The categorial extension of reflexivity
to an arbitrary category |CC| also means that |CC(a,a)| is non-empty because
it always includes a special morphism, the so-called \emph{identity} morphism
|id|. This is written |id : a -> a| wherever |CC| is implicit from the context.
For instance, in the category |SC| of sets (objects) and functions between sets
(morphisms), |id x = x| is the identity function.

In turn, preorder transitivity, |a <= b && b <= c => a <= c|, generalizes to morphism \emph{composition}:
|m ins CC(a,b)| and |n ins CC(b,c)| generate |n . m| in |CC(a,c)|, called the composition
of |n| and |m|, which is such that |m . id = id . m = m|.

What is the meaning
of generalizing (\ref{eq:221027b}) from preorders |(<=)| and |(<<=)| to two
categories |SC| and |DC|? Recall our starting point,
\begin{eqnarray*}
|lcbr(
	f (g x) <= x
)(
	a<<= g (f a)
)|
\end{eqnarray*}
which meanwhile was written thus:
\begin{eqnarray*}
|lcbr(
	f (g x) -> x
)(
	a <- g (f a)
)|
\end{eqnarray*}
According to the correspondence of Fig. \ref{fig:221027a}, monotonic functions |f| and |g| give place to \emph{functors} |fF| and |fG|, respectively:\footnote{Recall that functors are available in Haskell via
|fmap|, exported by the |Functor| class. As is well known, |fF id = id| and |fF(f.g) = (fF f).(fF g)|.
}
\begin{eqnarray}
|lcbr(
	rarrow (fF (fG X)) epsilon X
)(
	larrow (fG (fF A)) eta A
)|
\end{eqnarray}
The ``core" morphisms |epsilon| and |eta| will be explained later. For the
moment, our aim is to ``replay" (\ref{eq:221027b}), now in the categorial setting:

\begin{eqnarray}
\hskip -4.5em \vcenter\mbox{
\begin{picture}(230,105)(-10,-00)
\unitlength=0.4mm
%thicklines
\let\framebox=\makebox
%
\put(10,80){\framebox(10,10){ |DC|}}
\put(10,10){\framebox(10,10){|A|}}
\put(10,50){\framebox(10,10){|fG X|}}
\put(15,20){\vector(0,1){30}}
\put( 3,30){\framebox(10,10){|k|}}
%
\put(24,85){\vector(1,0){22}}
\put(30,85){\framebox(10,10){|fF|}}
\put(50,80){\framebox(10,10){ |CC|}}
\put(50,10){\framebox(10,10){ |fF A|}}
\put(55,20){\vector(0,1){28}}
\put(38,30){\framebox(10,10){|fF k|}}
\put(40,50){\framebox(30,10){ |fF(fG X)|}}
%
\put(90,50){\framebox(10,10){|X|}}
\put(75,55){\vector(1,0){17}}
\put(80,55){\framebox(10,10){|epsilon|}}
%
\put(60,20){\vector(1,1){30}}
\put(93,30){\framebox(10,10){|floor k = f|}}
%
\put(64,85){\vector(1,0){92}}
\put(90,85){\framebox(10,10){|fG|}}
%
\put(160,80){\framebox(10,10){ |DC|}}
\put(115,10){\framebox(30,10){|fG(fF A)|}}
%put(125,20){\vector(1,1){30}}
\put(127,22){\line(1,1){ 9}}
\put(146,41){\vector(1,1){10}}
\put(135,31){\framebox(10,10){|fG f|}}
\put(160,50){\framebox(10,10){|fG X|}}
%
\put(160,10){\framebox(10,10){|A|}}
\put(162,15){\vector(-1,0){15}}
\put(150,00){\framebox(10,10){|eta|}}
%
\put(165,20){\vector(0,1){30}}
\put(170,30){\framebox(10,10){|ceil f|}}
%
%put(186,30){\framebox(10,10){|= k|}}
\end{picture}
}
	\label{eq:230209d}
\end{eqnarray}
Starting from some |rarrow A k (fG X)| we obtain |f = epsilon . fF k = floor k|,
granted by functor |fF| (triangle on the left). Picking |f| in turn, functor
|fG| grants |ceil f = fG f . eta|, that is, |ceil f = ceil(floor k)|. In
case |ceil f = k|, |f| and |k| are in a 1-to-1 correspondence and we have
the isomorphism
\begin{eqnarray}
\rule{6em}{0pt}	|CC(fF A,X)| & |<~>| & |DC(A,fG X)|
\label{eq:221118a}
\end{eqnarray}
clearly generalizing (\ref{eq:230305b}). 
In this case we say that we have an \emph{adjunction} and that
|fF| and |fG| are \emph{adjoint functors}, writing |gc fF fG| as before.
|fF| is called the \emph{left adjoint} functor and
|fG|           the \emph{right adjoint} functor.

\section{Adjunctions}
Another way to express (\ref{eq:221118a}) is given below (\ref{eq:170429c}), where
the two adjoint functors |fF : DC -> CC| and |fG : CC -> DC| are renamed to
|fL : DC -> CC| and |fR: CC-> DC|, respectively,
to better match with the \emph{left} and \emph{right} qualifiers above:
\begin{eqnarray}
	\myxym{
		|CC|
			&
			&
			|DC|
			\\
			|fL A -> X|
			\ar@@/^1pc/[rr]^{|ceil _|}
		&
			\iso
			&
			|A -> fR X|
			\ar@@/^1pc/[ll]^{|floor _|}
	}
\label{eq:170429c}
\end{eqnarray}
It also features the two isomorphism witnesses between the two homsets, where
|ceil f| is called the \emph{|fR|-transpose} of |f|
and  |floor g| the \emph{|fL|-transpose} of |g|.
This isomorphism can be expressed in the standard way,
\begin{eqnarray}
	|k = ceil f| & |<=>| & |floor k = f|
\label{eq:221118b}
\end{eqnarray}
capturing how one transpose is the opposite of the other. Clearly,
\begin{eqnarray}
|lcbr(
		floor (ceil f) = f
	  )(
		  ceil (floor k) = k
	   )|
\end{eqnarray}
and one is back to perfect antithesis (\ref{eq:230206a}), but in a much richer
setting, as is explained next.

From (\ref{eq:230209d}) we know that |floor k = epsilon . fF k|. So we can inline this in (\ref{eq:221118b}) and
draw a diagram to depict what is going on:
%|B | parametric on |X|
%\emskip |B = fR X| for some |larrow CC fR DC|:
\begin{eqnarray}
&& \rule{2em}{0pt}
\myxym{
	|DC|
		\ar@@/_0.9pc/[rr]_-{|fL|}
&
		\top
&
	|CC|
		\ar@@/_0.9pc/[ll]_-{|fR|}
}
\nonumber
\\
		|k = ceil f|
		\wider\equiv
		|underbrace (epsilon . fL k)(floor k) = f|
		& \rule{1em}{0pt}&
		\myxym{
			|fR X|
				&
				|fL (fR X)|
				\ar[r]^{|epsilon|}
			&
				X
				\\
				A
				\ar[u]^{|k= ceil f|}
			&
				|fL A|
				\ar[u]^{|fL k|}
			\ar[ru]_{f}
		}
\label{eq:221120a}
\end{eqnarray}
Thus we see how the adjunction |gc fL fR| embodies a \emph{universal property} that tells that
|ceil f| is the \emph{unique solution} of the equation |epsilon . fL k = f| on |k|, for a given |f|.
Very soon we shall see 
how productive (\ref{eq:221120a}) is. For the moment, we just inspect what happens for |k=id|. Since |fL id =id| and |epsilon . id = epsilon|, we get |id = ceil epsilon|, equivalent to 
\begin{eqnarray}
|epsilon = floor id|
\end{eqnarray}
by (\ref{eq:221118b}), leading to the definition of |epsilon|.
Terminology: |epsilon| is called the \emph{co-unit} of the adjunction.

\paragraph{Dual formulation}
The term \emph{co-unit} suggests that there might be a \emph{unit} somewhere in the construction
--- and indeed there is. Above we inlined |floor k = epsilon . fL k| in (\ref{eq:221118b}).
But we could do otherwise, inlining the other definition |ceil k = fR k . eta|. This gives
us a dual formulation of the adjunction,
\begin{eqnarray}
	k = |floor f| \wider\equiv |underbrace (fR k . eta)(ceil k) = f|
& ~~~~ &
        \myxym{
	|fL B|
		\ar[d]_{|k=floor f|}
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
	\label{eq:230206b}
\end{eqnarray}
--- compare with (\ref{eq:221120a}) --- now telling that
|floor f| is the unique solution to equation |fR k . eta = f|.
Terminology: |eta = ceil id| is called the \emph{unit} of the adjunction.

\section{Examples}
Before exploring the rich theory that arises from (\ref{eq:221120a},\ref{eq:230206b})
above, let us give some adjunction examples. Because we wish to focus on adjunctions
that are relevant to programming, the examples are less general then they
could be. Thus we stay within the category |SC| of sets and functions in the
examples that follow.

\paragraph{(Covariant) exponentials: |gc ((_><K)) ((expn _ K))|}
This is perhaps the most famous adjunction, holding between category |SC| and itself:
\begin{eqnarray*}
\xymatrix{
	|A >< K -> X|
 		\ar@@/^1pc/[rr]^{|curry_()|}
&
        \iso
&
	|A -> expn X K|
 		\ar@@/^1pc/[ll]^{|uncurry_()|}
}
& \mbox{where} &
|lcbr(
        curry_ f a b = f(a,b)
)(
	uncurry_ g(a,b) = g a b
)|
\end{eqnarray*}
This instantiates (\ref{eq:221120a}) for
\begin{eqnarray}
	|lcbr3(
		fL X = X >< K
	)(
		fR X = expn X K
	)(
		epsilon = ap
	)|
&&
	|lcbr(
		ceil f = curry_ f
	)(
		floor f = uncurry_ f
	)|
	\label{eq:230208h}
\end{eqnarray}
where |X >< K| denotes the Cartesian product of sets |X| and |K|, |expn X K| denotes
the set of all functions of type |K -> X| and |ap(f,k) = f k|. Universal
property (\ref{eq:221120a}) and its diagram become
\begin{eqnarray*}
	|k = curry_ f|
	\wider\equiv
	|underbrace (ap . (k><id))(uncurry_ k) = f|
& &
        \myxym{
	|SC|
		\ar@@/_0.9pc/[r]_-{|(_><K)|}
&
	|SC|
		\ar@@/_0.9pc/[l]_-{|(expn _ K)|}
\\
	|expn B K|
&
	|(expn B K) >< K|
		\ar[r]^{|ap|}
&
	B
\\
	A
		\ar[u]^{|k= curry_ f|}
&
	|A >< K|
	\ar[u]^{|k >< id|}
	\ar[ru]_{f}
}
\end{eqnarray*}
in this adjunction. 

Associated with the Cartesian product |X >< Y| of two sets |X| and |Y| we have the two \emph{projections} 
|p1 : X >< Y -> X| and |p2 : X >< Y -> Y| which are such that |p1(x,y) = x|
and |p2(x,y) = y|. These projections are the essence of the adjunction that
follows, which captures the categorial view of \emph{pairing}.

\paragraph{Pairing: |gc vDelta ((><))|} In this adjunction we have
\begin{eqnarray}
	|lcbr3(
		fL X = vDelta X = (X,X)
	)(
		fR(X,Y) = X >< Y
	)(
		epsilon = (p1,p2)
	)|
&&
	|lcbr(
		ceil((f,g)) = split f g
	)(
		floor k = (p1.k,p2.k)
	)|
	\label{eq:230208d}
\end{eqnarray}
where |split f g x = (f x, g x)| pairs up the results of two functions |f| and |g| applied
to the same input.

Note how the product in left adjoint of the previous adjunction now participates in the right
adjoint of this one, but in a more general way: it takes a pair of sets and builds their
Cartesian product.

What is the new left adjoint? It is the functor that duplicates sets, |fL X = (X,X)|. This
means that its target category is |expn SC 2|, the category of pairs of both sets and functions.
Composition in |expn SC 2| is the expected |(f,g) . (h,k) = (f . h, g . k)|.
Using this composition rule when instantiating (\ref{eq:221120a}) for this adjunction,
we get the universal property of pairing:
\begin{eqnarray*}
\hskip -3em
\xarrayin{
	|k = split f g|  \equiv |lcbr(p1.k=f)(p2.k=g)|
}
%
\myxym{
	|SC|
		\ar@@/_0.9pc/[r]_-{|vDelta|}
&
	|expn SC 2|
		\ar@@/_0.9pc/[l]_-{|(><)|}
\\
|B><A|
&
|(B><A,B><A)|
	\ar[r]^-{|(p1,p2)|}
&
(B,A)
\\
C
	\ar[u]^{|k = split f g|}
&
|(C,C)|
	\ar[u]^{|(k,k)|}
	\ar[ru]_{|(f,g)|}
}
	%label{eq:200206a}
\end{eqnarray*}

Above we have seen how components of adjoint functors can shift roles, leading to new adjunctions.
Is there any adjunction in which the duplication functor |vDelta|, which above plays the
left adjoint role, becomes right adjoint? Yes, see our third example below.

\paragraph{Co-pairing: |gc ((+)) vDelta |} The previous adjunction |gc vDelta ((><))|
gave us an explanation of what it means to run two functions at the same time,
in \emph{parallel}, for the same input. Shifting |vDelta| to the right of
the |`adj`| symbol will provide an explanation for the dual idea of running
two functions not in parallel, but in \emph{alternation}:
\begin{eqnarray}
	|lcbr3(
		fL(X,Y) = X + Y
	)(
		fR X = vDelta X = (X,X)
	)(
		epsilon = codelta = either id id
	)|
&&
	|lcbr(
		ceil k = (k.i1,k.i2)
	)(
		floor((f,g)) = either f g
	)|
	\label{eq:230207a}
\end{eqnarray}
The corresponding left adjoint builds the disjoint union |X + Y| of a pair of sets |(X,Y)|
inhabited with |X| and |Y| data via two range-disjoint injections |i1 : X -> X + Y|
and |i2 : Y -> X + Y|. So the equation |i1 x = i2 y| has no solution in |X + Y| and thus
any function of type |X + Y -> Z| is made of two independent components,
one of type |X -> Z| and the other of type |Y -> Z|, which run in \emph{alternation}
depending on which side of the sum the input is. Such an alternation is denoted
by |either f g| and, in symbols rather than words, we have
|either f g . i1 = f| and |either f g . i2 = g|.

Instantiating (\ref{eq:221120a}) with (\ref{eq:230207a}) we get the universal property of alternation: 
\begin{eqnarray}
\hskip -3em
\xarrayin{
	|lcbr(f=k.i1)(g=k.i2)|
	\equiv |k = either f g|
}
\vcenter{\xymatrix@@C3.5ex{
	|expn SC 2|
		\ar@@/_0.9pc/[rr]_-{|(+)|}
&&
	|SC|
		\ar@@/_0.9pc/[ll]_-{|vDelta|}
\\
	|(A,A)|
&&
	|A+A|
	\ar[r]^-{|codelta|}
&
	|A|
\\
	|(C,D)|
	\ar[u]^{|(f,g) = (k.i1,k.i2)|}
&&
	|C+D|
	\ar[u]^{|f+g|}
	\ar[ru]_{|k|}
}}
	\label{eq:200206a}
\end{eqnarray}

The adjunctions given so far involve the category of sets and (total) functions that
provide a basis for so-called \emph{strong} \cite{Tu95} functional programming.
For instance, alternation gives rise to conditional computations \cite{BM97}
and so on.

More examples of adjunctions could
be given in this setting, see e.g.\ \cite{Hi13}.
We prefer to give a final example that does not fit (directly) in functional
programming practice, but is essential to reasoning about functional programs.
It links |SC| to another category which extends it: its objects are the same
(sets) but the morphisms become binary relations instead of functions. This
category of relations will be denoted by |RC| and its composition corresponds to
relational chaining.

\paragraph{Power transpose: |gc fJ fP|} This adjunction captures the view that every 
binary relation |R: A->B| (a morphism in |RC|) can be expressed by a set-valued
function |pT R: A -> fP B| (a morphism in |SC|), defined by:\footnote{
Note that we write |b R a| to express |(b,a) ins R|, keeping with the tradition of using
infix notation in relational facts, e.g.\ |a <= b| instead of |(a,b) ins (<=)| and so on.
In this vein, relation composition is expressed by |b(S . R) a <=> rcb exists c () (b S c && c R a)|.
}
\begin{eqnarray}
	|pT R a= { b || b R a}|
	\label{eq:pT}
\end{eqnarray}
Thus |b ins (pT R) a <=> b R a|,
which in relational pointwise notation (the ``internal language" of |RC|) is written
|ins . pT R = R|, where |ins : A <- fP A| is the set \emph{membership} relation.
Thus membership ``cancels`` the power-transpose |pT|:
\begin{eqnarray}
	\myxym{
		|RC|
			&
			&
		|SC|
			\\
			|A -> X|
			\ar@@/^0.9pc/[rr]^{|pT|}
		&
			\iso
			&
			|A -> fP X|
			\ar@@/^0.9pc/[ll]^{|(ins .)|}
	}
%label{eq:170429c}
\end{eqnarray}
We write |A| for |fL A| because the lower adjoint is the identity on objects. It just converts 
a function in |SC| to the corresponding relation in |RC|\footnote{
Interestingly, the usual presentation |y = f(x)| of functions in maths
textbooks is relational, not strictly functional.}, cf:
%|DC := SC| (sets + functions) and |CC := RC| (sets + relations)
\begin{eqnarray}
\xarrayin{
	|lcbr3(
		fJ X = X
	)(
		y(fJ k)x <=> y = k x
	)(
		fR X = fP X = { S || S `sse` X }
	)|
&&
	|lcbr3(
		epsilon = (ins)
	)(
		ceil R = pT R
	)(
		y (floor k)x = y ins (k x)
	)|
}
	\label{eq:230209a}
\end{eqnarray}
Altogether, the adjunction expresses the universal property of power-transposition:
\begin{eqnarray}
	|k = pT R|
	\wider\equiv
	|underbrace (ins . k)(floor k) = R|
& \rule{1em}{0pt}&
        \myxym{
	|SC|
		\ar@@/_0.8pc/[r]_-{|fJ|}
&
	|RC|
		\ar@@/_0.8pc/[l]_-{|fP|}
\\
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
	\ar[u]^{|fJ k|}
	\ar[ru]_{R}
}
	\label{eq:230301c}
\end{eqnarray}
This adjunction will prove specially useful later on where dealing with recursion 
in presence of inductive data types.

\section{Properties}
The main advantage of a unifying concept such as that of an adjunction is that one
can express the rich theory of (\ref{eq:221120a},\ref{eq:230206b}) only once, covering
all the particular instances by construction. Several properties that are easy to derive
as corollaries of (\ref{eq:221120a},\ref{eq:230206b}) are given in the appendix.
The terminology is inspired by \cite{BM97}, among other references that
use similar names, see e.g.\ \cite{Ol05}.

To illustrate their application, let us see how the actions of the functors
involved in an adjunction can be recovered from the adjunction itself, laws
(\ref{eq:230208c}) and (\ref{eq:230208b}). Taking |gc vDelta ((><))| as example,
let us use (\ref{eq:230208c}), |fR h = ceil(h . epsilon)|, to find a definition for
|f >< g|, which is |fR(f,g)|. Since |epsilon = (p1,p2)|, then |(f,g).epsilon = (f.p1,g.p2)|.
Since |ceil((x,y)) = split x y|, we finally get
\begin{eqnarray}
	|f >< g = split(f.p1)(g.p2)|
\end{eqnarray}
Similarly, for |adj fJ fP|, by (\ref{eq:230208c}) we get 
\begin{eqnarray}
	|fP R = pT((R . (ins)))|
	\label{eq:230310a}
\end{eqnarray}
that is,  |fP R X = { b || b R a && a ins X}|.\footnote{Note that |fP| is not a relational functor (in |RC|) but rather another way of expressing relations by functions in |SC|. It is often referred to as the \emph{existential image functor} \cite{BM97}. Interestingly, (\ref{eq:230310a}) captures the way the
so-called \emph{navigation style} of Alloy \cite{Jac12} works, enabling an (essentially) functional
execution of its relational core.}

Now let us calculate |f + g| as in the left-adjoint of |gc ((+)) vDelta| (\ref{eq:230207a}) using
(\ref{eq:230208b}), |fL g = floor(eta . g)|. In the same way as above,
|f + g = fL(f,g) = floor(eta . (f,g))|. Since |eta = ceil id| (\ref{eq:230208e}),
i.e.\ |eta = (i1,i2)| by (\ref{eq:230207a}), we get |f + g = floor(i1.f,i2.g)|
and finally:
\begin{eqnarray}
	|f + g = either (i1.f)(i2.g)|
\end{eqnarray}

All such properties and those of the appendix involve only one adjunction at a time.
Perhaps more interesting are those that arise
by composing adjunctions, to be seen shortly.
Before this, we address a topic that is very relevant to programming and bears a strong
link to adjunctions.

\section{Monads}

The categorial view of functional programming had a big ``push forward" when the concept of a 
\emph{monad} was incorporated in languages such as e.g.\ Haskell, making it possible to have purely 
functional implementations of computations that were regarded as non-functional before \cite{GH11}.

It turns out that monads arise from adjunctions.
Put simply, for every adjunction |adj fL fR|, the composition |fM = fR . fL|
is a monad, meaning that |fM| comes equipped with natural transformations |eta| and |mu|,
as in
\begin{eqnarray*}
	|(monad fM A mu eta)|
\end{eqnarray*}
such that
\begin{eqnarray}
\start
	|mu . eta = id = mu . fM eta|
	\label{eq:mon-mul}
\more
	|mu . mu = mu . fM mu|
	\label{eq:mon-unit}
\end{eqnarray}
hold. The so-called \emph{multiplication} (|mu|) and \emph{unit} (|eta|) of monad |fM| arise as follows:
\begin{eqnarray}
\start
	|eta = ceil id|
	\label{eq:230301a}
\more
	|mu = fR epsilon|
	\label{eq:230301b}
\end{eqnarray}
%
Proofs that (\ref{eq:mon-mul},\ref{eq:mon-unit})
arise from definitions (\ref{eq:230301a},\ref{eq:230301b})
and adjunction properties can be found in the appendix.

As an example, recall adjunction |adj fJ fP| (\ref{eq:230209a}).
Because |fJ| is the identity on objects, it turns out that |fP|, the powerset functor,
is a monad.
By (\ref{eq:230301a}) and (\ref{eq:pT}), its unit is |eta a = {a}|
By (\ref{eq:230301a}) and (\ref{eq:230208c}), its multiplication |mu = pT((ins).(ins))|
is distributed union,
\begin{eqnarray*}
|
	mu S = { a || rcb exists x (a ins x)(x ins S) }
|
\end{eqnarray*}
where |S| is a set of sets.

In the interest of programming, one may wonder whether, in this powerset adjunction 
|adj fJ fP| (\ref{eq:230301c}), one can interpret relational expressions in |RC| by set-valued
functions |SC|. In particular, one may be interested in implementing relational composition
|R . S| by somewhow running their set-valued function counterparts |pT R| and |pT S| as
functional programs.

This is possible\footnote{This is the way relational specifications are handled
in \cite{BM97}, for instance.} as an instance of so-called \emph{monadic}
(or \emph{Kleisli}) composition, defined for any adjunction |adj fL fR| as follows,
\begin{eqnarray}
\start |f .! g = mu . fM f . g|
	\label{eq:230301d}
\end{eqnarray}
where |fM = fL . fR|. One has
\begin{eqnarray}
\start	|ceil(f.g) = ceil f.! ceil g|
	\label{eq:230301e}
\end{eqnarray}
as proved in the appendix.

As a well-known example, Kleisli composition enables one to sequence state-based
computations in a purely functional, elegant way using the so-called \emph{state
monad} which arises from the |gc ((_><K)) ((expn _ K))| adjunction (\ref{eq:230208h}).

\section{Composing adjunctions}
Above we saw the example of a functor (|vDelta|) being at the same
time a left adjoint and a right adjoint of a different adjunction. Let us
study the situation in which two such adjunctions are chained: |fL `adj` fM `adj` fR|.

A quick inspection of how a morphism |rarrow (fL A) k (fR B)|
can be transformed unveils the composite adjunction |(fM fL) `adj` (fM fR)|:\footnote{
In the sequel we adopt the usual shortcut for functor composition,
e.g.\ |fM fL| instead of |fM . fL| and so on.}
\begin{eqnarray*}
\start
	|fM fL A -> B|
%
\just\iso{ |fM `adj` fR| }
%
	|fL A -> fR B|
%
\just\iso{ |fL `adj` fM| }
%
	|A -> fM fR B|
%
\end{eqnarray*}
Given |rarrow (fL A) k (fR B)|,
|k = sbs (ceil f) fR| holds for exactly one |rarrow(fM fL A) f B|.
On the other hand, |k = sbs (floor g) fL| holds for exactly one |rarrow A g (fM fR B)|.
So the \emph{exchange law}
\begin{eqnarray}
	|sbs (ceil f) fR = sbs (floor g) fL|
\end{eqnarray}
holds for such
	|rarrow (fM fL A) f B|
and
	|rarrow A g (fM fR B)|.

\paragraph{The product-coproduct ``mix"}
Let us see an instance of this exchange rule, that which emerges from
composing |(+) `adj` vDelta `adj` (><)| and is dear to algebra of programming practitioners
\cite{BM97}: in this case,
|rarrow (fM fL A) f B| is of type |vDelta (+) (A,C) -> (B,D)|, % |rarrow (vDelta (+) (A,C)) () ((B,D))|,
\begin{eqnarray*}
	|f = rarrow((A+C,A+C))((m,n)) ((B,D))|
\end{eqnarray*}
and |rarrow A g (fM fR B)| is of type |(A,C) ->  vDelta (><) (B,D)|:
\begin{eqnarray}
	|g = rarrow((A,C))((i,j)) ((B><D,B><D))|
	\label{eq:230207b}
\end{eqnarray}
So,
	|sbs (ceil f) fR = sbs (floor g) fL|
  becomes
	|split m n = either i j|,
which we want to solve next.
%paragraph{Solving |split m n = either i j|}
Looking at (\ref{eq:230207b}), we have |i=split h k| and |j = split p q| for some |h,k,p,q|.
Then:
\begin{eqnarray*}
\start
	|split m n = either (split h k)(split p q)|
%
\just\equiv{ |gc ((+)) vDelta| }
%
	|lcbr(
		(m,n).(i1,i1) = (h,k)
	)(
		(m,n).(i2,i2) = (p,q)
	)|
%
\just\equiv{ re-arranging }
%
	|lcbr(
		(m,m).(i1,i2) = (h,p)
	)(
		(n,n).(i1,i2) = (k,q)
	)|
	\eqnnewpage
%
\just\equiv{ |gc vDelta ((><))| }
%
	|lcbr(
		m = either h p
	)(
		n = either k q
	)|
\end{eqnarray*}

\begin{wrapfigure}[8]{l}{12.5em}
\(
\xymatrix{
	A
		\ar[r]^{i_1}
		\ar[d]_{|h|}
		\ar[drr]_{|p|}
&
	A+C
&
	C
		\ar[dll]_{|k|}
		\ar[d]^{|q|}
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
\)
\end{wrapfigure}
The composite adjunction |(+) `adj` vDelta `adj` (><)| therefore yields the
well-known \emph{exchange law} useful in handling functions that input
sums and output products:
\begin{eqnarray}
	|split (either h p)(either k q) = either (split h k)(split p q)|
	\label{eq:exLaw}
\end{eqnarray}
As will be seen later, this law will play an important role when dealing with mutual recursion.

\paragraph{|gc ((+)) vDelta| meets |gc fL fR|}
As we have seen, adjunction (\ref{eq:200206a}) brings with it
the possibility of expressing alternative computations. One wonders whether such 
possibility can be extended ``across'' other adjunctions via the composition
\begin{eqnarray*}
\myxym{
	|expn SC 2|
		\ar@@/_1.0pc/[r]_-{|(+)|}
&
	|SC|
		\ar@@/_1.0pc/[l]_-{|vDelta|}
		\ar@@/_1.0pc/[r]_-{|fL|}
&
	|CC|
		\ar@@/_1.0pc/[l]_-{|fR|}
}
& 
	\hbox{that is}
&
\vcenter{\xymatrix@@C=3.5ex{
	|(fR A,fR A)|
&&
	|fR A+fR A|
	\ar[r]^-{|codelta|}
&
	|fR A|
\\
	|(C,D)|
	\ar[u]^{|(ceil f,ceil g)|}
&&
	|C+D|
	\ar[u]^{|(ceil f)+(ceil g)|}
	\ar[ru]_{|(ceil k)|}
}}
\end{eqnarray*}
meaning:
\begin{eqnarray}
	|lcbr((ceil f)=(ceil k).i1)((ceil g)=(ceil k).i2)|
&
	\equiv
&
	|ceil k = either (ceil f)(ceil g)|
	\label{eq:230302c}
\end{eqnarray}
Clearly, the right side of (\ref{eq:230302c}) can be written |k = floor(either (ceil f)(ceil g))|.
Concerning the left side:  
\begin{eqnarray*}
\start%
	|lcbr(
		ceil k . i1 = ceil f
	)(
		ceil k . i2 = ceil g
	)|
%
\just\equiv{ fusion (\ref{eq:200204b}) and isomorphism (\ref{eq:230208a}) (twice) }
%
	|lcbr(
		k . fL i1 = f
	)(
		k . fL i2 = g
	)|
\end{eqnarray*}
In summary, (\ref{eq:230302c}) re-writes to the universal property
\begin{eqnarray}
	|k = floor(either (ceil f)(ceil g))|
&
	\equiv
&
	|lcbr(
		k . fL i1 = f
	)(
		k . fL i2 = g
	)|
	\label{eq:230303a}
\end{eqnarray}
that is, we have coproducts in |CC| induced by the lower adjoint |fL|.

\paragraph{Relational coproducts} Let us inspect (\ref{eq:230303a}) 
for |adj fL fR := adj fJ fP| (\ref{eq:230209a}).
In this case, |floor k = (ins) . k| and |fL i1 = fJ i1| is injection |i1| regarded
as a relation, |y i1 x <=> y = i1 x|, which is usually written |i1| (similarly for |i2|):
\begin{eqnarray}
	|X = underbrace((ins).(either (pT R)(pT S)))(either R S)|
&
	\equiv
&
	|lcbr(
		X . i1 = R
	)(
		X . i2 = S
	)|
	\label{eq:230305a}
\end{eqnarray}
Thus relational coproducts are born, in which \emph{alternation} is still denoted by |either R S|,
as in the functional case, since types always tell us whether we are in |SC| or |RC|.

As another example, this time concerning |adj ((_><K)) ((expn _ K))| (\ref{eq:230208h}), we get
\begin{eqnarray*}
	|k = uncurry_(either (curry_ f)(curry_ g))|
&
	\equiv
&
	|lcbr(
		k . (i1><id) = f
	)(
		k . (i2><id) = g
	)|
\end{eqnarray*}
and so on for other |adj fL fR|.

\section{More about |RC|}
We have just seen that the category of relations |RC| has coproducts.
In fact, it has a much richer structure which stems from the powerset construction in |SC|
(\ref{eq:230209a}). The fact that powersets are ordered by set inclusion induces a
partial order on relations in |RC| easy to define:\footnote{The fact that we use the same symbol
to order relations and order powersets should not be a problem, as types disambiguate its use.}
\begin{eqnarray}
\start
	|R atmost S| \wider\equiv |rcb forall a () (sse ((pT R a))((pT S a)))|
	\label{eq:230303e}
%
\end{eqnarray}
Put in another way, every homset |RC(A,B)| is partially ordered and we say
that |RC| is \emph{order-enriched}.

This enrichment is actually ``richer": (\ref{eq:230303e})
carries with it a complete Boolean algebra and therefore relation union (|cup R S|) and intersection
(|cap R S|) are defined within the same homset |RC(A,B)| by construction, whose least element is
usually denoted by |bot| and the largest by |top|.

The other interesting structural property is
that homsets |RC(A,B)| and |RC(B,A)| are isomorphic, that is, |RC| is \emph{self dual}.
For each |R ins RC(A,B)|, the corresponding relation in |RC(B,A)| is denoted by
|conv R| (the \emph{converse} of |R|) and we have:\footnote{ Self-duality in |RC| arise from isomorphism |fP X <~> expn 2 X| (``sets are predicates'') in |SC|.  By this and uncurrying, |A -> fP B <~> expn 2 (A >< B)|.  Since |A><B <~> B >< A|, we can go in reverse order obtaining |B -> fP A|, etc.}
\begin{eqnarray*}
|
 	b R a <=> a (conv R) b
|
\end{eqnarray*}
This is a major advantage of |RC| when compared to |SC|, where only isomorphisms can be
reversed. Moreover, it turns out that converses of functions play a major role in |RC|.
In particular, the useful rule
\begin{eqnarray}
	|b(conv f . R . g)a|
&
\equiv
&
	|(f b) R (g a)|
	\label{eq:040120c} %-- guardanapo
\end{eqnarray}
holds, for suitably typed functions |f| and |g| and relation |R|.\footnote{Following
a widely adopted convention \cite{BM97} to save text, we denote ``relations
that are functions" by lowercase letters.}
The use of this rule can be appreciated by applying it to both sides a Galois connection,
recall (\ref{eq:230305b}):
term |f a <= x| becomes |a (conv f . (<=)) x| and
term |a <<= g x| becomes |a ((<<=).g) b|.
That is, the logical equivalence of a GC (\ref{eq:230305b}) becomes the relational \emph{equality}:
\begin{eqnarray}
\start	|conv f . (<=) = (<<=).g|
	\label{eq:040122b}
\end{eqnarray}

This version of (\ref{eq:230305b}) is said to be \emph{pointfree} in the sense that is dispenses
with variables, or \emph{points}, |a| and |x|.\footnote{
This is the way (in |RC|) Galois connections are handled in e.g.\ \cite{BB04,MO11}.}
The question arises: how does one describe the preorders |(<=)| and |(<<=)|
at such a \emph{pointfree} level? This is related to a previous question:
how does a recursive program like e.g.\ |take| gets generated from an equality
like (\ref{eq:040122b})?
With no further delay we need to bring recursion into our framework of reasoning. 

\section{Recursion comes in}

\begin{wrapfigure}[7]{r}{12.5em}
\(
\xymatrix{
	|a|
 		\ar[d]_{|f|}
&
	|A|
 		\ar[d]_{|f|}
&
	|fF A|
 		\ar[l]_{|a|}
 		\ar[d]^{|fF f|}
\\
	|b|
&
	|B|
&
	|fF B|
 		\ar[l]^{|b|}
}
\)
\end{wrapfigure}
For a given functor |fF|, any morphism |larrow (fF A) a A| is said to be a |fF|-algebra,
where |A| is said to be the \emph{carrier} of the algebra.
|fF|-algebras form a category provided its morphisms |rarrow a f b| satisfy a particular property,
\begin{eqnarray}
	|f . a = b . fF f|
	\label{eq:230207c}
\end{eqnarray}
captured in the diagram aside. This states that |A|-objects are mapped to |B|-objects in a structural way:\footnote{Morphisms with this structure are usually referred to as \emph{homomorphisms}.}
Think for instance of |A = B = Nat0| being the natural numbers,
|fF X = X >< X|, |a(n,m) = n + m|, |b(x,y) = x >< y| and |f x = expn c x|, for some
fixed |c|. Then (\ref{eq:230207c}) becomes |f(a(n,m) = b(f n,f m)|, then 
|f(n+m) = (f n)><(f m)| and finally |expn c (n+m) = (expn c n)><(expn c m)|, 
which is true. Thus |rarrow ((+)) (expn c _) ((><))| is a |fF|-homomorphism.

Some situations arise in which |a| is such that, for every |b|, |f| is unique.
In such cases, |a| is an isomorphism\footnote{This is known as the \emph{Lambek lemma}
\cite{BM97}.}, that is, there exists some morphism |conv a| such that
|conv a . a = id| and |a . conv a = id|. Such algebras |a| are said to be \emph{initial}
and usually denoted by |inT|, assuming their carrier set denoted by |fT|, i.e.\
|rarrow (fF fT) inT fT|. The uniqueness of |f| wrt.\ |b| is written |f = cata b| and
we have the universal property: 
\begin{eqnarray*}
	|k = cata b <=> k . inT = b . fF k|
\end{eqnarray*}
Due to the tight relationship between |fT|, |inT| and |fF|, it is common to write 
|muF| instead of |fT|:
% Initial algebra |larrow (fF muF) inT muF| such that morphism |rarrow inT (cata a) a| is unique:
\begin{eqnarray}
	|k = cata b <=> k . inT = b . fF k|
~~~~  \vcenter{\xymatrix@@C=1em{
	|muF|
 		\ar[d]_{|k=cata b|}
&
	|muF|
 		\ar@@/^0.9pc/[rr]^{|conv inT|}
 		\ar[d]_{|k|}
&
        \iso
&
	|fF muF|
 		\ar@@/^0.9pc/[ll]^{|inT|}
 		\ar[d]^{|fF k|}
\\
	B
&
	|B|
&&
	|fF B|
 		\ar@@/^1pc/[ll]^{|b|}
}}
	\label{eq:cataUniv}
\end{eqnarray}
In words, |cata b| is referred to as \emph{the}\footnote{Definite article because it is unique.}
\emph{catamorphism} induced by algebra |b|. Clearly, it is a generic, recursive
construct expressing the transformation of |muF| into |B| in a ``recursive-descent''
manner dictated by functor |fF|.

A very simple example of catamorphism is the ``for-loop" combinator
defined by
\begin{eqnarray}
	|for b i = cata (either (const i) b|
	\label{eq:230207d}
\end{eqnarray}
in which |fF X = 1 + X| and |muF = Nat0|. In this case,
\begin{eqnarray}
\start |inT = either zero succ|
	\label{eq:230306a}
\end{eqnarray}
is the so-called \emph{Peano algebra} which builds natural nunmbers,
where |rarrow 1 zero Nat0 = const 0| generates |0| and |rarrow Nat0 succ Nat0|, the successor function
|succ n = n + 1|, generates all other numbers. By |rarrow 1 (const k) X| we mean the constant function
|const k _ = k|, where |1| is the singleton object.

By unfolding (\ref{eq:230207d}) through (\ref{eq:cataUniv}) one derives
\begin{code}
for b i 0 = i
for b i (n+1) = b((for b i n))
\end{code}
clearly showing that |b| is the loop-body and |i| is the loop-initialization.\footnote{
In spite of its elementary nature, the for-loop combinator is very useful in
programming, see e.g.\ \cite{Da23,Ol20}.
%
%Example (Church numerals): |church n f b = for f b n|.
%
%Church numerals $church : Nat \rightarrow {(B^B)}^{(B^B)}$, $church\ n\ f = f^n$
%That is, |church| is the for-loop |church n f b = for f b n| i.e the Peano-cata
%\begin{code}
%church = cata(either czero csucc) where 
%   czero = const id
%   csucc g f = f . (g f)
%\end{code}
%where 
%$id$ is the Church zero
%\\
%$csucc : {(B^B)}^{(B^B)} \rightarrow {(B^B)}^{(B^B)}$ is the Church successor.
}

Due to its genericity, the catamorphism concept has proved very useful in
studying functional recursion. Similarly to \cite{Hi13}, but extending this
work towards the relational setting, the remainder of this paper addresses
the ``chemistry`` between adjunctions and catamorphisms.

\paragraph{|cata _| meets |gc fL fR|}
As a first step in the investigation of such ``chemistry",
we set ourselves the task of solving the equation:
	|ceil f = cata(ceil(h))|,
where |ceil _| is the |fR|-transpose of some adjunction |gc fL fR|.
\begin{eqnarray*}
\start
	|ceil f = cata(ceil(h))|
%
\just\equiv{ cata-universal (\ref{eq:cataUniv}) } %  (\ref{eq:cataUniv})
%
	|ceil f . inT = ceil(h) . fF (ceil f)|
%
\just\equiv{ fusion (\ref{eq:200204b}) twice }
%
	|ceil (f . fL inT) = ceil(h . fL fF (ceil f))|
%
\just\equiv{ isomorphism |ceil _| (\ref{eq:230208a}) }
%
	|f . fL inT = h . fL fF (ceil f)|
%
\end{eqnarray*}
Altogether:
\begin{eqnarray}
	|f . fL inT = h . fL fF (ceil f)|
&\wider\equiv&
	|ceil f = cata(ceil(h))|
	\label{eq:210111a}
\end{eqnarray}
cf.\ the diagrams:
\begin{eqnarray*}
\begin{array}{ccc}
	|CC|
&
&
	|DC|
\\
\xymatrix{
	|fL muF|
 		\ar@@/^0.9pc/[rr]^{|conv (fL inT)|}
 		\ar[d]_{|f|}
&
        \iso
&
	|fL fF muF|
 		\ar@@/^0.9pc/[ll]^{|fL inT|}
 		\ar[d]^{|fL fF(ceil f)|}
\\
	|A|
&&
	|fL fF fR A|
 		\ar@@/^1pc/[ll]^{|h|}
}
& ~~~~~~~ &
\xymatrix{
	|muF|
 		\ar@@/^1pc/[rr]^{|conv inT|}
 		\ar[d]_{|ceil f|}
&
        \iso
&
	|fF muF|
 		\ar@@/^1pc/[ll]^{|inT|}
 		\ar[d]^{|fF(ceil f)|}
\\
	|fR A|
&&
	|fF fR A|
 		\ar@@/^1pc/[ll]^{|ceil h|}
}
\end{array}
\end{eqnarray*}
Although we have not succeded in getting rid of |ceil _| from the left side of (\ref{eq:210111a}), this result already offers us something useful, as the following example shows.

Let us see how |cata _| meets |gc vDelta ((><))|, the pairing adjunction where, recall:
\begin{eqnarray*}
\start	|fL f = vDelta f = (f,f)|
\more	|epsilon = (p1,p2)|
\more	|ceil((f,g)) =  split f g|
\end{eqnarray*}
In this case, the left-hand side of (\ref{eq:210111a}) becomes: 
\begin{eqnarray*}
\start
	|(f,g) . fL inT = (h,k) . fL(fF(ceil((f,g))))|
%
\just\equiv{ |fL f = (f,f)| ; |ceil((f,g)) = split f g| }
%
	|(f,g) . (inT,inT) = (h,k) . (fF(split f g),fF(split f g))|
%
\just\equiv{ composition and equality of pairs of functions }
%
	|lcbr(
		f . inT = h . fF(split f g)
	)(
		g . inT = k . fF(split f g)
	)|
\end{eqnarray*}
Concerning the right-hand side:
\begin{eqnarray*}
\start
	|ceil((f,g)) = cata(ceil((h,k)))|
%
\just\equiv{ |ceil((f,g)) = split f g| twice }
%
	|split f g = cata(split h k)|
\end{eqnarray*}
Putting both sides together we get the so-called \emph{mutual recursion} law:
\begin{eqnarray}
	|split f g = cata(split h k)|
	& \equiv &
	|lcbr(
		f . inT = h . fF(split f g)
	)(
		g . inT = k . fF(split f g)
	)|
\label{eq:fokkinga}
\end{eqnarray}

This first outcome of the interplay between recursion and adjunctions is
very useful in programming, because it can be used to trim the complexity
of some dynamic programming (DP) problems by calculation. In particular,
it can be used to convert complex multiple recursion into Peano-recursion,
i.e., for-loops (\ref{eq:230207d}).

Many examples of application of (\ref{eq:fokkinga}) could be given, see e.g.\
\cite{Ol05}.\footnote{Examples in \cite{Ol05} include the derivation of efficient implementations 
of |Real|-valued functions from their Taylor series expansion into mutually recursive functions that
are ``packed together'' via (\ref{eq:fokkinga}).}
Perhaps the most famous (and shortest to explain) is the Fibonacci
series, a classic in \emph{DP}:
\begin{code}
fib 0 = 1
fib 1 = 1
fib(n+2) = fib(n+1) + fib n
\end{code}
By defining |f n = fib(n+1)| and expanding it through the Peano-algebra, one gets,
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
that is:
\begin{eqnarray*}
|lcbr(
	f . either zero succ = either (const 1) add . (split f fib)
)(
	fib . either zero succ =  either (const 1) p1 . (split f fib)
)|
\end{eqnarray*}
By (\ref{eq:fokkinga}) and the \emph{exchange law} (\ref{eq:exLaw}), this leads to:
\begin{eqnarray*}
|split f fib| &=& \scata{|either (const((1,1))) (split add p1)|}
\end{eqnarray*}
that is (in Haskell syntax):
\begin{code}
fib = snd . for loop ((1,1)) where
    loop(x,y) = (x+y,x)
\end{code}
In retrospect, note how the main ingredients of the calculation above rely on adjunctions: law 
(\ref{eq:fokkinga}), which instantiates (\ref{eq:210111a}) for |gc vDelta ((><))|, and
law (\ref{eq:exLaw}), which arises from |(+) `adj` vDelta `adj` (><)|.

\section{Towards adjoint-recursion} \label{sec:230308a}
%Further chemistry with recursion
The relevance of (\ref{eq:210111a}) is, as already seen in (\ref{eq:fokkinga}),
the possibility of ``converting" a non-standard recursive construct (|f|) into a catamorphism
by right-adjoint transposition.
Because |inT| is an isomorphism, |f| could be written instead as
	|f = h . fL fF (ceil f) . fL(conv(inT))|.
Our next aim is to have it written in typical \emph{hylomorphism} (divide \& conquer) format
\cite{BM97}, 
\begin{quote}
	|f = c . fH f . d|
\end{quote}
for some recursive pattern |fH|, ``divide`` step |d| and ``conquer`` step |c|.

For this, we need to get rid of |ceil f| in the recursive call 
|h . fL fF (ceil f) .  fL(conv(inT))|.
The resource we have for this is the \emph{cancellation}
law (\ref{eq:200204d}), |epsilon. fL (ceil f) = f|.
However, |fL| in |fL fF (ceil f)| is in the wrong position and needs to commute with |fF|.
So we need a \emph{distributive} law |fL fF -> fF fL| or, more generally, a \emph{natural transformation}
\begin{eqnarray}
	|phi : fL fF -> fG fL|
	\label{eq:230209b}
\end{eqnarray}
enabling such a commutation over some |fG|. Still, for |epsilon . fL (ceil
f) = f| to be of use, we % Because we have |fG fL| and not exactly |fL|,
need |fG epsilon| somewhere in the pipeline.
We thus refine
	|h := h . fG epsilon . phi|
in (\ref{eq:210111a}) and carry on:
\begin{eqnarray*}
\start
	|ceil f = cata(ceil(h . fG epsilon . phi))|
%
\just\equiv{ (\ref{eq:210111a}) }
%
	|f . fL inT = h . fG epsilon . phi . fL fF (ceil f)|
%
\just\equiv{ natural-|phi|: | phi . fL fF f = fG fL f . phi | } % 200204c
%
	|f . fL inT = h . fG epsilon . fG fL (ceil f).phi|
%
\just\equiv{ functor |fG|; cancellation |epsilon. fL (ceil f) = f| (\ref{eq:200204d}) }
%
	|f . fL inT = h . fG f . phi|
%qed
\end{eqnarray*}
We thus reach 
\begin{eqnarray}
	\underbrace{|f . (fL inT) = h . fG f . phi|}_{\mbox{|fG|-hylomorphism}}
&
	\equiv
&
	\underbrace{|ceil f = cata(ceil(h . fG epsilon . phi))|}_{\mbox{adjoint |fF|-catamorphism}}
	\label{eq:200204f}
\end{eqnarray}
where natural transformation |phi : fL fF -> fG fF| captures the necessary
switch of recursion-pattern between the |fG|-\emph{hylomorphism} |f| and
the |fF|-catamorphism |ceil f|, through |fL|. Note that, in general, they
sit in different categories. The |fG|-hylo (in say |CC|) is depicted in a diagram by:
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
}
\end{eqnarray*}
The diagram of its adjoint |fF|-cata (in say |DC|) is:
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
}
\end{eqnarray*}
\emskip

We shall refer to (\ref{eq:200204f}) as the \emph{adjoint-cata} theorem.
Its main interest is that one can use the ``\emph{cata}-artilhery" that stems
from universal property (\ref{eq:cataUniv}) to reason about hylomorphism |f|
by converting |f| to |ceil f|. But not necessarily: by (\ref{eq:221120a})
on the right side of (\ref{eq:200204f}), we get:
\begin{eqnarray}
	\underbrace{|f . (fL inT) = h . fG f . phi|}_{\mbox{|fG|-hylomorphism}}
&
	\wider\equiv
&
	|f = underbrace (floor(cata(ceil(h . fG epsilon . phi)))) (env h)|
	\label{eq:230305c}
\end{eqnarray}
giving birth to a new recursion combinator with \emph{universal property}:
\begin{eqnarray*}
	|f = env h|
&
	\wider\equiv
&
	|f . fL inT = h . fG f . phi|
	%label{eq:230208g}
\end{eqnarray*}
In case |phi| is invertible, i.e.\ an isomorphism, the above converts to
\begin{eqnarray}
	|f = env h|
&
	\wider\equiv
&
	|f . (underbrace(fL inT . conv phi) alpha) = h . fG f|
	\label{eq:230208f} 
\end{eqnarray}
which shares the structure of (\ref{eq:cataUniv}), where we started from.
Indeed, for the trivial adjunction in which |fL| and |fR| are the identity
functors, |phi = id| and |fF = fG|, |env h| coincides with |cata h|.
But, in general, (\ref{eq:230208f}) has a much wider scope as it enables us
to handle recursive structures (|muF|) ``embraced" by some contex information
(|fL muF|), a quite common situation in programming. 

For instance, |f| may be applied to a recursive structure |x| paired with some 
data |k|, |f(x,k)|. While this falls off the scope of (\ref{eq:cataUniv}), it is
handled by (\ref{eq:230305c}) for |fL X = X >< K|, the lower adjoint
of the exponentials adjunction (\ref{eq:230208h}). This is precisely the situation
in a result known as the \emph{Structural Recursion Theorem} which is proved
in \cite{BM97} with no explicit connection to the underlying adjunction.\footnote{
See Theorem 3.1 in \cite{BM97}, which we can now regard as a corollary of (\ref{eq:230305c}).}

Clearly, (\ref{eq:230305c}) is much wider in scope. And, as it turns out,
it also covers another result in \cite{BM97} as special case, this time involving
the already mentioned category of relations |RC|. We address this the following section.

\section{Going relational}
Let us now inspect what (\ref{eq:230305c}) in presence of the power-transpose adjunction
|gc fJ fP| (\ref{eq:230209a}). Thanks to |fJ| being the identify of objects, we may choose
|fG| (in |RC|) as defined by:
\begin{eqnarray}
	|y fG(fL f) x <=> y = fF f x|
	\label{eq:230209c}
\end{eqnarray}
In words, |fG| establishes a structural relationship between object structures |x| and |y|,
via the relation |fL f|, iff |y| is the outcome of mapping |f| over |x| in |SC|.
That is, |fG| is the \emph{relator} \cite{R*92} that models |fF f| is |RC|. Moreover, (\ref{eq:230209c})
is nothing but (\ref{eq:230209b}) written pointwise, for |phi=id|. 

Given the close association of |fG| to |fF| expressed by (\ref{eq:230209c}), there is no harm
in writing only one such symbol (e.g.\ |fF|) knowing that |fF| in a relational context means
|fG|. Assuming this notation convention, and knowing that |phi| ``is" the identity, 
(\ref{eq:200204f}) instantiates to 
\begin{eqnarray}
	|X . inT = R . fF X| & |<=>| & |pT X = cata(pT((R . fF ins)))|
\end{eqnarray}
depicted by diagrams as follows:\footnote{Note that the left diagram lives in |RC| while the
right one lives in |SC|.}
\begin{eqnarray*}
\myxym{
	|muF|
		\ar[d]_{|X|}
&
&
	|fF muF|
		\ar[ll]_-{|inT|}
		\ar[d]^{|fF X|}
\\
	|A|
&
&
	|fF A|
		\ar[ll]^{|R|}
}
&|<=>|& 
\myxym{
	|muF|
		\ar[d]_{|(pT X)|}
&
&
	|fF muF|
		\ar[ll]_{|inT|}
		\ar[d]^{|fF (pT X)|}
\\
	|fP A|
&
&
	|fF fP A|
		\ar[ll]^{|pT((R . fF epsilon . phi))|}
}
\end{eqnarray*}
Finally, there is little harm in denoting the new combinator of (\ref{eq:230305c}) by
|cata R| instead of |env R|, giving birth to the \emph{relational catamorphism} 
combinator:
\begin{eqnarray}
	|X . inT = R . fF X| & |<=>| & |X = underbrace(ins.cata(pT((R . fF ins))))(cata R)|
	\label{eq:210108d}
\end{eqnarray}
Thus ``banana-brackets" are extended to \emph{relations}, giving birth to \emph{inductive relations}. Note that |R| is a \emph{relational} |fF|-algebra, which is checked in every recursive descent of |cata R|
across the input data.

Before proceeding to examples, it should be mentioned that the equivalence
\begin{eqnarray}
	|X = cata R| & \equiv & |pT X = cata(pT((R . fF ins)))|
	\label{eq:210115a}
\end{eqnarray}
--- which is another way of expressing (\ref{eq:210108d}) --- is known in the literature as the \emph{Eilenberg-Wright} Lemma \citep{BM97}.
So we have just shown that this lemma follows the more general ``adjoint-cata" theorem (\ref{eq:200204f})
via the \emph{power-transpose} adjunction |gc fJ fP|.

\paragraph{|cata _|-reflection and more}
As a first introduction to reasoning about inductive relations in |RC|, let us see what we get from 
(\ref{eq:210108d}) when |X = id|. Put in another way, we wish to solve |id = cata R| for |R|.
Since |fF id = id|, (\ref{eq:210108d}) immediately gives us
	|inT = R <=> id = cata R|,
meaning that the equation |id = cata R| has one sole solution, |R = inT|. Substituting, we get
\begin{eqnarray}
	|cata inT = id|
\end{eqnarray}
known as the \emph{reflection} law \cite{BM97}.
In words, it means that recursively dismantelling a tree-structure into its
parts and assembling these back again yields the original tree-structure.

Taking the case of the Peano algebra |inT = either zero succ| (\ref{eq:230306a}) as example,
we get |cata(either zero succ) = for succ 0 = id|. Note that |either zero succ|
is a function, and so we actually do not need (\ref{eq:210108d}) for this, (\ref{eq:cataUniv})
where we started from is enough.

Now, since we can plug relations in (\ref{eq:210108d}),
how about going for something larger than |either zero succ|, for instance
|cata(either zero (cup zero succ))|?
(Recall from (\ref{eq:230305a}) that relation union and alternatives involving relations are well-defined.)

Let us first of all see what kind of relation |X = cata(either zero (cup zero succ))| is,
governed by universal property (\ref{eq:210108d}):
\begin{eqnarray*}
\start
|
	X = cata(either zero (cup zero succ))
|
\just\equiv{ (\ref{eq:210108d}) for |fF X = id + X| } 
|
	X . either zero succ = (either zero (cup zero succ)) . (id + X)
|
\just\equiv{ |adj ((+)) vDelta| in |RC|: fusion (\ref{eq:211026b}) and absorption (\ref{eq:230306b})  }
|
	either (X . zero) (X . succ) = either zero (((cup zero succ)) . X)
|
\just\equiv{ |adj ((+)) vDelta| in |RC|: isomorphism }
|
	lcbr (X . zero = zero)(X . succ = ((cup zero succ)) . X)
|
\just\equiv{go pointwise in |RC| via relation composition and (\ref{eq:040120c}), several times }
|
lcbr(
	n X 0 <=> n = 0
	)(
	m X (n+1) = rcb exists k (k X n) (m = 0 |||| m = k+1)
|
\just\equiv{ simplify }
|
lcbr(
	n X 0 <=> n = 0
	)(
	m X (n+1) <=> m = 0 |||| (m-1) X n
|
\end{eqnarray*}

By inspection, it can be seen that |X| is the \emph{less-or-equal} relation in |Nat0|.
Indeed, by replacing |X| by |<=| we get:
\begin{itemize}
\item	base clause --- |n <= 0 <=> n = 0|, which means that |0| is the infimum of the ordering.
\item inductive clause --- |m <= n + 1|, which means that either |m=0| (the infimum
of the ordering again) or, for |m /= 0|, we have |m <= n+1 <=> m-1 <= n|,
something we have seen many times in school algebra.
\end{itemize}
All in all, our calculations show that the |(<=)| ordering on the natural numbers is an \emph{inductive relation}. Note, however, this is not a privilege of |(<=) : Nat0 -> Nat0|, as we shall see next.

\section{Back to Galois connections} \label{sec:230305d}
%paragraph{Ordering finite lists}
Recall from section \ref{seq:230303d} that the prefix |(<<=)| ordering over
finite lists was handled assuming basic ``axiom'' (\ref{eq:100101c}),
\begin{eqnarray*}
\start
	|s <<= (h:t)| \wider\equiv
	s = |[]| \wider\lor \rcb\exists {s'}{s = (h:s')}{|s' <<= t|}
\end{eqnarray*}
as well as the assumption that the empty sequence |[]| is the infimum of the ordering.
(Recall that these assumptions were needed when e.g.\ calculating |take|
from its Galois connection specification.)

Let us work out (|<<=|) in the same way as |(<=)| above. There are two constructors of finite lists,
either |nil _ = []| generating the empty list; or |cons(a,x) = a:x| generating a new list |a:x|
from an existing one (|x|) by placing a new element (|a|) at the front of |x|.

Thus the initial algebra in this case is |inT = either nil cons|, giving way to catamorphisms
over a slightly more complex functor, |fF R = id + id >< R|, where 
|id><R| has to do with the fact that |cons| requires two arguments. 

The parallel between |either zero succ| and |either nil cons| is obvious,
and so we move straight to defining
|(<<=)| as the \emph{inductive relation} (a.k.a.\ relational catamorphism): 
\begin{eqnarray}
\start	|(<<=) = cata(either nil (cup nil cons))|
	\label{eq:230305e}
\end{eqnarray}
The reader can easily replay the calculation of |(<=)| this time for (|<<=|) and conclude that
``axioms" (\ref{eq:100101c}) and |[] <<= x <=> x = []| are indeed the \emph{pointwise equivalent}
to defining the list-catamorphism (\ref{eq:230305e}) in |RC|. 

Eventually, we are in position to answer the main question in section \ref{seq:230303d},
raised by the calculation of recursive right-adjoints such as whole division and |take|:
\begin{quote}\em
``Where does this induction come from?''
\end{quote}
It is now clear that what turns such adjoints into recursive (inductive) functions is the very
nature of the partial orderings that express them as ``best solutions", which are bound to be
inductive relations as dictated by the inductive structure of the underlying data.

Last but not least, there is yet another advantage:
in |RC| we can resort to the pointfree version of Galois connections
(\ref{eq:040122b}), where all the components of the connections are homogeneous --- all of them
are \emph{morphisms} of a (single) category, |RC| --- be them functions, orderings or other relations.
By catamorphism algebra, the reasonings
of section \ref{seq:230303d} can be performed at \emph{pointfree} level, in a more calculational
style, possibly assisted by GC-oriented proof assistants \cite{SO08}, see below.

\section{Related and current work}
In his landmark paper \cite{Hi13} on ``adjoint folds and unfolds", Ralf Hinze leaves the following suggestion:
\begin{quote}\em
(...) Finally, we have left the exploration of \textbf{relational} adjoint (un)folds to future work.
\end{quote}
Following this hint was the main motivation for the research reported in this paper.
The main outcome is a unified view of the relational algebra of programming,
in particular concerning results in the literature \cite{BM97} that now fit together as outcomes of the 
generic \emph{adjoint-cata} theorem of section \ref{sec:230308a}.

The paper is also aimed at framing, in a wider setting, 
the author's long standing interest in Galois connections as
a generic reasoning device \cite{SO08,MO11,Ol19}.
Previous work also includes the use of adjunctions in a categorial approach
to linear algebra \cite{MO13c} and in calculating tail-recursive programs
by ``left Peano recursion'' \cite{Ol20,Da23}.

Current work is going in two main directions. On the applications' side, trying to evaluate how
generic and useful the idea of deriving programs from Galois connections is
(recall section \ref{seq:230303d}) and whether this can be (semi)automated by tools
such as the Galculator \cite{SO08}. This would have the advantage over e.g.\ \cite{MO11}
of not requiring in-depth knowledge of the algebra of relational operators such as
e.g.\ \emph{shrinking}.

On the side of foundations of program semantics, we would like to explore the hint in \cite{Ol21}
of working out the relationship between \emph{denotational semantics} and \emph{structured operational semantics} (SOS, regarded as an inductive relation) \cite{Wi93} as an instance of the adjoint-cata theorem. This is expected to enable a calculational flavour in programming language semantics theory.

\section{Summary}

Science proceeds from the particular to the general. Scientific maturity
is achieved when convincing explanations are given around simple (but expressive)
concepts, generic enough to encompass an entire theoretical framework.
Simplicity and elegance in science enhance scientific communication, makes
concepts more understandable and knowledge more lasting.

Adjunctions are one such concept, expressive and general enough to capture
much of mathematics and theory of programming.

Throughout this work, the author learned to appreciate "adjoint folds" even more and to regard
\emph{adjunctions} as a very fertile device for explaining programming as a whole.
So important that \emph{teaching} them (inc.\ \emph{Galois connections}) should be mainstream.

May the tutorial flavour of the current paper contribute, however little, to this end.
If it ends up doing so, it was worth writing it.

\section*{Acknowledgments}

The author wishes to thank the organizers of WADT'22 for inviting him to give the
talk which led to this paper. His work is financed by National Funds through
the FCT - Funda\c c\~ao para a Ci\^encia e a Tecnologia, I.P. (Portuguese
Foundation for Science and Technology) within the project IBEX, with reference
PTDC/CCI-COM/4280/2021.

\appendix

\section{Properties of adjunctions and monads}

\paragraph{Corollaries of |k = ceil f <=>  epsilon . fL k = f| (\ref{eq:221120a})}
~
\emskip
\emph{reflection}:
\begin{eqnarray}
	|ceil epsilon = id|
	\label{eq:211017b}
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
	\label{eq:211017a}
\end{eqnarray}
\emph{naturality}:
\begin{eqnarray}
	|h . epsilon = epsilon . fL(fR h)|
	\label{eq:210128b}
\end{eqnarray}
\emph{closed definition}:
\begin{eqnarray}
	|floor k = epsilon . (fL k)|
\end{eqnarray}
\emph{functor}:
\begin{eqnarray}
	|fR h = ceil(h . epsilon)|
	\label{eq:230208c}
\end{eqnarray}
\emph{isomorphism}:
\begin{eqnarray}
	|ceil f = ceil g <=> f = g|
	\label{eq:230208a}
\end{eqnarray}

\paragraph{Dual corollaries of |k = floor f <=> fR k . eta = f| (\ref{eq:230206b})} 
~
\emskip
\emph{reflection}:
\begin{eqnarray}
	|floor eta = id|
\end{eqnarray}
that is,
\begin{eqnarray}
	|eta = ceil id|
	\label{eq:230208e}
\end{eqnarray}
\emph{cancellation}:
\begin{eqnarray}
	|fR (floor f) . eta = f|
	\label{eq:211026a}
\end{eqnarray}
\emph{fusion}:
\begin{eqnarray}
	|g . floor h = floor(fR g . h)|
	\label{eq:211026b}
\end{eqnarray}
\emph{absorption}:
\begin{eqnarray}
	| (floor h) . fL g = floor(h.g)|
	\label{eq:230306b}
\end{eqnarray}
\emph{naturality}:
\begin{eqnarray}
	|h . epsilon = epsilon . fL(fR h)|
\end{eqnarray}
\emph{closed definition}:
\begin{eqnarray}
	|ceil g = (fR g) . eta|
	\label{eq:210127a}
\end{eqnarray}
\emph{functor}
\begin{eqnarray}
	|fL g = floor(eta . g)|
	\label{eq:230208b}
\end{eqnarray}
\emph{cancellation (corollary)}:
\begin{eqnarray}
	|epsilon . fL eta = id|
	\label{eq:210127a}
\end{eqnarray}
%

\paragraph{Monads}
Proof of (\ref{eq:mon-mul}):
\begin{eqnarray*}
\start
	|mu . mu = mu . fM mu|
%
\just\equiv{|mu = fR epsilon| (\ref{eq:230301b}); functor |fR| }
%
	|fR(epsilon.epsilon) = (fR epsilon) . (fR (fL (fR epsilon)))|
%
\just\equiv{functor |fR| }
%
	|fR(epsilon.epsilon) = fR (epsilon . fL (fR epsilon))|
%
\just\equiv{ natural-|epsilon| (\ref{eq:210128b}) }
%
	|fR(epsilon.epsilon) = fR (epsilon . epsilon)|
\qed
\end{eqnarray*}
Proof of (\ref{eq:mon-unit}):
\begin{eqnarray*}
\start
	|mu . eta = id = mu . fM eta|
%
\just\equiv{|mu = fR epsilon|, |eta = ceil id| etc}
%
	|fR epsilon . (ceil id) = id = fR epsilon . (fR fL eta)|
%
\just\equiv{absorption (\ref{eq:211017a}); functor |fR|  }
%
	|ceil(epsilon) = id = fR(epsilon . fL eta)|
%
\just\equiv{ reflection (\ref{eq:211017b}); cancellation (\ref{eq:210127a}) }
%
	|true|
\qed
\end{eqnarray*}
Proof of (\ref{eq:230301e}): 
\begin{eqnarray*}
\start
	f \kcomp g
%
\just={ |f .! g = mu . fM f . g|} %  (\ref{eq:001230a})
%
	µ \comp |fM f| \comp g
%
\just={ |fM=fR fL|; |mu= fR epsilon| }
%
	|fR epsilon. (fR(fL f)) . g|
%
\just={ functor |fR| }
%
	|fR(epsilon. fL f) . g|
%
\just={ cancellation: |epsilon. fL f = floor f|; |g = ceil(floor g)| }
%
	|fR(floor f) . ceil(floor g)|
%
\just={ absorption: |(fR g) . (ceil h) = ceil(g.h)| }
%
	|ceil((floor f).(floor g))|
\qed
\end{eqnarray*}

\EXIT

\begin{eqnarray}
\start
    |pT ((X . Y)) = (kcomp (pT X) (pT Y))|
    \label{eq:210507b}
\more
    |pT id = eta|
    \label{eq:210912a}
\more
    |pT f = eta . f|
    \label{eq:211228a}
\more
    |pT bot = const mzero|
    \label{eq:210912b}
\more
    |pT ((cup Y X)) a = (mplus ((pT Y) a) ((pT X) a))|
    \label{eq:210722a}
\more
    |pT ((cup f g)) a = {f a, g a}|
\more
    |pT ((cap X Y)) a = { b || b ins (pT X a) && b ins (pT Y) a}|
    \label{eq:210723a}
\more
    |pT ((X/Y)) a = { b || rcb forall c (c ins (pT (conv Y)) a) (b ins (pT X) c)}|
    \label{eq:210726a}
\more
    |pT ((X >< Y)) (a, b) = { (c, d) || c ins (pT X a) land d ins (pT X b) }|
    \label{eq:211226a}
\end{eqnarray}


\section{Relational hylos and their adjoints}

Example: \textbf{list membership}

\begin{eqnarray*}
|lcbr(a inl [] = False)(a inl (h:t) = (a = h) |||| a inl t )|
\end{eqnarray*}
\emskip
is the relational \textbf{hylo}

\begin{eqnarray}
|inl = either bot (cup p1 (inl . p2)) . (conv inT)|
	\label{eq:211026c}
\end{eqnarray}
\vfill
\textbf{NB}: not the relational \textbf{cata} |inl = cata(either bot(cup p1 p2))| that one might feel tempted to write... which is the empty relation!
%

\paragraph{Relational hylos and their adjoints}
Not a cata... But perhaps this hylo (\ref{eq:211026c}) has an \textbf{adjoint} cata? Yes, since
\begin{eqnarray*}
|inl = either bot (cup p1 (inl . p2)) . (conv inT)|
\end{eqnarray*}

unfolds into \emskip

\begin{quote}
|
inl . inT  = (underbrace (either bot (either id id)) R) .
	(underbrace (id + (id + inl)) (fG inl)) .
	(underbrace (id + ((cup (i1.p1)(i2.p2)))) vPhi) 
|
\end{quote}
where the core of
\begin{eqnarray*}
	|vPhi : underbrace (1 + A >< Seq A) (fF (Seq A)) -> underbrace (1 + (A + Seq A)) (fG (Seq A))|
\end{eqnarray*}
\emskip
is the (disjoint) union of the two projections |cup p1 p2|.
%

\paragraph{Relational hylos and their adjoints}
What is its adjoint? Not surprisingly:
\begin{eqnarray}
\start
	|pT inl = cata(pT(either bot (cup p1 (ins.p2))))|
	\nonumber
%
\just\equiv{ |fP|-transpose of coproducts (\ref{eq:210220c}) }
%
	|pT inl = cata(either (pT bot) (pT((cup p1 (ins.p2)))))|
	\nonumber
%
\just\equiv{ introduce |join| etc (see below) }
%
	|pT inl = cata(either (const {}) join)|
	\nonumber
%
\just\equiv{ introduce |elems| }
%
	|pT inl = elems|
	\label{eq:210826a}
%
\end{eqnarray}
where 
\begin{eqnarray*}
	|lcbr(elems [] = {})(elems(h:t)={h} `cup` elems t)|
\end{eqnarray*}

%

\paragraph{Relational hylos and their adjoints}

Details:

\begin{eqnarray*}
%
	|elems = cata(either (const {}) join)| 
&
	\equiv
&
	|lcbr(elems [] = {})(elems(h:t)={h} `cup` elems t)|
\end{eqnarray*}

where
\begin{quote}
	|join(a,s) = cup {a} s|
\end{quote}
since:
\begin{eqnarray*}
\start
	|join = pT((cup p1 (ins.p2)))|
\more
	|pT ((cup R S)) a = cup ((pT R a)) ((pT S a))|
\more
	|pT ins = id|
%
\end{eqnarray*}
etc.
\emskip
Usual way of doing list membership: |blue(inl = ins . elems)|, cf.\ (\ref{eq:210826a}). 
%

\EXIT

Let us investigate this ``chemistry" between |gc fL fR| and coproducts a little bit further:
\begin{eqnarray*}
\start
	|ceil k = either (ceil f)(ceil g)|
%
\just\equiv{ (\ref{eq:230302c}) }
%
	|lcbr(
		ceil k . i1 = ceil f
	)(
		ceil k . i2 = ceil g
	)|
%
\just\equiv{ fusion (\ref{eq:200204b}) twice }
%
	|lcbr(
		k . fL i1 = f
	)(
		k . fL i2 = g
	)|
%
%
\just\equiv{ coproducts }
%
\end{eqnarray*}

\begin{eqnarray*}
\start
	|k . underbrace(either (fL i1)(fL i2)) delta = either f g|
%
\just\equiv{ {isomorphism} |delta| (see below) }
%
	|k = either f g . (conv delta)|
%
\end{eqnarray*}
In summary:
\begin{eqnarray}
	|either (ceil f)(ceil g)| = |ceil(either f g . (conv delta))|
	\label{eq:210122a}
\end{eqnarray}
equivalent to
\begin{eqnarray}
	|floor(either (ceil f)(ceil g)) . delta| = |either f g|
	\label{eq:210122z}
\end{eqnarray}

\paragraph{Yoneda gets in}
Checking that |delta: fL X + fL Y -> fL(X+Y)| above is an isomorphism can be done in a calculational
style if framed in a wider setting, which will enable calculations with the
same flavour as \emph{indirect equality} (\ref{eq:230109b}) before.

Given a category |CC| and an object |A| of |CC|, let us think of the functor |sbs fH A : CC -> SC|
such that
	|sbs fH A X = SC(X,A)| and
	|sbs fH A m f = m . f|. This is called the Yoneda functor.\footnote{More precisely,
this is the \emph{contravariant} version of the Yoneda functor, the \emph{covariant} one being
obtained by swapping |X| with |Y| and |m| with |f| in |m . f|.} Among the properties of this
functor we find,
\begin{eqnarray}
	|SC(X,A) <~> SC(Y,A)| & \equiv & |X  <~> Y|
	\label{eq:230303b}
\end{eqnarray}
i.e.\ it is \emph{faithful}. By downgrading |SC| to the preorder category of section 
\ref{sec:230302a} (where adjunctions become Galois connections, as we have seen),
we see that (\ref{eq:230303b}) generalizes (\ref{eq:230109b}). Let us use the
calculation layout of that section to prove
\begin{eqnarray}
\start |fL(X + Y) <~> fL X + fL Y|
	\label{eq:230303c}
\end{eqnarray}
for any |adj fL fR|:
%
\begin{eqnarray*}
\start
|
	rarrow (fL(X+Y)) m C
|
\just\equiv{ |adj fL fR| }
|
	rarrow (X+Y) (ceil m) (fR C)
|
\just\equiv{ |adj ((+)) vDelta| }
|
	lcbr(rarrow X (ceil m . i1) (fR C))(rarrow Y (ceil m . i2) (fR C))
|
\just\equiv{ |adj fL fR| twice }
	%eqnnewpage 
|
	lcbr(rarrow (fL X) (floor(ceil m . i1)) C)(rarrow (fL Y) (floor(ceil m . i2)) C))
|
\just\equiv{ |adj ((+)) vDelta|; (\ref{eq:200204b}) twice }
|
	longrarrow (fL X + fL Y) (either (m . fL i1)(m . fL i2)) C
|
\just\equiv{ fusion (\ref{eq:200204b}) for |adj ((+)) vDelta| }
|
	longrarrow (fL X + fL Y) (m . (either (fL i1)(fL i2))) A
|
\just{::}{ (\ref{eq:230303b}) }
|
	longrarrow (fL X + fL Y) (delta = either (fL i1)(fL i2)) (fL(X + C))
|
\qed
\end{eqnarray*}
As an example, recall |adj ((_><K)) ((expn _ K))| (\ref{eq:230208h}),
in which case (\ref{eq:230303c}) becomes the well-known natural isomorphism
|(X + Y) >< K <~> X >< K + X >< K| and |delta = either (fL i1)(fL i2)| is
|either (i1 >< id)(i2><id)|. Its converse is the \emph{distributor}
|distl : (X + Y) >< K ->  X >< K + X >< K|. Moreover, 
(\ref{eq:210122a}) becomes
\begin{eqnarray}
	|either (curry_ f)(curry_ g) = curry_((either f g . distl))|
	\label{eq:210127b}
\end{eqnarray}

\begin{eqnarray*}
|
	(ins) . (either (pT R)(pT S)) = either R S
|
\end{eqnarray*}

\begin{eqnarray}
\xarrayin{
	|lcbr3(
		fJ X = X
	)(
		y(fJ k)x <=> y = k x
	)(
		fR X = fP X = { S || S `sse` X }
	)|
&&
	|lcbr3(
		epsilon = (ins)
	)(
		ceil R = pT R
	)(
		y (floor k)x = y ins (k x)
	)|
}
	\label{eq:230209a}
\end{eqnarray}


\footnote{Also known as ``adjoint fold" theorem \citep{Hi13}.}




%
\paragraph{Relational catas thanks to |gc fJ fP|}
|floor _|-shunting again:
\begin{eqnarray}
\myxym{
	|muF|
		\ar[d]_{|X|}
&
&
	|fF muF|
		\ar[ll]_-{|inT|}
		\ar[d]_{|fF X|}
\\
	|A|
&
&
	|fF A|
		\ar[ll]^{|R|}
}
&|<=>|& 
\myxym{
	|muF|
		\ar[d]_{|(pT X)|}
&
&
	|fF muF|
		\ar[ll]_{|inT|}
		\ar[d]_{|fF (pT X)|}
\\
	|fP A|
&
&
	|fF fP A|
		\ar[ll]^{|pT((R . fF epsilon . phi))|}
}
\nonumber\\\nonumber\\
\end{eqnarray}
\emskip
%

\paragraph{Eilenberg-Wright Lemma}
Put in another way:
\emskip
The equivalence




\paragraph{Relational catas thanks to |gc fJ fP|}
Recall (relational side):
\begin{eqnarray*}
	|lcbr(fJ X = X)(y(fJ f)x <=> y = f x)|
\end{eqnarray*}
\emskip
Because |fJ X = X| we can choose |fG X = fF X| and |phi = id|.
\emskip
\emph{Functor} |fF| extends to a \emph{relator} |fG|.
\emskip
As is usual, we use the same symbol for functor and relator, greatly simplifying
diagrams:

\paragraph{Many applications!}
Many results in the literature arise as instances of this theorem.

% The so-called \emph{structural recursion theorem} (Thm. 3.1), pag. 73 \cite{BM97} is a special case
\emskip
\fbox{
\includegraphics[width=1.0\textwidth]{srt.png}
}
\vskip 3pt
Details:
\begin{eqnarray*}
	|gc fL fR| := |(><K) `adj` ((expn _ K))|
&&
	|lcbr(fF X = 1 + A >< X)(fG X = (1+K) + A>< X)|
\more
	|phi = (id+assocr) . distl|
\end{eqnarray*}

%

 computation may be paired with s 

ZZZZ

\paragraph{|env _| fusion, reflection and so on}
\emph{fusion}:
\begin{eqnarray}
	|k . (env f) = env g|
&
	\wider\implied
&
	|k . f = g . fG k|
\end{eqnarray}
\emph{reflection}  (in case |phi| is an \emph{isomorphism}):
\begin{eqnarray}
\start
	|env alpha = id|
\end{eqnarray}
where |alpha| abbreviates |fL inT . conv phi| in
\begin{eqnarray*}
	|f = env h|
&
	\wider\equiv
&
	|f . (underbrace(fL inT . conv phi) alpha) = h . fG f|
\end{eqnarray*}
\emph{cancellation}:
\begin{eqnarray*}
\start
	|env h . alpha = h . fG (env h)|
\end{eqnarray*}
%

\paragraph{Relational catas thanks to |gc fJ fP|}
|fG|-hylo (\emph{relational}):
\begin{eqnarray*}
\xymatrix{
	|muF|
		\ar[d]_{|X|}
&
&
	|fG muF|
		\ar[d]_{|fG X|}
&
	|fF muF|
		\ar@@/_1.5pc/[lll]_-{|fJ inT|}
		\ar[l]^{|phi|}
\\
	|A|
&
&
	|fG A|
		\ar[ll]_{|R|}
}
\end{eqnarray*}

\emskip

Adjoint |fF|-cata (\emph{functional}):
\begin{eqnarray*}
\myxym{
	|muF|
		\ar[d]_{|(pT X)|}
&
&
&
	|fF muF|
		\ar[lll]_{|inT|}
		\ar[d]_{|fF (pT X)|}
\\
	|fP A|
&
&
&
	|fF fP A|
		\ar[lll]_{|pT((R . fG ins . phi))|}
\\
	|A|
&
	|fG A|
		\ar[l]_{|R|}
&
	|fG fP A|
		\ar[l]_{|fG ins |}
&
	|fF fP A|
		\ar[l]_{|phi|}
}
\end{eqnarray*}
%

\paragraph{Relational catas thanks to |gc fJ fP|}
Recall (relational side):
\begin{eqnarray*}
	|lcbr(fJ X = fJ X)(y(fJ f)x <=> y = f x)|
\end{eqnarray*}

\vskip 3em
$\arrayin{
	\framebox(140.00,20.00)[cc]{  relational |fG|-recursion}
&&
	\framebox(140.00,20.00)[cc]{  functional |fF|-recursion}
\\
\xymatrix{
	|muF|
		\ar[d]_{|X|}
&
&
	|fG muF|
		\ar[d]_{|fG X|}
&
	|fF muF|
		\ar@@/_1.5pc/[lll]_-{|fJ inT|}
		\ar[l]^{|phi|}
\\
	|A|
&
&
	|fG A|
		\ar[ll]^{|R|}
}
&& 
\myxym{
	|muF|
		\ar[d]_{|(pT X)|}
&
&
	|fF muF|
		\ar[ll]_{|inT|}
		\ar[d]_{|fF (pT X)|}
\\
	|fP A|
&
&
	|fF fP A|
		\ar[ll]^{|pT((R . fG epsilon . phi))|}
}
}$ % arrayin
%


% \paragraph{Comonad} %

xxx
\begin{eqnarray}
\mbox{ \emph{Functor}}: &&
	|expn f K = (f.)|
\end{eqnarray}
yyy

\begin{eqnarray*}
\myxym{
	|SC|
		\ar@@/_1.0pc/[r]_-{|vDelta|}
&
	|expn SC 2|
		\ar@@/_1.0pc/[l]_-{|(><)|}
\\
	|B><A|
&
	|fL(B><A)|
	\ar[r]^-{|(p1,p2)|}
&
	(B,A)
\\
C
	\ar[u]^{|k = split f g|}
&
	|fL C|
	\ar[u]^{|(k,k)|}
	\ar[ru]_{|(f,g)|}
}
	%label{eq:200206a}
\end{eqnarray*}

\begin{eqnarray*}
\myxym{
	|expn SC 2|
		\ar@@/_1.0pc/[r]_-{|(+)|}
&
	|SC|
		\ar@@/_1.0pc/[l]_-{|vDelta|}
\\
	|(A,A)|
&
|A+A|
	\ar[r]^-{|codelta|}
&
	|A|
\\
	|(C,D)|
	\ar[u]^{|(f,g) = (k.i1,k.i2)|}
&
	|C+D|
	\ar[u]^{|f+g|}
	\ar[ru]_{|k|}
}
	%label{eq:200206a}
\end{eqnarray*}

----------


As with \emph{GC}s, universal property can be expressed in a dual way, as follows:

\begin{eqnarray*}
\start
	|k = floor f|
%
\just\equiv{ identity; homset isomorphism }
%
	|ceil(k.id) = f|
%
\just\equiv{ absorption (\ref{eq:211017a}) ; |ceil id = eta| }
%
	|underbrace((fR k) . eta)(ceil k) = f|
%qed
\end{eqnarray*}
%

\paragraph{Dual formulation}

Diagram:

\begin{itemize}
\item	|fL| --- left adjoint functor
\item	|fR| --- right adjoint functor
\end{itemize}

\paragraph{(``Lossy'') natural transformations}
xxx The same \emph{game} of (\ref{eq:221027b}), but in the \emph{champions league}
Champions league version:

----------

\(
\xymatrix{
	|a|
 		\ar[d]_{|f|}
&
	|muF|
 		\ar[d]_{|f|}
&
	|fF muF|
 		\ar[l]_{|a|}
 		\ar[d]^{|fF f|}
\\
	|b|
&
	|A|
&
	|fF A|
 		\ar[l]^{|b|}
}
\)

For non-functional programmers: 
\begin{verbatim}
int fib(int n)
{
   int x=1; int y=1; int i;
   for (i=1;i<=n;i++) {int a=x; x=x+y; y=a;}
   return y;
};
\end{verbatim}
%

%paragraph{Why mutual recursion matters --- binomial coefficient}
%

\paragraph{Why mutual recursion matters --- Catalan numbers}
\begin{eqnarray*}
	C_n = \frac{(2n)!}{(n+1)! (n!) }
	\label{eq:cat}
\end{eqnarray*}
\emskip
Lots of factorial (re)calculations --- try ``\emph{DP} artilhery"?
\emskip
No --- use \emph{mutual recursion} instead, based on this property:
\vfill
\begin{eqnarray*}
	C_{n+1} = \frac{4n+2}{n+2} C_n
\end{eqnarray*}
\emskip
Three functions in mutual recursion:
\vfill
\begin{eqnarray*}
\start	|c n| = C_n
\more 	|f n| = 4n+2
\more	|g n| = n+2
\end{eqnarray*}
\vfill
Then (next slide):
\vfill ~
%

\paragraph{Why mutual recursion matters --- Catalan numbers}
``Peano unfolding":
\begin{eqnarray*}
\start	|c 0 = 1|
\more	|c(n+1)| = \frac{|(f n)|\times|(c n)|}{|g n|}
\more 	|f 0| = 2
\more	|f(n+1)| = |f n + 4|
\more	|g 0| = 2
\more	|g (n+1)| = |g n + 1|
\end{eqnarray*}
Finally applying the law we get a \emph{for}-loop with 3 local variables:
\begin{code}
c = prj . (for loop init) where
   loop(c,f,g)=((f*c) `div` g,f+4,g+1)
   inic = (1,2,2)
   prj(c,_,_) = c
\end{code}
%


\paragraph{Why mutual recursion matters --- minimax}
\begin{center}
	\includegraphics[width=0.8\textwidth]{castor11.png}
\end{center}
%

\paragraph{Why mutual recursion matters --- minimax}
\href{https://en.wikipedia.org/wiki/Minimax}{Wikipedia}:
\begin{center}
	\includegraphics[width=0.8\textwidth]{minimax.png}
\end{center}
%

\paragraph{Why mutual recursion matters --- minimax}
\small
Mutual recursion (players |alice| and |bob|):
\begin{eqnarray*}
	|minimax = split alice bob|
\end{eqnarray*}
where
\begin{eqnarray*}
|lcbr(
	alice . inT = either id umax . fF bob
)(
	bob   . inT = either id umin . fF alice
)|
\end{eqnarray*}
\vfill
assuming
\begin{eqnarray*}
\start	|inT = either Leaf Fork|
\more	|fF f = id + f >< f|
\end{eqnarray*}
in the context of
\begin{quote}
|data LTree a = Leaf a || Fork (LTree a, LTree a)|
\end{quote}
(generalizable to other |fF| tree-structures).
%

\emskip
It comes handy in particular \emph{dynamic programming} situations.
\emskip
Examples follow in the Peano-recursion (|inT = either zero succ|) setting, whose catamorphisms (folds) are \emph{for}-loops,
\begin{eqnarray*}
	|for f i = cata(either (const i) f|
\end{eqnarray*}
that is
\begin{eqnarray*}
\start
	|for f i 0 = i|
\more
	|for f i (n+1) = f(for f i n)|
\end{eqnarray*}
Example (Church numerals): |church n f b = for f b n|.
%

\begin{eqnarray*}
\xymatrix{
	|muF|
 		\ar@@/^1pc/[rr]^{|conv inT|}
 		\ar[d]_{|ceil f|}
&
        \iso
&
	|fF muF|
 		\ar@@/^1pc/[ll]^{|inT|}
 		\ar[d]^{|fF(ceil f)|}
\\
	|fR A|
&&
	|fF fR A|
 		\ar@@/^1pc/[ll]^{|ceil h|}
}
\end{eqnarray*}
%
%

\paragraph{Dual formulation}

As with \emph{GC}s, universal property can be expressed in a dual way, as follows:

\begin{eqnarray*}
\start
	|k = floor f|
%
\just\equiv{ identity; homset isomorphism }
%
	|ceil(k.id) = f|
%
\just\equiv{ absorption (\ref{eq:211017a}) ; |ceil id = eta| }
%
	|underbrace((fR k) . eta)(ceil k) = f|
%qed
\end{eqnarray*}
%

\paragraph{Dual formulation}

Diagram:

\begin{eqnarray*}
	k = |floor f| \wider\equiv |underbrace (fR k . eta)(ceil k) = f|
& ~~~~ &
        \myxym{
	|fL B|
		\ar[d]_{|k=floor f|}
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
\end{eqnarray*}


Example (|gc fJ fP|):

\vskip -3em

\begin{eqnarray*}
	|R = underbrace(ins . f)(floor f)| \wider\equiv |underbrace (fP R . eta)(pT R) = f|
& ~~~~ &
        \myxym{
	|RC|
&
	|SC|
\\
	|B|
		\ar[d]_{|R=floor f|}
&
	|fP B|
		\ar[d]_{|fP R|}
&
	B
		\ar[l]_{|eta = { _ } |}
		\ar[ld]^{f}
\\
	C
&
	|fP C|
}
\end{eqnarray*}
%
\fbox{ CORTE FOI AQUI }

\EXIT

\paragraph{Relational catas thanks to |gc fJ fP|}
In summary, \emskip
\begin{quote}
	|((gc fJ fP)) + cata _|
\end{quote}
leads as to \emph{inductive relations}, with universal property:

\begin{eqnarray*}
	|X . inT = R . fF X| & |<=>| & |X = cata R|
\end{eqnarray*}
\emskip
Instance for \emph{Peano recursion}, where
\begin{quote}
|inT = either zero succ|
\\
|fF X = id + X|
\end{quote}
but this time relationally:
\begin{eqnarray*}
|X = cata R| & |<=>| &
	|lcbr(
	X . zero = R . i1
	)(
	X . succ = R . i2 . X
	)|
\end{eqnarray*}
%

\paragraph{Inductive relations thanks to |gc fJ fP|}
\small
Remember |blue(larrow Nat0 ((>=)) Nat0)|?
\emskip
Now we know how to define it over the Peano algebra,
\begin{eqnarray}
	|(>=) = cata(either top succ)|
	\label{eq:220629b}
\end{eqnarray}
where |top| is the largest relation of its type.
(|b top a = True| for all |a| and |b|.)
Unfolding (\ref{eq:220629b}):
\begin{eqnarray*}
\start
	|(>=) = cata(either top succ)|
%
\just\equiv{previous slide}
%
	|lcbr(
		(>=) . zero = top
	)(
		(>=) . succ = succ . (>=)
	)|
%
\just\equiv{ go pointwise (in |RC|) }
%
	|lcbr(
		y >= 0 = True
	)(
		y >= (x+1) = rcb exists z (y = z+1) (z >= x)
	)|
\qed
\end{eqnarray*}
%

\paragraph{Inductive relations thanks to |gc fJ fP|}
Remember list \emph{prefixes} and \emph{sublists}, |ys <<= xs| and |ys <== xs|?
\emskip
Now we have a way to define them properly:
\begin{eqnarray*}
\start
    |(pref) : (Seq A) <- (Seq A)|
\more
    |(pref) = cata(either nil (cup cons nil))|
	\label{eq:220629c}
\end{eqnarray*}
and
\begin{eqnarray*}
\start
	|(subseq) : (Seq A) <- (Seq A)| \nonumber
\more
	|(subseq) = cata(either nil (cup cons p2))|
	\label{eq:201227a}
\end{eqnarray*}
where  |lcbr(nil _ = [])(cons(h,t)=h:t)|
make up the \emph{initial algebra} of finite lists:
\begin{quote}
|inT = either nil cons|
\end{quote}
%

\paragraph{Inductive relations thanks to |gc fJ fP|}
Recalling |take|, now we see  where (\ref{eq:100101c}) came from:
\begin{eqnarray*}
\start
    |(pref) = cata(either nil (cup cons nil))|
%
\just\equiv{ universal property above }
%
    |lcbr((pref) . nil = nil)((pref).cons = ((cup cons nil)) . (id >< (pref)))|
%
\just\equiv{ go pointwise }
%
    |lcbr(y <<=  [] <=> y = [])(y <<= (h:t) <=> y = [] |||| (rcb exists t' (y=h:t') (t' <<= t))|
%
\end{eqnarray*}

%

\paragraph{Back to Galois connections --- in |RC|}
Remember GC \hfill |f b <<= a <=> b <= g a|? \hfill ~
\emskip
Now, every component of the GC ---  |f|, |g|, |(<<=)| and |(<=)| --- is a \emph{morphism} in |RC| and:
\begin{eqnarray}
\vcenter{\xymatrix@@R=4mm@@C=4mm{
	|A|
		\ar[dd]_{|conv f|}
&&
	|A|
		\ar[dd]^{|g|}
		\ar[ll]_{|(<<=)|}
\\
&	|=|
\\
	|B|
&&
	|B|
		\ar[ll]^{|(<=)|}
}}
\end{eqnarray}
\begin{center}
	|gc f g| ~~ |<=>| ~~ |conv f . (<<=) = (<=) . g|
\end{center}
\emph{NB}: |conv R| is the converse of |R|, which always exists in |RC| --- but not in the original |SC|.
%

\paragraph{More about this}

See e.g. my talk
\begin{quote}
\href{https://ifipwg21wiki.cs.kuleuven.be/IFIP21/OnlineOct21}{On the power of adjoint recursion}. Contributed talk to IFIP WG 2.1 Short On-line Meeting \#O6, 26 October 2021.
\end{quote}

Several more examples also in
\begin{quote}
Ralf Hinze.
\newblock Adjoint folds and unfolds --- an extended study.
\newblock \emph{Science of Computer Programming}, 78\penalty0 (11):\penalty0
  2108--2159, 2013.
\end{quote}
which inspired this work.
%

\paragraph{Wrapping up}
Original motivation was Ralf \cite{Hi13}:
\begin{quote}
(...) Finally, we have left the exploration of \emph{relational} adjoint (un)folds to future work.
\end{quote}
As shown, doing this leads to the algebra of inductive relations.
\emskip
Altogether,
\begin{itemize}
\item	I have learned to appreciate ``adjoint folds'' even more.
\item	\emph{Adjunctions} are a very fertile device for structuring the MPC --- \emph{teaching} them (inc.\ \emph{Galois connections}) should be mainstream.
\item	Current work: ``adjoint folds" in language semantics and in linear algebra.
\end{itemize}

%

\paragraph{Final quote}
\begin{quote}\em
"My experience has been that theories are often more structured and more interesting when they are based on the real problems; somehow they are more exciting than completely abstract theories will ever be."\em Donald \cite{Kn73}
\end{quote}

%

\appendix

\paragraph{Composing |gc ((+)) vDelta| and |gc fL fR|}
\begin{eqnarray*}
\myxym{
	|expn SC 2|
		\ar@@/_1.0pc/[r]_-{|(+)|}
&
	|SC|
		\ar@@/_1.0pc/[l]_-{|vDelta|}
		\ar@@/_1.0pc/[r]_-{|fL|}
&
	|CC|
		\ar@@/_1.0pc/[l]_-{|fR|}
}
\end{eqnarray*}

\begin{eqnarray*}
\myxym{
	|(fR A,fR A)|
&&
	|fR A+fR A|
	\ar[r]^-{|either id id|}
&
	|fR A|
\\
	|(C,D)|
	\ar[u]^{|(ceil f,ceil g)|}
&&
	|C+D|
	\ar[u]^{|(ceil f)+(ceil g)|}
	\ar[ru]_{|(ceil k)|}
\\
	|lcbr((ceil f)=(ceil k).i1)((ceil g)=(ceil k).i2)|
&
	\equiv
&
	|ceil k = either (ceil f)(ceil g)|
}
	%label{eq:200206a}
\end{eqnarray*}
%

\paragraph{``Chemistry" between |gc fL fR| and coproducts}
\begin{eqnarray*}
\start
	|ceil k = either (ceil f)(ceil g)|
%
\just\equiv{ universal property }
%
	|lcbr(
		ceil k . i1 = ceil f
	)(
		ceil k . i2 = ceil g
	)|
%
\just\equiv{ fusion (\ref{eq:200204b}) twice }
%
	|lcbr(
		k . fL i1 = f
	)(
		k . fL i2 = g
	)|
%
%
\just\equiv{ coproducts }
%
\end{eqnarray*}

\begin{eqnarray*}
\start
	|k . underbrace(either (fL i1)(fL i2)) delta = either f g|
%
\just\equiv{ {isomorphism} |delta| }
%
	|k = either f g . (conv delta)|
%
\end{eqnarray*}
%
How can we be sure |delta| is an isomorphism?
%

\paragraph{Limits and colimits}
Left adjoints |fL| preserve colimits, and thus \emph{coproducts}:
\begin{eqnarray*}
\myxym{
	|fL(A+B)|
 		\ar@@/^1pc/[rr]^{|conv delta|}
&
	\iso
&
	|fL A + fL B|
 		\ar@@/^1pc/[ll]^{|delta|}
}
&
	~~~~
&
	|delta = either (fL i1)(fL i2)|
\end{eqnarray*}
Diagram:
\begin{eqnarray*}\wine
\xymatrix{
	|fL A|
		\ar[r]^{i_1}
		\ar[dr]_{|fL i1|}
&
	|fL A|+|fL B|
		\ar[d]^{|delta|}
&
        |fL B|
		\ar[l]_{i_2}
		\ar[dl]^{|fL i2|}
\\
&
	|fL(A+B)|
}
\end{eqnarray*}
Example: \hfill (|fL X = X >< K|)
\begin{eqnarray*}
\myxym{
	|(A+B) >< K|
 		\ar@@/^1pc/[rr]^{|conv delta = distl|}
&
	\iso
&
	|A >< K + B >< K|
 		\ar@@/^1pc/[ll]^{|delta = undistl|}
}
\end{eqnarray*}
%

\paragraph{``Chemistry" between |gc fL fR| and coproducts}
Diagrams:
\begin{eqnarray*}\wine
\xymatrix{
	A
		\ar[ddr]_{|ceil h|}
		\ar[r]^-{|i1|}
&
	A+B
		\ar[dd]||(.34)*{|either (ceil h)(ceil k)|}
&
	B
		\ar[l]_-{|i2|}
		\ar[ddl]^{|ceil k|}
\\
\\
&
	|fR C|
}
&&
	\wine
\xymatrix{
&
	|fL(A + B)|
		\ar[d]^-{|conv delta|}
\\
	|fL A|
		\ar[dr]_{|h|}
		\ar[r]^-{|i1|}
&
	|fL A + fL B|
		\ar[d]_{|either h k|}
&
	|fL B|
		\ar[l]_-{|i2|}
		\ar[dl]^{|k|}
\\
&
	|C|
}
\end{eqnarray*}

%

\paragraph{Examples}
For
\hfill
	|blue(gc fL fR := (><K) `adj` ((expn _ K)))|
\hfill
~
\emskip
(covariant exponentials),
	|blue(either (ceil h)(ceil k) = ceil(either h k . (conv delta)))|
(\ref{eq:210122a}) becomes
\begin{eqnarray}
	|either (curry_ f)(curry_ g) = curry_((either f g . distl))|
	\label{eq:210127b}
\end{eqnarray}




For
\hfill
	|gc fL fR := fJ `adj` fP|
\hfill
~
\emskip
|delta| is the identity (relation) and so (\ref{eq:210122a}) becomes:
\begin{eqnarray}
	|pT(either R S) = either (pT R)(pT S)|
	\label{eq:210220c}
\end{eqnarray}

Thus \emph{relational coproducts} can be defined by:
\begin{eqnarray*}
	|either R S = ins . (either (pT R)(pT S))|
\end{eqnarray*}
%

\paragraph{Dual theorem}
\begin{eqnarray}
	|fR out . f = phi . fG f . h| & |<=>| & |floor f = ana(floor(phi . fG eta . h))|
	%label{eq:200204f}
\end{eqnarray}
Calculation:
\begin{eqnarray*}
\start
	|floor f = ana(floor(phi . fG eta . h))|
%
\just\equiv{ ana-universal }
%
	|out . floor f = fF(floor f) . floor(phi . fG eta . h)|
%	|ceil f . inT = ceil(h . fG eta . phi) . fF (ceil f)|
%
\just\equiv{ fusion (\ref{eq:211026b}) twice }
%
	|floor(fR out . f) = floor(fR fF (floor f) . phi . fG eta . h)|
%
\just\equiv{ isomorphism |floor _| ; natural-|phi| }
%
	|fR out . f = phi . fG fR (floor f) . fG eta . h|
%
\just\equiv{ functor |fG|; cancellation |fR (floor f) . eta = f| (\ref{eq:211026a}) }
%
	|fR out . f = phi. fG f . h|
\qed
\end{eqnarray*}
%

\paragraph{Dual theorem --- diagram}
|fG|-hylomorphism
\begin{eqnarray*}
\xymatrix{
	|fR muF|
		\ar@@/^1.5pc/[rrr]^-{|fR out|}
&
&
	|fG fR muF|
		\ar[r]^{|phi|}
&
	|fR fF muF|
\\
	|A|
		\ar[rr]_{|h|}
		\ar[u]_{|f|}
&
&
	|fG A|
		\ar[u]_{|fG f|}
}
\end{eqnarray*}
|fF|-anamorphism :
\begin{eqnarray*}
\xymatrix{
	|muF|
		\ar@@/^1.5pc/[rrr]^-{|out|}
&
&
&
	|fF muF|
\\
	|fL A|
		\ar[rrr]_{|floor(phi.fG eta.h)|}
		\ar[u]_{|floor f|}
&
&
&
	|fF fL A|
		\ar[u]_{|fF (floor f)|}
\\
&
	|floor f = ana (floor(phi.fG eta.h))|
}
\end{eqnarray*}
%

\nocite{Ol20}

\paragraph{Monads}
A \emph{monad}
\begin{quote}
	|monad fM A mu eta|
\end{quote}
arises from any adjunction, where:
\begin{code}
fM = fR . fL
eta = ceil id
mu = fR epsilon
\end{code}

Monadic laws come straight from the adjunction laws.
~~~~~~ ~ Unit:
\begin{eqnarray*}
\start
	|mu . eta = id = mu . fM eta|
%
\just\equiv{|mu = fR epsilon|, |eta = ceil id| etc}
%
	|fR epsilon . (ceil id) = id = fR epsilon . (fR fL eta)|
%
\just\equiv{absorption (\ref{eq:211017a}); functor |fR|  }
%
	|ceil(epsilon) = id = fR(epsilon . fL eta)|
%
\just\equiv{ reflection (\ref{eq:211017b}); cancellation (\ref{eq:210127a}) }
%
	|true|
\qed
\end{eqnarray*}
%
%

\paragraph{Monad}
Multiplication:
\begin{eqnarray*}
\start
	|mu . mu = mu . fM mu|
%
\just\equiv{|mu = fR epsilon|; functor |fR| }
%
	|fR(epsilon.epsilon) = (fR epsilon) . (fR (fL (fR epsilon)))|
%
\just\equiv{functor |fR| }
%
	|fR(epsilon.epsilon) = fR (epsilon . fL (fR epsilon))|
%
\just\equiv{ natural-|epsilon| (\ref{eq:210128b}) }
%
	|fR(epsilon.epsilon) = fR (epsilon . epsilon)|
\qed
\end{eqnarray*}
%

\paragraph{Kleisli composition}
From the usual definition of \emph{Kleisli composition},
|f .! g = mu . fM f . g|
(aside) we can infer:
	|blue(f.! g = ceil((floor f).(floor g)))|
\begin{eqnarray*}
\start
	f \kcomp g
%
\just={ |f .! g = mu . fM f . g|} %  (\ref{eq:001230a})
%
	µ \comp |fM f| \comp g
%
\just={ |fM=fR.fL|; |mu= fR epsilon| }
%
	|fR epsilon. (fR(fL f)) . g|
%
\just={ functor |fR| }
%
	|fR(epsilon. fL f) . g|
%
\just={ cancellation: |epsilon. fL f = floor f|; |g = ceil(floor g)| }
%
	|fR(floor f) . ceil(floor g)|
%
\just={ absorption: |(fR g) . (ceil h) = ceil(g.h)| }
%
	|ceil((floor f).(floor g))|
%
\end{eqnarray*}

xxxx


\begin{eqnarray*}
\start
	|ceil( X . Y)|	
%	
\just={ absorption: |(fR g) . (ceil h) = ceil(g.h)| }	
%	
	|fR X . ceil Y|	
%	
\just={ cancellation: |epsilon . fL f = X|; |g = ceil Y| }	
%	
	|fR(epsilon . fL f) . g|	
%	
\just={ functor |fR| }	
%	
	|fR epsilon . (fR(fL f)) . g|	
%	
\just={ |fM=fR.fL|; |mu= fR epsilon| }	
%	
	µ \comp |fM f| \comp g	
%	
\just={ |f .! g = mu . fM f . g|} %  (\ref{eq:001230a})	
%	
	f \kcomp g	
%
\end{eqnarray*}

\paragraph{Other relational hylos and their adjoints}

Example: \emph{list membership}

\begin{eqnarray*}
|lcbr(a inl [] = False)(a inl (h:t) = (a = h) |||| a inl t )|
\end{eqnarray*}
\emskip
is the relational \emph{hylo}

\begin{eqnarray}
|inl = either bot (cup p1 (inl . p2)) . (conv inT)|
	\label{eq:211026c}
\end{eqnarray}
\vfill
\emph{NB}: not the relational \emph{cata} |blue(inl = cata(either bot(cup p1 p2)))| that one might feel tempted to write... which is the empty relation!
%

\paragraph{Other relational hylos and their adjoints}
ot a cata... But perhaps this hylo (\ref{eq:211026c}) has an \emph{adjoint} cata? Yes, since
\begin{eqnarray*}
|inl = either bot (cup p1 (inl . p2)) . (conv inT)|
\end{eqnarray*}

unfolds into \emskip

\begin{quote}
|
inl . inT  = (underbrace (either bot (either id id)) R) .
	(underbrace (id + (id + inl)) (fG inl)) .
	(underbrace (id + ((cup (i1.p1)(i2.p2)))) vPhi)
|
\end{quote}
where the core of
\begin{eqnarray*}
	|vPhi : underbrace (1 + A >< Seq A) (fF (Seq A)) -> underbrace (1 + (A + Seq A)) (fG (Seq A))|
\end{eqnarray*}
\emskip
is the (disjoint) union of the two projections |cup p1 p2|.
%

\paragraph{Relational hylos and their adjoints}
What is its adjoint? Not surprisingly:
\begin{eqnarray}
\start
	|pT inl = cata(pT(either bot (cup p1 (ins.p2))))|
	\nonumber
%
\just\equiv{ |fP|-transpose of coproducts (\ref{eq:210220c}) }
%
	|pT inl = cata(either (pT bot) (pT((cup p1 (ins.p2)))))|
	\nonumber
%
\just\equiv{ introduce |join| etc (see below) }
%
	|pT inl = cata(either (const {}) join)|
	\nonumber
%
\just\equiv{ introduce |elems| }
%
	|pT inl = elems|
	\label{eq:210826a}
%
\end{eqnarray}
where
\begin{eqnarray*}
	|lcbr(elems [] = {})(elems(h:t)={h} `cup` elems t)|
\end{eqnarray*}

%

\paragraph{Relational hylos and their adjoints}

Details:

\begin{eqnarray*}
%
	|elems = cata(either (const {}) join)|
&
	\equiv
&
	|lcbr(elems [] = {})(elems(h:t)={h} `cup` elems t)|
\end{eqnarray*}

where
\begin{quote}
	|blue(join(a,s) = cup {a} s)|
\end{quote}
since:
\begin{eqnarray*}
\start
	|blue(join = pT((cup p1 (ins.p2))))|
\more
	|blue(pT ((cup R S)) a = cup ((pT R a)) ((pT S a)))|
\more
	|pT ins = id|
%
\end{eqnarray*}
etc.
\emskip
Usual way of doing list membership: |inl = ins . elems|, cf.\ (\ref{eq:210826a}).
%

\paragraph{(Contravariant) exponentials: |gc ((expn K _)) ((expn K _))|}
Isomorphism
\vskip -1em
\begin{eqnarray*}
\xymatrix{
	|fL A -> B|
 		\ar@@/^1pc/[rr]^{|ceil _|}
&
        \iso
&
	|A -> fR B|
 		\ar@@/^1pc/[ll]^{|floor _|}
}
\end{eqnarray*}
becomes (note the arrows reversed on the left side)
\begin{eqnarray*}
\xymatrix{
	|expn K  A <- B|
 		\ar@@/^1pc/[rr]^{|flip|}
&
        \iso
&
	|A -> expn K  B|
 		\ar@@/^1pc/[ll]^{|flip|}
}
\end{eqnarray*}
recalling (Haskell): \wine
\begin{verbatim}
flip :: (a -> b -> c) -> b -> a -> c
flip f b a = f a b
\end{verbatim}
%

\paragraph{(Contravariant) exponentials: |gc ((expn K _)) ((expn K _))|}
Contravariant \emph{self-adjunction}.
More formally:
\vskip 0.3ex
\begin{eqnarray*}
	|lcbr3(
		fL X = expn K X
	)(
		fR X = expn K X
	)(
		epsilon = fid = flip id
	)|
&&
	|lcbr(
		ceil f = flip f
	)(
		floor f = flip f
	)|
\end{eqnarray*}
\vskip -1.5em
\begin{eqnarray*}
|k = flip f| \wider\equiv |f = underbrace ((expn K k) . fid) (flip k)|
&&
\myxym{
	|SC|
		\ar@@/_1.0pc/[r]_-{|(expn K _)|}
&
	|expn SC op|
		\ar@@/_1.0pc/[l]_-{|(expn K _)|}
\\
	|expn K B|
&
	|expn K ((expn K B))|
		\ar[d]_{|(expn K k)|}
&
	B
		\ar[l]_-{|fid|}
		\ar[ld]^{f}
\\
	A
		\ar[u]^{|k=flip f|}
&
	|expn K A|
}
\end{eqnarray*}
%

\paragraph{(Contravariant) exponentials: |gc ((expn K _)) ((expn K _))|}
Contravariant \emph{exponential functor}:
\begin{eqnarray*}
|lcbr(
	expn K ((-)) : (A->B) -> (B->K) -> A -> K
	)(
	expn K k g = g . k
)|
&&
\myxym{
	|SC|
		\ar@@/_0.0pc/[r]^-{|(expn K (_))|}
&
	|expn SC op|
\\
	|B|
&
	|expn K B|
		\ar[d]_{|(expn K k)|}
&
\\
	A
		\ar[u]^{|k|}
&
	|expn K A|
}
\end{eqnarray*}
That is:

\begin{eqnarray}
	|expn K k = (.k)|
\end{eqnarray}
%


\part{References}

------

and
\emskip\footnotesize
\emph{NB:} assuming the sublist ordering |ys <== xs| such that e.g.
|``ab'' <==  ``acb''| holds but
|``ab'' <==  ``bca''| \emph{does not} hold.
%


Whole division \emph{specification}:
\begin{quote}\centering
 |a >< y <= x <=> a <= x `div` y|
\end{quote}
that is:
\begin{center}
	|a (underbrace(>< y) (f)) <= x <=> a <= x (underbrace(`div` y)(g)|
\end{center}
that is:
%
	\includegraphics[width=0.1\textwidth]{dichotomy.jpg}
	\includegraphics[width=0.3\textwidth]{rcb.png}
%
%
%


\ToDo{
\newpage
\begin{itemize}
\item	WADT 82 ... -- (algebraic) \emph{abstract data type} trend
\item	WADT 92 -- Hermida fibred \emph{adjunctions}
\item	WADT ... -- lots of other interesting topics!
\end{itemize}

Algebraic techniques in this talk:
\begin{itemize}
\item	\emph{Galois connections} as one of their most useful instances.
\end{itemize}
\emskip
Perspective:
\begin{itemize}
\item	mathematics of program construction.
\end{itemize}
}


\EXIT


\paragraph{Summary}

\begin{itemize}
\item	
	Revisiting the "\emph{adjoint (un)fold}" construction that Ralf \cite{Hi13} addressed in his landmark \emph{SCP} paper.

\item
	Instead of Mendler's (``triangular'' diagram) style I will use the more widespread ``rectangular'' style.

\item
	This makes the \emph{divide-and-conquer} (hylo) structure of algorithms more explicit.
\end{itemize}
%

\paragraph{In this talk}

Quoting Ralf \cite{Hi13}:

\begin{quote}
(...) Finally, we have left the exploration of \emph{relational} adjoint (un)folds to future work.
\end{quote}

I am going in this direction, exploiting adjoint folding in \emph{relation algebra}.

\emskip

For instance, a result known as the
\emph{Eilenberg-Wright Lemma}
is an instance of adjoint folding.
%

\paragraph{About this talk}
\begin{itemize}
\item
	Lots of diagrams, (hopefully) light-weight
\footnote{
	Material intended for future PhD course on these topics (\href{https://mapi.map.edu.pt/}{MAPi} PhD Programme).\\~\\
}
\item
	Tutorial styled: browsing the \emph{\wine ``chemistry of universals''} which leads to the main results
\item
	Focus on applications: Olivier Danvy's ``left Peano'' recursion; AoP structural recursion theorem; % continuation style folds;
Eilenberg-Wright Lemma; relational cata/hylomorphisms; quantamorphisms; denotational / SOS semantics adjunction, etc.
\end{itemize}
%

\paragraph{Important detail concerning |vPhi|}
Most natural transformations |phi: fR X -> fG X| in |RC| (ordered category of \emph{relations}) are \emph{lax}, i.e.\ weaker:
\begin{eqnarray}
|phi . (fF R) atmost (fG R) . phi|
\end{eqnarray}
However, very often such |phi| are equalities for functions (|R:=f|).
\emskip
Such is the case of |blue(cup (i1.p1)(i2.p2))| above --- that is, |blue(conv(either(conv p1)(conv p2)))|.
\emskip
(Details in the appendix.)
%

\paragraph{Peano folding}
Back to functions, "\emph{for} loops":

\begin{eqnarray*}
|lcbr 	(
	for s z 0 = z
	)(
	for s z (n+1) = s (for s z n)
	)
|
& |<=>|
&
	|for s z = cata(either (const z) s)|
	\label{eq:110305a}
\end{eqnarray*}
cf.
\begin{eqnarray*}
\wine
\myxym{
	|Nat0|
		\ar[d]_{|for s z|}
&
&
&
	|1 + Nat0|
		\ar[lll]_{|inT = either (const 0) succ|}
		\ar[d]^{|id + for s z|}
\\
	|A|
&
&
&
	|1 + A|
		\ar[lll]_{|either (const z) s|}
}
\end{eqnarray*}

%

\paragraph{``Left'' Peano folding (Danvy)}

``Tail recursion":

\begin{eqnarray*}
|lcbr 	(
	forl s z 0 = z
	)(
	forl s z (n+1) = forl s (s z) n
	)
|
\end{eqnarray*}

cf.

\begin{quote}\small\wine
\begin{verbatim}
a for_s_z (int n) {
  int r=z;
  int j;
  for (j=1;j<n+1;j++) {r=s(r);}
  return r;
};
\end{verbatim}
\end{quote}
\vfill

\footnotesize

% Olivier \cite{Da19}. Folding left and right over Peano numbers. J. Funct. Program., 29:e6.

%

\paragraph{``Left'' Peano folding (Danvy)}

\emskip
\fbox{
\includegraphics[width=1.0\textwidth]{danvy.png}
}

\vfill

\footnotesize


\paragraph{Left Peano folding (Danvy)}
As it turns out,
\begin{eqnarray*}
	|for = forl|
\end{eqnarray*}
follows from the \emph{adjoint recursion} theorem via contravariant exponentials:

\begin{center}
|blue(gc ((expn K _)) ((expn K _)))|
\end{center}

Let us recall:
\begin{eqnarray*}
\xymatrix{
	|expn K  A <- B|
 		\ar@@/^1pc/[rr]^{|flip|}
&
        \iso
&
	|A -> expn K  B|
 		\ar@@/^1pc/[ll]^{|flip|}
}
\end{eqnarray*}
(arrows reversed on the left side due to contravariance) where
\wine
\begin{verbatim}
flip :: (a -> b -> c) -> b -> a -> c
flip f b a = f a b
\end{verbatim}
%

\paragraph{Left Peano folding (Danvy)}
Details: \emskip

\begin{quote}
	|fF X = 1 + X| (Peano recursion)
\\
	|fL X = expn K X| (contravariant)
%\\
%	|fR X = expn K X|
\\
	|ceil f = flip f|
\\
	|epsilon = fid| ~~~~ (flipped identity)
\end{quote}

Concerning |fG| \vskip -1em

\begin{eqnarray*}
	|fL fF X = expn K (1+X) <~> K >< expn K X = K >< fL X = fG fL X|
\end{eqnarray*}

leads to  \vskip -1em
\begin{eqnarray*}
|fG X = K >< X|
\end{eqnarray*}
%

\paragraph{Diagrams}
\small
|(K><)|-\emph{hylo} (|expn CC op|):
\begin{eqnarray*}
\xymatrix{
	|expn K  Nat0|
		\ar@@/^1.5pc/[rrr]^-{|expn K inT = (. inT)|}
&
&
	|K><(expn K Nat0)|
		\ar[r]^{|phi|}
&
	|expn K (1+Nat0)|
\\
	|K|
		\ar[rr]_{|h|}
		\ar[u]^{|f|}
&
&
	|K><K|
		\ar[u]_{|id >< f|}
}
\end{eqnarray*}

\emskip

Adjoint |(expn K (-))|-\emph{cata} (|CC|):
\begin{eqnarray*}
\xymatrix@@R=1.5em{
	|Nat0|
		\ar[d]_{|flip f|}
&
&
&
	|1+Nat0|
		\ar[lll]_{|inT|}
		\ar[d]_{|id + flip f|}
\\
	|expn K K|
&
&
&
	|1+ expn K K|
		\ar[lll]_{|flip(phi . (id >< fid) . h)|}
\\
	|K|
		\ar[r]^-{|h|}
&
	|K><K|
		\ar[r]^-{|id >< fid |}
&
	|K><expn K (expn K K)|
		\ar[r]^-{|phi|}
&
	|expn K (1+ expn K K)|
}
\end{eqnarray*}
%

\paragraph{Diagrams (|phi|)}
Concerning
\begin{eqnarray*}
\xymatrix{
&
&
	|K><(expn K Nat0)|
		\ar[r]^{|phi|}
&
	|expn K (1+Nat0)|
}
\end{eqnarray*}
let us flip it:
\begin{eqnarray}
\xymatrix@@R=3em{
	|1|
		\ar[r]^{|i1|}
		\ar[dr]_{|const p1|}
&
	|1+Nat0|
		\ar[d]^{|flip phi|}
&
	|Nat0|
		\ar[l]^{|i2|}
		\ar[dl]^-{|flip p2|}
\\
	\label{eq:phi-flipped}
&
	|expn K (K >< expn K Nat0)|
}
&&
	|phi = flip( either (const p1)(flip p2))|
\\
	\nonumber
\end{eqnarray}

\emph{NB}: It can be shown that |phi| is nothing else than \vskip -1em

\begin{eqnarray}
	|phi(k,f) = either (const k) f|
	\label{eq:211022a}
\end{eqnarray}

%

\paragraph{Reverse specifying |forl|}
\begin{eqnarray*}
\start
	|lcbr(
	   forl s z 0 = z
	)(
	   forl s z (n+1) = forl s (s z) n
	)|
%
\just\equiv{ introduce shorthand |f=forl s| }
%
	|lcbr(
	   f z 0 = z
	)(
	   f z (n+1) = f (s z) n
	)|
%
\just\equiv{ drop |n| ; Peano algebra |inT = either (const 0) succ| }
%
	|f z . inT  = either (const z)(f (s z))|
%
\just\equiv{introduce |phi(k,f) = either (const k) f| (\ref{eq:211022a}) }
%
	|f z . inT  = phi(z, f (s z))|
%
\end{eqnarray*}
%

\paragraph{Reverse specifying |forl|}

\vskip -2em

\begin{eqnarray*}
\start
%
\just\equiv{ introduce |(.inT)| and  drop |z| }
%
	|(.inT).f = phi.(split id (f.s))|
%
\just\equiv{ introduce |h = split id s|; products}
%
	|(.inT).f = phi . (id >< f).h|
%
\just\equiv{ recall |fG f = id><f| and contravariant |fL f = expn K f = (.f)| }
%
	|fL inT .f = phi . (fG f).h|
%
\end{eqnarray*}
for |h = split id s|.
\vskip 1em
By the ``adjoint fold" theorem, |f| (i.e. |forl s|) is \vskip -1em

\begin{eqnarray*}
	|forl s = flip (cata(flip(phi . (id >< fid) . (split id s))))|
\end{eqnarray*}

%

\paragraph{Towards |forl = for|}
Since
\begin{eqnarray}
	|phi . (id >< fid) . (split id s) = either (const id) ((.s))|
\end{eqnarray}
(proof in the appendix) we have:
\begin{eqnarray}
	|flip (forl s)| \wider= |cata(either (const id) ((.s)))| \wider= |for (.s) id|
	\label{eq:flip-forl}
\end{eqnarray}
\vskip 1ex
Then |for = forl| holds:
\small
\begin{eqnarray*}
\start
	|for s= forl s|
%
\just\equiv{ isomorphism |flip|; (\ref{eq:flip-forl}) }
%
	|flip(for s) = cata(either(const id)((.s)))|
%
\just\equiv{ cata-universal }
%
	|lcbr(
		flip(for s) . (const 0) = (const id)
	)(
		flip(for s) . succ  = (.s).flip(for s)
	)|
\end{eqnarray*}
%

\paragraph{|forl = for|}
\small\vskip -1em
\begin{eqnarray*}
\start
%
\just\equiv{ |flip| absorption and fusion }
%
	|lcbr(
		flip(for s) . (const 0) = (const id)
	)(
		flip((.succ). for s) = flip(for s . s)
	)|
%
\just\equiv{ drop |flip|; go one-step pointwise }
%
	|lcbr(
		flip(for s) 0 = id
	)(
		for s z . succ = for s (s z)
	|
%
\just\equiv{ |for s (s z) = s . (for s z)| easy to prove (appendix); pointwise }
%
	|lcbr(
		for s z 0 = z
	)(
		for s z(n+1) = s(for s z n)
	)|
%
\just\equiv{ definition of |for s z| }
%
	|
		true
	|
\qed
\end{eqnarray*}
%

\paragraph{Other instances: |pfold|}
\small
The uniqueness of the |pfold| combinator by Alberto \cite{Pa02} is
granted by the generic adjoint fold theorem for |blue(fG = (><K) . fF)|
(|phi = split tau p2| assuming |fF| has \emph{strength} |tau|):

\begin{eqnarray*}
\wine
\xymatrix{
	|muF><K|
		\ar[d]_{|pfold f|}
&
&
	|fF(muF><K)><K|
		\ar[d]^{|fF (pfold f) >< id|}
&
	|fF muF >< K|
		\ar@@/_1.5pc/[lll]_-{|inT >< id|}
		\ar[l]^-{|phi|}
\\
	|A|
&
&
	|fF A><K|
		\ar[ll]_{|h|}
}
\end{eqnarray*}

\emskip

Adjoint |fF|-cata:
\begin{eqnarray*}
\wine
\myxym{
	|muF|
		\ar[d]_{|(curry_ f)|}
&
&
&
	|fF muF|
		\ar[lll]_{|inT|}
		\ar[d]^{|fF ((curry_ f))|}
\\
	|(expn A K)|
&
&
&
	|fF(expn A K)|
		\ar[lll]^{|curry_((h . (fF ap >< id) . phi))|}
}
\end{eqnarray*}
%

\paragraph{Other instances: quantamorphisms}
	Quantamorphisms \citep{NBO21}:
\begin{itemize}
\item	Typed matrices |Q : muF >< A -> A| that are |p1|-complemented, |split p1 Q : muF >< A -> muF >< A|, so as to achieve \emph{reversibility}
\item	Then generalized to arbitrary \emph{unitary} matrices (= quantum computations)
\item[]
\begin{eqnarray*}
|fstcbox muF A (Q) muF A|
\end{eqnarray*}
\item[]
\item	Simulations use \emph{adjoint folds} granted by the \emph{vector space} monad
\item	Restricted to 1st degree polynomial |fF| (no-cloning...)
\end{itemize}
%

\paragraph{Other instances: SOS}
\emph{Structural operational semantics} ({SOS}) rules, e.g.
\begin{eqnarray*}
	\frac{|lcbr((red s,s) ~> s')((red ss,s') ~> s'')|}{|((red({s;ss})),s) ~> s''|}
\end{eqnarray*}
\emskip
In general, relations of type
\begin{eqnarray*}
|(~>) : muF >< S -> S|
\end{eqnarray*}
where |(~>)| is structurally decomposed over the (abstract) \emph{syntax} of language |mF|, captured by |inT : fF muF -> muF|

%

\paragraph{The ``Alloy adjunction"}
% [ Cf.\  Naumann \cite{Na16} and \cite{Ol08a} , 20151202 ] For relations, the above generalizes the power transpose to

Relational ``currying" leads to relation-valued functions: \vskip -1ex
\begin{eqnarray*}
	|B >< C -> D| & |<~>| & |(expn ((C->D)) B)|
\end{eqnarray*}

(In Alloy, relational type |B >< C -> D| is written |B -> C -> D|.)

\emskip

In fact:

\begin{eqnarray*}
\myxym{
	|B >< C -> D|
		\ar[r]_{|pT()|}
		\ar@@/^1.5pc/[rrr]^-{|ceil _|}
&
	|expn (Pow D)(B><C)|
		\ar[r]_{|curry_()|}
&
	|expn ((expn (fP D) C)) B|
		\ar[r]_{|expn  ((ins.)) B|}
&
	|expn ((C -> D)) B|
\\
}
\end{eqnarray*}
%

\paragraph{Folding over the ``Alloy adjunction"}
|fG| relational hylo (|RC|):
\begin{eqnarray*}
\wine
\xymatrix{
	|muF><C|
		\ar[d]_{|X|}
&
&
	|fG (muF><id)|
		\ar[d]_{|fG X|}
&
	|fF muF >< C|
		\ar@@/_1.5pc/[lll]_-{|inT><C|}
		\ar[l]^{|phi|}
\\
	|D|
&
&
	|fG D|
		\ar[ll]_{|R|}
}
\end{eqnarray*}

\emskip

Adjoint functional |fF|-cata (|SC|):
\begin{eqnarray*}
\wine
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
	|C -> D|
&
&
&
	|fF (C->D)|
		\ar[lll]_{|ceil(h . fG epsilon . phi)|}
}
\end{eqnarray*}
%

\paragraph{SOS}
|S| denotes the state of the \emph{abstract machine}:
\begin{eqnarray*}
\wine
\xymatrix{
	|muF><S|
		\ar[d]_{|(~>)|}
&
&
	|fG (muF><id)|
		\ar[d]_{|fG(~>)|}
&
	|fF muF >< id|
		\ar@@/_1.5pc/[lll]_-{|inT><id|}
		\ar[l]^{|phi|}
\\
	|S|
&
&
	|fG S|
		\ar[ll]^{|sbs(~>)R|}
}
\end{eqnarray*}
\emskip
SOS rules structurally derived by expanding

\begin{eqnarray*}
	\frac{|lcbr3(t = inT ts)(phi(ts,s) (fG(~>)) ss)(ss (sbs(~>) R) s')|}{|(t,s) ~> s'|}
\end{eqnarray*}
%

\paragraph{SOS}
Abstract SOS rule
\begin{eqnarray*}
	\frac{|lcbr3(t = inT ts)(phi(ts,s) (fG(~>)) ss)(ss (sbs(~>) R) s')|}{|(t,s) ~> s'|}
\end{eqnarray*}
is the pointfree
\begin{eqnarray*}
	|underbrace(((sbs (~>) R)) . fG (~>) . phi . (conv inT >< id))(fH (~>)) atmost (~>)|
\end{eqnarray*}
\emskip
\emskip
So, |(~>)| is a \emph{pre-fixpoint} of |fH|.
%

\paragraph{SOS}
In summary:
\vskip 0pt
\begin{eqnarray*}
\xarrayin{
	|underbrace((~>))(SOS)|
&
	\supseteq
&
	\mu|fH|
&
	=
&
	|floor(
		underbrace(
			cata(ceil(((sbs (~>) R)) . fG epsilon . phi))
		)(DS)
	)|
}
\end{eqnarray*}
\emskip
That is,
\begin{quote}
The adjoint fold of a (relational) \emph{SOS} is a correct by construction \emph{denotational semantics} (DS) for the same language.
\end{quote}
\small
\rule{0pt}{1em}\hfill (Sketchy...)
%

\paragraph{Naturality of |conv(either(conv p1)(conv p2))| for functions}
Type:
\begin{eqnarray*}
	|conv(either(conv p1)(conv p2)) : (A >< Seq A) -> (A + Seq A)|
\end{eqnarray*}
Proof:
\begin{eqnarray*}
\start
	|conv(either(conv p1)(conv p2)) . (f >< Seq f)
	=
	(f + Seq f) . conv(either(conv p1)(conv p2))|
%
\just\equiv{converses}
%
	|((conv f) >< (conv((Seq f)))) . (either(conv p1)(conv p2))
	 =
	 (either(conv p1)(conv p2)) . (conv f + conv((Seq f)))|
%
\just\equiv{coproducts and converses}
%
	|either(
		conv((p1 . (f >< Seq f)))
	)(
		conv((p2 . (f >< Seq f)))
	)
	 =
	either(
		conv((f . p1))
	)(
		conv((Seq f . p2))
	)|
%
\just\equiv{products and converses}
%
	|either(
		conv((f . p1))
	)(
		conv((Seq f . p2))
	)
	 =
	 either(
		conv((f . p1))
	)(
		conv((Seq f . p2))
	)|
\end{eqnarray*}
%

\paragraph{Proof of |phi . (id >< fid) . (split id s) = either (const id) ((.s))|}
\label{pg:211024a}
\small
\begin{eqnarray*}
\start
	|flip(phi . (id >< fid) . (split id s))|
%
\just={ products; absorption: |expn K g . flip h = flip (h.g)|} % (\ref{eq:expn-abs})
%
	|expn K (split id (fid.s)) . flip phi|
%
\just={ (\ref{eq:phi-flipped}) ; |expn K f = (. f)| }
%
	|(.(split id (fid.s))) . either (const p1) (flip p2)|
%
\just={ coproducts; constant functions; absorption (\ref{eq:phi-flipped}) }
%
	|either (const id) (flip(p2.(split id (fid.s))))|
%
\just={ products; |flip(fid . h) = (.h)| } % (\ref{eq:expn-fun})
%
%	|either (const id) (flip(epsilon.s))|
%
%\just={ exponential functor (\ref{eq:expn-fun}) }
%
	|either (const id) ((.s))|
\qed
\end{eqnarray*}
%

\paragraph{|for s (s z) = s . (for s z)|}
\begin{eqnarray*}
\start
	|cata(either(const (s z)) s) = s . cata (either (const z) s)|
%
\just\implied{fusion}
%
	|lcbr(
		s . (const z) = const (s z)
	)(
		s.s = s.s
	)|
%
\just\equiv{ constant functions}
%
	|true|
\qed
\end{eqnarray*}

%

\paragraph{}
with lax-natural transformations

\begin{eqnarray*}
\start
	|pT X = cata(pT((R . fG ins . vPhi)))|
%
\just\equiv{ (\ref{eq:210111a}) }
%
	|X . fJ inT = R . fG ins . vPhi . fJ fF ((pT X))|
%
\just\implies{ {\wine lax}-natural-|vPhi|: |wine(vPhi . fJ (fF f) atmost fG (fJ f) . vPhi)| } % 200204c
%
	|X . fJ inT atmost R . fG ins . fG fJ ((pT X)).vPhi|
%
\just\equiv{ functor |fG|; cancellation |ins. fJ ((pT X)) = X| (\ref{eq:200204d}) }
%
	|X . fJ inT atmost R . fG X . vPhi|
%qed
\end{eqnarray*}
%

\paragraph{}
|f : A -> B| then build |f' : A -> expn C ((expn C B))|
\begin{code}
eta . f = flip id . f = flip (.f)

flip (.f) g a = g(f a)
\end{code}

Left Peano recursion Danvy

mapAccumRight
%

\paragraph{}
%

\paragraph{}
which is converted into the adjoint |fF|-catamorphism (righthand side):
\begin{eqnarray*}
\myxym{
	|muF|
&
&
&
	|fF muF|
		\ar[lll]_{|inT|}
\\
	|fL A|
		\ar[u]_{|(floor f)|}
		\ar[rrr]_{|floor(phi . fG eta . h)|}
&
&
&
	|fF fL A|
		\ar[u]_{|fF (floor f)|}
\\
	|A|
		\ar[r]_{|h|}
&
	|fG A|
		\ar[r]_{|fG eta |}
&
	|fG fR fL A|
		\ar[r]_{|phi|}
&
	|fR fF fL A|
\\
&
	|floor f = ana(floor(phi . fG eta . h))|
}
\end{eqnarray*}

%

\paragraph{}
\begin{itemize}
\item	Oleg programmers who draw their programs
\item	chemistry between universals
\item	CBJ book quotation
\item	Denotational to operational semantics shift
\item	...
\end{itemize}
%

\paragraph{Universal glueing}
loctite-universal-glue etc
%includegraphics[width=1.0\textwidth]{loctite-universal-glue.png}
%
%

\paragraph{Universals}
Universal morphism from |rarrow DC fL CC| to |X|:
\begin{eqnarray*}
	|k = ceil f|
	\wider\equiv
	|u . fL k = f|
& \rule{1em}{0pt}&
        \myxym{
	|DC|
		\ar[r]^{|fL|}
&
	|CC|
\\
	|B|
&
	|fL B|
		\ar[r]^{|u|}
&
	X
\\
	A
		\ar[u]^{|k= ceil f|}
&
	|fL A|
	\ar[u]^{|fL k|}
	\ar[ru]_{f}
}
\end{eqnarray*}
%

\paragraph{}
|f a <= x => rcb exists b (a<=b)(f b <= x)|

|a <= b <=> f a <= b| pre fixpoint, thus |f b <= b|.

\begin{eqnarray*}
\start
	|a<=b|
%
\just\implies{}
%
	|f a <= f b|
%
\just\implies{ since |f b <= b|}
%
	|f a <= b|
\qed
\end{eqnarray*}
LPP:
|mu f <= b <=. f b <= b|
\\
|f(mu f) <= mu f|

%

\paragraph{Adjunction |gc fL fR|}
\begin{eqnarray*}
\rule{1em}{0pt}
\vcenter{
\xymatrix@@R=2ex{
	|DC|
		\ar@@/_1pc/[dd]_{|fL|}
\\
	\dashv
\\
	|CC|
		\ar@@/_1pc/[uu]_{|fR|}
}}
& \rule{1em}{0pt} &
\vcenter{
\xymatrix{
	|CC(fL A,X)|
 		\ar@@/^1pc/[rr]^{|ceil|}
&
	\iso
&
	|DC(A,fR X)|
		\ar@@/^1pc/[ll]^{|floor|}
}}
\end{eqnarray*}
\emskip
Well known special case (preorders as ``thin" categories):

\begin{eqnarray*}
\rule{1em}{0pt}
\vcenter{
\xymatrix@@R=2ex{
	|(<==)|
		\ar@@/_1pc/[dd]_{|f|}
\\
	\dashv
\\
	|(<=)|
		\ar@@/_1pc/[uu]_{|g|}
}}
& \rule{1em}{0pt} &
\vcenter{
\xymatrix{
	|f a <= x|
 		\ar@@/^1pc/[rr]^{| |}
&
	\equiv
&
	|a <== g x|
		\ar@@/^1pc/[ll]^{| |}
}}
\end{eqnarray*}
\hfill \emph{Galois connections}
%

\section{Auxiliary lemmas and proofs}
\label{sec:150329b}
%label{sec:150329a}

\begin{lemma}
Given predicate |q| and function |f|,
\begin{eqnarray}
	|crflx((q.f))| = |dom((crflx q. f))|
	\label{eq:150924a}
\end{eqnarray}
holds, where
\begin{eqnarray}
	|dom R = cap id (conv R . R)|
	\label{eq:020624j}
\end{eqnarray}
is the \emph{domain} of |R|.
\\ Proof:
\begin{eqnarray*}
\start
	|crflx((q.f))|
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
	|cap id (syd (((kr id true)) .f) (((kr id q)) .f))|
%
\just={ (\ref{eq:160117a}) ; (\ref{eq:160111a}) }
%
	|cap id (conv f . ((cap id (syd true q))) .f)|
%
\just={ (\ref{eq:160121c}) }
%
	|cap id (conv f . (crflx q) .f)|
%
\just={ (\ref{eq:020624j}) }
%
	|dom((crflx q. f))|
\qed
\end{eqnarray*}
\end{lemma}
%
The rest of this appendix provides proofs of results left pending in the main text. % \label{sec:150329b}

\paragraph{Proof of property (\ref{eq:160115b})}
\emph{Part (|.=>|)} --- |syd R R| is always an equivalence relation, recall \secref{sec:170319a}.
\emph{Part (|<=.|)} --- assume that |R| is an equivalence relation. Then:
% ex 4.49 of page 108 \cite{BM97}
\begin{eqnarray*}
\start
	|R=R `rdiv` R|
%
\just\equiv{ since |sse R (R `rdiv` R)| just states that |R| is transitive (\ref{eq:020614b}) }
%
	|sse (R `rdiv` R) R|
%
\just\implied{ since |sse (R . (R `rdiv` R)) R| by (\ref{eq:020614b}) }
%
	|sse (R `rdiv` R) (R .(R `rdiv` R))|
	\eqnnewpage
%
\just\implied{ composition is monotone }
%
	|sse id R|
%
\just\equiv{ |R| is reflexive }
%
	|true|
%
\end{eqnarray*}
Then:
\begin{eqnarray*}
\start
	|R=syd R R|
%
\just\equiv{ (\ref{eq:160122a}) ; |conv R / (conv R) = (conv((R `rdiv` R))|}
%
	|R = cap (rdiv R R) (conv((R `rdiv` R))|
%
\just\equiv{ |R = R `rdiv` R| above }
%
	|R = cap R (conv R)|
%
\just\equiv{ since |R| is symmetric: |R = conv R| }
%
	|true|
\qed
\end{eqnarray*}

\paragraph{Proof of property (\ref{eq:150406c})}
 % in theorem \ref{th:150406b}:
\emph{Part ($\implies$)} --- show that |p = q.f| follows from |f.crflx p=crflx q.f|:
\begin{eqnarray*}
\start
	|p = q.f|
%
\just\equiv{ bijection between predicates and partial identities }
%
	|crflx p = crflx((q.f))|
%
\just\equiv{ (\ref{eq:150924a}) ; |f.crflx p=crflx q.f| assumed }
%
	|crflx p = dom((f.(crflx p)))|
%
\just\equiv{ |dom ((R . S )) = dom((dom R . S))|}
%
	|crflx p = dom((dom f.(crflx p)))|
%
\just\equiv{ |dom f = id|}
%
	|crflx p = dom((crflx p))|
%
\just\equiv{ domain of a partial identity is itself }
%
	|true|
\qed
\end{eqnarray*}
\emph{Part ($\implied$)} --- show that |f.crflx p=crflx q.f| holds assuming |p = q.f|:
\begin{eqnarray*}
\start
	|f . (crflx p)| = |crflx q . f|
%
\just\equiv{ substitution | p := q.f|; (\ref{eq:150924a}) }
%
	|f . (dom((crflx q.f)))| = |crflx q . f|
%
\just\implied{ |atmost|-antisymmetry, since |sse (dom((crflx q.f))) (conv f . crflx q . f| and |f.(conv f) atmost id|}
%
	|sse (crflx q . f) (f . (dom((crflx q.f))))|
%
\just\equiv{ |R = R . (dom R)| }
%
	|sse (crflx q . f.(dom((crflx q.f)))) (f . (dom((crflx q.f))))|
%
\just\implied{ monotonicity of composition }
%
	|crflx q| \wider\subseteq |id|
%
\just\equiv{|crflx q| is a partial identity}
%
	|true|
\qed
\end{eqnarray*}

\paragraph{Proof of property (\ref{eq:150407a-modified})}
By (\ref{eq:160112f}), |p leq f| is equivalent to the
existence of some |q| such that |p=q.f| holds, which in turn is equivalent to
|f . (crflx p)| = |crflx q . f| by (\ref{eq:150406c}). Then:
\begin{eqnarray*}
\start
	|(syd f f) . (crflx p)|
%
\just={ metaphors (\ref{eq:160117a}) ; (\ref{eq:150406c}) }
%
	|conv f . (crflx q) . f|
%
\just={ converses ; partial identities }
%
	|conv ((crflx q.f)) . f|
%
\just={ again (\ref{eq:150406c}) and (\ref{eq:160117a}) }
%
	|crflx p . (syd f f)|
\qed
\end{eqnarray*}
%----------------------------------------------

\paragraph{Proof of property (\ref{eq:150214b})}
Our strategy is indirect equality carried over the universal property of the shrinking operator (\ref{eq:100116d}):
\begin{eqnarray*}
\start
	X \subseteq S \shrunkby (|(crflx q)| \comp \top)
%
\just\equiv{ (\ref{eq:100116d}) ; (\ref{eq:060124a}) }
%
	X \subseteq S \land X\comp\conv S \subseteq |(crflx q)| \comp |syd bang bang|
	\eqnnewpage
%
\just\equiv{ shunting (\ref{eq:020617f}) ; converses }
%
	X \subseteq S \land X\comp\conv{(\bang\comp S)} \subseteq |(crflx q)| \comp \conv\bang
%
\just\equiv{ assume |S| entire, so |bang. S = bang| }
%
	X \subseteq S \land X\comp\conv\bang \subseteq |(crflx q)| \comp \conv\bang
%
\just\equiv{ shunting (\ref{eq:020617f}) ;  (\ref{eq:060124a}) }
%
	X \subseteq S \land X \subseteq |(crflx q).top|
%
\just\equiv{ (\ref{eq:071215a}) below }
%
%	X \subseteq S \cap |(crflx q)| \comp \top
%
	X \subseteq |(crflx q)|\comp S
%
\just{::}{ indirect equality}
%
	|shrunkby S ((crflx q . top)) = crflx q . S|
\qed
\end{eqnarray*}
The proof relies on a well-known property of partial identities,
given below together with its converse version:
\begin{eqnarray}
R\comp |crflx p| & = & R \cap \top\comp |crflx p|
\label{eq:081025a}
\\
|crflx q|\comp R & = & R \cap |crflx q|\comp \top
\label{eq:071215a}
\end{eqnarray}
see e.g.\ \cite{Ol08b}.
%-----------------------------------

\paragraph{Proof of Theorem \ref{th:150327a}}
Equality (\ref{eq:160118c}) follows immediately from (\ref{eq:150326b})
by fold-cancellation (\ref{eq:150402b}). Next we show the equivalence
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
This fact is used elsewhere \cite{Ol11} to reason about functional dependencies in databases.
Below we rephrase its proof using the power transpose |pT R| which maps
objects to their |R|-equivalence classes (\ref{eq:160115a}):
%format eR = "k_R "
\begin{eqnarray*}
\start
	|R . S atmost R . Q|
%
\just\equiv{ |R = (syd (pT R) (pT R))| (\ref{eq:160115a}) }
%
	|(syd (pT R) (pT R)) . S atmost (syd (pT R) (pT R)) . Q|
%
\just\equiv{ |(syd (pT R) (pT R)) = (conv (pT R)).(pT R)| (\ref{eq:160117a}) ; shunting (\ref{eq:020617e}) }
%
	|(pT R) . (conv (pT R)) . (pT R) . S  atmost (pT R) . Q|
%
\just\equiv{|f.(conv f).f=f| (difunctionality)}
%
	|(pT R) . S  atmost (pT R) . Q|
%
\just\equiv{ shunting (\ref{eq:020617e}) ; |(conv (pT R)) . (pT R) = (syd (pT R) (pT R)) = R| (\ref{eq:160115a})}
%
	|S  atmost R . Q|
\qed
\end{eqnarray*}
Finally, the proof that (\ref{eq:160120c}) is equivalent to (\ref{eq:150326a}) for the special case |R = syd f f|:
\begin{eqnarray*}
\start
	|h.(fF (syd f f)) atmost (syd f f) . h|	
%	
\just\equiv{ metaphor algebra: (\ref{eq:160117a}) etc }	
%	
	|fF(syd f f) atmost (syd(f.h)(f.h))|	
%	
\just\equiv{ injectivity preorder (\ref{eq:160112f}) ; relator |fF| (\ref{eq:160118d}) }	
%	
	|f . h <= fF f|	
\qed
\end{eqnarray*}
%-----------------------------------

\end{document}
