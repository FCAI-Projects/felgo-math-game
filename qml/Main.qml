import Felgo 3.0
import QtQuick 2.0
import QtMultimedia 5.12
import QtMultimedia 5.9


GameWindow {
    id: gameWindow
    activeScene: menuu
    screenWidth: 960
    screenHeight: 640

    property int counter: 0

    Scene {
        id: menuu
        width: 480
        height: 320

        Rectangle {
            id: rectangle
            anchors.fill: parent.gameWindowAnchorItem

            Image {
                id: background
                source: "../assets/background1.jpg"
                anchors.fill: parent
            }

            BackgroundMusic {
                    id: backmusic
                    source: "../assets/sound/alexander-nakarada-silly-intro.mp3"
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
                font.pixelSize: 55
                font.family: "Urdu Typesetting"
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Column{
                anchors.centerIn: parent
                spacing: 10

                AppButton{
                    text: "جمع الارقام"
                    width: 140
                    height: 35
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
                    width: 140
                    height: 35
                    radius: 40
                    backgroundColor: "#00aaf9"
                    borderColor: "#1db4f9"
                    backgroundColorPressed: "#0085bf"
                    borderWidth: 2
                    fontBold: true
                    textSize: 10

                    onClicked: {
                        var component = Qt.createComponent("Scenes/OrderNum.qml")
                        var window = component.createObject(gameWindow)
                        window.show
                    }
                }

                AppButton{
                    text: "خروج"
                    width: 140
                    height: 35
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
