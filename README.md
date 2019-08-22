# PitchSpeller

![Swift Version](https://img.shields.io/badge/Swift-5.0-orange.svg)
![Platforms](https://img.shields.io/badge/platform-macOS-lightgrey.svg)
[![Build Status](https://travis-ci.org/bwetherfield/PitchSpeller.svg?branch=master)](https://travis-ci.org/bwetherfield/PitchSpeller)

The `PitchSpeller` module contains work toward a flexible [pitch spelling algorithm](https://github.com/dn-m/NotationModel/tree/master/Sources/SpelledPitch/PitchSpeller/Wetherfield), as formalized in my Harvard undegrad thesis. This project aims to take unspelled pitch information (e.g., MIDI note numbers), and produce optimal spelled versions of them, given the musical context and user preference.

`PitchSpeller` builds off of the [dn-m](https://github.com/dn-m/) ecosystem making use of the musical and algebraic structures defined in [dn-m/Music](https://github.com/dn-m/Music), [dn-m/NotationModel](https://github.com/dn-m/NotationModel) and [dn-m/Structure](https://github.com/dn-m/Structure).

## Development

Work on this package requires Swift 5.0.

### Build instructions

Clone the repo.

```Bash
git clone https://github.com/bwetherfield/PitchSpeller
```

Dive inside.

```Bash
cd PitchSpeller
```

Ask [Swift Package Manager](https://swift.org/package-manager/) to update dependencies (all are `dn-m`).

```Bash
swift package update
```

Compiles code and runs tests in terminal.

```Bash
swift test
```

Ask Swift Package Manager to generate a nice Xcode project.

```Bash
swift package generate-xcodeproj
```

Open it up.

```Bash
open PitchSpeller.xcodeproj/
```
