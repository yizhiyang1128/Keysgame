import QtQuick 2.0
import Felgo 3.0
import game.model 1.0

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
        width: 200
        height: 100
        gradient:Gradient{
            GradientStop{position: 0.0;color: "green"}
            GradientStop{position: 1.0;color: "transparent"}
        }
        anchors.top:  parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        radius: 10
        border.color: "forestgreen"
        border.width: 3


        MouseArea{
        anchors.fill: parent
        onClicked: {
            interaction.readFile()
            keygame.durationvalue = interaction.easymodel
            console.log("interaction.easymodel"+interaction.easymodel)
            console.log("easy")


        }
        }

        Text {
            id: easy
            text: "Easy"
            color: "yellow"
            anchors.centerIn: parent
            font.pixelSize: 50
            font.family: "youyuan"

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
          font.pixelSize: 30
          font.family: "youyuan"
      }
    }

    Rectangle{
        id:rank2
        width: 200
        height: 100
        gradient:Gradient{
            GradientStop{position: 0.0;color: "khaki"}
            GradientStop{position: 1.0;color: "transparent"}
        }
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        radius: 10
        border.color: "gold"
        border.width: 3

        MouseArea{
        anchors.fill: parent
        onClicked: {
            interaction.readFile()
            keygame.durationvalue = interaction.difmodel
            console.log("hard")

        }
        }

        Text {
            id: hard
            text: "Hard"
            color: "green"
            anchors.centerIn: parent
            font.pixelSize: 40
            font.family: "youyuan"
        }
    }
}
