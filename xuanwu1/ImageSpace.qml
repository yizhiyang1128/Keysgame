import QtQuick 2.0

Image {
    id: spaceimage

    function getValue(){
        return 5;
    }

    width: 60
    height: 60
    anchors.verticalCenter: parent.verticalCenter

    source: "/root/实训属性/page/graph/u=1714152050,2328787707&fm=26&gp=0.jpg"

    states: State {
        name: "loaded"; when: spaceimage.status === Image.Ready
        PropertyChanges { target: spaceimage; x: 500}
    }

    transitions: Transition {
                NumberAnimation {
                    to: 500; from: 0
                    duration: 3000
                    properties: "x"; easing.type: Easing.InOutQuad
                }
            }

}

