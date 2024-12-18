import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls
import QtCharts 2.4

Window {
    width: 360
    height: 640

    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0; color: "#C7B1EE" }
            GradientStop { position: 1; color: "#B1E7EA" }
        }
    }

    ListModel {
        id: message_model
    }

    Component {
        id: delegate
        Delegate {
            message: model.message
            time: model.time

            width: parent.width
            height: 50
        }
    }

    ListView {
        anchors.fill: parent
        anchors.margins: 16
        spacing: 16
        model: message_model
        delegate: delegate
    }

    Row {
        anchors.bottom: parent.bottom
        width: parent.width
        height: 50

        Item {
            width: parent.width - 120
            height: parent.height

            TextField {
                id: input
                font.pointSize: 14
                anchors.fill: parent
                placeholderText: "Write a message..."
            }
        }

        Button {
            height: parent.height
            width: 120
            font.pointSize: 14
            text: "Send"
            onClicked: {
                if (input.text !== "") {
                    message_model.append({
                        "message": input.text,
                        "time": Qt.formatTime(new Date(), "hh:mm")
                    });
                    input.text = "";
                }
            }
        }
    }
}
