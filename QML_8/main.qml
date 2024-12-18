import Felgo
import QtQuick 2.15
import QtQuick.Controls 2.15

App {
    width: 360
    height: 640
    visible: true
    title: qsTr("Swipe Color Navigator")

    SwipeView {
        id: swipeView
        anchors.fill: parent

        My_Page {
            title: "Red Page"
            bgColor: "red"
        }

        My_Page {
            title: "Yellow Page"
            bgColor: "yellow"
        }

        My_Page {
            title: "Green Page"
            bgColor: "green"
        }
    }

    ToolBar {
        id: appHeader
        height: 50
        anchors.top: parent.top
        Row {
            spacing: 12
            anchors.fill: parent
            Text {
                text: "Current Page: " + (swipeView.currentIndex === 0 ? "Red" : swipeView.currentIndex === 1 ? "Yellow" : "Green")
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }

    PageIndicator {
        id: pageIndicator
        count: swipeView.count
        currentIndex: swipeView.currentIndex
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
