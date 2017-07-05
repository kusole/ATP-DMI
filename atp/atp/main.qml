import QtQuick 2.4
import QtQuick.Window 2.1
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Dialogs 1.2

import "QChart.js"        as Charts
import "QChartGallery.js" as ChartsData

ApplicationWindow {
    visible: true
    width: 1366
    height: 700
    title: qsTr("ATP人机交互界面")
    color: "#161616"
    objectName: "rootObject"
    CircularGauge {
        id: speedometer
        anchors{
            left: parent.left
            leftMargin: parent.width/6
            top:parent.top
            topMargin: parent.height/8
        }

        value: 0
        maximumValue: 400
        width: 300*parent.width/1200
        height: 300*parent.height/650
        style: DashboardGaugeStyle {}
    }
    Column{
        id: keyboard
        spacing: (parent.height-one.height*8)/9
        anchors{
            right:parent.right
            rightMargin: 20
            top:parent.top
            topMargin: (parent.height-one.height*8)/9
            bottom: parent.bottom
            bottomMargin: (parent.height-one.height*8)/9
        }

        Atpbutton{
            id: one
            text: "数据"
            onClicked: {msg.append(currenttime.text + "\t正在输入数据");data.open();}
        }
        Atpbutton{
            id: two
            text: "模式"
            onClicked: {msg.append(currenttime.text + "\t正在模式选择");mode.open();}
        }
        Atpbutton{
            id: three
            text: "载频"
            onClicked: {msg.append(currenttime.text + "\t正在载频选择");carrierFru.open();}
        }
        Atpbutton{
            id: four
            text: "等级"
            onClicked: {msg.append(currenttime.text + "\t正在等级选择");level.open();}
        }
        Atpbutton{
            id: five
            text: "操控"
            onClicked: {msg.append(currenttime.text + "\t正在手动操控");control.open();}
        }
        Atpbutton{
            id: six
            text: "启动"
            onClicked: {
                msg.append(currenttime.text + "\t正在启动列车")
                signerled.color="#33ff33";
                Speeddeal.connectToServer(datainput.rpcip,Number(datainput.rbcport));

            }
        }
        Atpbutton{
            id: seven
            text: "缓解"
            onClicked: {msg.append(currenttime.text + "\t正在缓解列车")}
        }
        Atpbutton{
            id: eight
            text: "警惕"
            onClicked: {msg.append(currenttime.text + "\t司机正在警惕")}
        }
    }
    CurrentTime{
        id: currenttime
        anchors{
            top: keyboard.top
            right: keyboard.left
            rightMargin: 50
        }
    }

    QChart {

        id: chart_line
        width: speedometer.width*1.5
        height: speedometer.height
        anchors{
            right: keyboard.left
            rightMargin: 80
            verticalCenter: speedometer.verticalCenter
            verticalCenterOffset: 25
        }
        chartAnimated: true
        chartAnimationEasing: Easing.InOutElastic
        chartAnimationDuration: 2000
        chartData: ChartsData.ChartLineData
        chartType: Charts.ChartType.LINE
        objectName: "chartObject"
        function testC(arg0, arg1, arg2){

            if(arg0>1000)lineRec.height = speedometer.height*5/6
            else lineRec.height = speedometer.height*5/6 * arg0/1000;
            dist_show.text=arg0;

            speedometer.value=arg1;

            var aa=arg2.split(";");
            var datarep=[];
            for(var i=aa.length-2;i>=0;i--){
                datarep.push(Number(aa[i]));
            }
            ChartsData.ChartLineData["datasets"][0]["data"]=datarep;
            chart_line.chartData=ChartsData.ChartLineData;
        }
    }

    Label{
        id: chart_lineheader
        anchors{
            bottom: chart_line.top
            bottomMargin: 20
            horizontalCenter: chart_line.horizontalCenter
        }
        text:"CTCS-3 列车实时运行速度防护曲线"
        color: "red"
        font.pixelSize: 16
    }
    Rectangle {
        id: signerled
        width: 90
        height: 90
        anchors{
            top:parent.top
            topMargin: 20
            right:chart_line.left
            rightMargin: 10
        }
        color:"red"
//        color: "#33ff33"
        radius: 180

    }
    Label{
        width: 20
        height: 20
        anchors{
            top:parent.top
            topMargin: 20+signerled.height/2-height/2
            right:chart_line.left
            rightMargin: signerled.width/2-10
        }
        text:"L"
        font.pixelSize: 18
        //font.bold: true
        color:"white"
    }

    TextArea {
        id: msg
        width: speedometer.width

        anchors{
            top:speedometer.bottom
            topMargin: 50
            bottom: parent.bottom
            bottomMargin: 20
            left: line.right
            right: speedometer.right

        }
        text:
            "\t欢迎使用高速列车车载ATP仿真系统\n" +
            "\t使用前，请完整的输入相应的必要信息\n" +
            "\t祝您使用愉快\n";
        wrapMode:TextEdit.WordWrap
        readOnly: true
        style: TextAreaStyle {
            textColor: "white"
            selectionColor: "steelblue"
            selectedTextColor: "#eee"
            backgroundColor: "#161616"
        }
    }


    Label{
        id: msgheader
        anchors{
            bottom: msg.top
            bottomMargin: 5
            horizontalCenter: msg.horizontalCenter
        }
        text:"CTCS-3 列车通信信息实时显示"
        color: "red"
        font.pixelSize: 16
    }
    Rectangle {
        id: lineRec
        width: 25
        height: speedometer.height*5/6
        anchors{
            right:speedometer.left
            rightMargin: 40

            bottom: speedometer.bottom
            bottomMargin: 20
        }
        color: "white"
        radius: 2
    }
    Rectangle {
        id:line
        width: 100
        height: speedometer.height*5/6
        anchors{
            right:lineRec.left
            rightMargin: 25
            bottom: speedometer.bottom
            bottomMargin: 20
        }
        color: "#161616"
        Rectangle {
            id: line0
            width: parent.width/2
            height: 1
            anchors{
                right: parent.right
                bottom: parent.bottom
            }
            color: "white"
        }
        Label{
            width: 30
            height: 20
            anchors{
                right:line0.left
                verticalCenter:line0.verticalCenter
            }
            text:"0"
            color:"white"
        }
        Rectangle {
            id: line100
            width: parent.width/2
            height: 1
            anchors{
                right: parent.right
                bottom: parent.bottom
                bottomMargin: parent.height*0.1
            }
            color: "white"
        }
        Label{
            width: 30
            height: 20
            anchors{
                right:line100.left
                verticalCenter:line100.verticalCenter
            }
            text:"100"
            color:"white"
        }
        Rectangle {
            id: line200
            width: parent.width/2
            height: 1
            anchors{
                right: parent.right
                bottom: parent.bottom
                bottomMargin: parent.height*0.2
            }
            color: "white"
        }
        Label{
            width: 30
            height: 20
            anchors{
                right:line200.left
                verticalCenter:line200.verticalCenter
            }
            text:"200"
            color:"white"
        }
        Rectangle {
            id: line400
            width: parent.width/2
            height: 1
            anchors{
                right: parent.right
                bottom: parent.bottom
                bottomMargin: parent.height*0.4
            }
            color: "white"
        }
        Label{
            width: 30
            height: 20
            anchors{
                right:line400.left
                verticalCenter:line400.verticalCenter
            }
            text:"400"
            color:"white"
        }
        Rectangle {
            id: line800
            width: parent.width/2
            height: 1
            anchors{
                right: parent.right
                bottom: parent.bottom
                bottomMargin: parent.height*0.8
            }
            color: "white"
        }
        Label{
            width: 30
            height: 20
            anchors{
                right:line800.left
                verticalCenter:line800.verticalCenter
            }
            text:"800"
            color:"white"
        }
        Rectangle {
            id: line1000
            width: parent.width/2
            height: 1
            anchors{
                right: parent.right
                bottom: parent.bottom
                bottomMargin: parent.height
            }
            color: "white"
        }
        Label{
            width: 30
            height: 20
            anchors{
                right:line1000.left
                verticalCenter:line1000.verticalCenter
            }
            text:"1000"
            color:"white"
        }
    }
    Label{
        id: dist_show
        width: 30
        height: 20
        anchors{
            bottom: line.top
            bottomMargin:10
            right: line.right
        }
        text:"0"
        font.pixelSize: 16
        color:"white"
    }
    Rectangle {
        id: warning
        width: 40
        height: 30
        anchors{
            right: line.right
            bottom: line.top
            bottomMargin: 50
        }
        color: "red"
    }

    Dialog {
        id: level
        visible: false
        title: "列车运行等级选择"

        contentItem: Rectangle {
            color: "lightgrey"
            implicitWidth: 230
            implicitHeight: 80
            Column {
                width: 230
                height: 80
                spacing: 20
                anchors{
                    left:parent.left
                    leftMargin: 20
                    top: parent.top
                    topMargin: 20
                }
                ExclusiveGroup { id: tabPositionGroup }
                RadioButton {
                    text: "CTCS-2 普通列控运行控制系统"
                    //                    checked: true
                    exclusiveGroup: tabPositionGroup
                    onClicked: {
                        datashow.updriverlevel("CTCS-2 普通列控");
                    }
                }
                RadioButton {
                    text: "CTCS-3 高速列控运行控制系统"
                    exclusiveGroup: tabPositionGroup
                    onClicked: {
                        datashow.updriverlevel("CTCS-3 高速列控");
                    }
                }
            }
        }
    }
    Dialog {
        id: carrierFru
        visible: false
        title: "列车运行载频选择"

        contentItem: Rectangle {
            color: "lightgrey"
            implicitWidth: 230
            implicitHeight: 80
            Column {
                width: 230
                height: 80
                spacing: 20
                anchors{
                    left:parent.left
                    leftMargin: 20
                    top: parent.top
                    topMargin: 20
                }
                ExclusiveGroup { id: tabPositionGroup1 }
                RadioButton {
                    text: "上行载频"
                    //                    checked: true
                    exclusiveGroup: tabPositionGroup1
                    onClicked: {
                        datashow.upcarrifru("上行载频");
                    }
                }
                RadioButton {
                    text: "下行载频"
                    exclusiveGroup: tabPositionGroup1
                    onClicked: {
                        datashow.upcarrifru("下行载频");
                    }
                }
            }
        }
    }
    Dialog {
        id: mode
        visible: false
        title: "列车运行模式选择"

        contentItem: Rectangle {
            color: "lightgrey"
            implicitWidth: 230
            implicitHeight: 80
            Column {
                width: 230
                height: 80
                spacing: 20
                anchors{
                    left:parent.left
                    leftMargin: 20
                    top: parent.top
                    topMargin: 20
                }
                ExclusiveGroup { id: tabPositionGroup2 }
                RadioButton {
                    text: "机车自动驾驶模式"
                    //                    checked: true
                    exclusiveGroup: tabPositionGroup2
                    onClicked: {
                        datashow.upmode("机车自动驾驶模式");
                    }
                }
                RadioButton {
                    text: "司机手动控制模式"
                    exclusiveGroup: tabPositionGroup2
                    onClicked: {
                        datashow.upmode("司机手动控制模式");
                    }
                }
            }
        }
    }
    Dialog {
        id: data
        visible: false
        title: "列车运行数据"
        width:300
        height:230
        contentItem:DateInput {
            id:datainput
            width:300
            height:230
            Button{
                id:okbuttton
                width : 70
                height: 25
                text: "确定"
                anchors{
                    right:parent.right
                    rightMargin: 20
                    bottom: parent.bottom
                    bottomMargin: 20
                }
                onClicked:{
                    datashow.updateData(datainput.driver,datainput.drivertime,
                                        datainput.drivertype,datainput.rpcip,datainput.rbcport)
                    data.close()
                }
            }
            Button{
                id: cancelbuttton
                width : 70
                height: 25
                text: "取消"
                anchors{
                    right:okbuttton.left
                    rightMargin: 20
                    bottom: parent.bottom
                    bottomMargin: 20
                }
                onClicked:{
                    data.close()
                }
            }
        }
    }
    DataShow {
        id:datashow
        anchors{
            left:chart_line.left
            leftMargin: 40
            right: chart_line.right
            rightMargin: 30
            top:msg.top
            bottom: msg.bottom
        }
    }

    Dialog {
        id: control
        visible: false
        title: "操控"

        contentItem:Rectangle {
            color: "lightgrey"
            implicitWidth: 100
            implicitHeight: 230
            Slider{
                id: controlban
                anchors{
                    right:parent.right
                    rightMargin: 10
                    top: parent.top
                    topMargin: 10
                }
                width: 30;
                height: 200;
                orientation: Qt.Vertical;
                stepSize: 0.1;
                value: 0.5;
                maximumValue: 1
                tickmarksEnabled: true;
            }
            Label{
                width: 30
                height: 20
                anchors{
                    right:controlban.left
                    rightMargin: 10
                    top:controlban.top
                }
                text:"加速"
                color:"black"
            }
            Label{
                width: 30
                height: 20
                anchors{
                    right:controlban.left
                    rightMargin: 10
                    verticalCenter: controlban.bottom
                }
                text:"减速"
                color:"black"
            }
            Label{
                width: 30
                height: 20
                anchors{
                    right:controlban.left
                    rightMargin: 10
                    verticalCenter: controlban.verticalCenter
                }
                text:"保持"
                color:"black"
            }
        }
    }
}
