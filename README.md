vagrant-gerrit
==============

A vagrantbox to use with gerrit

Instructions
============

1) Make sure you have all Git submodules checked-out (clone this
   repository with `--recurse-submodules` or run `git submodule update
   --init` in a non-recursive clone).

2) Download `gerrit-2.8.1.war` (e.g. from
   https://www.gerritcodereview.com/download/gerrit-2.8.1.war) and
   drop the file in the same directory as `Vagrantfile` (with the name
   `gerrit-2.8.1.war`).

3) Run `vagrant up`

4) Enjoy ;-). Point your web browser to http://localhost:8080/ for the
   web interface. Use `vagrant ssh` to open a shell on the machine,
   Gerrit runs with `$site_path=/opt/gerrit`.
