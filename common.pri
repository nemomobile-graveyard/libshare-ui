INSTALL_INC  = $$INSTALL_ROOT/$$[QT_INSTALL_PREFIX]/include
INSTALL_BIN  = $$INSTALL_ROOT/$$[QT_INSTALL_BINS]
INSTALL_LIB  = $$INSTALL_ROOT/$$[QT_INSTALL_LIBS]
INSTALL_DATA = $$INSTALL_ROOT/$$[QT_INSTALL_PREFIX]/share
INSTALL_DOC  = $$INSTALL_DATA/doc

!exists(nokia-build) : !exists(../nokia-build) {
    CONFIG += meego-com
}

CONFIG(meego-com) {
    DBUS_ROOT = com.meego
    DEFINES += MEEGO_COM
} else {
    DBUS_ROOT = com.nokia
}

DBUS_SERVICE   = $${DBUS_ROOT}.ShareUi
DBUS_INTERFACE = $${DBUS_ROOT}.ShareUiInterface

DEFINES += DBUS_SERVICE=\\\"$$DBUS_SERVICE\\\"
