This folder contains all the dumped global environment variables and is critical
for tracking changes between patches. To check for changes after a patch ensure
`toc.g` has only `dump.lua` and `dump_globals.lua` enabled. If changes are found
then update the corresponding `src/` file.