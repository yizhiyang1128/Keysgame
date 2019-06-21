import QtQuick 2.0

Rectangle {
    width: parent.width
    height: 500
    focus: true

    Keys.onSpacePressed: {
        space.color = "red"; event.accepted = true
        //console.log("space key pressed !")
    }
    Keys.onUpPressed: {
        upDirection.color = "red"; event.accepted = true
        //console.log("up key pressed !")
    }
    Keys.onDownPressed: {
        downDirection.color = "red"; event.accepted = true
        //console.log("down key pressed !")
    }
    Keys.onLeftPressed: {
        leftDirection.color = "red"; event.accepted = true
        //console.log("left key pressed !")
    }
    Keys.onRightPressed: {
        rightDirection.color = "red"; event.accepted = true
        //console.log("right key pressed !")
    }
    Keys.onReleased: {
        space.color = "lightgreen"
        upDirection.color = "lightgreen"
        downDirection.color = "lightgreen"
        leftDirection.color = "lightgreen"
        rightDirection.color = "lightgreen"
        event.accepted = true
    }

    Rectangle {
        id: space

        width: 120; height: 40
        border.color: "yellow"
        border.width: 3
        radius: 10
        color: "green"
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: 60
        anchors.top: parent.verticalCenter
        anchors.topMargin: 120

        Text {
            id: spaceText

            anchors.centerIn: parent
            color: "white"

            text: "space"
            font.pointSize: 20
        }

    }

    Rectangle {
        id: direction

        width: 200; height: 200
        anchors.left: parent.horizontalCenter
        anchors.leftMargin: 60
        anchors.top: parent.verticalCenter
        anchors.topMargin: 60

        Rectangle {
            id: upDirection

            color: "green"
            width: 80; height: 40
            border.color: "yellow"
            border.width: 3
            radius: 10
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter

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

