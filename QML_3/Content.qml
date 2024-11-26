import QtQuick

Rectangle {
    id: content
    property string text: "Some content"

    Layout.fillWidth: true
    Layout.fillHeight: true

    Text {
        anchors.centerIn: parent
        text: content.text
    }
}
