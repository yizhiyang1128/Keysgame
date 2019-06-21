import QtQuick 2.0

Rectangle {
    id: m_restartButton

    width: 120
    height: 40
    color: "purple"
    radius: 15
    border.color: "yellow"
    border.width: 5

    Text {
        id: restarttext
        text: "restart"
        color: "white"
        font.pointSize: 18
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked:{
                displayPart.timerRunning = false;
                mainWindow.currentNum = 0;
                mainWindow.currentScore = 0;
                pauseButton.pauseText = "start";
                pauseButton.stat = false;
        }
    }
}

