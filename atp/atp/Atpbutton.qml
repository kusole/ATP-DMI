
import QtQuick 2.4
Item {
    id: button
    signal clicked
    property string text
    property color color: "white"
    width : 100
    height: 60
    BorderImage {
        id: buttonImage
        source: "images/toolbutton.sci"
        width: button.width;
        height: button.height
    }
    MouseArea {
        id: mouseRegion
        anchors.fill: buttonImage
        hoverEnabled:true
        onClicked: {
            button.clicked()
        }
        onEntered:  {
            button.opacity=0.7
        }
        onExited:  {
            button.opacity=1
        }
    }
    Text {
        id: btnText
        anchors.fill: buttonImage
        anchors.margins: 5
        text: button.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
        color: button.color
//        font.bold: true
        style: Text.Raised
        styleColor: "black"
        font.pixelSize: 18
    }
}
