\ProvidesClass{UniDraft}
\LoadClass[12pt]{article}

\NeedsTeXFormat{LaTeX2e}

%% set the gemetric info for the document
\usepackage{geometry}
\geometry{
	paper = a4paper, % Change to letterpaper for US letter
	inner = 2.54cm, % Inner margin
	outer = 2.54cm, % Outer margin
	% bindingoffset = 0cm, % Binding offset
	top = 2.54cm, % Top margin
	bottom = 2.54cm, % Bottom margin
}

% figures
\usepackage{graphicx}
\usepackage{subcaption}

%% table
\usepackage{booktabs}


%% math
\usepackage{physics}
\usepackage{braket}
\usepackage{upgreek}
\usepackage{siunitx} % conflict with pkg physics: \vb
\usepackage{mathtools}



\usepackage{setspace}
\onehalfspacing

% setting for levels
\usepackage{hyperref}
\setcounter{secnumdepth}{2}
\setcounter{tocdepth}{2}
\hypersetup{
    bookmarksopenlevel = 3,
	colorlinks	=	true,
	bookmarks		=	true,
	bookmarksopen	=	true,
    % bookmarksdepth  =   2,
	pdfstartview	=	Fit,
	% pdftitle		=	{Supplementary Material},
	% pdfauthor		=	{Jiaxin Zhong},
    citecolor = blue,
    urlcolor = magenta,
    linkcolor = blue
}

% open book mark at arbitrary level
\usepackage[open, numbered]{bookmark}
% opt: numbered --- show numbers in the bookmark

% for some dummy text
\usepackage{lipsum}

\usepackage{amsfonts}
\usepackage{amssymb}


% \usepackage[T1]{fontenc}
% \usepackage{mlmodern}
\usepackage{newtxtext}
% \usepackage{tgtermes}
% \usepackage{newtxmath} % 数学字体
% \usepackage{mathptmx} % 数学字体


% No indentations for each paragraph
\usepackage[parfill]{parskip}

\onehalfspacing



\usepackage{xcolor}
\definecolor{BrewerSetRed}{RGB}{228,26,28}
\definecolor{BrewerSetBlue}{RGB}{55,126,184}
\definecolor{BrewerSetGreen}{RGB}{77,175,74}
\definecolor{BrewerSetPurple}{RGB}{152,78,163}
\definecolor{BrewerSetOrange}{RGB}{255,127,0}
% \definecolor{BrewerSetYellow}{RGB}{255,255,51}
\definecolor{BrewerSetYellow}{RGB}{255,242,0}
\definecolor{BrewerSetBrown}{RGB}{166,86,40}
\definecolor{BrewerSetPink}{RGB}{247,129,191}
\definecolor{BrewerSetGray}{RGB}{153,153,153}
\usepackage[labelfont=bf, font=small]{caption}


% line and markerstyles
\usepackage{tikz}
\usetikzlibrary{shapes.geometric,positioning}
\DeclareRobustCommand\SolidLine[1]{
    \tikz[baseline=-0.6ex]\draw[very thick, #1] (0,0) -- (2em,0);
}
\DeclareRobustCommand\DashdottedLine[1]{
    \tikz[baseline=-0.6ex]\draw[very thick, dash pattern = on 5pt off 1.5pt on 3pt off 1.5pt on 5pt, #1] (0,0) -- (2em,0);
}
\DeclareRobustCommand\SolidLineCircle[1]{
    \tikz[baseline=-0.6ex]
    {
        \draw[very thick, #1] (0,0) -- (2em,0);
        \draw[very thick, #1] ({2em/2}, 0) circle [radius = 0.25em];
    }
}
\DeclareRobustCommand\Circle[1]{
    \tikz[baseline=-0.6ex]
    {
        \draw[very thick, #1] ({2em/2}, 0) circle [radius = 0.25em];
    }
}
\DeclareRobustCommand\SolidLineSquare[1]{
    \tikz[baseline=-0.6ex]
    {
        \draw[very thick, #1] (0,0) -- (2em,0);
        \draw[very thick, #1] ({2em/2-0.25em}, -0.25em) rectangle ({2em/2+0.25em},0.25em);
    }
}
\DeclareRobustCommand\Square[1]{
    \tikz[baseline=-0.6ex]
    {
        \draw[very thick, #1] ({2em/2-0.25em}, -0.25em) rectangle ({2em/2+0.25em},0.25em);
    }
}
\DeclareRobustCommand\SolidLineTriangle[1]{
    \tikz[baseline=-0.6ex]
    {
        \draw[very thick, #1] (0,0) -- (2em,0);
        \node[draw, very thick, isosceles triangle, 
            isosceles triangle apex angle = 60,
            rotate = 90, minimum width = 0.1cm, 
            scale = 0.5, 
            anchor = center, 
            xshift = -1pt,
            #1] at (1em, 0){};
    }
}
\DeclareRobustCommand\Triangle[1]{
    \tikz[baseline=-0.6ex]
    {
        \node[draw, very thick, isosceles triangle, 
            isosceles triangle apex angle = 60,
            rotate = 90, minimum width = 0.1cm, 
            scale = 0.5, 
            anchor = center, 
            xshift = -1pt,
            #1] at (1em, 0){};
    }
}
\DeclareRobustCommand\SolidLineRhombus[1]{
    \tikz[baseline=-0.6ex]
    {
        \draw[very thick, #1] (0,0) -- (2em,0);
        \node[draw, very thick, isosceles triangle, 
            isosceles triangle apex angle = 60,
            rotate = 90, minimum width = 0.1cm, 
            scale = 0.35, 
            anchor = center, 
            xshift = 0.8ex,
            #1] at (1em, 0){};
        \node[draw, very thick, isosceles triangle, 
            isosceles triangle apex angle = 60,
            rotate = -90, minimum width = 0.1cm, 
            scale = 0.35, 
            anchor = center, 
            xshift = 0.8ex,
            #1] at (1em, 0){};
    }
}

\DeclareRobustCommand\Rhombus[1]{
    \tikz[baseline=-0.6ex, scale = 0.5]
    {
        \draw[very thick,#1] 
        (0,1em) -- (.7em,0) -- (0,-1em) -- (-.7em,0) -- cycle;
    }
}


\DeclareRobustCommand\SolidLineStar[1]{
    \tikz[baseline=-0.6ex]
    {
        % Draw the solid line
        \draw[very thick, #1] (0,0) -- (2em,0);
        
        % Draw the star marker
        \node[star, star points=5, star point ratio=2.25, draw, fill=none, very thick, 
              scale=0.3, #1] at (1em, 0) {};
    }
}

\DeclareRobustCommand\Star[1]{
    \tikz[baseline=-0.6ex]
    {
       
        % Draw the star marker
        \node[star, star points=5, star point ratio=2.25, draw, fill=none, very thick, 
              scale=0.3, #1] at (1em, 0) {};
    }
}



\usepackage{color, soul}

\newcommand{\rev}[1]{{\leavevmode\color{red}#1}}

% open book mark at arbitrary level
\usepackage[open, numbered]{bookmark}
% opt: numbered --- show numbers in the bookmark

\usepackage{bm}
% for some dummy text
\usepackage{lipsum}

% see https://tex.stackexchange.com/questions/226481/appendix-section-title
\usepackage[title]{appendix}

\usepackage{authblk}
\renewcommand\Authfont{\normalsize} % 作者名字的字体大小
\renewcommand\Affilfont{\small} % 作者单位的字体大小

%% Set the footer
% see https://tex.stackexchange.com/questions/227/how-can-i-add-page-of-on-my-document
\usepackage{lastpage}
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{} % clear existing header/footer entries
\renewcommand{\headrule}{}
\fancyfoot[C]{Page {\thepage} of \pageref*{LastPage}}
% note that 
%   \thispagestyle{firststyle}
% must be used below \maketitle

\fancypagestyle{firststyle} 
{
    % \fancyhf{}
    \fancyfoot[C]{Page {\thepage} of \pageref*{LastPage}}
}
\usepackage{ragged2e} % 引入支持 \justifying 的宏包

\justifying


% 控制 itemize
\usepackage{enumitem}

% 单元格内使用 \makecell{aa\\ bb}进行换行
\usepackage{makecell}

% 长跨页表格
\usepackage{longtable} 
\usepackage{array}

% 在每个 section 前插入 \clearpage
\usepackage{etoolbox} % 关键宏包
\pretocmd{\section}{\clearpage}{}{} % 语法：\pretocmd{命令}{前置代码}{成功处理}{失败处理}

\usepackage{titlesec}


% 加载 cite 宏包，自动将 [1,2,3,4,5] 变成 [1-5]
% Comment this line if you use biblatex
% \usepackage{cite}

% Support line numbers for review
\usepackage[mathlines]{lineno}