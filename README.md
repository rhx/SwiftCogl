# SwiftCogl
A Swift wrapper around cogl that is largely auto-generated from gobject-introspection.
For up to date (auto-generated) reference documentation, see https://rhx.github.io/SwiftCogl/

![macOS 11 build](https://github.com/rhx/SwiftCogl/workflows/macOS%2011/badge.svg)
![macOS 10.15 build](https://github.com/rhx/SwiftCogl/workflows/macOS%2010.15/badge.svg)
![Ubuntu 20.04 build](https://github.com/rhx/SwiftCogl/workflows/Ubuntu%2020.04/badge.svg)
![Ubuntu 18.04 build](https://github.com/rhx/SwiftCogl/workflows/Ubuntu%2018.04/badge.svg)

## What is new?

Version 15 of gir2swift provides a Package Manager Plugin.  This requires Swift 5.6 or higher.

## Prerequisites

### Swift 5.6 or higher

To build, download Swift from https://swift.org/download/ -- if you are using macOS, make sure you have the command line tools installed as well).  Test that your compiler works using `swift --version`, which should give you something like

	$ swift --version
	swift-driver version: 1.45.2 Apple Swift version 5.6 (swiftlang-5.6.0.323.62 clang-1316.0.20.8)
    Target: x86_64-apple-darwin20.3.0

on macOS, or on Linux you should get something like:

	$ swift --version
	Swift version 5.6.0 (swift-5.6.0-RELEASE)
	Target: x86_64-unknown-linux-gnu

### GLib 2.56 and Cogl-1.22 or higher

These Swift wrappers have been tested with cogl-1.22 as well as glib-2.56, 2.58, 2.60, 2.62, 2.64, 2.66, 2.68, 2.70, and 2.72.  They should work with higher versions, but YMMV.  Also make sure you have `gobject-introspection` and its `.gir` files installed.

#### Linux

##### Ubuntu

On Ubuntu 20.04, you can use the cogl that comes with the distribution.  Just install with the `apt` package manager:

	sudo apt update
	sudo apt install libcogl-dev gobject-introspection libgirepository1.0-dev libxml2-dev jq

On Ubuntu 18.04, the name of the packages are slightly different.  Install the following with the `apt` package manager:

	sudo apt update
	sudo apt install libCogl2-dev libCogl-gobject2 gobject-introspection libgirepository1.0-dev libxml2-dev

##### Fedora

On Fedora 29, you can use the gtk that comes with the distribution.  Just install with the `dnf` package manager:

	sudo dnf install cogl-devel glib2-devel gobject-introspection-devel libxml2-devel jq

#### macOS

On macOS, you can install glib and Cogl using HomeBrew (for setup instructions, see http://brew.sh).  Once you have a running HomeBrew installation, you can use it to install a native version of Cogl:

	brew update
	brew install cogl glib glib-networking gobject-introspection pkg-config jq

## Usage

Normally, you don't build this package directly (but for testing you can - see 'Building' below). Instead you need to embed SwiftCogl into your own project using the [Swift Package Manager](https://swift.org/package-manager/).  After installing the prerequisites (see 'Prerequisites' below), add `SwiftCogl` as a dependency to your `Package.swift` file, e.g.:

```Swift
// swift-tools-version:5.6

import PackageDescription

let package = Package(name: "MyPackage",
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git", branch: "main"),
        .package(url: "https://github.com/rhx/SwiftCogl.git", branch: "main"),
    ],
    targets: [
        .target(name: "MyPackage",
                dependencies: [
                    .product(name: "Cogl", package: "SwiftCogl")
                ]
        )
    ]
)
```

## Building

Normally, you don't build this package directly, but you embed it into your own project (see 'Usage' above).  However, you can build and test this module separately to ensure that everything works.  Make sure you have all the prerequisites installed (see above).  After that, you can simply clone this repository and build the command line executable (be patient, this will download all the required dependencies and take a while to compile) using

	git clone https://github.com/rhx/SwiftCogl.git
	cd SwiftCogl
    swift build -Xswiftc -suppress-warnings
    swift test  -Xswiftc -suppress-warnings

### Xcode

On macOS, you can build the project using Xcode instead.  To do this, you need to create an Xcode project first, then open the project in the Xcode IDE:

	./xcodegen.sh
	open Cogl.xcodeproj

After that, use the (usual) Build and Test buttons to build/test this package.



## Documentation

You can find reference documentation inside the [docs](https://rhx.github.io/SwiftCogl/) folder.
This was generated using the [jazzy](https://github.com/realm/jazzy) tool.
If you want to generate your own documentation, matching your local installation,
you can use the `generate-documentation.sh` script in the repository.
Make sure you have [sourcekitten](https://github.com/jpsim/SourceKitten) and [jazzy](https://github.com/realm/jazzy) installed, e.g. on macOS:

	brew install sourcekitten
	sudo gem install jazzy
	./generate-documentation.sh

### Troubleshooting

Here are some common errors you might encounter and how to fix them.

### Missing `.gir` Files
If you get an error such as

	Girs located at
	Cannot open '/GLib-2.0.gir': No such file or directory

Make sure that you have the relevant `gobject-introspection` packages installed (as per the Pre-requisites section), including their `.gir` and `.pc` files.

### Old Swift toolchain or Xcode
If, when you run `swift build`, you get a `Segmentation fault (core dumped)` or circular dependency error such as

	warning: circular dependency detected while parsing pangocairo: harfbuzz -> freetype2 -> harfbuzz
	
this probably means that your Swift toolchain is too old, particularly on Linux (at the time of this writing, some Linux distributions require at least Swift 5.5).  Make sure the latest toolchain is the one that is found when you run the Swift compiler (see above).

  If you get an older version, make sure that the right version of the swift compiler is found first in your `PATH`.  On macOS, use xcode-select to select and install the latest version, e.g.:

	sudo xcode-select -s /Applications/Xcode.app
	xcode-select --install

### Known Issues

 * When building, a lot of warnings appear.  This is largely an issue with automatic `RawRepresentable` conformance in the Swift Standard library.  As a workaround, you can turn this off by passing the `-Xswiftc -suppress-warnings` parameter when building.
 
 * The current build system does not support directory paths with spaces (e.g. the `My Drive` directory used by Google Drive File Stream).
 * BUILD_DIR is not supported in the current build system.
 
As a workaround, you can use the old build scripts, e.g. `./build.sh` (instead of `run-gir2swift.sh` and `swift build`) to build a package.
