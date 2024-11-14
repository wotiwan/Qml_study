import QtQuick 2.15
import QtQuick.Layouts 1.15

RowLayout {
    Layout.fillWidth: true
    spacing: 2

    Rectangle {
        Layout.fillWidth: true
        color: "#d3d3d3"
        Text {
            anchors.centerIn: parent
            text: "1"
            font.bold: true
        }
    }

    Rectangle {
        Layout.fillWidth: true
        color: "#d3d3d3"
        Text {
            anchors.centerIn: parent
            text: "2"
            font.bold: true
        }
    }

    Rectangle {
        Layout.fillWidth: true
        color: "#d3d3d3"
        Text {
            anchors.centerIn: parent
            text: "3"
            font.bold: true
        }
    }
}
