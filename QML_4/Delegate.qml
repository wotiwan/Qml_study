import QtQuick

Item {
    property string time: "?"
    property string message: "?"

    Rectangle{
        radius:15
        border.color:"gray"
        anchors.fill:parent
    }

    Row{
        id:row
        anchors.left:parent.left
        anchors.right: parent.right
        height:parent.height
        anchors.margins: 16

        Text{
            text:message
            anchors.verticalCenter: row.verticalCenter
            font.pointSize: 14
        }
        Text{
            text:time
            anchors.verticalCenter: row.verticalCenter
            anchors.right: parent.right
            font.pointSize: 11
        }
    }
}
