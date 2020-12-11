// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "swift-glslang",
  products: [
    .library(name: "CGLSLang", targets: ["CGLSLang"]),
  ],
  targets: [
    .target(
      name: "CGLSLang",
      path: ".",
      exclude: [
        // A list of all files in the glslang submodule (GLSLang target) that
        // are of no interest for a Swift wrapper (like build instructions).
        //
        // The submodule is intentionally not cleaned from any resources or
        // unnecessary source files, as it must not deviate from the origin.
        // While none of them are needed for the target, this is merely a wrapper.
        "build_overrides",
        "External",
        "gtests",
        "hlsl",
        "kokoro",
        "ndk_test",
        "Test",
        "WORKSPACE",

        "_config.yml",
        "Android.mk",
        "BUILD.bazel",
        "BUILD.gn",
        "build_info.h.tmpl",
        "build_info.py",
        "CHANGES.md",
        "ChooseMSVCCRT.cmake",
        "CMakeLists.txt",
        "CODE_OF_CONDUCT.md",
        "DEPS",
        "known_good.json",
        "known_good_khr.json",
        "license-checker.cfg",
        "LICENSE.txt",
        "README-spirv-remap.txt",
        "README.md",
        "standalone.gclient",
        "update_glslang_sources.py",

        "include/CGLSLang.apinotes",

        "OGLCompilersDLL/CMakeLists.txt",

        "SPIRV/spirv.hpp",
        "SPIRV/CMakeLists.txt",
        "SPIRV/GLSL.ext.AMD.h",

        "StandAlone/CMakeLists.txt",
        "StandAlone/spirv_remap.cpp",
        "StandAlone/StandAlone.cpp",

        "glslang/CMakeLists.txt",
        "glslang/updateGrammar",

        "glslang/HLSL/pch.h",

        "glslang/MachineIndependent/glslang.m4",
        "glslang/MachineIndependent/glslang.y",
        "glslang/MachineIndependent/pch.h",

        "glslang/OSDependent/Web",
        "glslang/OSDependent/Windows", // GLSLANG_OSINCLUDE_WIN32
        // "glslang/OSDependent/Unix", // GLSLANG_OSINCLUDE_UNIX
        "glslang/OSDependent/Unix/CMakeLists.txt",
      ], cxxSettings: [
        .define("GLSLANG_OSINCLUDE_UNIX", to: "1"),
//        .define("GLSLANG_OSINCLUDE_WIN32", to: "1"),
        .define("ENABLE_OPT", to: "0"),
        .define("ENABLE_HLSL", to: "0"),
        .headerSearchPath(".")
    ]),
  ],
  cxxLanguageStandard: .cxx14
)
