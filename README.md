# himkit/homebrew-tap

Homebrew tap for [OpenKey](https://github.com/himkit/OpenKey) — a Vietnamese
input method for macOS, built from a fork with the event-tap-recovery fix.

## Install

```bash
brew tap himkit/tap
brew trust himkit/tap          # if your Homebrew asks
brew install --cask --no-quarantine himkit/tap/openkey
```

> **Use `--no-quarantine`.** This build is ad-hoc signed (not notarized).
> Without the flag, macOS Gatekeeper shows *"OpenKey is damaged and can't be
> opened"* and you must run
> `xattr -d com.apple.quarantine /Applications/OpenKey.app` to fix it.

After installing, grant **Accessibility** permission once:

`System Settings → Privacy & Security → Accessibility → enable OpenKey`

## Update

```bash
brew upgrade --cask himkit/tap/openkey
```
