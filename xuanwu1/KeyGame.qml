//主程序
import QtQuick 2.0

Rectangle {
    id: mainWindow

    //现在得分，图标数量，等级
    property int currentScore : 0
    property int currentNum : 0
    property int level: 30

    //长宽
    width: 800
    height: 800

    //得分部分
    ScorePart {
        id: scorePart

        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
    }

    //操作部分
    OperationPart {
        id: operationPart

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

     //展示部分
        DisplayPart {
                id: displayPart

                anchors.top: parent.top
                anchors.horizontalCenter:                               parent.horizontalCenter
        }
    }

    //暂停键
    PauseButton {
        id: pauseButton

        anchors.bottom: parent.bottom
        anchors.bottomMargin: 40
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: 40
    }

    //重开键
    RestartButton {
        id: restartButton

        anchors.bottom: parent.bottom
        anchors.bottomMargin: 40
        anchors.left: parent.horizontalCenter
        anchors.rightMargin: 40
    }
}

