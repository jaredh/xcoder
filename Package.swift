// swift-tools-version:5.0
import PackageDescription

let package = Package(
	name: "Xcoder",
	platforms: [
		.macOS(.v10_14)
	],
	products: [
		.executable(
			name: "xcoder",
			targets: ["xcoder"]
		),
	],
	dependencies: [
		.package(url: "https://github.com/dannbeau/XcodeProject.git", from: "0.5.2"),
		.package(url: "https://github.com/jaredh/CommandRegistry.git", from: "0.1.4")
	],
	targets: [
		.target(
			name: "xcoder",
			dependencies: [
				"XcodeProject",
				"CommandRegistry"
			]
		),
	]
)
