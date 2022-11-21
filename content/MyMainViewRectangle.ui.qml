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
        id: main_image
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

        Image {
            id: suite
            x: -8
            y: 8
            width: 54
            height: 51
            source: "qrc:/qtquickplugin/images/template_image.png"
            rotation: rotationDial.value
            scale: zoomSlider.value
            fillMode: Image.PreserveAspectFit

            Image {
                id: face_alien
                x: 29
                y: 30
                width: 46
                height: 42
                visible: alienRadioButton.checked
                source: "images/alien.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: face_cat
                x: 42
                y: 40
                width: 46
                height: 42
                visible: catRadioButton.checked
                source: "images/cat.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Dial {
            id: rotationDial
            x: 242
            y: -13
            width: 48
            height: 46
            rotation: 140
            baselineOffset: 0
            inputMode: Dial.Circular
            live: true
            value: 0
            to: 360
        }
    }

    Image {
        id: glassesImage
        x: 8
        y: 96
        width: 59
        height: 27
        visible: glassesSwitch.checked
        source: "images/sunglasses.png"
        fillMode: Image.PreserveAspectFit
    }

    Slider {
        id: zoomSlider
        x: 0
        y: 195
        width: 152
        height: 13
        to: 2
        value: 1
    }
    states: [

        State {
            name: "Lagoon"
            when: lagoonRoundButton.checked

            PropertyChanges {
                target: main_image
                source: "images/lagoon.jpg"
            }

            PropertyChanges {
                target: suite
                x: 42
                y: 41
                width: 63
                height: 68
                source: "images/diver.png"
            }

            PropertyChanges {
                target: face_alien
                x: 20
                y: 6
                width: 19
                height: 12
            }

            PropertyChanges {
                target: face_cat
                x: 14
                y: 2
                width: 31
                height: 20
            }

            PropertyChanges {
                target: glassesImage
                x: 61
                y: 62
            }

            PropertyChanges {
                target: zoomSlider
                width: 152
                height: 22
            }
        },
        State {
            name: "Space"
            when: spaceRoundButton.checked

            PropertyChanges {
                target: main_image
                source: "images/planet.png"
            }

            PropertyChanges {
                target: suite
                x: 8
                y: 49
                width: 104
                height: 107
                source: "images/spacesuit.png"
            }

            PropertyChanges {
                target: face_alien
                x: 37
                y: 7
                width: 23
                height: 21
            }

            PropertyChanges {
                target: face_cat
                x: 29
                y: 0
                width: 37
                height: 30
            }

            PropertyChanges {
                target: glassesImage
                x: 45
                y: 75
            }
        },
        State {
            name: "default"
            when: !lagoonRoundButton.checked || spaceRoundButton.checked

            PropertyChanges {
                target: main_image
                source: "images/shnur.jpg"
            }

            PropertyChanges {
                target: suite
                x: 99
                y: 41
                width: 86
                height: 73
                visible: false
                source: "images/sausage-dog.jpg"
            }

            PropertyChanges {
                target: face_alien
                x: -103
                y: 52
                width: 80
                height: 88
                visible: false
            }

            PropertyChanges {
                target: face_cat
                x: -118
                y: 30
                width: 114
                height: 111
                visible: false
            }

            PropertyChanges {
                target: glassesImage
                x: 128
                y: 74
                width: 77
                height: 34
                visible: glassesSwitch.checked
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:2}
}
##^##*/

