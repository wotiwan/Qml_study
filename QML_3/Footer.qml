import QtQuick
import QtQuick.Layouts

Rectangle {
    id: footer
    signal footerButtonPressed(int index)

    Layout.fillWidth: true
    Layout.fillHeight: true
    Layout.maximumHeight: app.height * 0.15

    RowLayout {
        anchors.fill: parent

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
                    footer.footerButtonPressed(1);
                    footer1.opacity = 1; footer2.opacity = 0.3; footer3.opacity = 0.3;
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
                    footer.footerButtonPressed(2);
                    footer1.opacity = 0.3; footer2.opacity = 1; footer3.opacity = 0.3;
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
                    footer.footerButtonPressed(3);
                    footer1.opacity = 0.3; footer2.opacity = 0.3; footer3.opacity = 1;
                }
            }
        }
    }
}
