# Atom Installation Wonder Woman Edition

I used to make a disk image installer for Mac. And while it worked, it was a heavy application to download and install. And I had to keep updating it as Atom and I evolved. Then I found this amazing article on how to use Atom's Package Manager CLI to install Snippets, Shortcuts, and packages on the fly.

https://evanhahn.com/atom-apm-install-list/

This solves a heck of a lot, but more importantly - make it easier to install on both [Mac](#mac) & [Windows](#win).


## Mac Install

1. Download and Install <a href="https://atom.io/" target="atom">Atom</a>

2. Open Atom if you have not already, then quit out of it. Make sure its not running, otherwise it won't install packages, snippets and preferences properly

3. Open Terminal (Location: /Applications/Utilities/Terminal)

4. Run the Terminal commands below by copying, pasting, and pressing return
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

1. Download and Install <a href="https://atom.io/" target="atom">Atom</a>

2. Open Atom if you have not already, then quit out of it. Make sure its not running, otherwise it won't install packages, snippets and preferences properly

3. Open Windows Command Prompt (Click lower left search bar and type "Command Prompt")

4. Run the Terminal commands below by copying, pasting, and pressing return
    * *Get a cup-o-coffee...takes time-depending on your internet speed (has to download all the packages)*

```
cd ~/.atom/;
cd %HOMEPATH%\.atom
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/meatch/guides/master/Install-Atom-From-APM-CLI/snippets.cson', 'snippets.cson') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/meatch/guides/master/Install-Atom-From-APM-CLI/keymap.cson', 'keymap.cson') }"
cd %HOMEPATH%\AppData\Local\atom\app-*\resources\cli
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/meatch/guides/master/Install-Atom-From-APM-CLI/atom-packages-win.txt', 'atom-packages-win.txt') }"
apm install --packages-file atom-packages-win.txt
cd %HOMEPATH%
cd ~/;
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
    href="http://flight-manual.atom.io/using-atom/sections/snippets/"
    target="snippets"
    >
    More about snippets
</a>


### Essential Packages
* atom-wrap-in-tag
* auto-detect-indentation
* default-language
* duplicate-line-or-selection
* emmet
* emmet-snippets-compatibility
* file-icons
* highlight-selected
* jshint
* multi-cursor
* simple-panes

### Mac Specific
* native-color-picker

### Win Specific
* color-picker

### Nice to Have
* project-manager
* sass-autocompile
* auto-update-packages
* platformio-ide-terminal
* atom-beautify

---

![Wonder Woman](https://upload.wikimedia.org/wikipedia/en/e/ed/Wonder_Woman_%282017_film%29.jpg)

# Why Wonder Woman?

My last 2 installers were Iron Man (Sublime) and Batman (Atom). Just seemed fitting she would take on this new approach to installing Atom with my favorite shortcuts, packages and snippets. And since she saved the DC franchise in the theaters, I think she will hold the space here for quite some time.
