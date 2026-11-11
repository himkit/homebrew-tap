# himkit/homebrew-tap

Homebrew tap for [OpenKey for macOS](https://github.com/himkit/openkey-macos), a
macOS-only fork of [OpenKey](https://github.com/tuyenvm/OpenKey) (Vietnamese
input method by Mai Vũ Tuyên, GPL-3.0). Source code and release notes:
[himkit/openkey-macos releases](https://github.com/himkit/openkey-macos/releases).

The fork fixes:

- typing that stops working after macOS disables the event tap;
- garbled typing in terminals and TUIs (stray `D` characters, text inserted
  mid-word);
- "Run on startup" on macOS 13+.

Builds are universal (Intel + Apple Silicon) and ad-hoc signed.

Check the current version with `brew info --cask himkit/tap/openkey`.

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
xattr -d com.apple.quarantine /Applications/OpenKey.app
pkill -x OpenKey; open /Applications/OpenKey.app
```

`brew upgrade` puts the quarantine flag back on the app, so remove it after
every upgrade (or Gatekeeper may report *"OpenKey is damaged"*), then restart
OpenKey so the new version runs. If OpenKey quits right after starting, grant
the Accessibility permission again (see above).
