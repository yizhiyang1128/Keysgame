import QtQuick 2.0
import Felgo 3.0

 Scene{
     id: mainWindow
     width: gameWindow.width
     height: gameWindow.height

     Image {
         id: name
         anchors.fill: parent
         source: "../assets/5"
     }


    Rectangle{
        id:rank1
        width: 100
        height: 50
        color: "green"
        anchors.top:  parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        radius: 5
        border.color: "yellow"
        border.width: 3


        MouseArea{
        anchors.fill: parent
        onClicked: {


        }
        }

        Text {
            id: easy
            text: "Easy"
            color: "white"
            anchors.centerIn: parent
            font.pixelSize: 40
        }
    }

    Rectangle{
    id:back
    width: 60
    height: 40
    color: "transparent"
    anchors.bottom: parent.bottom
    anchors.right: parent.right

      MouseArea{
        anchors.fill: parent
        onClicked: {
        keygame.visible=true
            set.visible=false

    }
    }
      Text {
          id: backs
          text:"Back"
          color: "white"
          anchors.centerIn: parent
          font.pixelSize: 20
      }
    }

    Rectangle{
        id:rank2
        width: 100
        height: 50
        color: "red"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        radius: 5
        border.color: "yellow"
        border.width: 3

        MouseArea{
        anchors.fill: parent
        onClicked: {

        }
        }

        Text {
            id: hard
            text: "Hard"
            color: "white"
            anchors.centerIn: parent
            font.pixelSize: 40
        }
    }
}
