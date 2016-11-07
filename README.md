# Ephestos
==========

Ephestos is a collection of tools that tries to optimise Pharo to better fit my workflow which is about working with Unreal Game engine and Blender

## Current features

Ephestos can currently talk to python which is what I use for scripting Blender. It can both send strings with python code to python and generate these strings automatically using a very pharo friendly syntax. Ephestos also is able to detect python errors and trigger the pharo debugger displaying the python error and allowing the user to change the pharo code converted to python code and carry on. So the workflow of working with python is very similar to working with Pharo. That means also that Python code will not terminate on error allowing the pharo user to do live coding with Python the same way he/she can live code with Pharo.

## Documentation

Documentation about Ephestos can be found at

https://www.gitbook.com/book/kilon/ephestos/details

## Future Goals

Ephestos is far from finished , its still a baby , some of the ideas I have for it are presented bellow

https://www.gitbook.com/book/kilon/ephestos/details

The summary of my ideology is that there are only parts of Smalltalk I really like and not the whole thing. I have several ideas about Pharo. Whether some or all of those ideas will be proven bad or too difficult to implement , time will tell.  Some of those ideas are

1) a component based environment similar to Delphi (one of the things  I loved about Delphi). Basically Objects on steroids. 

2) An enhancement of visual coding experience in Pharo.  Roassal could help here. 

3) The ability to use Emacs as an alternative code editor outside the box.  Shampoo has accomplished this goal, but I have not tested it yet.

4) Deep integration with both C++ and Python, this is more than a need since I depend both on Python and C++, this idea is the closest to materialisation and probably my most critical one

5) Modular image = This one I am lucky enough that is already a Pharo goal and an ongoing project

6) A more powerful documentation system , Pillar could help here and the inspector / gtspotter

7) Auto update in the background , not a high priority goal since I will be using the Steam API that handles updates but it would be nice

8)  Fragmentation of the image format, this one will be a combination of fuel (or custom format) and bootstrap

9) Removal of any mid ground between Smalltalk code and Git , this is the idea I was talking early on

10) Integration with OS tools , like file browsers, web browsers , system utilities etc

11) Replacement of Morphic with QT,  I already can do this at least in part with my python bridge but for now its a low priority

12)  Management of user analytics, that will be specific to my games and probably will utilise Steam's and Unreal's analytics for gathering information about the user , obviously with the permission of the user, most likely this will require minimum Pharo code

13) Unification of Browser, Workspace , GTInspector, GTDebugger and GtSpotter under one tool

14) More strict evaluation of potential errors and user mistakes 

and many more. All those ideas are mostly long term so it may be years if not a decade before they materialise and probably will change along the process to fit practical needs. 
