import Felgo 3.0
import QtQuick 2.0
import "game"


GameWindow {

    width: 546
    height:819
        id:gameWindow
       // activeScene: menuScene



        Image {
            id: name
            anchors.fill: parent
            source: "../assets/5"
        }

    Rectangle{
        id:settings
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        width: 80
        height: 40
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                set.visible=true
                greeting.visible=false
                settings.visible=false

            }
        }
        Text {
            id: setting
            text: "Rank"
            color: "transparent"
            font.pixelSize: 20
            anchors.centerIn: parent
        }
    }


   Rectangle{
          id:greeting
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.bottom: parent.bottom
          width:mytext.width+10
          height: mytext.height+10
          color: "transparent"

          MouseArea{
              anchors.fill: parent
              onClicked: {
                  keygame.visible=true
                  greeting.visible=false
                  settings.visible=false
              }
          }

        Text {
        id:mytext
        text: "Welcome to OO game !"
        color: "purple"

        font.pixelSize: 30
        anchors.centerIn: parent
     }

 }


      KeyGame{
          id:keygame
          visible: false

      }

      Set{
        id:set
        visible: false
      }

}
