import QtQuick 2.0

Rectangle {

    id: m_displayPart

    property bool timerRunning: false

    //js调用random函数
    function startGame(){
        //Math.random()是返回一个Double类型的0到1的随机数
        //5*Math.random()+1 则返回一个Double类型1到6的随机数
        //Math.floor则是返回小于或等于一个给定数字的最大整数
        var rand = Math.floor(5*Math.random()+1);
        switch(rand){
            case 1:
                //动态创建一个组件对象
                //createObject()创建并返回该组件的实例，一般与创建组件相同上下文，rowDisplay为其父类
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
        //为了保持五个图标出现几率一样大，所以需要六个随机数且需要六个case

        //关于图标显示个数的函数
        if(++mainWindow.currentNum > 9) {
            //这里的displayPart在KeyGame.qml中被申明为DispalyPart部分的id
            displayPart.timerRunning = false;
            pauseButton.pauseText = "restart";
            pauseButton.stat = false;
            //这里应该加一个对PauseButton键的反应，保证出现图标数到了一定数量之后点puaseButton键不会继续增添时间值。或者直接添一个弹出方框，显示为你已经输了。而且还有个问题，就是每一关来说，图标数量会不会变？如果要变化，那么就要将这个if函数写到level.qml中？
        }
    }

//    得分函数
//    关于颜色，这个是关于中心蓝色方框的颜色，得分背景蓝色变为绿色
//    function score(){
//       m_displayPart.color = "green";
//        mainWindow.currentScore++;
//        //console.log("score!");
//    }


//    //不得分变为红色
//    function unScore(){
//        m_displayPart.color = "red";
//        //console.log("un score!");
//    }

    //中心蓝色方框的长宽颜色
    width: 800
    height: 300
    //color: "white"

    //???????
    Rectangle {
       id: rowDisplay

       z: 1; width: 500;
       anchors.verticalCenter: parent.verticalCenter
       focus: true

//      MouseArea{


        // 按下按键，得分或者不得分
        //childAt()是？
//        Keys.onPressed: {
//            //console.log("Up")
//            if(childAt(400,150)===nullptr) {
//                unScore();
//            }
//             if( event.key===Qt.Key_Up ) {
//                mainWindow.currentScore++
//            }
//            else if( event.key === Qt.Key_Down ) {
//                mainWindow.currentScore++
//            }
//            else if( event.key === Qt.Key_Left ) {
//                mainWindow.currentScore++
//            }
//            else if( event.key === Qt.Key_Right){
//                mainWindow.currentScore++
//             }
//            else if( event.key === Qt.Key_Space){
//                mainWindow.currentScore++
//             }
//            else
//                m_displayPart.color = "red"

//            //这句话的意思是防止事件向上层传播
//            //event.accepted = true;
//              }
        //}

        //键盘释放，中心方框又变为蓝色
//        Keys.onReleased: {m_displayPart.color = "lightblue"}

    }

    //这个Rectangle是指中心的那个粉色长条，即标准线
    Rectangle {
        id: pjLine

        width: 40; height: parent.height
        z: 0
        color: "pink"
        anchors.horizontalCenter: parent.horizontalCenter

    }

    //计时器，间隔时间为0.6秒，running为true，则启动计时器，信号连接到startGame()
    Timer {
        id: timerDisplay

        interval: 2000
        running: timerRunning
        repeat: true
        onTriggered: startGame();
        //对信号triggered的处理，此信号在计时器超时时发出

    }

}
