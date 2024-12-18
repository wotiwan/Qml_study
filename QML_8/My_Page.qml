import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    id: root

    property alias bgColor: backgroundRect.color

    Rectangle {
        id: backgroundRect
        anchors.fill: parent
        color: "white"
    }

    Text {
        text: root.title
        anchors.centerIn: parent
        font.pixelSize: 24
        color: "white"
    }
}
