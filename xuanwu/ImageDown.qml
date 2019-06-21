import QtQuick 2.0

Image {
    id: downimage

    function getValue(){
        return 2;
    }

    width: 60
    height: 60
    anchors.verticalCenter: parent.verticalCenter

    source: "/root/实训属性/page/graph/down.jpg"

    states: State {
        name: "loaded"; when: downimage.status === Image.Ready
        PropertyChanges { target: downimage; x: 500}
    }

    transitions: Transition {
                NumberAnimation {
                    to: 500; from: 0
                    duration: 3000
                    properties: "x"; easing.type: Easing.InOutQuad
                }
            }

}

