// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "Cogl",
    products: [ .library(name: "Cogl", targets: ["Cogl"]) ],
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git",      branch: "development"),
        .package(url: "https://github.com/rhx/SwiftGdkPixbuf.git", branch: "development"),
    ],
    targets: [
	.systemLibrary(name: "CCogl", pkgConfig: "cogl-1.0",
	    providers: [
		.brew(["cogl", "gdk-pixbuf", "cairo", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libcogl-gles2-dev", "libgdk-pixbuf2.0-dev", "libcogl-dev", "libcairo2-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
	.systemLibrary(name: "CCoglPath", pkgConfig: "cogl-1.0",
	    providers: [
		.brew(["cogl", "cairo", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libcogl-path-dev", "libcairo2-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(
            name: "Cogl",
            dependencies: [
                "CCogl",
                "CCoglPath",
                .product(name: "gir2swift", package: "gir2swift"),
                .product(name: "GdkPixbuf", package: "gir2swift"),
            ],
            swiftSettings: [.unsafeFlags(["-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug))],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "CoglTests", dependencies: ["Cogl"]),
    ]
)
