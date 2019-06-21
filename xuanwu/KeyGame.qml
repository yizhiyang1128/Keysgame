
import QtQuick 2.0

Rectangle {
    id: mainWindow

    property int currentScore : 0
    property int currentNum : 0
    property int level: 3000

    width: 800
    height: 800

    ScorePart {
        id: scorePart

        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
    }

    OperationPart {
        id: operationPart

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        DisplayPart {
                 id: displayPart

                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    PauseButton {
        id: pauseButton

        anchors.bottom: parent.bottom
        anchors.bottomMargin: 40
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: 40
    }

    RestartButton {
        id: restartButton

        anchors.bottom: parent.bottom
        anchors.bottomMargin: 40
        anchors.left: parent.horizontalCenter
        anchors.rightMargin: 40
    }
}

