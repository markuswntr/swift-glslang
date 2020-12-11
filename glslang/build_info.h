#ifndef GLSLANG_BUILD_INFO
#define GLSLANG_BUILD_INFO

#define GLSLANG_VERSION_MAJOR 8
#define GLSLANG_VERSION_MINOR 13
#define GLSLANG_VERSION_PATCH 3743
#define GLSLANG_VERSION_FLAVOR ""

#define GLSLANG_VERSION_GREATER_THAN(major, minor, patch) \
    (((major) > GLSLANG_VERSION_MAJOR) || ((major) == GLSLANG_VERSION_MAJOR && \
    (((minor) > GLSLANG_VERSION_MINOR) || ((minor) == GLSLANG_VERSION_MINOR && \
     ((patch) > GLSLANG_VERSION_PATCH)))))

#define GLSLANG_VERSION_GREATER_OR_EQUAL_TO(major, minor, patch) \
    (((major) > GLSLANG_VERSION_MAJOR) || ((major) == GLSLANG_VERSION_MAJOR && \
    (((minor) > GLSLANG_VERSION_MINOR) || ((minor) == GLSLANG_VERSION_MINOR && \
     ((patch) >= GLSLANG_VERSION_PATCH)))))

#define GLSLANG_VERSION_LESS_THAN(major, minor, patch) \
    (((major) < GLSLANG_VERSION_MAJOR) || ((major) == GLSLANG_VERSION_MAJOR && \
    (((minor) < GLSLANG_VERSION_MINOR) || ((minor) == GLSLANG_VERSION_MINOR && \
     ((patch) < GLSLANG_VERSION_PATCH)))))

#define GLSLANG_VERSION_LESS_OR_EQUAL_TO(major, minor, patch) \
    (((major) < GLSLANG_VERSION_MAJOR) || ((major) == GLSLANG_VERSION_MAJOR && \
    (((minor) < GLSLANG_VERSION_MINOR) || ((minor) == GLSLANG_VERSION_MINOR && \
     ((patch) <= GLSLANG_VERSION_PATCH)))))

#endif // GLSLANG_BUILD_INFO
