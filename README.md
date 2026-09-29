# polatov/homebrew-tap

Homebrew casks for apps by Timur Polatov.

```sh
brew install --cask polatov/tap/likenotepad
```

| Cask | App |
|---|---|
| `likenotepad` | [LikeNotepad.exe](https://github.com/polatov/likenotepad) — a plain text editor for macOS in the spirit of Windows Notepad |

The cask follows the app's GitHub releases: `.github/workflows/update.yml` checks for a new
release every day and updates the version and checksum; `test.yml` installs the cask on a
clean macOS runner after every change.
