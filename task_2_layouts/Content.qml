import QtQuick 2.15
import QtQuick.Layouts 1.15

Rectangle {
    Layout.fillWidth: true
    color: "#f5f5f5"
    border.color: "gray"

    Text {
        anchors.centerIn: parent
        text: "Content"
        font.bold: true
    }
}
