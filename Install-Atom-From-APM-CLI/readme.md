# Atom Installation Wonder Woman Edition

I used to make a disk image installer for Mac. And while it worked, it was a heavy application to download and install. And I had to keep updating it as Atom and I evolved. Then I found this amazing article on how to use Atom's Package Manager CLI to install Snippets, Shortcuts, and packages on the fly.

<a href="https://evanhahn.com/atom-apm-install-list/" target="_blank">
    Evan Hahn - Install a list of Atom packages from a file
</a>

This solves a heck of a lot, but more importantly - make it easier to install on both [Mac](#mac-install) & [Windows](#windows-install).

## TOC

* [Mac Install](#mac-install)
* [Windows Install](#windows-install)
* [For Those That Want To Know More](#for-those-that-want-to-know-more)
* [Some Packages Require Node.js](#some-packages-require-nodejs)
* [Why Wonder Woman](#why-wonder-woman)


## Mac Install

1. Download and Install <a href="https://atom.io/" target="atom">Atom</a>

2. Open Atom and choose ***Atom > Install Shell Commands*** from the upper left menu

3. Open ***Terminal*** (Location: /Applications/Utilities/Terminal)

4. Run the commands below by copying, pasting, and pressing return
    * *Get a cup-o-coffee...takes time-depending on your internet speed (has to download all the packages)*

```
cd ~/.atom/;
curl -O https://raw.githubusercontent.com/meatch/guides/master/Install-Atom-From-APM-CLI/snippets.cson;
curl -O https://raw.githubusercontent.com/meatch/guides/master/Install-Atom-From-APM-CLI/keymap.cson;
curl -O https://raw.githubusercontent.com/meatch/guides/master/Install-Atom-From-APM-CLI/atom-packages-mac.txt;
apm install --packages-file atom-packages-mac.txt;  
rm -rf atom-packages-mac.txt;
cd ~/;
```

5. Relaunch Atom and have fun

## Windows Install

<a href="https://enspyred.com/assets/repo/Windows-Install-Web-Software/2-Atom.mp4" target="windows-atom-video">
	Install Atom for Windows Video
</a>

1. Download and Install <a href="https://atom.io/" target="atom">Atom</a>

2. Open ***Windows Command Prompt*** (Click lower left search bar and type "Command Prompt")

3. Run the commands below by copying, pasting, and pressing return
    * *Get a cup-o-coffee...takes time-depending on your internet speed (has to download all the packages)*

```
cd %HOMEPATH%\.atom
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/meatch/guides/master/Install-Atom-From-APM-CLI/snippets.cson', 'snippets.cson') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/meatch/guides/master/Install-Atom-From-APM-CLI/keymap.cson', 'keymap.cson') }"
cd %HOMEPATH%\AppData\Local\atom\app-*\resources\cli
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/meatch/guides/master/Install-Atom-From-APM-CLI/atom-packages-win.txt', 'atom-packages-win.txt') }"
apm install --packages-file atom-packages-win.txt
cd %HOMEPATH%
```

5. Relaunch Atom and have fun

---

# For Those That Want to Know More

## Shortcuts
Just like it sounds, I have added shortcuts to make it easier to evoke packages and actions. I am editing Atom's built-in keymaps.
<a
    class="btn btn-primary"
    href="http://flight-manual.atom.io/behind-atom/sections/keymaps-in-depth/"
    target="keymaps"
    >
    More about keymaps
</a>


## Snippets
Snippets allows us to trigger repetivie blocks of code - to speed up how we develop. Writing the same code over and over again, snippets are a great way to save you time and carpal tunnel. I am editing Atom's built-in snippets.
<a
    class="btn btn-primary"
    href="http://flight-manual.atom.io/using-atom/sections/snippets/"
    target="snippets"
    >
    More about snippets
</a>


## Packages
Atom is open source, which means there is a community of developers adding to it's functionality. This speeds up Atom's development, and shares the burden. if a developer wants to add a feature, they can. And you as an Atom user can choose wether or not to use their package.

I have only provided the bare essentials to get us up and running and there is a whole lot more Atom can do - you may just have to search for the package that fits your needs.
<a
    class="btn btn-primary"
    href="http://flight-manual.atom.io/using-atom/sections/atom-packages/"
    target="packages"
    >
    More about packages
</a>

### Essential Packages
* atom-wrap-in-tag
* auto-detect-indentation
* auto-update-packages
* default-language
* duplicate-line-or-selection
* emmet
* emmet-snippets-compatibility
* file-icons
* highlight-selected
* jshint
* multi-cursor
* platformio-ide-terminal
* simple-panes
* symbols-tree-view
* project-manager

### Mac Specific
* native-color-picker

### Win Specific
* color-picker

### Nice to Have
* atom-beautify

---

# Some Packages Require Node.js
**PLEASE NOTE:** Some packages require the installation of Node to run. Node is a JS application that is very popular these days, and certainly worth installing if you are going to be doing web development.

Use the installer for your Operating System:

* [ Which version of **Mac** am I running? ](https://support.apple.com/en-us/HT201260)
* [ Which version of **Windows** am I running? ](https://support.microsoft.com/en-us/help/13443/windows-which-operating-system)

[Install Node for Mac or Windows](https://nodejs.org/en/download/)

---

![Wonder Woman](https://upload.wikimedia.org/wikipedia/en/e/ed/Wonder_Woman_%282017_film%29.jpg)

# Why Wonder Woman?

My last 2 installers were Iron Man (Sublime) and Batman (Atom). Just seemed fitting she would take on this new approach to installing Atom with my favorite shortcuts, packages and snippets. And since she saved the DC franchise in theaters, I think she will hold the space here for quite some time.
