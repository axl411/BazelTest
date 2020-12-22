load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

def _my_custom_lib_impl(ctx):
    name = ctx.attr.name
    srcs = ctx.attr.srcs

    swift_library(
        name = name,
        module_name = name,
        srcs = srcs,
        visibility = ["//visibility:public"],
    )

my_lib = rule(
    implementation = _my_custom_lib_impl,
    attrs = {
        "srcs": attr.string_list(mandatory=True, allow_empty=False)
    },
)
