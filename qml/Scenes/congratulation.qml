import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

Scene {
    id: congratulation

    Rectangle {
        id: rectangle
        anchors.fill: parent.gameWindowAnchorItem
        color: "#83CFF3"
        anchors.bottomMargin: -50


        Text {
            id: textElement
            text: qsTr("احسنت ❤️❤️")
            color: "#ff0000"
            font.pixelSize: 30
            x: (parent.width / 2) - 40
            y: (parent.height / 3.5)
            font.family: "Urdu Typesetting"
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        AppButton{
            text: "القائمة"
            x: (parent.width / 2) - 40
            y: (parent.height / 2) - 30
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
                congratulation.visible = false
                menuu.visible = true
            }
        }
    }
}
