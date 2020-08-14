# Autogenerated wrapper script for libpng_jll for armv7l-linux-gnueabihf
export libpng

using Zlib_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libpng`
const libpng_splitpath = ["lib", "libpng16.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpng_path = ""

# libpng-specific global declaration
# This will be filled out by __init__()
libpng_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpng = "libpng16.so.16"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"libpng")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Zlib_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Zlib_jll.LIBPATH_list,))

    global libpng_path = normpath(joinpath(artifact_dir, libpng_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpng_handle = dlopen(libpng_path)
    push!(LIBPATH_list, dirname(libpng_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

