

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import DemoProject

Rectangle {
    id: rectangle
    width: 640
    height: 380
    color: "#e4decc"

    MyMainViewRectangle {
        id: mainViewRectangle
        x: 35
    }

    Item {
        id: roundButtonItem
        x: 417
        y: 69
        width: 172
        height: 72

        RoundButton {
            id: lagoonRoundButton
            width: 69
            height: 28
            radius: 6
            text: "Lagoon"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            antialiasing: false
            focusPolicy: Qt.StrongFocus
            autoExclusive: true
            anchors.leftMargin: 10
            anchors.verticalCenterOffset: 0
            icon.color: "#4091e2"
            font.pointSize: 8
            font.capitalization: Font.MixedCase
            font.bold: true
            checkable: true
        }

        RoundButton {
            id: spaceRoundButton
            width: 69
            height: 30
            radius: 6
            text: "Space"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            autoExclusive: true
            anchors.rightMargin: 10
            checkable: true
            font.pointSize: 8
            font.bold: true
            icon.color: "#c5a12a"
            font.capitalization: Font.MixedCase
        }
    }

    Item {
        id: radioButtonItem
        x: 417
        y: 139
        width: 172
        height: 76
        visible: lagoonRoundButton.checked || spaceRoundButton.checked

        Image {
            id: alienPreviewImage
            width: 49
            height: 27
            anchors.left: parent.left
            anchors.top: parent.top
            source: "images/alien.png"
            anchors.leftMargin: 32
            anchors.topMargin: 7
            fillMode: Image.PreserveAspectFit
        }

        RadioButton {
            id: alienRadioButton
            x: 74
            width: 80
            height: 28
            text: qsTr("Alien")
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 7
            anchors.rightMargin: 18
        }

        Image {
            id: catPreviewImage
            y: 41
            width: 49
            height: 27
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            source: "images/cat.png"
            anchors.leftMargin: 33
            anchors.bottomMargin: 8
            fillMode: Image.PreserveAspectFit
        }
        RadioButton {
            id: catRadioButton
            x: 74
            y: 41
            width: 80
            height: 28
            text: qsTr("Cat")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 7
            anchors.rightMargin: 18
        }
    }

    Item {
        id: glassessSliderItem
        x: 417
        y: 211
        width: 172
        height: 40

        Image {
            id: glassesPreviewImage
            y: 18
            width: 41
            height: 9
            anchors.left: parent.left
            source: "images/sunglasses.png"
            anchors.leftMargin: 0
            fillMode: Image.PreserveAspectFit
        }

        Switch {
            id: glassesSwitch
            x: 37
            y: 6
            width: 133
            height: 28
            text: qsTr("Sunglasses")
            anchors.right: parent.right
            anchors.rightMargin: 2
        }
    }

    states: [
        State {
            name: "clicked"
            when: button.checked
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.5}D{i:11}
}
##^##*/

