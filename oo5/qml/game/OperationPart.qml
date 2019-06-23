import QtQuick 2.0


Rectangle {
    width: 500
    height: 500
    color: "transparent"
    focus: true



    Rectangle {
        id: space

        color: "green"
        width: 100; height: 40
        border.color: "yellow"
        border.width: 3
        radius: 10
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: 60
        anchors.top: parent.verticalCenter
        anchors.topMargin: 100
        MouseArea{
            anchors.fill: parent
            onClicked:
                if(displayPart.abc()===5)
                mainWindow.currentScore++;
        }

        Text {
            id: spacetxt

            anchors.centerIn: parent
            color: "white"

            text: "space"
            font.pointSize: 20
        }
    }




    Rectangle {
        id: direction

        width: 200; height: 150
        anchors.left: parent.horizontalCenter
        anchors.leftMargin: 40
        anchors.top: parent.verticalCenter
        anchors.topMargin: 40
        color: "transparent"
        Rectangle {
            id: upDirection

            color: "green"
            width: 80; height: 40
            border.color: "yellow"
            border.width: 3
            radius: 10
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            MouseArea{
                anchors.fill: parent
                onClicked:

                    if(displayPart.abc()===1)
                        mainWindow.currentScore++;
            }

            Text {
                id: upDirectionText

                anchors.centerIn: parent
                color: "white"

                text: "up"
                font.pointSize: 20
            }
        }

        Rectangle {
            id: leftDirection

            color: "green"
            width: 80; height: 40
            border.color: "yellow"
            border.width: 3
            radius: 10
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            MouseArea{
                anchors.fill: parent

                onClicked:
                   if(displayPart.abc()===3)
                    mainWindow.currentScore++;
            }


            Text {
                id: leftDirectionText

                anchors.centerIn: parent
                color: "white"

                text: "left"
                font.pointSize: 20
            }
        }

        Rectangle {
            id: downDirection

            color: "green"
            width: 80; height: 40
            border.color: "yellow"
            border.width: 3
            radius: 10
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            MouseArea{
                anchors.fill: parent
                onClicked:
                    if(displayPart.abc()===2)
                    mainWindow.currentScore++;
            }


            Text {
                id: downDirectionText

                anchors.centerIn: parent
                color: "white"

                text: "down"
                font.pointSize: 20
            }
        }

        Rectangle {
            id: rightDirection

            color: "green"
            width: 80; height: 40
            border.color: "yellow"
            border.width: 3
            radius: 10
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            MouseArea{
                anchors.fill: parent
                onClicked:
                    if(displayPart.abc()===4)
                    mainWindow.currentScore++;
            }


            Text {
                id: rightDirectionText

                anchors.centerIn: parent
                color: "white"
                text: "right"
                font.pointSize: 20
            }
        }
    }
}

