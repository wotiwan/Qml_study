import QtQuick 2.15
import QtQuick.Layouts 1.15

Rectangle {
    Layout.fillWidth: true
    Layout.preferredHeight: 50
    color: "#d3d3d3"

    Text {
        anchors.centerIn: parent
        text: "Header"
        font.bold: true
    }
}
