import QtQuick 2.0
import game.model 1.0

Image {
    id: upimage

    function getValue(){
        return 1;
    }

    width: 60
    height: 60
    anchors.verticalCenter: parent.verticalCenter

    source: "../../assets/2.png"

    states: State {          //设置状态
        name: "loaded"; when: upimage.status === Image.Ready
        PropertyChanges { target: upimage; x: 500}
    }

    transitions: [Transition {
            id:upnormal
                NumberAnimation {
                    to: 500; from: 0
                    duration: 3000
                    properties: "x"; easing.type: Easing.InOutQuad
                }
                enabled: true
            },
        Transition {
            id:upeasy
            NumberAnimation{
                to:500;from:0
                duration: Interaction.easymodel
                properties: "x";easing.type: Easing.InOutQuad
            }
            enabled: false
        },
        Transition {
            id:updif
                NumberAnimation{
                    to:500;from:0
                    duration: Interaction.difmodel
                    properties: "x";easing.type:Easing.InOutQuad
                }
                enabled: false
            }
    ]
}


