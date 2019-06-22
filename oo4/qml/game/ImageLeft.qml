import QtQuick 2.0
import game.model 1.0

Image {
    id: leftimage

    function getValue(){
        return 3;
    }

    width: 60
    height: 60
    anchors.verticalCenter: parent.verticalCenter

    source: "../../assets/4.png"

    states: State {
        name: "loaded"; when: leftimage.status === Image.Ready
        PropertyChanges { target: leftimage; x: 500}
    }

    transitions: [Transition {
            id:leftnormal
                NumberAnimation {
                    to: 500; from: 0
                    duration: 3000
                    properties: "x"; easing.type: Easing.InOutQuad
                }
                enabled: true
            },
        Transition {
            id:lefteasy
            NumberAnimation{
                to:500;from:0
                duration: Interaction.easymodel
                properties: "x";easing.type: Easing.InOutQuad
            }
            enabled: false
        },
        Transition {
            id:leftdif
                NumberAnimation{
                    to:500;from:0
                    duration: Interaction.difmodel
                    properties: "x";easing.type:Easing.InOutQuad
                }
                enabled: false
            }
    ]
}
}

