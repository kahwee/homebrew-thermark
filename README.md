# thermark for Homebrew

Print thermal labels without the vendor app. This tap installs the prebuilt
BLE-only macOS binary for Apple Silicon or Intel. No Rust compiler is needed.

```sh
brew install kahwee/thermark/thermark
thermark scan --save
thermark doctor --use-config
```

B1 over BLE is hardware-tested. Other profiles are experimental and require
`--allow-experimental`. USB support is available in the full GitHub release.

[Quick start and source](https://github.com/kahwee/thermark) ·
[Release downloads](https://github.com/kahwee/thermark/releases/latest)

Each formula pins an upstream release URL and SHA-256 digest. Upgrade with
`brew update && brew upgrade kahwee/thermark/thermark`.
