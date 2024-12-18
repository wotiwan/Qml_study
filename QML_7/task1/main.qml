import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Window 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: qsTr("Registration Form")

    Rectangle {
        anchors.fill: parent
        color: "#f7f7f7"

        Column {
            anchors.centerIn: parent
            spacing: 20

            TextField {
                id: usernameField
                placeholderText: "Username"
                font.pixelSize: 16
                width: 200
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""

                color: focus ? "black" : "grey"
                focus: true
            }

            TextField {
                id: passwordField
                placeholderText: "Password"
                font.pixelSize: 16
                width: 200
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""

                echoMode: TextInput.Password
                color: focus ? "black" : "grey"
            }

            Row {
                anchors.horizontalCenter: parent.horizontalCenter

                Button {
                    width: 100
                    text: "Log in"
                    font.pixelSize: 16
                }

                Button {
                    width: 100
                    background: Rectangle {
                        color: "#f7f7f7"
                    }

                    text: "Clear"
                    font.pixelSize: 16
                    onClicked: {
                        usernameField.text = ""
                        passwordField.text = ""
                    }
                }
            }
        }
    }
}
