%%
%% This is the file HYthesisPhysics.cls.
%% 
%% Based heavily on HYthesisML.cls created at the Department of Computer Science at the University of Helsinki.
%%
%%% This work may be distributed and/or modified under the
  % conditions of the LaTeX Project Public License, either version 1.3
  % of this license or (at your option) any later version.
  % The latest version of this license is in
  %   http://www.latex-project.org/lppl.txt
  % and version 1.3 or later is part of all distributions of LaTeX
  % version 2005/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[2000/06/01]
\ProvidesClass{HYthesisPhysics}[2025/12/07 v1.0 Document class for MSc theses of physics students at the University of Helsinki.]
%
\newif\if@finnish%
\newif\if@swedish%
\newif\if@english%
\@finnishfalse\@swedishfalse\@englishfalse%
\newif\if@latin\@latinfalse%
% programme specific content starts
\newif\if@tcm% 
\@tcmfalse%
\newif\if@paras% 
\@parasfalse%
\newif\if@astro% 
\@astrofalse%
\newif\if@particle% 
\@particlefalse%
\newif\if@atm% 
\@atmfalse%
\newif\if@mac% 
\@macfalse%
\newif\if@aerosol% 
\@aerosolfalse%
\newif\if@biosphere% 
\@biospherefalse%
\newif\if@geophysics% 
\@geophysicsfalse%
\newif\if@remote% 
\@remotefalse%
\newif\if@meteorology% 
\@meteorologyfalse%
\newif\if@chemistry% 
\@chemistryfalse%
\newif\if@physics% 
\@physicsfalse%
\newif\if@atmospheric% 
\@atmosphericfalse%
\newif\if@climate% 
\@climatefalse%
% programme specific content ends
\newif\if@onesupervisor% 
\@onesupervisorfalse%
\newif\if@twosupervisors% 
\@twosupervisorsfalse%
\newif\if@threesupervisors% 
\@threesupervisorsfalse%
%
\DeclareOption{finnish}{\@finnishtrue}
\DeclareOption{swedish}{\@swedishtrue}
\DeclareOption{english}{\@englishtrue}
                                          % requires extra user commds
\DeclareOption{latin}{\@latintrue}        % Latin0 vs utf8


% programme specific content starts
\DeclareOption{tcm}{\@tcmtrue}
\DeclareOption{paras}{\@parastrue}
\DeclareOption{astro-track}{\@astrotrue}
\DeclareOption{particle-track}{\@particletrue}
\DeclareOption{atm}{\@atmtrue}
\DeclareOption{mac}{\@mactrue}
\DeclareOption{aerosol-track}{\@aerosoltrue}
\DeclareOption{biosphere-track}{\@biospheretrue}
\DeclareOption{geophysics-track}{\@geophysicstrue}
\DeclareOption{remote-track}{\@remotetrue}
\DeclareOption{meteorology-track}{\@meteorologytrue}
\DeclareOption{chemistry-track}{\@chemistrytrue}
\DeclareOption{physics-track}{\@physicstrue}
\DeclareOption{atmospheric-track}{\@atmospherictrue}
\DeclareOption{climate-track}{\@climatetrue}
% programme specific content ends

\DeclareOption{one-supervisor}{\@onesupervisortrue}
\DeclareOption{two-supervisors}{\@twosupervisorstrue}
\DeclareOption{three-supervisors}{\@threesupervisorstrue}

\newif\if@oneside
\newif\if@twoside
\@onesidefalse
\@twosidetrue
\newif\if@defaulttypesize
\@defaulttypesizetrue

\DeclareOption{oneside}{\@onesidetrue\@twosidefalse}
\DeclareOption{twoside}{\@twosidetrue\@onesidefalse}
\DeclareOption{10pt}{
  \@defaulttypesizefalse
  \PassOptionsToClass{10pt}{report}}
\DeclareOption{11pt}{
  \@defaulttypesizefalse
  \PassOptionsToClass{11pt}{report}}
\DeclareOption{12pt}{
  \@defaulttypesizefalse
  \PassOptionsToClass{12pt}{report}}
\DeclareOption{a4paper}{
  \PassOptionsToClass{a4paper}{report}}
\if@defaulttypesize
  \PassOptionsToClass{12pt}{report}
\fi

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
% Report class takes care of any errors in options.
\ProcessOptions\relax

\LoadClass{report}[2000/05/19]

\RequirePackage[T1]{fontenc}

\RequirePackage{latexsym}[1998/08/17 v2.2e Standard LaTeX package (lasy symbols)]

\if@latin
\RequirePackage[latin9]{inputenc}[2015/03/17 v1.2c The inputenc package]
\else
\RequirePackage[utf8]{inputenc}[2015/03/17 v1.2c v1.3 The inputenc package]
\fi


\if@finnish
  \RequirePackage[english,swedish,main=finnish]{babel}[2001/03/01 v3.7h The Babel package]
  \selectlanguage{finnish}
  %\selectbiblanguage{finnish}
\else
  \if@english
    \RequirePackage[swedish,finnish,main=english]{babel}[2001/03/01 v3.7h The Babel package]
    \selectlanguage{english}
    %\setbiblanguage{english} 
   \else
    \if@swedish
      \RequirePackage[finnish,english,main=swedish]{babel}[2001/03/01 v3.7h The Babel package]
      \selectlanguage{swedish}
      %\setbiblanguage{swedish}
    \fi
  \fi
% viimeinen osa pois
\fi

%\RequirePackage{geometry}
%\if@oneside
%    \geometry{oneside,vscale=0.8, includefoot, vmarginratio={1:1}, hmarginratio={3:2}}
%\else
%    \geometry{twoside,vscale=0.8, includefoot, vmarginratio={1:1}, hmarginratio={3:2}}
%\fi
%\savegeometry{defaultgeometry}

\RequirePackage{geometry}[1999/10/07 v2.2 Page Geometry]
%TM: changed the geometry to the same as Data Science template
% \newcommand{\defaultsettings}{%
%   \if@twoside
%     \geometry{top=2.5cm, left=2.8cm, right=3.2cm,
%               textwidth=15cm, textheight=23cm,
%               headheight=0.5cm, headsep=0.5cm}%
%   \else
%     \geometry{top=2.5cm, left=3.5cm, right=2.5cm,
%               textwidth=15cm, textheight=23cm,
%               headheight=0.5cm, headsep=0.5cm}%
%   \fi
% }
\newcommand{\defaultsettings}{%
  \if@twoside
    \geometry{bindingoffset=0.5cm,top=2.5cm, left=2.5cm, right=2.5cm,
              %TM- removed, overspecification
              %textwidth=16cm, 
              textheight=23cm,
              headheight=0.5cm, headsep=0.5cm}%
  \else
    \geometry{top=2.5cm, left=2.5cm, right=2.5cm,
              textwidth=16cm, textheight=24cm,
              headheight=0.5cm, headsep=0.5cm}%
  \fi
}
%TM: added the following as the use of the just defined macro was missing
\defaultsettings

% Default marginratio is 1:1 for oneside 2:3 for twoside pages
% Default vscale=0.7, hscale=0.7
% Bindingoffset would increase the smaller margin (inner) and decrease the textwidth,
% therefore, same bindingoffset effect is here obtained by swapping the margin 
% Better fill rate for Finnish and more appropriate footnote management acquired by
% balancing hscale+includefoot options

                          % This is necessary: utilised (as 
                          % replacementof obsolete packages)
\RequirePackage{etoolbox} % for careful patching of internal macros
                          % if constructs
                          % hooks for \atbegindocument, \atenddocument 
% \patchcmd{\chapter}{plain}{empty}{}{}
                          % removes page numbers from p1 of chapter
\RequirePackage{lastpage}
\RequirePackage{nomencl}
\RequirePackage{emptypage}
\RequirePackage{perpage}
%
                           % This is the area of expected changes
\RequirePackage{titlesec}  % as new form packages arrive
\RequirePackage{titletoc}
\RequirePackage{titleps}
\RequirePackage[page,toc,title,titletoc,header]{appendix}
% \patchcmd{\@chap@pppage}{\thispagestyle{plain}}{\thispagestyle{empty}}{}{}
\RequirePackage[subfigure]{tocloft}
% \noappendicestocpagenum
\titleformat{\chapter}[hang]{\Huge\bfseries}{\thechapter}{0.5em}{}
\titlespacing*{\chapter}{0pt}{-20pt}{30pt}


\RequirePackage{xstring}


%%%%  keep these good charm lines! 
\setcounter{page}{1}
\setcounter{chapter}{0}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1ex}
\renewcommand{\normalsize}{\fontsize{12}{15}\selectfont}
\pagenumbering{arabic}
\pagestyle{myheadings}
\setcounter{chapter}{0}
\pagenumbering{roman}
\setcounter{chapter}{0}
% This is a bottleneck: if abstract of report style pushes in
% anything extra, the output document and error messages
% get garbled and uninterpretable. There is a simple abstract
% text page (centered) left, but all document control structures 
% are lost.
\RequirePackage[runin]{abstract}[2001/06/11]
\renewcommand{\abstractname}{}    % clear the title
\renewcommand{\absnamepos}{empty} % originally center
\renewcommand{\@bsrunintitle}{}
%%%%  end of charm

% Use 1-1.5 as a normal for 1-column documents.
\newcommand{\onehalfspacing}{%
  \ifcase\@ptsize\relax % 10pt
    \renewcommand{\baselinestretch}{1.25}%
  \or % 11pt
    \renewcommand{\baselinestretch}{1.213}%
  \or % 12pt
    \renewcommand{\baselinestretch}{1.241}%
  \fi
  \normalsize
}
\newcommand{\doublespacing}{
  \ifcase\@ptsize\relax % 10pt
    \renewcommand{\baselinestretch}{1.667}
  \or % 11pt
    \renewcommand{\baselinestretch}{1.618}
  \or % 12pt
    \renewcommand{\baselinestretch}{1.655}
  \fi
  \normalsize
}
\newcommand{\singlespacing}{%
  \renewcommand{\baselinestretch}{1.0}%
  \normalsize
}

\newcommand{\mytableofcontents}{%
% next page with text should be odd
%TM:  \newpage
  \cleardoublepage
  \phantomsection
  \addcontentsline{toc}{chapter}{\contentsname}
  \markboth{\contentsname}{}%to fix header in case of multi-page toc
  \tableofcontents
  % \thispagestyle{empty}
%TM:  \newpage
  \cleardoublepage
  \pagenumbering{arabic}
%  \if@emptyfirstpagenumber
    % \thispagestyle{empty}
%  \fi
}

%%%% trilanguage handling

%%%%%% Define commands for filling abstract
%%%%% For form texts
\newcommand{\oppiaine}[1]{\gdef\@oppiaine{#1}} % abstract template
%%%%% Degree elements
%Defined elsewhere --report
%\newcommand{\author}[1]{\gdef\@author{#1}}
%\newcommand{\title}[1]{\gdef\@title{#1}}

\newcommand{\warnText}[1]{
{\color{red}{#1}}
}


%These determined through options or commands
%\newcommand{\level}[1]{\gdef\@level{#1}}
%\newcommand{\programme}[1]{\gdef\@programme{#1}}
%\newcommand{\subject}[1]{\gdef\subject{#1}}
%\subject{}
% \newcommand{\subject}{}

% \newcommand{\seminar}[1]{\gdef\@seminar{#1}}
%%%%% Document details
\newcommand{\depositeplace}{\iflanguage{english}{Helsinki University Library}{}\iflanguage{finnish}{Helsingin yliopiston kirjasto}{}\iflanguage{swedish}{Helsingfors universitets bibliotek}{}}
\newcommand{\pp}{\iflanguage{english}{pages}{}\iflanguage{finnish}{sivua}{}\iflanguage{swedish}{sidor}{}}
% \newcommand{\app}{appendices}
\newcommand{\appno}{\iflanguage{english}{appendix pages}{}\iflanguage{finnish}{liitesivua}{}\iflanguage{swedish}{bilagesidor}{}}
\newcommand{\keywords}[1]{\gdef\@keywords{#1}}
\keywords{}
\newcommand{\additionalinformation}[1]{\gdef\@additionalinformation{#1}}
%\additionalinformation{}
%%%%% Evaluation related elements
\newcommand{\supervisorslabel}{\iflanguage{english}{Supervisor(s)}{}\iflanguage{finnish}{Ohjaaja(t)}{}\iflanguage{swedish}{Handledare}{}}
\newcommand{\examinerlabel}{\iflanguage{english}{Examiner(s)}{}\iflanguage{finnish}{Tarkastaja(t)}{}\iflanguage{swedish}{Examinatorer}{}}
% From document
\if@onesupervisor
    \newcommand{\supervisors}[3]{\gdef\@supervisors{#1}
    \gdef\supervisorstext{#1}}
\fi
\if@twosupervisors
    \newcommand{\supervisors}[3]{\gdef\@supervisors{#1\\&#2}
    \gdef\supervisorstext{#1, #2}}
\fi
\if@threesupervisors
    \newcommand{\supervisors}[3]{\gdef\@supervisors{#1\\&#2\\&#3}
    \gdef\supervisorstext{#1, #2, #3}}
\fi
\newcommand{\examiners}[1]{\gdef\@examiners{#1}}
%%%%% Organisation elements
\newcommand{\uh}{\iflanguage{english}{University of Helsinki}{}\iflanguage{finnish}{Helsingin yliopisto}{}\iflanguage{swedish}{Helsingfors Universitet}{}}
\newcommand{\address}{\iflanguage{english}{P. O. Box 64 (Gustaf H\"allstr\"omin katu 2)\\00014 University of Helsinki, Finland}{}\iflanguage{finnish}{PL 64 (Gustaf H\"allstr\"omin katu 2)\\00014 Helsingin yliopisto}{}\iflanguage{swedish}{PB 64 (Gustaf H\"allstr\"oms gata 2)\\00014 Helsingfors Universitet, Finland}{}}
\newcommand{\helsinki}{\iflanguage{english}{Helsinki}{}\iflanguage{finnish}{Helsinki}{}\iflanguage{swedish}{Helsingfors}{}}
\newcommand{\faculty}{\iflanguage{english}{Faculty of Science}{}\iflanguage{finnish}{Matemaattis-luonnontieteellinen tiedekunta}{}\iflanguage{swedish}{Matematisk-naturvetenskapliga fakulteten}{}}
\newcommand{\level}{\iflanguage{english}{Master's thesis}{}\iflanguage{finnish}{Maisterintutkielma}{}\iflanguage{swedish}{Magisteravhandling}{}
}
\renewcommand{\oppiaine}{{Koulutusohjelma --- Utbildningsprogram  --- Study programme}}

%%% Process degree specific info

\if@tcm
    \newcommand{\programme}{\iflanguage{english}{Master's Programme in Theoretical and Computational Methods}{}\iflanguage{finnish}{Teoreettisten ja laskennallisten\\menetelmien maisteriohjelma}{}\iflanguage{swedish}{Magisterprogrammet i teoretiska och ber\"akningsmetoder}{}
    }
\fi

\if@paras
    \newcommand{\programme}{\iflanguage{english}{Master’s Programme in Particle Physics and Astrophysical Sciences}{}\iflanguage{finnish}{Alkeishiukkasfysiikan ja astrofysikaalisten\\tieteiden maisteriohjelma}{}\iflanguage{swedish}{Magisterprogrammet i elementarpartikelfysik\\och astrofysikaliska vetenskaper}{}
    }
    \if@astro
        \newcommand{\studytrack}{\iflanguage{english}{Astrophysical Sciences}{}\iflanguage{finnish}{Astrofysikaaliset tieteet}{}\iflanguage{swedish}{Astrofysikaliska vetenskaper}{}
        }
    \fi
    \if@particle
        \newcommand{\studytrack}{\iflanguage{english}{Particle Physics and Cosmology}{}\iflanguage{finnish}{Alkeishiukkasfysiikka ja kosmologia}{}\iflanguage{swedish}{Elementarpartikelfysik och kosmologi}{}
        }
    \fi
\fi

\if@atm
    \newcommand{\programme}{\iflanguage{english}{Master's Programme in Atmospheric Sciences}{}\iflanguage{finnish}{Ilmakeh\"atieteiden maisteriohjelma}{}\iflanguage{swedish}{Magisterprogrammet i atmosf\"arsvetenskaper}{}
    }
    \if@aerosol
        \newcommand{\studytrack}{\iflanguage{english}{Aerosol Physics}{}\iflanguage{finnish}{Aerosolifysiikka}{}\iflanguage{swedish}{Aerosolfysik}{}
        }
    \fi
    \if@biosphere
        \newcommand{\studytrack}{\iflanguage{english}{Biosphere-atmosphere cycle}{}\iflanguage{finnish}{Biosf\"a\"arin ja ilmakeh\"an vuorovaikutukset}{}\iflanguage{swedish}{Biosf\"arens och atmosf\"arens v\"axelverkningar}{}
        }
    \fi
    \if@geophysics
        \newcommand{\studytrack}{\iflanguage{english}{Geophysics of the Hydrosphere}{}\iflanguage{finnish}{Hydrosf\"a\"arin geofysiikka}{}\iflanguage{swedish}{Hydrosf\"arens geofysik}{}
        }
    \fi
    \if@remote
        \newcommand{\studytrack}{\iflanguage{english}{Remote sensing}{}\iflanguage{finnish}{Kaukokartoitus}{}\iflanguage{swedish}{Fj\"arranalys}{}
        }
    \fi
    \if@meteorology
        \newcommand{\studytrack}{\iflanguage{english}{Meteorology}{}\iflanguage{finnish}{Meteorologia}{}\iflanguage{swedish}{Meteorologi}{}
        }
    \fi
    \if@chemistry
        \newcommand{\studytrack}{\iflanguage{english}{Atmospheric Chemistry and Analysis}{}\iflanguage{finnish}{Ilmakeh\"an kemia ja analyysi}{}\iflanguage{swedish}{Atmosf\"arens kemi och analys}{}
        }
    \fi
\fi


\if@mac
    \newcommand{\programme}{\iflanguage{english}{Master’s Programme in Meteorology, Atmospheric Sciences\\and Climate-System Sciences}{}\iflanguage{finnish}{Meteorologian, ilmakeh\"a- ja ilmastoj\"arjestelm\"atieteiden\\maisteriohjelma}{}\iflanguage{swedish}{Magisterprogrammet i meteorologi, atmosf\"arsvetenskaper\\och klimatvetenskaper}{}
    }
    \if@aerosol
        \newcommand{\studytrack}{\iflanguage{english}{Aerosol Physics}{}\iflanguage{finnish}{Aerosolifysiikka}{}\iflanguage{swedish}{Aerosolfysik}{}
        }
    \fi
    \if@biosphere
        \newcommand{\studytrack}{\iflanguage{english}{Biosphere-atmosphere cycle}{}\iflanguage{finnish}{Biosf\"a\"arin ja ilmakeh\"an vuorovaikutukset}{}\iflanguage{swedish}{Biosf\"arens och atmosf\"arens v\"axelverkningar}{}
        }
    \fi
    \if@geophysics
        \newcommand{\studytrack}{\iflanguage{english}{Geophysics of the Hydrosphere}{}\iflanguage{finnish}{Hydrosf\"a\"arin geofysiikka}{}\iflanguage{swedish}{Hydrosf\"arens geofysik}{}
        }
    \fi
    \if@remote
        \newcommand{\studytrack}{\iflanguage{english}{Remote sensing}{}\iflanguage{finnish}{Kaukokartoitus}{}\iflanguage{swedish}{Fj\"arranalys}{}
        }
    \fi
    \if@meteorology
        \newcommand{\studytrack}{\iflanguage{english}{Meteorology}{}\iflanguage{finnish}{Meteorologia}{}\iflanguage{swedish}{Meteorologi}{}
        }
    \fi
    \if@chemistry
        \newcommand{\studytrack}{\iflanguage{english}{Atmospheric Chemistry and Analysis}{}\iflanguage{finnish}{Ilmakeh\"an kemia ja analyysi}{}\iflanguage{swedish}{Atmosf\"arens kemi och analys}{}
        }
    \fi
    \if@physics
        \newcommand{\studytrack}{\iflanguage{english}{Physics of the Hydrosphere}{}\iflanguage{finnish}{Hydrosf\"a\"arin fysiikka}{}\iflanguage{swedish}{Hydrosf\"arens fysik}{}
        }
    \fi
    \if@atmospheric
        \newcommand{\studytrack}{\iflanguage{english}{Atmospheric Chemistry and Aerosol Physics}{}\iflanguage{finnish}{Ilmakeh\"an kemia ja aerosolifysiikka}{}\iflanguage{swedish}{Atmosf\"arens kemi och aerosolfysik}{}
        }
    \fi
    \if@climate
        \newcommand{\studytrack}{\iflanguage{english}{Climate and Sustainability}{}\iflanguage{finnish}{Ilmastonmuutos ja kest\"av\"a kehitys}{}\iflanguage{swedish}{Klimatf\"or\"andring och h\r{a}llbar utveckling}{}
        }
    \fi
\fi

\newcommand{\department}{\programme}
%% actual parameters from document

%% Look of the reports
\usepackage{lmodern} 
\usepackage{textcomp} 
\usepackage[pdftex]{color, graphicx} % For pdf output and jpg/png graphics
\usepackage{epsfig}
\usepackage{subfigure} 
\usepackage{tikz}            % For making vector graphics (hard to learn but powerful)
\usepackage{amsmath, amssymb} % For better math
\usepackage[footnotesize,bf]{caption}  % For more control over figure captions
\usepackage{blindtext}
\usepackage{everyshi}

\newtoggle{mainmatter}
\newtoggle{backmatter}
\togglefalse{mainmatter}
\togglefalse{backmatter}

\newcommand{\frontmatter}{
    \setcounter{page}{1}
    \pagenumbering{roman}
}


\newcommand{\mainmatter}{
    \clearpage
    \toggletrue{mainmatter}
    % \thispagestyle{empty}
    \pagenumbering{arabic}
    \setcounter{page}{1}
}

\newcommand{\backmatter}{%
    \clearpage % needed so that mainmatter is fully flushed before turning off the counter
    \togglefalse{mainmatter}
    
    % \addtocontents{toc}{\cftpagenumbersoff{chapter}}
    \cleardoublepage
    \toggletrue{backmatter}

    % \titleformat{\chapter}{\large\bfseries}{\chaptertitlename\space\thechapter\newline}{0.5em}{\setcounter{page}{1}\pagenumbering{roman}\markboth{\chaptertitlename\space\thechapter}{\chaptertitlename \space\thechapter}\label{Appendix.\thechapter}\thispagestyle{empty}}
%    \titleformat{\chapter}{\Huge\bfseries}{\chaptertitlename\space\thechapter\newline}{0.5em}{\setcounter{page}{1}\pagenumbering{arabic}\markboth{}{}\label{Appendix.\thechapter}}
    % \thispagestyle{empty}
}

\EveryShipout{%
    \iftoggle{mainmatter}{\stepcounter{numberofpages}}{}%
    \iftoggle{backmatter}{\stepcounter{numberofappendixpages}{}}
}



% Additions and changes for document key terms. 
% These address elements required for computer science.
\addto\captionsenglish{%
\renewcommand{\bibname}{References}%
\renewcommand{\refname}{References}%
\renewcommand{\nomname}{List of symbols}%
\renewcommand{\prefacename}{Preface}%
\renewcommand{\abstractname}{Abstract}%
}
\addto\captionsfinnish{%
\renewcommand{\bibname}{L\"ahteet}%
\renewcommand{\refname}{L\"ahteet}%
\renewcommand{\appendixname}{Liite}%
\renewcommand{\appendixpagename}{Liitteet}%
\renewcommand{\appendixtocname}{Liitteet}%
%\renewcommand{\appendicestocname}{Liitteet}%
%\renewcommand{\appendicespagename}{Liitteet}%
\renewcommand{\enclname}{Liite}%
\renewcommand{\nomname}{Symboliluettelo}%
\renewcommand{\prefacename}{Alkusana}%
%\renewcommand{\enclpagename}{Liite}%
%\renewcommand{\encltocname}{Liite}%
\renewcommand{\abstractname}{Tiivistelmä}
}
\addto\captionsswedish{%
\renewcommand{\bibname}{Referenser}%
\renewcommand{\refname}{Referenser}%
\renewcommand{\appendixname}{Bilaga}%
\renewcommand{\appendixtocname}{Bilagor}%
\renewcommand{\appendixpagename}{Bilagor}%
%\renewcommand{\appendicespagename}{Bilagor}%
%\renewcommand{\appendicestocname}{Bilagor}%
\renewcommand{\enclname}{Bilaga}%
\renewcommand{\nomname}{Lista av symboler}%
\renewcommand{\prefacename}{Förord}%
\renewcommand{\abstractname}{Abstrakt}
}
\def\dateswedish{\def\today{\number\day.\number\month.\number\year}}
\def\datefinnish{%
  \def\today{\number\day.\number\month.\number\year}}
\def\division{\char'057}

%--------------------------------------------------------------------------
% Nomenclature: titles and unit space
\makenomenclature
\newcommand{\nomunit}[1]{%
\renewcommand{\nomentryend}{\hspace*{\fill}#1}}

\newcommand{\mynomenclature}{%
\printnomenclature
\addcontentsline{toc}{chapter}{\nomname}
\markboth{\nomname}{}
\cleardoublepage
}


\renewcommand*{\thefootnote}{\fnsymbol{footnote}} %footnote symbols for one page only
\MakePerPage{footnote}

%%%%%% Appendices %%%%%%%

\newcounter{appendixPagesCounter}
\setcounter{appendixPagesCounter}{0}%

\let\oldappendix\appendix
\renewcommand{\appendix}[1]{
%TM: This one set the last page of each appendix to 1, which kinda is not what one wants 
%TM:-        \setcounter{page}{1}%
    \chapter{#1}
}


\renewcommand{\appendices}{%
    %\setcounter{page}{-1}%
%  \setcounter{appendix}{1}%
%  \newpage
%  %\pagestyle{empty}
%  \pagestyle{myheadings}
%  \markright{}
    \oldappendix
%  \addtocontents{toc}{\protect \contentsline {section}{\enclname}{}}
%  \setcounter{page}{0}
}


\AtEndPreamble{
   % Biblatex doesn't use bibname or refname. Instead it overwrites it with its own value.
   % These values must be fixed manually, and done after biblatex has been loaded.
   \@ifpackageloaded{biblatex}{
       \DefineBibliographyStrings{finnish}{%
          bibliography = {L\"ahteet}
       }
       \DefineBibliographyStrings{swedish}{%
          editor       = {red.},
          editors      = {red.},
          bibliography = {Referenser}
       }
   }

}

\AtBeginDocument{
    \newcounter{numberofpages}
    \newcounter{numberofappendixpages}

    \setcounter{numberofpages}{0}
    \setcounter{numberofappendixpages}{0}
}



\AtEndDocument{%
    \typeout{***AED Number of Appendices \thenumberofappendixpages}
    \immediate\write\@auxout{\string\gdef\string\appendixCount{\thenumberofappendixpages}}

    \typeout{***AED Number of pages \thenumberofpages \pp}
    \immediate\write\@auxout{\string\gdef\string\pagesCount{\thenumberofpages}}
}



\newcommand{\getPageInfo}{%
    \@ifundefined{pagesCount} {
        \warnText{!! Run three times to appear !!}
     } {
        \ifnumcomp{\appendixCount}{>}{0}{%
            \pagesCount\space\pp,\space\appendixCount\space\appno
        }{
            \pagesCount\space\pp
        }
    }
}


%---------------------------------------------

% GENERATE TITLE PAGE

%%%%%%%%%%%%%%      Cover pages

%%%% actual cover page, triggers the backside of the leaf printed too

\renewcommand{\maketitle}{%
%TM: removed, as seems not needed !?
%\enlargethispage{0.7in}
\hypersetup{pageanchor=true}
\setcounter{page}{1}
\label{title}

\onehalfspacing

\begin{center}
\includegraphics[width=5cm]{template/figures/HY-logo-ml.png}

\if@onesupervisor
\begin{large}
\level

\programme

\if@tcm
    % no study track
\else
    \studytrack
\fi

\end{large}

\vspace{1.7cm}

\begin{LARGE}
{\bf \@title}
\end{LARGE} 

\vspace{1.5cm}

\begin{large}
\@author
\end{large}

\vspace{14pt}

\begin{large}
\today
\end{large}
\vspace{0.75cm}

\begin{large}

\def\reallyempty{}
\begin{tabular}{l l}
\supervisorslabel: &\@supervisors\\
&\\
\end{tabular}
\end{large}

\if@tcm
    \vspace{1.5cm} 
\fi


{\rm\sc
    \faculty

    \uh
}

\vspace{0.25cm} 

\address
\fi

\if@twosupervisors
\begin{large}
\level

\programme

\if@tcm
    % no study track
\else
    \studytrack
\fi

\end{large}

\vspace{1.7cm}

\begin{LARGE}
{\bf \@title}
\end{LARGE} 

\vspace{1.0cm}

\begin{large}
\@author
\end{large}

\vspace{14pt}

\begin{large}
\today
\end{large}
\vspace{0.75cm}

\begin{large}

\def\reallyempty{}
\begin{tabular}{l l}
\supervisorslabel: &\@supervisors\\
&\\
\end{tabular}
\end{large}

\if@tcm
    \vspace{0.5cm} 
\fi


{\rm\sc
    \faculty

    \uh
}

\vspace{0.25cm} 

\address
\fi

\if@threesupervisors
\begin{large}
\level

\programme

\if@tcm
    % no study track
\else
    \studytrack
\fi

\end{large}

\vspace{1.7cm}

\begin{LARGE}
{\bf \@title}
\end{LARGE} 

\vspace{1.0cm}

\begin{large}
\@author
\end{large}

\vspace{14pt}

\begin{large}
\today
\end{large}
\vspace{0.75cm}

\begin{large}

\def\reallyempty{}
\begin{tabular}{l l}
\supervisorslabel: &\@supervisors\\
&\\
\end{tabular}
\end{large}

\if@tcm
    \vspace{0.5cm} 
\fi


{\rm\sc
    \faculty

    \uh
}

\vspace{0.25cm} 

\address
\fi

%\makeatother
\end{center}

\thispagestyle{empty}
\if@twoside
	\newpage
	\cleardoublepage	
\fi
% \innerpage
}


%------------------------------------------------------------------------

\newsavebox{\@abstract}

%TM: modified to make abstract bit tightier
\newenvironment{@summary}{
    \abst@small %TM:+
    \begin{lrbox}{\@abstract}
    \begin{minipage}[t][12cm]{5.7in} %TM: fixed the minipage height (=summary+ACM classif to 12cm); adjust if layout changes
    \setlength{\parskip}{2ex}
}
{ 
    \vfill %TM: works only here, if the minipage height is known, thus fixed above
    % {\bf \@ccs}
    %TM:- \par\space\par
    \end{minipage}
    \end{lrbox}
%TM this needed moving after changes to abstract page 
%    \put(75, 560){\mbox{\usebox{\@abstract}}}
    \put(22, 450){\mbox{\usebox{\@abstract}}}

%TM just used for debugging:
%    \put(75, 560){\framebox{\usebox{\@abstract}}}
}

\def\abst@small{\fontsize{10}{10}\selectfont}
\def\abst@tiny{\fontsize{6}{7}\selectfont}


% Making the boxed abtract page, in all languages used
\renewenvironment{abstract}%
{
\iflanguage{finnish}{\label{page.abstract.finnish}}{\iflanguage{swedish}{\label{page.abstract.swedish}}{\iflanguage{english}{\label{page.abstract.english}}{\label{page.abstract.other}}}}

\thispagestyle{empty}\newpage
\phantomsection
\addcontentsline{toc}{chapter}{\abstractname}

% would be nice to know how to change the page geometry within these environment so that the picture would fit within the text area -- now only page length can be easily changed, as some other stuff does not have effect at this point. 
% \newgeometry{bindingoffset=0cm, top=0cm, left=0cm, right=0cm, bottom=0cm,
%               %TM- removed, overspecification
%               %textwidth=16cm, 
%               %textheight=29cm,
%               headheight=0cm, headsep=0cm}
%or these            
% \setlength{\topsep}{100pt}%
% \setlength{\leftmargin}{0pt}%
% \setlength{\rightmargin}{0pt}%
%This works in making the page longer
\enlargethispage{24pt} %this is just enough for the current box size

%TM +++ 
\begin{picture}(400,678)(0,0) %pic width is too small to get rid of the overfull hbox warning; just drawing wider; this seems to be no problem for latex page creation, as it only needs to fit the picture as defined, not to care about someone drawing outside the picture.

%Put the content texts there
%%% Programme specific content starts
\if@tcm
\put(5, 634){\makebox(200, 8)[l]{\abst@small \faculty}}
\iflanguage{english}{
    \abst@small\put(162, 634){\makebox(200, 8)[l]{\programme}}
}{}
\iflanguage{swedish}{
    \abst@small\put(202, 634){\makebox(200, 8)[l]{\programme}}
}{}
\iflanguage{finnish}{
    \abst@small\put(207, 634){\makebox(200, 18)[l]{\shortstack[l]{\programme}}}
}{}
\fi
\if@paras
\put(5, 634){\makebox(200, 8)[l]{\abst@small \faculty}}
\iflanguage{english}{
    \abst@small\put(132, 634){\makebox(200, 8)[l]{\programme}}
}{}
\iflanguage{swedish}{
    \abst@small\put(202, 634){\makebox(200, 18)[l]{\shortstack[l]{\programme}}}
}{}
\iflanguage{finnish}{
    \abst@small\put(207, 634){\makebox(200, 18)[l]{\shortstack[l]{\programme}}}
}{}
\fi
\if@atm
\put(5, 634){\makebox(200, 8)[l]{\abst@small \faculty}}
\iflanguage{english}{
    \abst@small\put(162, 634){\makebox(200, 8)[l]{\programme}}
}{}
\iflanguage{swedish}{
    \abst@small\put(202, 634){\makebox(200, 18)[l]{\shortstack[l]{\programme}}}
}{}
\iflanguage{finnish}{
    \abst@small\put(207, 634){\makebox(200, 8)[l]{\programme}}
}{}
\fi
\if@mac
\put(5, 634){\makebox(200, 8)[l]{\abst@small \faculty}}
\iflanguage{english}{
    \abst@small\put(162, 634){\makebox(200, 18)[l]{\shortstack[l]{\programme}}}
}{}
\iflanguage{swedish}{
    \abst@small\put(202, 634){\makebox(200, 18)[l]{\shortstack[l]{\programme}}}
}{}
\iflanguage{finnish}{
    \abst@small\put(207, 634){\makebox(200, 18)[l]{\shortstack[l]{\programme}}}
}{}
\fi
%%% Programme specific content ends

\put(5,  601){\makebox(100, 8)[l]{\abst@small \@author}}
\put(5,  564)%
    {\parbox{450pt}{\abst@small \@title}}
 
\put(5,  527)%
    {\parbox{450pt}{\abst@small \supervisorstext}}
 
\put(5, 490){\makebox(100, 8)[l]{\abst@small \level}}
\put(160, 490){\makebox(100, 8)[l]{\abst@small \today}}
\put(301, 490){\makebox(100, 8)[l]{\abst@small \getPageInfo}}

\put(5, 85) {\makebox(100, 8)[l]{\abst@small \@keywords}}
\put(5, 55) {\makebox(100, 8)[l]{\abst@small \depositeplace}}
\put(5, 25) {\makebox(100, 8)[l]{\abst@small \@additionalinformation}}
\begin{@summary}
 }{
\end{@summary}

%the bix surrounding box
\put(0,0){\framebox(462,666){}}

%the text on top, outside the big box
\put(1,670){\makebox(461,10)[l]{\abst@small\sc HELSINGIN YLIOPISTO -- HELSINGFORS UNIVERSITET -- UNIVERSITY OF HELSINKI}}

%then the heading texts for the small boxes and lines 
%%% Programme specific content starts
\if@tcm
\put(5,657){\makebox(150,6)[l]{\abst@tiny Tiedekunta --- Fakultet --- Faculty}}
\iflanguage{english}{
\put(157,629){\line(0,1){37}} % pystyviiva
\put(162,657){\makebox(100,5)[l]{\abst@tiny \oppiaine}}
}{}
\iflanguage{swedish}{
\put(198,629){\line(0,1){37}} % pystyviiva
\put(203,657){\makebox(100,5)[l]{\abst@tiny \oppiaine}}
}{}
\iflanguage{finnish}{
\put(203,629){\line(0,1){37}} % pystyviiva
\put(208,657){\makebox(100,5)[l]{\abst@tiny \oppiaine}}
}{}
\fi
\if@paras
\put(5,657){\makebox(150,6)[l]{\abst@tiny Tiedekunta --- Fakultet --- Faculty}}
\iflanguage{english}{
\put(127,629){\line(0,1){37}} % pystyviiva
\put(132,657){\makebox(100,5)[l]{\abst@tiny \oppiaine}}
}{}
\iflanguage{swedish}{
\put(198,629){\line(0,1){37}} % pystyviiva
\put(203,657){\makebox(100,5)[l]{\abst@tiny \oppiaine}}
}{}
\iflanguage{finnish}{
\put(203,629){\line(0,1){37}} % pystyviiva
\put(208,657){\makebox(100,5)[l]{\abst@tiny \oppiaine}}
}{}
\fi
\if@atm
\put(5,657){\makebox(150,6)[l]{\abst@tiny Tiedekunta --- Fakultet --- Faculty}}
\iflanguage{english}{
\put(157,629){\line(0,1){37}} % pystyviiva
\put(162,657){\makebox(100,5)[l]{\abst@tiny \oppiaine}}
}{}
\iflanguage{swedish}{
\put(198,629){\line(0,1){37}} % pystyviiva
\put(203,657){\makebox(100,5)[l]{\abst@tiny \oppiaine}}
}{}
\iflanguage{finnish}{
\put(203,629){\line(0,1){37}} % pystyviiva
\put(208,657){\makebox(100,5)[l]{\abst@tiny \oppiaine}}
}{}
\fi
\if@mac
\put(5,657){\makebox(150,6)[l]{\abst@tiny Tiedekunta --- Fakultet --- Faculty}}
\iflanguage{english}{
\put(157,629){\line(0,1){37}} % pystyviiva
\put(162,657){\makebox(100,5)[l]{\abst@tiny \oppiaine}}
}{}
\iflanguage{swedish}{
\put(198,629){\line(0,1){37}} % pystyviiva
\put(203,657){\makebox(100,5)[l]{\abst@tiny \oppiaine}}
}{}
\iflanguage{finnish}{
\put(203,629){\line(0,1){37}} % pystyviiva
\put(208,657){\makebox(100,5)[l]{\abst@tiny \oppiaine}}
}{}
\fi
%%% Programme specific content ends
\put(0,629){\line(1,0){462}} 

\put(5,620){\makebox(100,5)[l]{\abst@tiny Tekij\"a --- F\"orfattare --- Author}}
\put(0,592){\line(1,0){462}}

\put(5,583){\makebox(100,5)[l]{\abst@tiny Ty\"on nimi --- Arbetets titel --- Title}}
\put(0,555){\line(1,0){462}}

\put(5,546){\makebox(100,5)[l]{\abst@tiny Ohjaajat --- Handledare --- Supervisors}}
\put(0,518){\line(1,0){462}}

\put(5,509){\makebox(100,5)[l]{\abst@tiny Ty\"on laji --- Arbetets art --- Level}}
\put(154,481){\line(0,1){37}} % pystyviiva
\put(159,509){\makebox(100,5)[l]{\abst@tiny Aika --- Datum --- Month and year }}
\put(297,481){\line(0,1){37}} % pystyviiva
\put(303,509){\makebox(100,5)[l] {\abst@tiny Sivum\"a\"ar\"a --- Sidoantal ---    Number of pages}}

\put(5,472){\makebox(100,5)[l]{\abst@tiny Tiivistelm\"a --- Referat --- Abstract}}
\put(0,481){\line(1,0){462}}

\put(0,0){\line(1,0){462}}
\put(0,50){\line(1,0){462}}
\put(0,80){\line(1,0){462}}
\put(0,110){\line(1,0){462}}
\put(3,101){\makebox(100,5)[l]{\abst@tiny Avainsanat --- Nyckelord --- Keywords}}
\put(1.5,71){\makebox(100,5)[l]{ \abst@tiny S\"ailytyspaikka --- F\"orvaringsst\"alle --- Where deposited}}
\put(5,41){\makebox(100,5)[l]{\abst@tiny Muita tietoja --- \"ovriga uppgifter --- Additional information}}

\end{picture}

\clearpage
\if@twoside
	\newpage
	\thispagestyle{empty}
	\cleardoublepage	
\fi

}


%% Command for writing out the quote
\newcommand{\quoting}[2]{\gdef\@quoting{\begin{center}\emph{#1}\\ --- #2\end{center}}}
\newcommand{\myquote}{
\ifdefined\@quoting
	\thispagestyle{empty}
	\pagebreak
	\hspace{0pt}
	\vfill
	\noindent \@quoting
	\vfill
	\hspace{0pt}
	\pagebreak
        \cleardoublepage
\fi
}

%% Command for writing out the preface
\newcommand{\preface}[1]{
\chapter*{\prefacename}
\addcontentsline{toc}{chapter}{\prefacename}
#1
\cleardoublepage
}

\endinput
%%
%% End of file
