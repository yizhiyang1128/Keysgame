import QtQuick 2.0

Rectangle {
    width: parent.width; height: 100

    Text {
        id: title
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        text: "let's play"
        font.pointSize: 20
    }

    Text {
        id: score

        property string stringScore : "get：%1".arg(mainWindow.currentScore)

        anchors.bottom: parent.bottom
        anchors.rightMargin: 30
        anchors.right: parent.horizontalCenter
        width: 200; height: 50
        font.pointSize: 20
        text: stringScore
    }

    Text {
        id: number

        property string stringNum : "past：%1".arg(mainWindow.currentNum)

        anchors.bottom: parent.bottom
        anchors.leftMargin: 30
        anchors.left: parent.horizontalCenter
        width: 200; height: 50
        font.pointSize: 20
        text: stringNum
    }
}

