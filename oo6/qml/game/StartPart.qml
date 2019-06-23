//开始游戏的动画
import QtQuick 2.0
import QtQuick.Controls 1.3
Rectangle{
    width: 200
    height:200
    property int jishi: 3
    property bool isRunning: false
    color: "transparent"

    Text{
        id:jishi_label
        text:jishi
        anchors.centerIn: parent
       // visible: false
        font.pixelSize: 150

    }
    SequentialAnimation{            //顺序动画使逐个执行
        ParallelAnimation{
            PropertyAnimation{      //使渐变
               // id:scalAni
                target: jishi_label
                property: "scale"
                from:1.0
                to:0.0
                duration: 1000
                //running: isRunning
            }

        }
        ParallelAnimation{
            PropertyAnimation{
               // id:scalAni
                target: jishi_label
                property: "scale"
                from:1.0
                to:0.0
                duration: 1000
                //running: isRunning
            }

        }
        ParallelAnimation{
            PropertyAnimation{
               // id:scalAni
                target: jishi_label
                property: "scale"
                from:1.0
                to:0.0
                duration: 1000
                //running: isRunning
            }

        }
        running: isRunning
    }



    Timer{
        interval: 1000; running: isRunning; repeat: true
        onTriggered:
        {


            jishi--;
            //jishi_label.rotation = 0;

            if(jishi ===0)
            {
                displayPart.timerRunning =true;
                jishi = 3;
                isRunning = false;
                //visible = false;
            }
        }
    }
}
