

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

    RoundButton {
        id: lagoonRoundButton
        x: 411
        y: 81
        width: 69
        height: 28
        text: "Lagoon"
        anchors.right: parent.right
        anchors.rightMargin: 166
        font.pointSize: 8
        font.capitalization: Font.MixedCase
        font.bold: true
        checkable: false
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
    D{i:0;formeditorZoom:1.5}D{i:3}D{i:2}
}
##^##*/

