import Felgo 3.0
import QtQuick 2.0
import QtMultimedia 5.12
import QtMultimedia 5.9


GameWindow {
    id: gameWindow
    activeScene: menuu

    property int counter: 0
    property int counterSortLevel: 0
    property int counterSortLevelMax: 3

    Scene {
        id: menuu

        Rectangle {
            id: rectangle
            anchors.fill: parent.fullWindowAnchorItem

            Image {
                id: background
                source: "../assets/background1.jpg"
                anchors.fill: parent
            }

            BackgroundMusic {
                    id: backmusic
                    source: "../assets/sound/alexander-nakarada-silly-intro.wav"
                    volume: 0.3
               }

            Image {
                id: sun
                x: 15
                width: 80
                height: 80
                source: "../assets/sun.png"
            }

            NumberAnimation {
              running: true
              loops: Animation.Infinite
              id: animation
              target: sun
              property: "rotation"
              from: 0
              to: 360
              duration: 5000
              easing.type: Easing.Linear
            }

            Text {
                id: textElement
                text: qsTr("الحساب للاطفال")
                color: "#232bff"
                font.pixelSize: 40
                font.family: "Urdu Typesetting"
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Column{
                anchors.centerIn: parent
                spacing: menuu.dp(10)

               AppButton{
                    text: "جمع الارقام"
                    width: menuu.dp(200)
                    minimumHeight: 20
                    radius: 40
                    backgroundColor: "#00aaf9"
                    borderColor: "#1db4f9"
                    backgroundColorPressed: "#0085bf"
                    borderWidth: 2
                    fontBold: true
                    textSize: 10

                    onClicked: {
                        var component = Qt.createComponent("Scenes/SumNum_level1.qml")
                        var window = component.createObject(gameWindow)
                        window.show
                    }
                }

                AppButton{
                    text: "ترتيب الارقام"
                    width: menuu.dp(200)
                    minimumHeight: 20
                    radius: 40
                    backgroundColor: "#00aaf9"
                    borderColor: "#1db4f9"
                    backgroundColorPressed: "#0085bf"
                    borderWidth: 2
                    fontBold: true
                    textSize: 10

                    onClicked: {
                        counterSortLevel = 0;
                        menuu.visible = false;
                        var sortNumber = Qt.createComponent("Scenes/sortNumber.qml");
                        var windowsortNumber = sortNumber.createObject(gameWindow);
                        windowsortNumber.show;
                    }
                }
                AppButton{
                    text: "تعلم الارقام"
                    width: menuu.dp(200)
                    minimumHeight: 20
                    radius: 40
                    backgroundColor: "#00aaf9"
                    borderColor: "#1db4f9"
                    backgroundColorPressed: "#0085bf"
                    borderWidth: 2
                    fontBold: true
                    textSize: 10

                    onClicked: {
                        backmusic.stop();
                        menuu.visible = false;
                        var component = Qt.createComponent("Scenes/learn_numbers.qml")
                        var window = component.createObject(gameWindow)
                        window.show
                    }
                }
                AppButton{
                    text: "خروج"
                    width: menuu.dp(200)
                    minimumHeight: 20
                    radius: 40
                    backgroundColor: "#00aaf9"
                    borderColor: "#1db4f9"
                    backgroundColorPressed: "red"
                    borderWidth: 2
                    fontBold: true
                    textSize: 10

                    onClicked: Qt.quit()
                }
            }
        }
    }
}
