import QtQuick 2.0

Image {
    id: spaceimage

    function getValue(){
        return 5;
    }

    width: 60
    height: 60
    anchors.verticalCenter: parent.verticalCenter

    source: "../assets/1.png"

    states: State {
        name: "loaded"; when: spaceimage.status === Image.Ready
        PropertyChanges { target: spaceimage; x: 500}
    }

    transitions: Transition {
                NumberAnimation {
                    to: 500; from: 0
                    duration: durationvalue
                    properties: "x"; easing.type: Easing.InOutQuad
                }
            }

}

