QT += multimedia core gui widgets sql
CONFIG += c++11
TEMPLATE = app

DESTDIR = ../bin/win32

include(fqfmedia/fqfmedia.pri)
include(qxtglobalshortcut/qxtglobalshortcut.pri)

FORMS += \
    mainpage.ui

HEADERS += \
    myslider.h \
    mainpage.h \
    musiclist.h

SOURCES += \
    main.cpp \
    myslider.cpp \
    mainpage.cpp \
    musiclist.cpp

RESOURCES += \
    images.qrc

RC_FILE += \
    version.rc

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target