import QtQuick 2.0


Rectangle {
    id: m_backButton
    width: 60
    height:40
    color: "transparent"

    Text {
        id: backss
        text:"Back"
        color: "white"
        anchors.centerIn: parent
        font.pixelSize: 20
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            keygame.visible=false
            set.visible=true

        }
    }


}
