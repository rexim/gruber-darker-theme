# Gruber Darker

Gruber Darker color theme for Emacs by Jason Blevins. A darker variant
of the Gruber Dark theme for BBEdit by John Gruber. Adapted for
deftheme by Alexey Kutepov a.k.a. rexim.

# Installation

You can use built-in package manager (package.el) or do all by your
hands.

## Package.el

Enable marmalade package repo if needed --- add the following to your
emacs config file (.emacs, init.el, whatever):

```
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
```

Then use `M-x package-install RET gruber-darker-theme RET` to install
the theme. Use `M-x customize-themes` to change your current theme.

## Manual

Download the theme to a local directory. You can do it through `git
clone` command:

```
git clone git://github.com/rexim/gruber-darker-theme.git
```

Then add path to gruber-darker-theme to custom-theme-load-path list
--- add the following to your emacs config file (.emacs, init.el,
whatever):

```
(add-to-list 'custom-theme-load-path
             "/path/to/gruber-darker-theme/")
```

Use `M-x customize-themes` to change your current theme.

# Screenshot

![gruber-darker-theme](https://github.com/rexim/gruber-darker-theme/raw/master/gruber-darker-theme.png)
