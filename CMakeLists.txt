cmake_minimum_required(VERSION 2.8.12)
project(spatialite LANGUAGES C)

find_package(SQLite3 REQUIRED)
find_package(ZLIB REQUIRED)
find_package(Iconv REQUIRED)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

file(GLOB databaseCPPSources src/databaseDriver/*.cpp)
file(GLOB databaseHSources src/databaseDriver/*.h)

add_library(spatialite STATIC
    src/spatialite/extra_tables.c
    src/spatialite/mbrcache.c
    src/spatialite/metatables.c
    src/spatialite/se_helpers.c
    src/spatialite/spatialite.c
    src/spatialite/spatialite_init.c
    src/spatialite/srid_aux.c
    src/spatialite/statistics.c
    src/spatialite/table_cloner.c
    src/spatialite/virtualXL.c
    src/spatialite/virtualbbox.c
    src/spatialite/virtualdbf.c
    src/spatialite/virtualelementary.c
    src/spatialite/virtualfdo.c
    src/spatialite/virtualgpkg.c
    src/spatialite/virtualnetwork.c
    src/spatialite/virtualshape.c
    src/spatialite/virtualspatialindex.c
    src/spatialite/virtualxpath.c
    src/shapefiles/shapefiles.c
    src/shapefiles/validator.c
    src/srsinit/srs_init.c
    src/srsinit/epsg_inlined_extra.c
    src/srsinit/epsg_inlined_wgs84_00.c
    src/srsinit/epsg_inlined_wgs84_01.c
    src/connection_cache/alloc_cache.c
    src/virtualtext/virtualtext.c
    src/versioninfo/version.c
    src/gaiageo/gg_advanced.c
    src/gaiageo/gg_endian.c
    src/gaiageo/gg_ewkt.c
    src/gaiageo/gg_extras.c
    src/gaiageo/gg_geoJSON.c
    src/gaiageo/gg_geodesic.c
    src/gaiageo/gg_geometries.c
    src/gaiageo/gg_geoscvt.c
    src/gaiageo/gg_gml.c
    src/gaiageo/gg_kml.c
    src/gaiageo/gg_lwgeom.c
    src/gaiageo/gg_matrix.c
    src/gaiageo/gg_relations.c
    src/gaiageo/gg_relations_ext.c
    src/gaiageo/gg_shape.c
    src/gaiageo/gg_transform.c
    src/gaiageo/gg_vanuatu.c
    src/gaiageo/gg_voronoj.c
    src/gaiageo/gg_wkb.c
    src/gaiageo/gg_wkt.c
    src/gaiageo/gg_xml.c
    src/md5/gaia_md5.c
    src/md5/md5.c
    src/dxf/dxf_parser.c
    src/gaiaaux/gg_sqlaux.c
    src/gaiaaux/gg_utf8.c
    src/gaiaexif/gaia_exif.c
    )
target_include_directories(spatialite PUBLIC src/headers ./)
target_link_libraries(spatialite PRIVATE SQLite::SQLite3 ZLIB::ZLIB Iconv::Iconv)

if(WIN32)
    target_compile_definitions(spatialite PRIVATE YY_NO_UNISTD_H)
endif()
