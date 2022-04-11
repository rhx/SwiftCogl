// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Cogl",
    products: [ .library(name: "Cogl", targets: ["Cogl"]) ],
    dependencies: [
        .package(name: "gir2swift", url: "https://github.com/rhx/gir2swift.git", .branch("swift52")),
        .package(name: "GdkPixbuf", url: "https://github.com/rhx/SwiftGdkPixbuf.git", .branch("swift52")),
    ],
    targets: [
	.systemLibrary(name: "CCogl", pkgConfig: "cogl-1.0",
	    providers: [
		.brew(["cogl", "cairo", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libcogl-gles2-dev", "libcogl-dev", "libcairo2-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
	.systemLibrary(name: "CCoglPath", pkgConfig: "cogl-1.0",
	    providers: [
		.brew(["cogl", "cairo", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libcogl-path-dev", "libcairo2-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(name: "Cogl", dependencies: ["CCogl", "CCoglPath", "GdkPixbuf"]),
        .testTarget(name: "CoglTests", dependencies: ["Cogl"]),
    ]
)
