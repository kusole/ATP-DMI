/****************************************************************************
** Meta object code from reading C++ file 'speeddeal.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../atp/speeddeal.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'speeddeal.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_SpeedDeal_t {
    QByteArrayData data[8];
    char stringdata0[71];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_SpeedDeal_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_SpeedDeal_t qt_meta_stringdata_SpeedDeal = {
    {
QT_MOC_LITERAL(0, 0, 9), // "SpeedDeal"
QT_MOC_LITERAL(1, 10, 11), // "speedUpDate"
QT_MOC_LITERAL(2, 22, 0), // ""
QT_MOC_LITERAL(3, 23, 11), // "onConnected"
QT_MOC_LITERAL(4, 35, 11), // "onReadyread"
QT_MOC_LITERAL(5, 47, 15), // "connectToServer"
QT_MOC_LITERAL(6, 63, 2), // "ip"
QT_MOC_LITERAL(7, 66, 4) // "port"

    },
    "SpeedDeal\0speedUpDate\0\0onConnected\0"
    "onReadyread\0connectToServer\0ip\0port"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_SpeedDeal[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   34,    2, 0x08 /* Private */,
       3,    0,   35,    2, 0x08 /* Private */,
       4,    0,   36,    2, 0x08 /* Private */,

 // methods: name, argc, parameters, tag, flags
       5,    2,   37,    2, 0x02 /* Public */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void, QMetaType::QString, QMetaType::Int,    6,    7,

       0        // eod
};

void SpeedDeal::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        SpeedDeal *_t = static_cast<SpeedDeal *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->speedUpDate(); break;
        case 1: _t->onConnected(); break;
        case 2: _t->onReadyread(); break;
        case 3: _t->connectToServer((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        default: ;
        }
    }
}

const QMetaObject SpeedDeal::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_SpeedDeal.data,
      qt_meta_data_SpeedDeal,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *SpeedDeal::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *SpeedDeal::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_SpeedDeal.stringdata0))
        return static_cast<void*>(const_cast< SpeedDeal*>(this));
    return QObject::qt_metacast(_clname);
}

int SpeedDeal::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
