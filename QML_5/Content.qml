import QtQuick

Rectangle {
    id: content
    property string text: "Some content"
    property string state1: "hidden"
    signal contentButtonPressed()

    Layout.fillWidth: true
    Layout.fillHeight: true

    state: state1

    states: [
        State {
            name: "hidden"
        },
        State {
            name: "shown"
            PropertyChanges {
                target: back
                visible: true
                duration: 300
            }
        }
    ]

    transitions: [
        Transition {
            from: "hidden"
            to: "shown"
            // PropertyChanges {
            //     target: back
            //     visible: true
            // }
            PropertyAnimation {
                target: back
                property: "opacity"
                to: 1
                duration: 300
                running: true
            }
        },
        Transition {
            from: "shown"
            to: "hidden"
            PropertyAnimation {
                target: back
                property: "opacity"
                to: 0
                duration: 300
                running: true
            }
            PropertyAnimation {
                target: back
                property: "visible"
                to: false
                duration: 300
                running: true
            }
        }

    ]

    Text {
        anchors.centerIn: parent
        text: content.text
    }
    Rectangle {
        anchors.left: parent.left
        anchors.top: parent.top
        width: 80
        height: 40
        color: "lightgray"
        visible: false
        id: back
        Text {
            anchors.centerIn: parent
            text: "comeback"
        }
        MouseArea {
            anchors.fill: parent
            onPressed: {
                content.contentButtonPressed();
            }
        }
    }
}
