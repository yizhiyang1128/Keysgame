import QtQuick 2.0
import Felgo 3.0

Scene {
    id: mainWindow
    width: gameWindow.width
    height: gameWindow.height

    property int currentScore : 0
    property int currentNum : 0
    property int level: 3000

    Image {
        id: bg
        anchors.fill: parent
        source: "/root/oo/assets/4.jpg"
    }



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

           // anchors.verticalCenter: parent.verticalCenter
           anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    BackButton{
        id:backButton
        anchors.bottom: parent.bottom
        anchors.right: parent.right
    }

    PauseButton {
        id: pauseButton

        anchors.bottom: parent.bottom

        anchors.bottomMargin: 20
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: 40
    }

    RestartButton {
        id: restartButton

        anchors.bottom: parent.bottom

        anchors.bottomMargin: 20
        anchors.left: parent.horizontalCenter
        anchors.rightMargin: 40
    }
}

