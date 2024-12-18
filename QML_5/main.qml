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
            onContentButtonPressed: {
                footer.state1 = "f1";
                content.state1 = "hidden";
                content.text = "Item 1";
            }
        }

        Footer {
            id: footer
            height: app.height * 0.1
            onFooterButtonPressed: (index, index2) => {
                if (index < 2) {
                    content.state1 = "hidden";
                } else {
                    content.state1 = "shown";
                }
                content.text = "Item " + (index);
            }
        }
    }
}
