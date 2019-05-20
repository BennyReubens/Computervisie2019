% UGENTBOOK class
%
% This class formats your document based on the UGent design and 
% is based on the book document class. This is an unofficial template.
%
% The ugentbook class is based on the book document class.
%
% author: Tom Lauwaerts
% 2018/10/03

% Class identification

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ugentbook}[2018/10/03 v1.0 UGent book class]

% Preliminary declarations

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions \relax
\LoadClass{scrbook}

% Loading necessary packages
\RequirePackage{scrlayer}        % Koma-script
\RequirePackage{booktitle}       % Constructs the title page and defines the color
                                 % specifications for the document
\RequirePackage[
a4paper,
xetex
]{geometry}                    % Interface to change page dimensions
\RequirePackage{parskip}       % For better spacing and indenting of paragraphs
\RequirePackage{url}
\RequirePackage{hyperref}      % Style links
\usepackage{graphicx}          % Images
\RequirePackage{fancyhdr}      % Set up the headers and footers
\RequirePackage{tocloft}       % Style table of contents
\RequirePackage{fontspec}      % Use own font
\RequirePackage{anyfontsize}   % Specify font sizes
\RequirePackage{xcolor}        % Define own colours

% Frontmatter style
\fancypagestyle{frontmatter}{
	\fancyhf{}
	\renewcommand{\headrulewidth}{0pt}
	\fancyfoot[C]{\thepage}
}

% Style table of contents
\tocloftpagestyle{fancy}
\renewcommand{\cfttoctitlefont}{\huge\color{uGentBlue}}
\renewcommand{\cftdotsep}{\cftnodots} % No dots

% Mainmatter style
\fancypagestyle{mainmatter}{
	\fancyhf{}
	
	\fancyhead[LO]{\leftmark}
	\fancyfoot[C]{\thepage}
	\renewcommand{\headrulewidth}{0pt}
}

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
\setmainfont{UGent Panno Text}   % Use official UGent font
\setmonofont{UGent Panno Text}

% Set colour of titles to UGent blue
\newfontfamily{\ugentfont}{UGent Panno Text}
\renewcommand*\sectfont{\color{uGentBlue}\ugentfont}

% Geometry
\geometry{top=100bp,bottom=120bp}

% Construct the document
\AtBeginDocument{
	\def\@pdfborder{0 0 1}                  % Overrides border definition set with colorlinks=true
	\def\@pdfborderstyle{/S/U/W 0.3}        % Overrides border style set with colorlinks=true
}