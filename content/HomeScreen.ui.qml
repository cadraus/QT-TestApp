

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
        width: 192
        height: 47

        RoundButton {
            id: lagoonRoundButton
            y: 11
            width: 69
            height: 28
            text: "Lagoon"
            anchors.horizontalCenterOffset: -50
            anchors.horizontalCenter: parent.horizontalCenter
            icon.color: "#4091e2"
            font.pointSize: 8
            font.capitalization: Font.MixedCase
            font.bold: true
            checkable: false
        }

        RoundButton {
            id: spaceRoundButton
            y: 9
            width: 69
            height: 30
            text: "Space"
            anchors.horizontalCenterOffset: 50
            anchors.horizontalCenter: parent.horizontalCenter
            checkable: false
            font.pointSize: 8
            font.bold: true
            icon.color: "#c5a12a"
            font.capitalization: Font.MixedCase
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
    D{i:0;formeditorZoom:1.5}D{i:5}D{i:3}D{i:4}
}
##^##*/

