import QtQuick

Rectangle {
    id: header
    property string text: "Header"

    Layout.fillWidth: true
    Layout.fillHeight: true
    color: "light gray"

    Text {
        id: headerText
        anchors.centerIn: parent
        text: header.text
    }
}
