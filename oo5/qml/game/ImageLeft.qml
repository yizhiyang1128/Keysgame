import QtQuick 2.0

Image {
    id: leftimage

    function getValue(){
        return 3;
    }

    width: 60
    height: 60
    anchors.verticalCenter: parent.verticalCenter

    source: "../assets/4.png"

    states: State {
        name: "loaded"; when: leftimage.status === Image.Ready
        PropertyChanges { target: leftimage; x: 500}
    }

    transitions: Transition {
                NumberAnimation {
                    to: 500; from: 0
                    duration: durationvalue
                    properties: "x"; easing.type: Easing.InOutQuad
                }
            }

}

