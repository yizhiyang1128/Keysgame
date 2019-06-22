import QtQuick 2.0

Rectangle {
    id:scorePart
    width: parent.width;
    height: 100
    color: "transparent"


   Text {
        id: score

        property string stringScore : "score：%1".arg(mainWindow.currentScore)

        anchors.bottom: parent.bottom
        anchors.rightMargin: 30
        anchors.right: parent.horizontalCenter
        width: 150; height: 50
        font.pointSize: 20
        text: stringScore
        color: "orange"
    }

    Text {
       id: number

      property string stringNum : "past：%1".arg(mainWindow.currentNum)

        anchors.bottom: parent.bottom
        anchors.leftMargin: 30
        anchors.left: parent.horizontalCenter
        width: 150; height: 50
        font.pointSize: 20
        text: stringNum
        color: "orange"
    }
}
