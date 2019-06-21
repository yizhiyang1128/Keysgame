import QtQuick 2.0

Image {
    id: downimage

    //得分函数
    function getValue(){
        return 2;
    }

    //图片的长宽属性
    width: 60
    height: 60
    anchors.verticalCenter: parent.verticalCenter

    source: "/root/实训属性/page/graph/down.jpg"


    //状态信息
    states: State {
        name: "loaded"; when: downimage.status === Image.Ready
        PropertyChanges { target: downimage; x: 500}
    }

    //此属性包含此项的转换列表，这些定义了在项目更改其状态时应用于该项目的转换
    transitions: Transition {
                NumberAnimation {
                    //动画的变化范围
                    to: 500; from: 0
                    //变化时长3秒
                    duration: 3000
                    //确定哪些属性要被动画
                    properties: "x"; easing.type: Easing.InOutQuad
                    //easing.type指出动态缓和曲线
                }
            }

}

