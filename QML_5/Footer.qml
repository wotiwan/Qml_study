import QtQuick
import QtQuick.Layouts

Rectangle {
    id: footer
    signal footerButtonPressed(int index, string index2)
    property string state1: "f1"

    Layout.fillWidth: true
    Layout.fillHeight: true
    Layout.maximumHeight: app.height * 0.15

    RowLayout {
        id: mainrow
        anchors.fill: parent

        states: [
            State {
                name: "f1"
            },
            State {
                name: "f2"
            },
            State {
                name: "f3"
            }

        ]
        transitions: [
            Transition {
                from: "f1"
                to: "f3"
                PropertyAnimation {
                    target: footer3
                    property: "opacity"
                    to: 1
                    duration: 300
                    running: true
                }
                PropertyAnimation {
                    target: footer1
                    property: "opacity"
                    to: 0.3
                    duration: 300
                    running: true
                }
                PropertyAnimation {
                    target: footer2
                    property: "opacity"
                    to: 0.3
                    duration: 300
                    running: true
                }
                PropertyAnimation {
                    target: back
                    property: "visible"
                    to: true
                    duration: 300
                    running: true
                }
            },
            Transition {
                from: "f1"
                to: "f2"
                PropertyAnimation {
                    target: footer2
                    property: "opacity"
                    to: 1
                    duration: 300
                    running: true
                }
                PropertyAnimation {
                    target: footer1
                    property: "opacity"
                    to: 0.3
                    duration: 300
                    running: true
                }
                PropertyAnimation {
                    target: footer3
                    property: "opacity"
                    to: 0.3
                    duration: 300
                    running: true
                }
            },
            Transition {
                from: "f2"
                to: "f1"
                PropertyAnimation {
                    target: footer1
                    property: "opacity"
                    to: 1
                    duration: 300
                    running: true
                }
                PropertyAnimation {
                    target: footer2
                    property: "opacity"
                    to: 0.3
                    duration: 300
                    running: true
                }
                PropertyAnimation {
                    target: footer3
                    property: "opacity"
                    to: 0.3
                    duration: 300
                    running: true
                }
            },
            Transition {
                from: "f2"
                to: "f3"
                PropertyAnimation {
                    target: footer3
                    property: "opacity"
                    to: 1
                    duration: 300
                    running: true
                }
                PropertyAnimation {
                    target: footer2
                    property: "opacity"
                    to: 0.3
                    duration: 300
                    running: true
                }
                PropertyAnimation {
                    target: footer1
                    property: "opacity"
                    to: 0.3
                    duration: 300
                    running: true
                }
            },
            Transition {
                from: "f3"
                to: "f1"
                PropertyAnimation {
                    target: footer1
                    property: "opacity"
                    to: 1
                    duration: 300
                    running: true
                }
                PropertyAnimation {
                    target: footer2
                    property: "opacity"
                    to: 0.3
                    duration: 300
                    running: true
                }
                PropertyAnimation {
                    target: footer3
                    property: "opacity"
                    to: 0.3
                    duration: 300
                    running: true
                }
            },
            Transition {
                from: "f3"
                to: "f2"
                PropertyAnimation {
                    target: footer2
                    property: "opacity"
                    to: 1
                    duration: 300
                    running: true
                }
                PropertyAnimation {
                    target: footer1
                    property: "opacity"
                    to: 0.3
                    duration: 300
                    running: true
                }
                PropertyAnimation {
                    target: footer3
                    property: "opacity"
                    to: 0.3
                    duration: 300
                    running: true
                }
            }

        ]

        state: state1

        Rectangle {
            id: footer1
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "light gray"

            Text {
                anchors.centerIn: parent
                text: qsTr("Footer 1")
            }

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    footer.footerButtonPressed(1, false);
                    state1 = "f1";
                }
            }
        }

        Rectangle {
            id: footer2
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "light gray"

            Text {
                anchors.centerIn: parent
                text: qsTr("Footer 2")
            }

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    footer.footerButtonPressed(2, false);
                    state1 = "f2";
                }
            }
        }

        Rectangle {
            id: footer3
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "light gray"

            Text {
                anchors.centerIn: parent
                text: qsTr("Footer 3")
            }

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    footer.footerButtonPressed(3, false);
                    state1 = "f3"/*footer3.opacity = 1*/;
                }
            }
        }
    }
}
