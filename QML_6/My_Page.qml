import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    id: root

    property alias bgColor: backgroundRect.color
    property alias leftButtonText: leftButton.text
    property alias rightButtonText: rightButton.text

    signal leftClicked()
    signal rightClicked()

    Rectangle {
        id: backgroundRect
        anchors.fill: parent
        color: "white"
    }

    Row {
        spacing: 16
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.margins: 12

        Button {
            id: leftButton
            onClicked: root.leftClicked()
        }

        Button {
            id: rightButton
            onClicked: root.rightClicked()
        }
    }
}
