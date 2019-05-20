% UGENTARTICLE class
%
% This class formats your document based on the UGent design and 
% is based on the article document class. This is an unofficial template.
%
% author: Tom Lauwaerts
% 2018/10/03

% Class identification

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ugentarticle}[2018/10/03 v1.0 UGent article class]

% Preliminary declarations

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\ProcessOptions \relax
\LoadClass{scrreprt}

% Loading necessary packages
\RequirePackage{scrlayer}           % Koma-script
\RequirePackage{articletitle}       % Constructs the title page and defines the color
                                    % specifications for the document
\RequirePackage[
a4paper,
xetex
]{geometry}                    % Interface to change page dimensions
\RequirePackage{url}
\RequirePackage{hyperref}      % Style links
\usepackage{graphicx}          % Images
\RequirePackage{tocloft}       % Style table of contents
\RequirePackage{fontspec}      % Use own font
\RequirePackage{anyfontsize}   % Specify font sizes
\RequirePackage{xcolor}        % Define own colours

% Style table of contents
\renewcommand{\cfttoctitlefont}{\huge\color{uGentBlue}}
\renewcommand{\cftdotsep}{\cftnodots} % No dots

% Link style setup
\hypersetup{
	pdfauthor = {\@author},
	pdftitle = {\@title},
	pdfsubject = {\@subtitle},
	colorlinks=true,
	linkcolor=uGentBlue,
	filecolor=uGentBlue,
	filebordercolor=uGentBlue,     
	urlcolor=uGentBlue,
	urlbordercolor=uGentBlue,
	citecolor=black,
	citebordercolor=white,
	linkbordercolor=white % Hack to not underline in table of contents
}

% Fonts

\setmainfont[Ligatures=TeX]{UGent Panno Text}   % Use official UGent font
\setmonofont[Ligatures=TeX]{UGent Panno Text}

% Set colour of titles to UGent blue
\newfontfamily{\ugentfont}{UGent Panno Text}
\renewcommand*\sectfont{\color{uGentBlue}\ugentfont}
\renewcommand\chapterlinesformat[3]{% Chapters uppercase
	\@hangfrom{#2}{\MakeUppercase{#3}}%
}

% Geometry
\geometry{top=100bp,bottom=120bp}

% Construct the document
\AtBeginDocument{
	\def\@pdfborder{0 0 1}                  % Overrides border definition set with colorlinks=true
	\def\@pdfborderstyle{/S/U/W 0.3}        % Overrides border style set with colorlinks=true
}