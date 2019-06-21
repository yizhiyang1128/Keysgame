import QtQuick 2.0

Image {
    id: upimage

    function getValue(){
        return 1;
    }

    width: 60
    height: 60
    anchors.verticalCenter: parent.verticalCenter

    source: "/root/实训属性/page/graph/up.jpg"

    states: State {
        name: "loaded"; when: upimage.status === Image.Ready
        PropertyChanges { target: upimage; x: 500}
    }

    transitions: Transition {
                NumberAnimation {
                    to: 500; from: 0
                    duration: 3000
                    properties: "x"; easing.type: Easing.InOutQuad
                }
            }

}

