import QtQuick 2.0

Rectangle {
    id: m_restartButton

    width: 120
    height: 40
    color: "transparent"

    Text {
        id: restarttext
        text: "restart"
        color: "white"
        font.pointSize: 30
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked:{
                startPart.isRunning =false;
                displayPart.timerRunning = false;
                mainWindow.currentNum = 0;
                mainWindow.currentScore = 0;
                pauseButton.pauseText = "start";
                pauseButton.stat = false;
        }
    }
}

