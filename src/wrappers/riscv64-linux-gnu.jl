# Autogenerated wrapper script for libpng_jll for riscv64-linux-gnu
export libpng

using Zlib_jll
JLLWrappers.@generate_wrapper_header("libpng")
JLLWrappers.@declare_library_product(libpng, "libpng16.so.16")
function __init__()
    JLLWrappers.@generate_init_header(Zlib_jll)
    JLLWrappers.@init_library_product(
        libpng,
        "lib/libpng16.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
