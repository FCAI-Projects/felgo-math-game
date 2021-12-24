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


    SoundEffect {
        id: sound2
        source: "../../assets/sound/true.wav"
    }


    SoundEffect {
        id: sound1
        source: "../../assets/sound/false.wav"
    }

    function checkIfremoved(number) {

        if(removedNumberList.indexOf(numberList.indexOf(number)) === -1) {
            return number;
        } else {
            return 'empty';
        }
    }


    function setSelectedIndex(index, id) {
        selectedIndex = index;
        selectedId = id;

    }

    function setNumber(index, id) {
       if(removedNumberList.indexOf(index) !== -1){

           if(selectedIndex !== -1) {

               if(index === removedNumberList[selectedIndex]) {
                   removedNumberList[selectedIndex] = -1;
                   id.source = "../../assets/" + numberList[index] + ".png"
                   sound2.play();
               } else {
                   sound1.play();
               }
           }
       }

    }



    Component.onCompleted: {
        if(firstTime === 0) {
            for(var i = 0; i < 6; i++) {
                var randomNumber = 0;
                while(randomNumber === 0 || numberList.indexOf(randomNumber) != -1) {
                    randomNumber = Math.floor(Math.random() * 10);
                }
                numberList.push(randomNumber);
            }
            numberList.sort();

            for(var j = 0; j < 3; j++) {
                var randomNumber2 = -1;
                while(randomNumber2 === -1 || removedNumberList.indexOf(randomNumber2) != -1) {
                    randomNumber2 = Math.floor(Math.random() * 6);
                }
                removedNumberList.push(randomNumber2);
            }
            numberList.sort();
        }
        firstTime = 1;



    }


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
                sortNumber.visible = false
                menuu.visible = true

            }
        }

        AppButton{
            text: "التالي"
            x: parent.width - 100
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

            }
        }


        // options numbers

        Rectangle{
          id: num11
          x:parent.width / 3.7
          y: 60
          width: 50
          height: 50
          color: "#83CFF3"
          border.color: "#ff0000"
          border.width: selectedIndex === 0 ? 2 : 0



          AppImage {
              id: pic11
              width: 40
              height: 40
              x: 5
              y: 5
              source:  firstTime === 0 ? "" : "../../assets/" + numberList[removedNumberList[0]] + ".png"
              MouseArea {
                  id: mo1
                  anchors.fill: parent
                  onPressed:{

                        setSelectedIndex(0, num11);
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
          border.color: "#ff0000"
          border.width: selectedIndex === 1 ? 2 : 0

          Image {
              x: 5
              y: 5
              id: pic12
              anchors.fill: parent
              source: firstTime === 0 ? "" : "../../assets/" + numberList[removedNumberList[1]] + ".png"
              MouseArea {
                  id: mo2
                  anchors.fill: parent
                  onPressed:{

                        setSelectedIndex(1, num12);
                    }
                }
               }
          }

        Rectangle{
          id: num13
          x: parent.width / 1.7
          y: 60
          width: 50
          height: 50
          color: "#83CFF3"
          border.color: "#ff0000"
          border.width: selectedIndex === 2 ? 2 : 0

          Image {
              x: 5
              y: 5
              id: pic13
              anchors.fill: parent
              source: firstTime === 0 ? "" : "../../assets/" + numberList[removedNumberList[2]] + ".png"
              MouseArea {
                  id: mo3
                  anchors.fill: parent
                  onPressed:{

                        setSelectedIndex(2, num13);
                    }
                }
               }
          }


        // number will sorted
        Rectangle{
          id: num1
          x: parent.width / 7.9
          y: 160
          width: 50
          height: 50
          color: "#83CFF3"
          border.color: "#ff0000"
          border.width: 0

          Image {
              x: 5
              y: 5
              id: pic1
              anchors.fill: parent
              source: firstTime === 0 ? "" : "../../assets/" + checkIfremoved(numberList[0]) + ".png"
              MouseArea {
                  id: mo10
                  anchors.fill: parent
                  onPressed:{

                        setNumber(0, pic1);
                    }
                }
               }
          }

        Rectangle{
          id: num2
          x:parent.width / 3.9
          y: 160
          width: 50
          height: 50
          color: "#83CFF3"
          border.color: "#ff0000"
          border.width: 0

          Image {
              x: 5
              y: 5
              id: pic2
              anchors.fill: parent
              source: firstTime === 0 ? "" : "../../assets/" + checkIfremoved(numberList[1]) + ".png"
              MouseArea {
                  id: mo11
                  anchors.fill: parent
                  onPressed:{

                        setNumber(1, pic2);
                    }
                }
               }
          }

        Rectangle{
          id: num3
          x:parent.width / 2.6
          y: 160
          width: 50
          height: 50
          color: "#83CFF3"
          border.color: "#ff0000"
          border.width: 0

          Image {
              x: 5
              y: 5
              id: pic3
              anchors.fill: parent
              source: firstTime === 0 ? "" : "../../assets/" + checkIfremoved(numberList[2]) + ".png"
              MouseArea {
                  id: mo12
                  anchors.fill: parent
                  onPressed:{

                        setNumber(2, pic3);
                    }
                }
               }
          }

        Rectangle{
          id: num4
          x: parent.width / 2.0
          y: 160
          width: 50
          height: 50
          color: "#83CFF3"
          border.color: "#ff0000"
          border.width: 0

          Image {
              x: 5
              y: 5
              id: pic4
              anchors.fill: parent
              source: firstTime === 0 ? "" : "../../assets/" + checkIfremoved(numberList[3]) + ".png"
              MouseArea {
                  id: mo13
                  anchors.fill: parent
                  onPressed:{

                        setNumber(3, pic4);
                    }
                }
               }
          }

        Rectangle{
          id: num5
          x: parent.width / 1.6
          y: 160
          width: 50
          height: 50
          color: "#83CFF3"
          border.color: "#ff0000"
          border.width: 0

          Image {
              x: 5
              y: 5
              id: pic5
              anchors.fill: parent
              source: firstTime === 0 ? "" : "../../assets/" + checkIfremoved(numberList[4]) + ".png"
              MouseArea {
                  id: mo14
                  anchors.fill: parent
                  onPressed:{

                        setNumber(4, pic5);
                    }
                }
               }
          }

        Rectangle{
          id: num6
          x: parent.width / 1.3
          y: 160
          width: 50
          height: 50
          color: "#83CFF3"
          border.color: "#ff0000"
          border.width: 0

          Image {
              x: 5
              y: 5
              id: pic6
              anchors.fill: parent
              source: firstTime === 0 ? "" : "../../assets/" + checkIfremoved(numberList[5]) + ".png"
              MouseArea {
                  id: mo15
                  anchors.fill: parent
                  onPressed:{

                        setNumber(5, pic6);
                    }
                }
               }
          }
    }

}



