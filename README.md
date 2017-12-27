# Install
Put the files in this repo into your latex libs directory

[The link to find your libs directory](https://tex.stackexchange.com/questions/1137/where-do-i-place-my-own-sty-or-cls-files-to-make-them-available-to-all-my-te)

Within that folder make sure to put it under `tex/latex/` and then the folder with repo files.

# Running
After successful install it should just work with your favourite latex shit

An example file for testing:
```
\documentclass{document}

\begin{document}

\setprimary{purple}

\section{Title}
Hello there, some other text should go on under here

\end{document}
```