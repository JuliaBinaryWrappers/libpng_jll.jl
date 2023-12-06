# Autogenerated wrapper script for libpng_jll for x86_64-apple-darwin
export libpng

using Zlib_jll
JLLWrappers.@generate_wrapper_header("libpng")
JLLWrappers.@declare_library_product(libpng, "@rpath/libpng16.16.dylib")
function __init__()
    JLLWrappers.@generate_init_header(Zlib_jll)
    JLLWrappers.@init_library_product(
        libpng,
        "lib/libpng16.16.40.0.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
