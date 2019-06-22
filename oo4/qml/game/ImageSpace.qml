import QtQuick 2.0
import game.model 1.0

Image {
    id: spaceimage

    function getValue(){
        return 5;
    }

    width: 60
    height: 60
    anchors.verticalCenter: parent.verticalCenter

    source: "../../assets/1.png"

    states: State {
        name: "loaded"; when: spaceimage.status === Image.Ready
        PropertyChanges { target: spaceimage; x: 500}
    }

    transitions: [Transition {
            id:spacenormal
                NumberAnimation {
                    to: 500; from: 0
                    duration: 3000
                    properties: "x"; easing.type: Easing.InOutQuad
                }
                enabled: true
            },
        Transition {
            id:spaceeasy
            NumberAnimation{
                to:500;from:0
                duration: Interaction.easymodel
                properties: "x";easing.type: Easing.InOutQuad
            }
            enabled: false
        },
        Transition {
            id:sapcedif
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

