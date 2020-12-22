load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "TestBazelLib",
    srcs = [
        "AppDelegate.swift",
        "SceneDelegate.swift",
        "ViewController.swift",
    ],
    data = glob([
        "**/*.storyboard",
    ])
)

ios_application(
    name = "TestBazel",
    bundle_id = "self.axl411.TestBazel",
    families = [
        "iphone",
    ],
    minimum_os_version = "14.0",
    infoplists = [":TestBazel/Info.plist"],
    visibility = ["//visibility:public"],
    deps = [":TestBazelLib"],
)
