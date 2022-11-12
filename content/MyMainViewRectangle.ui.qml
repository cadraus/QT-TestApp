import QtQuick 6.2
import QtQuick.Controls 6.2
import DemoProject

Rectangle {
    id: mainViewRectangle
    width: 324
    height: 218
    color: "#c6c3bb"
    radius: 6
    anchors.verticalCenter: parent.verticalCenter
    anchors.left: parent.left
    state: "default"
    anchors.leftMargin: 35

    Image {
        id: image
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        source: "qrc:/qtquickplugin/images/template_image.png"
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 20
        fillMode: Image.PreserveAspectFit
    }
    states: [
        State {
            name: "Lagoon"

            PropertyChanges {
                target: image
                source: "images/lagoon.jpg"
            }
        },
        State {
            name: "Space"

            PropertyChanges {
                target: image
                source: "images/planet.png"
            }
        },
        State {
            name: "default"
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}
}
##^##*/
