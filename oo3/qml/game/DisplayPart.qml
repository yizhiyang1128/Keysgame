import QtQuick 2.0


Rectangle {


    id: m_displayPart

    width: 500
    height: 200
    color: "transparent"



    property bool timerRunning: false

    function startGame(){
        var rand = Math.floor(5*Math.random()+1);       //Math.random()产生随机数
        switch(rand){
            case 1:
                var componetImageUP = Qt.createComponent("ImageUp.qml");
                componetImageUP.createObject(m_displayPart);
                break;
            case 2:
                var componetImageDown = Qt.createComponent("ImageDown.qml");
                componetImageDown.createObject(m_displayPart);
                break;
            case 3:
                var componetImageLeft = Qt.createComponent("ImageLeft.qml");
                componetImageLeft.createObject(m_displayPart);
                break;
            case 4:
                var componetImageRight = Qt.createComponent("ImageRight.qml");
                componetImageRight.createObject(m_displayPart);
                break;
            case 5:
                var componetImageSpace = Qt.createComponent("ImageSpace.qml");
                componetImageSpace.createObject(m_displayPart);
                break;
            default:
                break;
        }

        //imageLoader.source = "ImageUp.qml"
        if(++mainWindow.currentNum > 99) {
            displayPart.timerRunning = false;
            pauseButton.pauseText = "restart";
            pauseButton.stat = false;
        }
    }



    Rectangle {
        id: pjLine

        width: 1; height: parent.height
        z: 0
        color: "transparent"
        anchors.horizontalCenter: parent.horizontalCenter

    }

    Timer {
        id: timerDisplay

        interval: 300
        running: timerRunning
        repeat: true
        onTriggered: startGame();

    }

}


