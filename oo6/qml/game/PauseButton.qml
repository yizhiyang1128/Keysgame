import QtQuick 2.0

Rectangle {
    id: m_pauseButton

    property bool stat: false
    property string pauseText: "start"

    width: 120
    height: 40
    color: "transparent"


    Text {
        text: pauseText
        color: "white"
        font.pointSize: 30
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked:{
            if(stat) {
                displayPart.timerRunning = false;
                startPart.isRunning = false;
                pauseText = "start";
                stat = false;
            }else{
                pauseText = "pause";
                startPart.isRunning = true;
                stat = true;
            }
        }
    }
}

