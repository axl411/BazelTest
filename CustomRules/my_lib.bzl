load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

def my_lib(**kwargs):
    name = kwargs.pop("name")
    srcs = kwargs.pop("srcs")

    swift_library(
        name = name,
        module_name = name,
        srcs = srcs,
        visibility = ["//visibility:public"],
    )
