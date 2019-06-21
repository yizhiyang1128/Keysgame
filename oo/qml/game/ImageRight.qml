import QtQuick 2.0

Image {
    id: rightimage

    function getValue(){
        return 4;
    }

    width: 60
    height: 60
    anchors.verticalCenter: parent.verticalCenter

    source: "/root/oo/assets/3.png"

    states: State {
        name: "loaded"; when: rightimage.status === Image.Ready
        PropertyChanges { target: rightimage; x: 500}
    }

    transitions: Transition {
                NumberAnimation {
                    to: 500; from: 0
                    duration: 3000
                    properties: "x"; easing.type: Easing.InOutQuad
                }
            }

}

