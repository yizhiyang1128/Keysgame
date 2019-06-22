import QtQuick 2.0
import game.model 1.0

Image {
    id: rightimage

    function getValue(){
        return 4;
    }

    width: 60
    height: 60
    anchors.verticalCenter: parent.verticalCenter

    source: "../../assets/3.png"

    states: State {
        name: "loaded"; when: rightimage.status === Image.Ready
        PropertyChanges { target: rightimage; x: 500}
    }

    transitions: [Transition {
            id:rightnormal
                NumberAnimation {
                    to: 500; from: 0
                    duration: 3000
                    properties: "x"; easing.type: Easing.InOutQuad
                }
                enabled: true
            },
        Transition {
            id:righteasy
            NumberAnimation{
                to:500;from:0
                duration: Interaction.easymodel
                properties: "x";easing.type: Easing.InOutQuad
            }
            enabled: false
        },
        Transition {
            id:rightdif
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

