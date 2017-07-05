import QtQuick 2.4
import QtQuick.Controls 1.4

Rectangle{
    color: "grey"
    property alias driver: driver.text
    property alias drivertime: drivertime.text
    property alias drivertype: drivertype.editText
    property alias rpcip: rpcip.text
    property alias rbcport: rbcport.text

    Label{
        id:basemsg
        text: "基本信息"
        anchors{
            left: parent.left
            leftMargin: 10
            top: parent.top
            topMargin: 10
        }
        color:"yellow"
    }
    Rectangle{
        color: "white"
        radius: 4
        anchors{
            left: parent.left
            leftMargin: 10
            right:parent.right
            rightMargin: 10
            bottom: parent.bottom
            bottomMargin: 10
            top: basemsg.top
            topMargin: 20
        }
        Label{
            id:driverLab
            text: "司机"
            width: 100
            anchors{
                left: parent.left
                leftMargin: 20
                top: parent.top
                topMargin:15
            }
        }
        TextField {
            id:driver
            width: 150
            anchors.verticalCenter: driverLab.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
        }
        Label {
            id:drivertimes
            text: "车次"
            width: 100
            anchors{
                left: parent.left
                leftMargin: 20
                top: driverLab.bottom
                topMargin: 15
            }
        }
        TextField {
            id:drivertime
            width: 150
            anchors.verticalCenter: drivertimes.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
        }
        Label{
            id:drivertypes
            text: "车型"
            width: 100
            anchors{
                left: parent.left
                leftMargin: 20
                top: drivertimes.bottom
                topMargin: 15
            }
        }

        ComboBox {
            id:drivertype
            width: 150
            anchors.verticalCenter: drivertypes.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
            model: ListModel {
                id: listModel
                ListElement { text: "CRH380" }
            }

        }
        Label{
            id:rbcipaddr
            text: "RBC  ip地址"
            width: 100
            anchors{
                left: parent.left
                leftMargin: 20
                top: drivertypes.bottom
                topMargin: 15
            }
        }
        TextField {
            id:rpcip
            width: 150
            anchors.verticalCenter: rbcipaddr.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
        }

        Label{
            id:rbcports
            text: "RBC  port"
            width: 100
            anchors{
                left: parent.left
                leftMargin: 20
                top: rbcipaddr.bottom
                topMargin: 15
            }
        }
        TextField {
            id:rbcport
            width: 150
            anchors.verticalCenter: rbcports.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
        }


    }
}
