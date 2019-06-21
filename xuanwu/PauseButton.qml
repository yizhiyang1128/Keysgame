import QtQuick 2.0

Rectangle {
    id: m_pauseButton

    property bool stat: false
    property string pauseText: "start"

    width: 120
    height: 40
    color: "purple"
    radius: 5
    border.color: "yellow"
    border.width: 5

    Text {
        text: pauseText
        color: "white"
        font.pointSize: 18
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked:{
            if(stat) {
                displayPart.timerRunning = false;
                pauseText = "start";
                stat = false;
            }else{
                pauseText = "pause";
                displayPart.timerRunning = true;
                stat = true;
            }
        }
    }
}

