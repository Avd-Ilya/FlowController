// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CompanyKit",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CompanyKit",
            targets: ["CompanyTutorialKit", "CompanyAuthorizationKit", "CompanyLoginKit", "CompanyLogoutKit", "CompanyCabinetKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CompanyTutorialKit",
            dependencies: []),
        .testTarget(
            name: "CompanyTutorialKitTests",
            dependencies: ["CompanyTutorialKit"]),
        
        .target(
            name: "CompanyAuthorizationKit",
            dependencies: []),
        .testTarget(
            name: "CompanyAuthorizationKitTests",
            dependencies: ["CompanyAuthorizationKit"]),
        
        .target(
            name: "CompanyLoginKit",
            dependencies: ["CompanyAuthorizationKit"]),
        .testTarget(
            name: "CompanyLoginKitTests",
            dependencies: ["CompanyLoginKit"]),
        
        .target(
            name: "CompanyLogoutKit",
            dependencies: []),
        .testTarget(
            name: "CompanyLogoutKitTests",
            dependencies: ["CompanyLogoutKit"]),
        
        .target(
            name: "CompanyCabinetKit",
            dependencies: ["CompanyLoginKit", "CompanyLogoutKit"]),
        .testTarget(
            name: "CompanyCabinetKitTests",
            dependencies: ["CompanyCabinetKit"]),
    ]
)
