# TedergaGO Homebrew tap

Official Homebrew formulas for Tedplatform tools.

## Install

```bash
brew tap tedergago/tap
brew install tedp
```

Or in one line:
```bash
brew install tedergago/tap/tedp
```

## What's here

| Formula | Description | Latest |
|---|---|---|
| `tedp` | Tedplatform CLI (deploy + status + logs + rollback + …) | 0.41.3 |

## Update

This tap is auto-updated by goreleaser on every `v*` tag push to
[grknatabay/tedplatform-mcp](https://github.com/grknatabay/tedplatform-mcp).
The HOMEBREW_TAP_TOKEN secret is configured on the upstream repo.

## Source

Binaries are hosted under this tap's GitHub Releases (because the source
mcp repo is private). SHA-256 checksums match the upstream
`checksums.txt` asset.
