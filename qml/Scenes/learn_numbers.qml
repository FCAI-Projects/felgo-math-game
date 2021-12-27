import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12



Scene {
    id: sortNumber
    property int firstTime: 0
    property var numberList: []
    property var removedNumberList: []
    property int selectedIndex: -1
    property var selectedId: ''
    property int numberOfPassed: 0



    SoundEffect {
        id: sound1
        source: "../../assets/sound/1.wav"
    }

    SoundEffect {
        id: sound2
        source: "../../assets/sound/2.wav"
    }

    SoundEffect {
        id: sound3
        source: "../../assets/sound/3.wav"
    }

    SoundEffect {
        id: sound4
        source: "../../assets/sound/4.wav"
    }

    SoundEffect {
        id: sound5
        source: "../../assets/sound/5.wav"
    }

    SoundEffect {
        id: sound6
        source: "../../assets/sound/6.wav"
    }

    SoundEffect {
        id: sound7
        source: "../../assets/sound/7.wav"
    }

    SoundEffect {
        id: sound8
        source: "../../assets/sound/8.wav"
    }

    SoundEffect {
        id: sound9
        source: "../../assets/sound/9.wav"
    }

    Rectangle {
        id: rectangle
        anchors.fill: parent.fullWindowAnchorItem
        color: "#83CFF3"
        anchors.bottomMargin: -50

        AppButton{
            text: "رجوع"
            x:20
            width: sortNumber.dp(120)
            minimumHeight: sortNumber.dp(30)
            radius: 40
            backgroundColor: "#00aaf9"
            borderColor: "#1db4f9"
            backgroundColorPressed: "#0085bf"
            borderWidth: 2
            fontBold: true
            textSize: 10

            onClicked: {
                backmusic.play();
                sortNumber.visible = false
                menuu.visible = true

            }
        }

        // row 1 +++++++++++++++++++++++++++++++
        Rectangle{
          id: num1
          x:parent.width / 3.7
          y: 60
          width: 50
          height: 50
          color: "#83CFF3"



          AppImage {
              id: pic1
              width: 40
              height: 40
              x: 5
              y: 5
              source: "../../assets/1.png"
              MouseArea {
                  id: mo1
                  anchors.fill: parent
                  onPressed:{
                    sound1.play();
                    }
                }

          }


        }
        Rectangle{
          id: num12
          x: parent.width / 2.3
          y: 60
          width: 50
          height: 50
          color: "#83CFF3"

          Image {
              x: 5
              y: 5
              id: pic12
              anchors.fill: parent
              source: "../../assets/2.png"
              MouseArea {
                  id: mo2
                  anchors.fill: parent
                  onPressed:{

                      sound2.play();
                    }
                }
               }
          }

        Rectangle{
          id: num3
          x: parent.width / 1.7
          y: 60
          width: 50
          height: 50
          color: "#83CFF3"

          Image {
              x: 5
              y: 5
              id: pic13
              anchors.fill: parent
              source: "../../assets/3.png"
              MouseArea {
                  id: mo3
                  anchors.fill: parent
                  onPressed:{
                      sound3.play();
                    }
                }
               }
          }


        // row 2 +++++++++++++++++++++++++++++++
        Rectangle{
          id: num4
          x:parent.width / 3.7
          y: 150
          width: 50
          height: 50
          color: "#83CFF3"



          AppImage {
              id: pic4
              width: 40
              height: 40
              x: 5
              y: 5
              source: "../../assets/4.png"
              MouseArea {
                  id: mo4
                  anchors.fill: parent
                  onPressed:{

                      sound4.play();
                    }
                }

          }


        }
        Rectangle{
          id: num5
          x: parent.width / 2.3
          y: 150
          width: 50
          height: 50
          color: "#83CFF3"

          Image {
              x: 5
              y: 5
              id: pic5
              anchors.fill: parent
              source: "../../assets/5.png"
              MouseArea {
                  id: mo5
                  anchors.fill: parent
                  onPressed:{

                      sound5.play();
                    }
                }
               }
          }

        Rectangle{
          id: num6
          x: parent.width / 1.7
          y: 150
          width: 50
          height: 50
          color: "#83CFF3"

          Image {
              x: 5
              y: 5
              id: pic6
              anchors.fill: parent
              source: "../../assets/6.png"
              MouseArea {
                  id: mo6
                  anchors.fill: parent
                  onPressed:{
                      sound6.play();
                    }
                }
               }
          }


        // row 3 +++++++++++++++++++++++++++++++
        Rectangle{
              id: num7
              x:parent.width / 3.7
              y: 230
              width: 50
              height: 50
              color: "#83CFF3"



              AppImage {
                  id: pic7
                  width: 40
                  height: 40
                  x: 5
                  y: 5
                  source: "../../assets/7.png"
                  MouseArea {
                      id: mo7
                      anchors.fill: parent
                      onPressed:{

                          sound7.play();
                        }
                    }

              }


            }
        Rectangle{
              id: num8
              x: parent.width / 2.3
              y: 230
              width: 50
              height: 50
              color: "#83CFF3"

              Image {
                  x: 5
                  y: 5
                  id: pic8
                  anchors.fill: parent
                  source: "../../assets/8.png"
                  MouseArea {
                      id: mo8
                      anchors.fill: parent
                      onPressed:{

                          sound8.play();
                        }
                    }
                   }
              }

        Rectangle{
              id: num9
              x: parent.width / 1.7
              y: 230
              width: 50
              height: 50
              color: "#83CFF3"

              Image {
                  x: 5
                  y: 5
                  id: pic9
                  anchors.fill: parent
                  source: "../../assets/9.png"
                  MouseArea {
                      id: mo9
                      anchors.fill: parent
                      onPressed:{

                          sound9.play();
                        }
                    }
                   }
              }

    }
}





