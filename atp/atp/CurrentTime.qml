import QtQuick 2.4
Rectangle {
    color:"grey"
    width: 100
    height : 55
    radius: 4
    property alias text: times.text
    Timer {
        interval: 500;
        running: true;
        repeat: true
        onTriggered: times.text = getCurDate().toString()
    }

    function getCurDate()
    {
         var d = new Date();
         var week;
         switch (d.getDay()){
         case 1: week="星期一"; break;
         case 2: week="星期二"; break;
         case 3: week="星期三"; break;
         case 4: week="星期四"; break;
         case 5: week="星期五"; break;
         case 6: week="星期六"; break;
         default: week="星期天";
         }
         var years = d.getFullYear();
         var month = add_zero(d.getMonth()+1);
         var days = add_zero(d.getDate());
         var hours = add_zero(d.getHours());
         var minutes = add_zero(d.getMinutes());
         var seconds=add_zero(d.getSeconds());
         var ndate = years+"-"+month+"-"+days+"\n"+hours+":"+minutes+":"+seconds;
         return ndate;
    }

    function add_zero(temp)
    {
         if(temp<10) return "0"+temp;
         else return temp;
    }
    Text {
        id: times
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 16
        color:"white"
    }
}
