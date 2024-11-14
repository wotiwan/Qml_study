import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Window {
    visible: true
    width: 300
    height: 500
    title: "Task_for_Layout"

    ColumnLayout {
        anchors.fill: parent

        Header { Layout.fillWidth: true; Layout.preferredHeight: 50 }

        Content { Layout.fillWidth: true; Layout.fillHeight: true }

        Footer { Layout.fillWidth: true; Layout.preferredHeight: 50 }
    }
}
