
\documentclass{article}
%
% Packages
%
\usepackage{isolatin1}
\usepackage[utf8x]{inputenc}
%usepackage{multicol}
\usepackage[all]{xy}
\usepackage{latexsym}
\usepackage{times}
\usepackage{fleqn}
\usepackage{wrapfig}
\usepackage{multicol}

\usepackage{exame}
%usepackage{exspace}
%usepackage{exfoot}
\usepackage{a4plus}
%
\usepackage{jnoxy}
\long\def\resolucao#1{}
\long\def\fbox#1{}
\def\mapsto[#1]{\ar@@{||->}[#1]}

% Imports de pdbc
\newlabel{ex:161113f}{{5.15}{183}{}{}{}}

%include polycode.fmt
%include lhsmacros.sty
%%%--Alloy
%%%format (either a b) = "\alt{" a "}{" b "}"
%%%format == = "\mbox{=}"
%%%format cozip = "\vartriangle"
%%%format curry f = "\trans{" f "}"
%%format ! = "\bang"
%%format (ceiling (f)) = "\mean{" f "}"
%%format (const a) = "\kons{" a "}"
%%format (const a) = "\underline{" a "}"
%%format (div a b) = "{" a "}\div{" b "}"
%%format (either (a) (b)) = "[" a "," b "]"
%%format (either (a) (b)) = "\alt{" a "}{" b "}"
%%format (flt (x))  = "\flt{" x "}"
%%format (grd p) = "{" p "}?"
%%format (grd p) = "{" p "}?"
%%format (iplus (a) (b)) = "{" a "}\plus{" b "}"
%%format (klei (x))  = "\klei{" x "}"
%%format (mblock (a) (b) (c) (d)) = "\mblock{" a "}{" b "}{" c "}{" d "}"
%%format (mean (f)) = "\mean{" f "}"
%%format (meither (a) (b)) = "[" a "|" b "]"
%%format (msplit (a) (b)) = "\msplit{" a "}{" b "}"
%%format (pcata f)   = "\scata{" f "}"
%%format (rcb q (v) (r) (t)) = "\rcb{"  q "}{" v "}{" r "}{" t "}"
%%format (split a b) = "\conj{" a "}{" b "}"
%%format (split a b) = "{" a "}\fork{" b "}"
%%format (sq (x)) = "{" x "}^2"
%%format (uncurry f) = "\uncurry{" f "}"
%%format ++ = "\mathbin{+\!\!+}"
%%format ++ = "\mbox{+\hskip-1ex+}"
%%format ++* = "\mbox{+\,+}"
%%format -|- = "+"
%%format -|- = "+"
%%format . = " \comp "
%%format . = " \comp "
%%format . = " \comp "
%%format .! = "\kcomp"
%%format .!! = "\mathbin\odot"
%%format .!. = "\kcomp_D"
%%format .* = "\times"
%%format .** = "\times"
%%format .*** = "\times"
%%format :||: = "\mathbin{\#}"
%%format <=> = "~\Leftrightarrow~"
%%format ><  = " \times "
%%format >< = "\mathbin{\mbox{$>$\hskip-1.7pt$<$}}"
%%format >< = "\times "
%%format >< = "\times"
%%format Bool  = "\B "
%%format Bool = "\mathbb B "
%%format CC  = "\cat{C}"
%%format Cp.cond p a b = "\mcond{" p "}{" a "}{" b "}"
%%format Dist = "\fun D "
%%format Either (a) (b) = a "+" b
%%format Either a b = a "+" b
%%format Exp x y = "{" x "}^{" y "}"
%%format F a = "\ff " a
%%format HEither (a) (b) = "Either\ " a "\ " b
%%format LT   = "\fun L "
%%format LTree = "\mathsf{LTree}"
%%format Left = "i_1 "
%%format Left = "i_1"
%%format Left = "i_1"
%%format Lms = "\mathsf{Lms}"
%%format Maybe = "\fun M "
%%format Nat = "\N_0"
%%format Nil = "1"
%%format Pow = "\fun P "
%%format ProbRep = "\mathsf P "
%%format Right = "i_2 "
%%format Right = "i_2"
%%format T = "\fun T "
%%format _curry f = "\mathsf{curry}\ " f
%%format _uncurry f = "\mathsf{uncurry}\ " f
%%format a1 = "a_1 "
%%format a2 = "a_2 "
%%format a3 = "a_3 "
%%format alpha = "\alpha"
%%format ana (x) = "\mathopen{[\!(}" x "\mathclose{)\!]}"
%%format ana t (f) = "\ana{" f "}"
%%format ana x = "\mathopen{[\!(}" x "\mathclose{)\!]}"
%%format anaNat (x) = "\mathopen{[\!(}" x "\mathclose{)\!]}"
%%format apM b m a = m "(" b "," a ")"
%%format assocl = "\conv{" assocr "}"
%%format assocr = "\mathsf{a}"
%%format b1 = "b_1 "
%%format b2 = "b_2 "
%%format bang = "\bang"
%%format bang = "{!}"
%%format bang' = "{!''}"
%%format bb    = "\fun B "
%%format bot = "\bot "
%%format c1 = "c_1 "
%%format c2 = "c_2 "
%%format cat c = "\cat{" c "}"
%%format cata (f)   = "\scata{" f "}"
%%format cata (x) = "\mathopen{(\!|}" x "\mathclose{|\!)}"
%%format cataLTree (x) = "\mathopen{(\!|}" x "\mathclose{|\!)}"
%%format coassocr = "\mathsf a_+"
%%format cond p (f) (g) = "\mcond{" p "}{" f "}{" g "}"
%%format cond p f g = "\mcond{" p "}{" f "}{" g "}"
%%format condc p a b = "\mcond{" p "}{" a "}{" b "}"
%%format coswap   = "\mathsf s_+"
%%format coswap = "\mathsf{coswap}"
%%format cozip = "\Delta"
%%format curry (x) = "\trans{" x "}"
%%format curry x = "\trans{" x "}"
%%format delta = "\Delta "
%%format delta = "\delta"
%%format dr = "\mathsf{dr}"
%%format enset (t) = "\enset{" t "}"
%%format eplus a b = "{" a "}\boxplus{" b "}"
%%format eplusD a b = "{" a "}\boxplus_D{" b "}"
%%format eta = "\eta "
%%format etaF = "\etaF "
%%format etaT = "\etaT "
%%format exists = "\exists "
%%format ff = "\fun F "
%%format ffbb    = "\fun F_{\fun B} "
%%format ffmap = "\fun F "
%%format floor f = "\lfloor " f "\rfloor"
%%format fmapF = "\fun F "
%%format fmapM = "\fun M "
%%format fmapT = "\fun T "
%%format fmapn = "\fun M_F"
%%format for = "\mathbf{for}"
%%format for f i = "\mathsf{for}\ " f "\ " i
%%format forall = "\forall "
%%format frac n m = "\frac{" n "}{" m "}"
%%format fst = "\p1"
%%format hlstr = "\tau_l^D "
%%format hrstr = "\tau_r^D "
%%format hylo x y = "\mathopen{[\![}" x "," y "\mathclose{]\!]}"
%%format hyloNat x y = "\mathopen{[\![}" x "," y "\mathclose{]\!]}"
%%format i1   = "i_1"
%%format i1 = "i_1"
%%format i11 = "\mathit{i}_{11}"
%%format i2    = "i_2"
%%format i2 = "i_2"
%%format i22 = "\mathit{i}_{22}"
%%format id = "{id}"
%%format inG = "\mathsf{in}_G"
%%format inLTree = "\mathsf{in}"
%%format inl = "i_1"
%%format inl a = "\mathsf{in}"
%%format inr = "i_2"
%%format ins = "\in  "
%%format kcomp f g = f "\kcomp " g
%%format kkr a b = "{" a "}\kkr{" b "}"
%%format klDist (d) = "\mean{" d "}"
%%format klPow (r) = "\mean{" r "}"
%%format kr a b = "{" a "}\kr{" b "}"
%%format kron (m) (n) = m "\otimes " n
%%format larrow (a) (f) (b) = "\larrow{" a "}{" f "}{" b "}"
%%format larrow (a) (f) (b) = "\larrow{" a "}{" f "}{" b "}"
%%format length = "\mathsf{length}"
%%format lft = "\mathsf{lft}"
%%format lms = "\mathsf{lms}"
%%format lstr = "\tau_l "
%%format m1 = " m_1 "
%%format m2 = " m_2 "
%%format map = "\mathsf{map}"
%%format mapD = "\fun D "
%%format mapDM = "\fun D \fun M "
%%format mapF = "\mathsf{F}"
%%format mapT = "\mathsf{T}"
%%format mfibl' = " fib "
%%format mfold = "\mathbf{fold}"
%%format mfor = "\mathbf{for}"
%%format msql = " sq "
%%format mu = "\mu"
%%format mu = "\mu"
%%format muF = "\muF "
%%format muT = "\muT "
%%format mult = "\mu"
%%format multDM = "\mu_{\fun D\fun M}"
%%format myconst = "\mathsf{const}"
%%format nabla = "\nabla "
%%format oplus m n = m "\oplus " n
%%format otimes m n = m "\otimes " n
%%format out = "\mathsf{out}"
%%format outG = "\mathsf{out}_G"
%%format p1  = "\p1"
%%format p1 = "\p 1"
%%format p2  = "\p2"
%%format p2 = "\p 2"
%%format pcomp (p) (q) = p "\comp " q
%%format pfeedb p = p "^\Lsh\ "
%%format phi = "\phi"
%%format pkr (a) (b) = "{" a "}\kr{" b "}"
%%format pmeither (a) (b) = "[" a "|" b "]"
%%format pmsplit (a) (b) = "\msplit{" a "}{" b "}"
%%format potimes (m) (n) = m "\otimes " n
%%format power n m = "{" n "}^{" m "}"
%%format rarrow (a) (f) (b) = "\rarrow{" a "}{" f "}{" b "}"
%%format rarrow (a) (f) (b) = "\rarrow{" a "}{" f "}{" b "}"
%%format rec (x) = "\f" x
%%format return = "\eta "
%%format rgt = "\mathsf{rgt}"
%%format rstr = "\tau_r "
%%format schoice p f g = f "\choice{" p "}" g
%%format schoice q f g = "{" f "}\choice{" q "}{" g "}"
%%format scl a = "{" a "}^{\sigma}"
%%format seqc (p) (q) = p "\mathbin{\textbf;}" q
%%format seqcD (p) (q) = p "\mathbin{\textbf;_D}" q
%%format simeq (m) (n) = m "\wider\simeq " n
%%format snd = "\p2"
%%format star = "{*}"
%%format succ = " \succ "
%%format succ = "\mathsf{succ}"
%%format sum2 p q = p "\oplus" q
%%format sum3 p q r = p "\oplus" q "\oplus" r
%%format sum4 p q r s = p "\oplus" q "\oplus" r "\oplus" s
%%format summation = "\sum   "
%%format swap = "\mathsf{swap}"
%%format tot f p = f "~\implied ~" p " "
%%format uncurry x = "\uncurry{" x "}"
%%format underbrace (t) p = "\underbrace{" t "}_{" p "}"
%%format undr = "\conv{\mathsf{dr}}"
%%format union (a) (b) = a "\cup " b
%%format unzipF = " unzip_{\fun F}"
%%format wrap p f g = "{" p "}_{\{" f "\mathbin\to " g "\}}"
%%format xl = "\mathsf{xl}"
%%format xr = "\mathsf{xr}"
%-----------------------------------
%format (leq (a)) = "{\leq_{" a "}}"
%format (nec (a) (b)) = "[" b "]" a
%format check = "\mathsf{check}"
%format disj = "\mathsf{disj}"
%format fun = "\mathsf{fun}"
%format iden = "\mathsf{iden}"
%format lone = "\mathsf{lone}"
%format one = "\mathsf{one}"
%format pos a b = "\left<" b "\right>" a
%format pred = "\mathsf{pred}"
%format set = "\mathsf{set}"
%format sig = "\mathsf{sig}"
%format top = "\top "
%format univ = "\mathsf{univ}"
%format (minus (a) (b)) = "{" a "}\ominus{" b "}"
%format (cosplit (a) (b)) = "\lfloor{" a "},{" b "}\rfloor"
%format (xminus (a)) = "(\ominus{" a ")}"
%format inv1 = "\mathit{inv_1} "
%format inv2 = "\mathit{inv_2} "
%format inv3 = "\mathit{inv_3} "
%format pre2 = "\mathit{pre_2} "
%format (omit (a)) = "\relax "
%format (deff(a)(b)) =  a "\deff " b

\def\theequation{F\arabic{equation}}
\usepackage{graphicx}
\def\apb#1#2{#1{(#2)}}
%def\equiv{\Leftrightarrow}
\def\meet{\mathbin{\cap}}
\def\sse{\mathrel{\subseteq}}
\def\rctgl#1#2{ola}
\def\union{\mathrel{\cup}}
\def\meet{\mathrel{\cap}}
\def\plus{\mathbin{\dagger}}
% formulário
\newlabel{eq:Join-universal}{{31}{3}}
\def\ric#1#2{#1 \mathbin{\hbox{\ \maltese\ }}#2}
\let\implies=\entails
\let\citep=\cite
\def\split#1#2{\const{#1,#2}}
\def\entails{\mathbin{\Rightarrow}}

%----------------------------------------------------------------------------

\exame{Cálculo de Sistemas de Informação\\\rm Perfil: \textsc{Métodos Formais em Engenharia de Software}}
{\esimo 1/4}
{MEI \& MMC / MiEI, Universidade do Minho}
{2019/20}
%{Mini-teste}
%{Teste}
{Exame de recurso}
{30 de Janeiro \\ 09h00 \\Sala  E2-1.10}
\identif
\nb{{\bf Importante} --- Ler antes de iniciar a prova:
\begin{itemize}
\item
Esta prova consta de \textbf{8} questões que valem, cada uma, 2.5 valores.
O tempo \textbf{médio} estimado para resolução de cada questão é de 15 min.
\item	Os alunos que desejem fazer melhoria apenas uma parte devem assinalá-lo na prova, que deverão entregar ao fim de uma hora.
\end{itemize}
}

\prova{Prova com Consulta}{1 ou 2 horas}

\def\part#1{
\begin{center}\bf
#1
\end{center}
}

\part{Parte A}

\quest{csi1920q2}
Range disjoint functions:
\begin{eqnarray}
	|cap (f . R) (g . S) = bot| & \wider\implied & |syd f g = bot|
	\label{eq:200824a}
\end{eqnarray}
Prova:
\begin{eqnarray*}
\start
	 |cap (f . R) (g . S) = bot|
%
\just\implied{}
%
	 |cap (f . R) (g . top) = bot|
%
\just\equiv{}
%
	 |rng g . f . R  = bot|
%
\just\equiv{ assume  |syd f g = bot| }
%
	 |g . bot . R  = bot|
\qed
\end{eqnarray*}
Not using general result:
\begin{eqnarray*}
\start
	|rng g . top|
%
\just={}
%
	|g . (conv g) . (conv ((bang))) . bang|
%
\just={}
%
	|g . (conv ((bang . g))) . bang|
%
\just={}
%
	|g . top|
\qed
\end{eqnarray*}

\fquest{}

\quest{csi1920q2}
\begin{eqnarray}
\start
	|dom((R . S)) = dom((dom R . S))|
	\label{eq:200823a}
\more
	|rng((R . S)) = rng((R . (rng S)))|
\more
	|R = R . (dom R)|
\more
	|R = rng R . R|
\more
	|dom((cup R S)) = cup (dom R) (dom S)|
\more
	|dom(either R S) = (dom R) + (dom S)|
	\label{eq:200910a}
%
\end{eqnarray}
Proof of (\ref{eq:200910a})
\begin{eqnarray*}
\start
	|dom(either R S)|
%
\just={}
%
	|cap id (conv(either R S).(either R S)|
%
\just={}
%
	|cap (either i1 i2) (either (conv(either R S).R)(conv(either R S).S))|
%
\just={}
%
	|either
		(cap i1 (conv(either R S).R))
		(cap i2 (conv(either R S).S))
	|
\qed
\end{eqnarray*}
|cap (conv i1) (either R S) = cap (conv i1) ((cup (R . (conv i1)) (S . (conv i2)))) = ((cap id R)) . (conv i1)|

\fquest{}

\quest{csi1920q2}
Considere a relação |R: X -> Y| definida pela seguinte matriz Booleana
\def\rotatebox#1#2{#2}
\begin{eqnarray*}
|R| &=&
\begin{array}{r||ccccc}&\rotatebox{90}{|A|}&\rotatebox{90}{|B|}&\rotatebox{90}{|C|}&\rotatebox{90}{|D|}&\rotatebox{90}{|E|}\\\hline \hbox{|1|}&0&0&0&0&0\\\hbox{|2|}&0&0&1&0&0\\\hbox{|3|}&0&1&0&1&0\\\hbox{|4|}&0&0&1&0&0\\\hbox{|5|}&0&0&0&0&0
\end{array}
\end{eqnarray*}
onde |X = {A,B,C,D,E}| e |Y={1..5}|.
Investigue a veracidade das seguintes afirmações:
\begin{enumerate}
\item	|R| é uma função
\item	|R| é difuncional
\item	|R| é injectiva
\item	|R| é sobrejectiva
\end{enumerate}
\fquest{}

\quest{csi1920q2}
Muitas funções binárias |rarrow (A><B) f C| não são injectivas (por exemplo, a soma de inteiros) mas, se lhe fixarmos um dos
argumentos (por exemplo o primeiro), são-no quanto ao outro argumento:
\begin{quote}
|f(a,b) = f(a,b') => b = b'|
\end{quote}
Mostre que isso acontece se e só se
\begin{eqnarray}
|id <= split fst f|
\end{eqnarray}
se verificar, onde |R <= S| compara relações quanto à sua injectividade.
\fquest{}

\quest{csi1920q2}
Considere o operador relacional
\begin{eqnarray}
	|slice S R| & = &  |cap R (S / (conv R))|
	\label{eq:100211c}
\end{eqnarray}
definido em Alloy como se segue:
\begin{verbatim}
fun slice[s: A -> A,r: K -> A] : K -> A {
  { a : r.dom, b : a.r | (all b' : a.r | b' in s.b) }
}
\end{verbatim}
É possível implementar |slice| em Haskell, com tipo
\begin{verbatim}
slice :: ((a,a) -> Bool) -> [(k,a)] -> [(k,a)]
\end{verbatim}
onde a primeira relação é representada por um predicado binário.
Calcule o teorema grátis de |slice|, instanciando-o para funções.
\fquest{}

\quest{csi1920a}
Mostre que a diferença de relações satisfaz a propriedade
\begin{eqnarray}
	|(Q - R) - S = (Q - S) - R|
\end{eqnarray}
\fquest{}

\part{Parte B}

\quest{csi1920q01}
\fbox{Rel division}
Dada uma qualquer relação |larrow A R B|, a chamada \emph{diagonal} |larrow A (sbs R d) B| de |R| define-se por
\begin{eqnarray}
	|sbs R d| & =& |cap R (conv((rdiv R R / R)))|
\end{eqnarray}
e exibe a propriedade universal:
\begin{eqnarray}
	|X atmost (sbs R d)| & \equiv & |lcbr(X atmost R)(R . (conv X) . R atmost R)|
\end{eqnarray}
Avalie a veracidade da afirmação seguinte:
\begin{quote}\em
A diagonal |sbs R d| é reflexiva se e só se |R| for uma pré-ordem.
\end{quote}
\fquest{}

\quest{csi1920q2}
Apresente justificações para a demonstração da propriedade
\begin{quote}
|dom(split (f . R) (const k)) = dom R|
\end{quote}
que se segue:
\begin{eqnarray*}
\start
	|dom(split (f . R) (const k))|
%
\cjust={}
%
	|cap (cap (ker ((f . R))) (ker (const k))) id|
%
\cjust={}
%
	|dom ((f . R))|
%
\cjust={}
%
	|dom ((dom f . R))|
%
\cjust={}
%
	|dom R|
\qed
\end{eqnarray*}
\resolucao{Tem-se:
\begin{eqnarray*}
\start
	|dom(split (f . R) (const k))|
%
\cjust={}
%
	|cap (cap (ker ((f . R))) (ker (const k))) id|
%
\cjust={}
%
	|dom ((f . R))|
%
\cjust={}
%
	|dom ((dom f . R))|
%
\cjust={}
%
	|dom R|
\qed
\end{eqnarray*}
}
\fquest{}

\quest{csi1920q2}
O seguinte modelo em Alloy, que foi assunto das aulas da disciplina de Especificação e Modelação,
\begin{quote}\
-- File system trash can.
\begin{code}
sig File {
  link : lone File
}
sig Trash extends File {}
sig Protected extends File {}
\end{code}
\end{quote}
pode ser expresso pelo diagrama relacional,
\begin{eqnarray*}
\xymatrix{
   |Bool|
&
   |File|
	\ar[l]_{|trash|}
	\ar[d]_{|protected|}
	\ar[r]^{|L|}
&
   |File|
\\
&
   |Bool|
}
\end{eqnarray*}
onde |L| abrevia |link|:
há ficheiros (|File|) que podem estar ligados entre si (|L|), apagados (|trash|) ou protegidos (|protected|).
Converta para notação pointwise os \emph{tipos relacionais} seguintes
\begin{eqnarray}
\start
	|larrow (crflx active) L (crflx active)|
\more
	|larrow (crflx protected)  id (crflx active)|
\end{eqnarray}
(onde |active = not . trash|),
e exprima por palavras suas, em cada caso, a propriedade do sistema que está a ser especificada.
\resolucao{
\begin{itemize}
\item	Protected files cannot be deleted: |larrow (crflx protected)  id (crflx active)| where |active = not . trashed|
\item	There is no deleted link: |larrow (crflx active) L (crflx active)|
\end{itemize}
}
\fquest{}

\quest{csi1920q02}
\fbox{AI}
Uma lista de pares |x ins (Seq((A><A)))| pode ser representada simplesmente por |y ins (Seq A)|
desde que o comprimento de |y| seja um número par (|even|). Seja |theta :: Seq A -> Seq A|
a operação que remove o primeiro par de uma tal representação, quando esse par existe: |theta = drop 2|.
%\begin{code}
%theta [] = []
%theta [a] = []
%theta (a:(b:x)) = x  
%\end{code}

Num dispositivo médico em que esta representação vai ser usada pretende-se garantir que |theta| preserva o invariante
concreto:
\begin{eqnarray}
	|inv = even . length|
\end{eqnarray}
Por \emph{interpretação abstracta}, a prova pode ser feita encontrando uma \emph{simulação}
abstracta |phi| de |theta| no diagrama
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
        	\ar[l]^-{|theta|}
        	\ar[u]_-{|length|}
}\]
que preserve |even|.
Suponha que alguém conjecturou
\begin{code}
phi 0 = 0
phi 1 = 0
phi (n+2) = n
\end{code}
(que claramente preserva |even|) e que, para demonstrar que |phi| simula |theta|, re-definiu |phi| de forma seguinte
\begin{eqnarray}
\start	|phi . inT = either (const 0) alpha|
\more 	|alpha . inT = either (const 0) id|
\end{eqnarray}
onde |inT = either (const 0) succ|.

Apresente justificações para os passos da prova apresentada de que  |phi| simula |theta|:
\begin{eqnarray*}
\start
	|length . theta = phi . length|
%
\cjust\equiv{}
%
	|length . theta . (conv length) . inT atmost (either (const 0) alpha|
%
\cjust\equiv{}
%
	|lcbr
		(conv length . (const 0) atmost (conv((length . theta))).(const 0))
		(conv length . succ atmost (conv((length . theta))).alpha)
	|
%
\cjust\equiv{}
%
	|lcbr
		(y=[] => theta y = [])
		(conv length . succ . inT atmost (conv((length . theta))).(either (const 0) id))
	|
%
\cjust\equiv{}
%
	|lcbr
		(drop 2 [] = [])
		(lcbr
			(conv length . (const 1) atmost (conv((length . theta))).(const 0))
			(conv length . (2+) atmost (conv((length . theta))))
		)
	|
%
\cjust\equiv{}
%
	|lcbr
		(length y = 1 => length(theta y) = 0)
		(conv length . (2+) atmost (conv((length . theta))))
	|
%
\cjust\equiv{}
%
	|lcbr
		(drop 2 [_] = [])
		(length y = 2+n => length(drop 2 y) = n)
	|
%
\cjust\equiv{}
%
	|true|
\end{eqnarray*}
\textbf{NB}: assuma propriedades básicas da função |drop|. 
\fquest{}

\fim

