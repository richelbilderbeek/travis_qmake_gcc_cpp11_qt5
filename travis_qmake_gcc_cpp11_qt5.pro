# Qt5
QT += core gui widgets

# Cannot use -Weffc++ with Qt4
QMAKE_CXXFLAGS += -Wall -Wextra -Werror

SOURCES += main.cpp
SOURCES += my_dialog.cpp
FORMS   += my_dialog.ui
HEADERS += my_dialog.h
RESOURCES += travis_qmake_gcc_cpp11_qt5.qrc

# C++11
QMAKE_CXX = g++-5
QMAKE_LINK = g++-5
QMAKE_CC = gcc-5
QMAKE_CXXFLAGS += -std=c++11

# Prevent Qt for failing with this error:
# qrc_travis_qmake_gcc_cpp11_qt4.cpp:400:44: error: ‘qInitResources_travis_qmake_gcc_cpp11_qt4__init_variable__’ defined but not used
QMAKE_CXXFLAGS += -Wno-unused-variable
