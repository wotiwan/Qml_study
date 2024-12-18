import Felgo
import QtQuick 2.15
import QtQuick.Controls 2.15

App {
    width: 360
    height: 640
    visible: true
    title: qsTr("Color Navigation")

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: startPage
    }

    ToolBar {
        id: appHeader
        height: 50

        Row {
            spacing: 12
            anchors.fill: parent

            Button {
                text: "< Back"
                visible: stackView.depth > 1
                onClicked: stackView.pop()
            }

            Text {
                text: "Current Page: " + (stackView.currentItem ? stackView.currentItem.title : "Start")
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }

    Component {
        id: startPage
        My_Page {
            id: mainPage
            title: "Home"

            bgColor: "lightgray"
            leftButtonText: "To Green"
            rightButtonText: "To Yellow"

            onLeftClicked: {
                stackView.pop()
                stackView.push(greenPage)
            }
            onRightClicked: {
                stackView.pop()
                stackView.push(yellowPage)
            }

            Text {
                text: "Welcome to the Color Navigator"
                anchors.centerIn: parent
                font.pixelSize: 24
            }
        }
    }

    Component {
        id: redPage
        My_Page {
            title: "Red Page"
            bgColor: "red"
            leftButtonText: "To Green"
            rightButtonText: "To Yellow"

            onLeftClicked: {
                stackView.pop()
                stackView.push(greenPage)
            }
            onRightClicked: {
                stackView.pop()
                stackView.push(yellowPage)
            }
        }
    }

    Component {
        id: greenPage
        My_Page {
            title: "Green Page"
            bgColor: "green"
            leftButtonText: "To Yellow"
            rightButtonText: "To Red"

            onLeftClicked: {
                stackView.pop()
                stackView.push(yellowPage)
            }
            onRightClicked: {
                stackView.pop()
                stackView.push(redPage)
            }
        }
    }

    Component {
        id: yellowPage
        My_Page {
            title: "Yellow Page"
            bgColor: "yellow"
            leftButtonText: "To Red"
            rightButtonText: "To Green"

            onLeftClicked: {
                stackView.pop()
                stackView.push(redPage)
            }
            onRightClicked: {
                stackView.pop()
                stackView.push(greenPage)
            }
        }
    }
}
