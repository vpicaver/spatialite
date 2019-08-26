QT -= core

TEMPLATE = lib
CONFIG += staticlib

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
src/spatialite/extra_tables.c \
src/spatialite/mbrcache.c \
src/spatialite/metatables.c \
src/spatialite/se_helpers.c \
src/spatialite/spatialite.c \
src/spatialite/spatialite_init.c \
src/spatialite/srid_aux.c \
src/spatialite/statistics.c \
src/spatialite/table_cloner.c \
src/spatialite/virtualXL.c \
src/spatialite/virtualbbox.c \
src/spatialite/virtualdbf.c \
src/spatialite/virtualelementary.c \
src/spatialite/virtualfdo.c \
src/spatialite/virtualgpkg.c \
src/spatialite/virtualnetwork.c \
src/spatialite/virtualshape.c \
src/spatialite/virtualspatialindex.c \
src/spatialite/virtualxpath.c \
src/shapefiles/shapefiles.c \
src/shapefiles/validator.c \
src/srsinit/srs_init.c \
src/srsinit/epsg_inlined_extra.c \
src/srsinit/epsg_inlined_wgs84_00.c \
src/srsinit/epsg_inlined_wgs84_01.c \
src/connection_cache/alloc_cache.c \
src/virtualtext/virtualtext.c \
src/versioninfo/version.c \
src/gaiageo/gg_advanced.c \
src/gaiageo/gg_endian.c \
src/gaiageo/gg_ewkt.c \
src/gaiageo/gg_extras.c \
src/gaiageo/gg_geoJSON.c \
src/gaiageo/gg_geodesic.c \
src/gaiageo/gg_geometries.c \
src/gaiageo/gg_geoscvt.c \
src/gaiageo/gg_gml.c \
src/gaiageo/gg_kml.c \
src/gaiageo/gg_lwgeom.c \
src/gaiageo/gg_matrix.c \
src/gaiageo/gg_relations.c \
src/gaiageo/gg_relations_ext.c \
src/gaiageo/gg_shape.c \
src/gaiageo/gg_transform.c \
src/gaiageo/gg_vanuatu.c \
src/gaiageo/gg_voronoj.c \
src/gaiageo/gg_wkb.c \
src/gaiageo/gg_wkt.c \
src/gaiageo/gg_xml.c \
src/md5/gaia_md5.c \
src/md5/md5.c \
src/dxf/dxf_parser.c \
src/gaiaaux/gg_sqlaux.c \
src/gaiaaux/gg_utf8.c \
src/gaiaexif/gaia_exif.c


HEADERS += \
config.h \
src/headers/spatialite.h \
src/headers/spatialite_private.h \
src/headers/spatialite/control_points.h \
src/headers/spatialite/debug.h \
src/headers/spatialite/gaiaaux.h \
src/headers/spatialite/gaiaexif.h \
src/headers/spatialite/gaiageo.h \
src/headers/spatialite/gaiamatrix.h \
src/headers/spatialite/geopackage.h \
src/headers/spatialite/gg_advanced.h \
src/headers/spatialite/gg_const.h \
src/headers/spatialite/gg_core.h \
src/headers/spatialite/gg_dxf.h \
src/headers/spatialite/gg_dynamic.h \
src/headers/spatialite/gg_formats.h \
src/headers/spatialite/gg_mbr.h \
src/headers/spatialite/gg_structs.h \
src/headers/spatialite/gg_wfs.h \
src/headers/spatialite/gg_xml.h \
src/headers/spatialite/spatialite.h \
src/headers/spatialite/sqlite.h


INCLUDEPATH += src/headers \
.

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

