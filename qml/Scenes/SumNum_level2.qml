import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

Scene {
    id: sumNum2

    Rectangle {
        id: rectangle
        anchors.fill: parent.gameWindowAnchorItem
        color: "#83CFF3"
        anchors.bottomMargin: -50

        AppButton{
            text: "رجوع"
            x:20
            width: 80
            height: 35
            radius: 40
            backgroundColor: "#00aaf9"
            borderColor: "#1db4f9"
            backgroundColorPressed: "#0085bf"
            borderWidth: 2
            fontBold: true
            textSize: 10

            onClicked: {
                sumNum2.visible = false
                sumNum1.visible = true
            }
        }

        AppButton{
            text: "التالي"
            x: 400
            width: 80
            height: 35
            radius: 40
            backgroundColor: "#00aaf9"
            borderColor: "#1db4f9"
            backgroundColorPressed: "#0085bf"
            borderWidth: 2
            fontBold: true
            textSize: 10

            onClicked: {
                var component = Qt.createComponent("SumNum_level3.qml")
                var window = component.createObject(gameWindow)
                window.show
                sumNum2.visible = false
            }
        }
//=========================== num 1 ====================
        Rectangle {
            id: num1
            x:20; y: 60;
            width: 80
            height: 80
            color: "#83CFF3"
            border.color: "#83CFF3"
            border.width: 5

            Image {
                id: pic1
                anchors.fill: parent
                source: "../../assets/5.png"

              }
        }
//=========================== [+] ====================

        Rectangle {
          id: plus
          x:120
          y: 70
          width: 80
          height: 80
          color: "#83CFF3"
          border.color: "#83CFF3"
          border.width: 5

          Image {
              id: pic2
              anchors.fill: parent
              source: "../../assets/+.png"
            }
        }
//=========================== num 2 ====================
        Rectangle{
          id: num2
          x:220
          y: 60
          width: 80
          height: 80
          color: "#83CFF3"
          border.color: "#83CFF3"
          border.width: 5

          Image {
              id: pic3
              anchors.fill: parent
              source: "../../assets/2.png"

               }
          }
//===========================   [=]   ====================
        Rectangle{
          id: equal
          x:340
          y: 60
          width: 80
          height: 80
          color: "#83CFF3"
          border.color: "#83CFF3"
          border.width: 5

          Image {
              id: pic4
              anchors.fill: parent
              source: "../../assets/=.png"

               }
          }

//===========================  [Answers] ====================

//=========================== num 1 ====================
        Rectangle {
          id: ans1
          x:30
          y: 180
          width: 110
          height: 110
          color: "#83CFF3"
          border.color: "white"
          border.width: 5

          Image {
              id: anspic1
              x:10
              y:10
              width: 90
              height: 90
              source: "../../assets/7.png"
            }

          ParallelAnimation {
              id: animation1

              ColorAnimation {
                target: ans1.border
                property: "color"
                to: "green"
                duration: 1000
              }

              NumberAnimation {
                target: anspic1
                property: "rotation"
                from: 0
                to: 360
                duration: 1000
                easing.type: Easing.InOutBack // Use an easing function for this animation
              }
            }

          SoundEffect {
              id: sound1
              source: "../../assets/sound/true.wav"
          }

          MouseArea {
              id: mo1
              anchors.fill: parent
              onPressed:{
                  animation1.start()
                  sound1.play()
                  counter++
                }
            }
        }

//=========================== num 2 ====================
        Rectangle {
          id: ans2
          x: 180
          y: 180
          width: 110
          height: 110
          color: "#83CFF3"
          border.color: "white"
          border.width: 5

          Image {
              id: anspic2
              x:10
              y:10
              width: 90
              height: 90
              source: "../../assets/5.png"
            }

          ParallelAnimation {
              id: animation2

              ColorAnimation {
                target: ans2.border
                property: "color"
                to: "red"
                duration: 1000
              }

              SequentialAnimation {

                  NumberAnimation {
                    target: ans2
                    property: "x"
                    to: 200
                    duration: 1000
                  }

                  NumberAnimation {
                    target: ans2
                    property: "x"
                    to: 180
                    duration: 1000
                  }
               }
            }

          SoundEffect {
              id: sound2
              source: "../../assets/sound/false.wav"
          }

          MouseArea {
              id: mo2
              anchors.fill: parent
              onPressed:{
                  animation2.start()
                  sound2.play()
                }

            }
        }

//=========================== num 3 ====================
        Rectangle {
          id: ans3
          x:330
          y: 180
          width: 110
          height: 110
          color: "#83CFF3"
          border.color: "white"
          border.width: 5

          Image {
              id: anspic3
              x:10
              y:10
              width: 90
              height: 90
              source: "../../assets/3.png"
            }


          ParallelAnimation {
              id: animation3

              ColorAnimation {
                target: ans3.border
                property: "color"
                to: "red"
                duration: 1000
              }

              SequentialAnimation {

                  NumberAnimation {
                    target: ans3
                    property: "x"
                    to: 350
                    duration: 1000
                  }

                  NumberAnimation {
                    target: ans3
                    property: "x"
                    to: 330
                    duration: 1000
                  }
               }
            }

          MouseArea {
              id: mo3
              anchors.fill: parent
              onPressed:{
                  animation3.start()
                  sound2.play()
                }

            }
        }

    }
}
