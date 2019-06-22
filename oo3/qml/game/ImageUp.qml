import QtQuick 2.0

Image {
    id: upimage

    function getValue(){
        return 1;
    }

    width: 60
    height: 60
    anchors.verticalCenter: parent.verticalCenter

    source: "../assets/2.png"

    states: State {          //设置状态
        name: "loaded"; when: upimage.status === Image.Ready
        PropertyChanges { target: upimage; x: 500}
    }

    transitions: Transition {           //切换效果
                NumberAnimation {
                    to: 500; from: 0
                    duration: 3000
                    properties: "x"; easing.type: Easing.InOutQuad  //滑动效果
                }
            }

}

