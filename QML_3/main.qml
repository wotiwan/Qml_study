import Felgo
import QtQuick
import QtQuick.Layouts

App {
    id: app
    width: 400
    height: 640
    visible: true

    minimumWidth: column.implicitWidth + 2 * 10

    ColumnLayout {
        id: column
        anchors.fill: parent

        Header {
            id: header
            height: app.height * 0.1
        }

        Content {
            id: content
            height: app.height * 0.8
        }

        Footer {
            id: footer
            height: app.height * 0.1

            onFooterButtonPressed: (index) => {
                content.text = "Item " + (index);
            }
        }
    }
}
