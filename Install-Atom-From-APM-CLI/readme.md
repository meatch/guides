# Atom Installation Wonder Woman Edition

I used to make a disk image installer for Mac. And while it worked, it was a heavy application to download and install. And I had to keep updating it as Atom and I evolved. Then I found this amazing article on how to use Atom's Package Manager CLI to install Snippets, Shortcuts, and Plugins on the fly.

https://evanhahn.com/atom-apm-install-list/

This solves a heck of a lot, but more importantly - make it easier to install on both [Mac](#mac) & [Windows](#win).


## Mac Install

1. Download and Install <a href="https://atom.io/" target="atom">Atom</a>

2. Open Terminal (Location: /Applications/Utilities/Terminal)

3. Run the Terminal commands below by copying, pasting, and pressing return
    * *Takes time-depending on your internet speed (has to download all the plugins)*

```
cd ~/.atom/;
curl -O https://raw.githubusercontent.com/meatch/guides/master/Install-Atom-From-APM-CLI/snippets.cson;
curl -O https://raw.githubusercontent.com/meatch/guides/master/Install-Atom-From-APM-CLI/keymap.cson;
curl -O https://raw.githubusercontent.com/meatch/guides/master/Install-Atom-From-APM-CLI/my_atom_packages.txt;
apm install --packages-file my_atom_packages.txt;  
rm -rf my_atom_packages.txt;
cd ~/;
```

4. If Atom is running, close and relaunch Atom for your new plugins to apply.


## Windows Install

1. Download and Install <a href="https://atom.io/" target="atom">Atom</a>

2. sdfkjn

---

![Wonder Woman](https://upload.wikimedia.org/wikipedia/en/e/ed/Wonder_Woman_%282017_film%29.jpg)

## Why Wonder Woman?

My last 2 installers were Iron Man (Sublime) and Batman (Atom). Just seemed fitting she would take on this new approach to installing Atom with my favorite shortcuts, plugins and snippets. And since she saved the DC franchise in the theaters, I think she will hold the space here for quite some time.


