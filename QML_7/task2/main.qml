import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: "Password Entry"

    ColumnLayout {
        anchors.centerIn: parent

        Text {
            text: "Enter your password:"
            font.pixelSize: 16
            Layout.alignment: Qt.AlignCenter
        }


        Text {
            id: passwordField
            text: passwordField.text
            visible: false
            color: fon.color // Формируемый пароль, невидим пользователю (цвет фона)
        }

        Rectangle {
            id: passwordField1
            color: "white"
            border.width: 2
            border.color: "black"
            width: parent.width
            height: 50
            Layout.alignment: Qt.AlignCenter

            Row {
                spacing: 6
                anchors.centerIn: parent

                Repeater {
                    model: 6
                    Label {
                        width: 20
                        height: 20
                        font.pixelSize: 36
                        text: "*"
                        Layout.alignment: Qt.AlignCenter
                        color: index < passwordField.text.length ? "black" : "lightgrey"
                    }
                }
            }
        }

        // Клавиатура
        GridLayout {
            id: keypad
            rows: 4
            columns: 3
            width: parent.width
            //spacing: 10

            Button {
                text: "1"
                onClicked: passwordField.text += "1"
            }

            Button {
                text: "2"
                onClicked: passwordField.text += "2"
            }

            Button {
                text: "3"
                onClicked: passwordField.text += "3"
            }

            Button {
                text: "4"
                onClicked: passwordField.text += "4"
            }

            Button {
                text: "5"
                onClicked: passwordField.text += "5"
            }

            Button {
                text: "6"
                onClicked: passwordField.text += "6"
            }

            Button {
                text: "7"
                onClicked: passwordField.text += "7"
            }

            Button {
                text: "8"
                onClicked: passwordField.text += "8"
            }

            Button {
                text: "9"
                onClicked: passwordField.text += "9"
            }

            Button {
                text: ""
                Layout.alignment: Qt.AlignCenter
            }

            Button {
                text: "0"
                onClicked: passwordField.text += "0"
            }

            Button {
                text: "Clear"
                onClicked: passwordField.text = ""
            }
        }
    }
}
