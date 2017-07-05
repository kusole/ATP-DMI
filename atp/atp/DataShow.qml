import QtQuick 2.4
import QtQuick.Controls 1.4

Rectangle{
    color: "#161616"
    function updateData(dri,time,type,ip,port) {
        // body...
        driver.text=dri;
        drivertime.text=time;
        drivertype.text=type;
        rpcip.text= ip;
        rbcport.text=port;
    }
    function upmode(mode){
        drivermode.text=mode;
    }
    function upcarrifru(carf){
        carrifru.text=carf;
    }
    function updriverlevel(dl){
        driverlevel.text=dl;
    }
    function updriverstatu(ds){
        driverstatu.text=ds;
    }

    Rectangle{
        id : rec1
        color: "grey"
        radius: 4
        anchors{
            left: parent.left
            right:parent.right
            rightMargin: parent.width/2+10
            bottom: parent.bottom
            top: parent.top
        }
        Label{
            id:driverLab
            text: "司机："
            anchors{
                left: parent.left
                leftMargin: 20
                top: parent.top
                topMargin:15
            }
        }
        Label {
            id:driver
            anchors.verticalCenter: driverLab.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
        }
        Label{
            id:drivertimes
            text: "车次: "
            anchors{
                left: parent.left
                leftMargin: 20
                top: driverLab.bottom
                topMargin: 15
            }
        }
        Label {
            id:drivertime
            anchors.verticalCenter: drivertimes.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
        }
        Label{
            id:drivertypes
            text: "车型："
            anchors{
                left: parent.left
                leftMargin: 20
                top: drivertimes.bottom
                topMargin: 15
            }
        }
        Label {
            id:drivertype
            anchors.verticalCenter: drivertypes.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
        }

        Label{
            id:rbcipaddr
            text: "RBC  ip地址："
            anchors{
                left: parent.left
                leftMargin: 20
                top: drivertypes.bottom
                topMargin: 15
            }
        }
        Label {
            id:rpcip
            anchors.verticalCenter: rbcipaddr.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
        }

        Label{
            id:rbcports
            text: "RBC  port："
            anchors{
                left: parent.left
                leftMargin: 20
                top: rbcipaddr.bottom
                topMargin: 15
            }
        }
        Label {
            id:rbcport
            anchors.verticalCenter: rbcports.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
        }


    }
    Rectangle{
        color: "grey"
        radius: 4
        anchors{
            left: rec1.right
            leftMargin: 20
            right:parent.right
            bottom: parent.bottom
            top: parent.top
        }
        Label{
            id:drivermodes
            text: "模式："
            anchors{
                left: parent.left
                leftMargin: 20
                top: parent.top
                topMargin:15
            }
        }
        Label {
            id:drivermode
            anchors.verticalCenter: drivermodes.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
        }
        Label{
            id:carrifrus
            text: "载频："
            anchors{
                left: parent.left
                leftMargin: 20
                top: drivermodes.bottom
                topMargin: 15
            }
        }
        Label {
            id:carrifru
            anchors.verticalCenter: carrifrus.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
        }
        Label{
            id:driverlevels
            text: "等级："
            anchors{
                left: parent.left
                leftMargin: 20
                top: carrifru.bottom
                topMargin: 15
            }
        }
        Label {
            id:driverlevel
            anchors.verticalCenter: driverlevels.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
        }
        Label{
            id:driverstatus
            text: "运行状态："
            anchors{
                left: parent.left
                leftMargin: 20
                top: driverlevels.bottom
                topMargin: 15
            }
        }
        Label {
            id:driverstatu
            text:"正常"
            anchors.verticalCenter: driverstatus.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 100
        }
    }
}
