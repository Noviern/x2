This folder contains all the dumped environment globals variables and is
critical for tracking changes between patches. To check for changes after a
patch ensure `toc.g` has only `dump.lua` and `dump_globals.lua` enabled. If no
changes were found, other than function references, restore the folder with
`git restore dump/`. If changes are found then update the corresponding `src/`
file.