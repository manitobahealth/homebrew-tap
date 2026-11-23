# homebrew-tap

Released binaries of `dpinctl`, the command line for DPIN Connect, with the Homebrew formula and the Scoop manifest that install them. `dpinctl` is for the people who operate the DPIN Connect service and needs an account on it; it does nothing without one.

This repository holds no source. Each release carries one archive per platform and `checksums.txt`, the SHA-256 checksum of each archive, which Homebrew and Scoop verify before installing. The binaries are not code-signed.

## Install

macOS and Linux, with [Homebrew](https://brew.sh):

```bash
brew install manitobahealth/tap/dpinctl
brew upgrade dpinctl
```

Windows, with [Scoop](https://scoop.sh):

```powershell
scoop bucket add manitobahealth https://github.com/manitobahealth/homebrew-tap
scoop install dpinctl
scoop update dpinctl
```

## Contents

| Path                  | Holds                                              |
| --------------------- | -------------------------------------------------- |
| `Formula/dpinctl.rb`  | The Homebrew formula, for macOS and Linux          |
| `bucket/dpinctl.json` | The Scoop manifest, for Windows                    |
| Releases              | The archives for each version, and their checksums |

The formula, the manifest and the releases are written by the release process of the service's own repository and are not edited here.
