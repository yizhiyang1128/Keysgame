import QtQuick 2.0

Rectangle {
    id: m_displayPart

    property bool timerRunning: false

    function startGame(){
        var rand = Math.floor(5*Math.random()+1);
        switch(rand){
            case 1:
                var componetImageUP = Qt.createComponent("ImageUp.qml");
                componetImageUP.createObject(rowDisplay);
                break;
            case 2:
                var componetImageDown = Qt.createComponent("ImageDown.qml");
                componetImageDown.createObject(rowDisplay);
                break;
            case 3:
                var componetImageLeft = Qt.createComponent("ImageLeft.qml");
                componetImageLeft.createObject(rowDisplay);
                break;
            case 4:
                var componetImageRight = Qt.createComponent("ImageRight.qml");
                componetImageRight.createObject(rowDisplay);
                break;
            case 5:
                var componetImageSpace = Qt.createComponent("ImageSpace.qml");
                componetImageSpace.createObject(rowDisplay);
                break;
            default:
                break;
        }

        //imageLoader.source = "ImageUp.qml"
        if(++mainWindow.currentNum > 10) {
            displayPart.timerRunning = false;
            pauseButton.pauseText = "restart";
            pauseButton.stat = false;
        }
    }

//    function score(){
//       m_displayPart.color = "green";
//        mainWindow.currentScore++;
//        //console.log("score!");
//    }

//    function unScore(){
//        m_displayPart.color = "red";
//        //console.log("un score!");
//    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            mainWindow.currentScore++
        }
    }

    width: 600
    height: 300
    color: "lightblue"

    Rectangle {
        id: rowDisplay

        z: 1; width: 500;
        anchors.verticalCenter: parent.verticalCenter
        focus: true

        Keys.onPressed: {
            if(childAt(250,0)===null) {
                unScore();
            }
            else if( (event.key===Qt.Key_Up)&&(childAt(250,0).getValue()===1) ) {
                score();
            }
            else if( (event.key === Qt.Key_Down)&&(childAt(250,0).getValue()===2) ) {
                score();
            }
            else if( (event.key === Qt.Key_Left)&&(childAt(250,0).getValue()===3) ) {
                score();
            }
            else if( (event.key === Qt.Key_Right)&&(childAt(250,0).getValue()===4) )
                score();
            else if( (event.key === Qt.Key_Space)&&(childAt(250,0).getValue()===5) )
                score();
            else
                unScore();

            //event.accepted = true;
        }

        Keys.onReleased: {m_displayPart.color = "lightblue"}

    }

    Rectangle {
        id: pjLine

        width: 20; height: parent.height
        z: 0
        color: "red"
        anchors.horizontalCenter: parent.horizontalCenter

    }

    Timer {
        id: timerDisplay

        interval: 3000
        running: timerRunning
        repeat: true
        onTriggered: startGame();

    }

}

