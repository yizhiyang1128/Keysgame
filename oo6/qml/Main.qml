import Felgo 3.0
import QtQuick 2.0
import game.model 1.0
import "game"
import QtMultimedia 5.0

GameWindow {

    width: 546
    height:819
        id:gameWindow
       // activeScene: menuScene


        Interaction{
            id:interaction
        }

        Image {
            id: name
            anchors.fill: parent
            source: "../assets/5"
        }
        Audio{
            id:audio
            source: "../assets/ChinaE.mp3"
        }

        Rectangle{
            id:music
            width: 80
            height: 40
            anchors.top: settings.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            color: "transparent"
            MouseArea{
                id:playarea;anchors.fill: parent
                onClicked: {
                    audio.play()
                }
                onDoubleClicked: {
                    audio.stop();
                }

                 Text {
                       id:playmusic
                       width: 80
                       height: 40
                       text: "Music"
                       font.pointSize: 24
                       anchors.centerIn: parent
                       color: "white"

                       }
                }
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
            color: "white"
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
        color: "gold"

        font.pixelSize: 50
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
