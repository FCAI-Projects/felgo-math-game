import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12



Scene {
    id: sortNumber
    property int firstTime: 0
    property var numberList: []
    property var removedNumberList: []


    Rectangle {
        id: rectangle
        anchors.fill: parent.gameWindowAnchorItem
        color: "#83CFF3"
        anchors.bottomMargin: -50

        onWidthChanged: {
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
                        randomNumber2 = Math.floor(Math.random() * 9);
                    }
                    removedNumberList.push(randomNumber2);
                }
                numberList.sort();
                console.debug(removedNumberList);
            }
            firstTime = 1;
        }

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

            }
        }



        Rectangle{
          id: num1
          x:10
          y: 150
          width: 40
          height: 40
          color: "#83CFF3"
          border.color: "#83CFF3"
          border.width: 5

          Image {
              id: pic1
              anchors.fill: parent
              source: "../../assets/1.png"

               }
          }

        Rectangle{
          id: num2
          x:80
          y: 150
          width: 40
          height: 40
          color: "#83CFF3"
          border.color: "#83CFF3"
          border.width: 5

          Image {
              id: pic2
              anchors.fill: parent
              source: "../../assets/2.png"

               }
          }
    }

}



