add_library(tbbThreading INTERFACE)

if(NOT BUILD_SHARED_LIBS)
    set(TBB_STATIC TRUE)
endif()

require_package(TBB REQUIRED)

target_link_libraries(tbbThreading INTERFACE TBB::tbb)
target_compile_definitions(tbbThreading INTERFACE -DTBB_USE_CAPTURED_EXCEPTION)

install(TARGETS tbbThreading EXPORT Libnest2DTargets INCLUDES DESTINATION include)
set(LIBNEST2D_PUBLIC_PACKAGES "${LIBNEST2D_PUBLIC_PACKAGES};TBB" CACHE INTERNAL "")
