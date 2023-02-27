import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

RowLayout {
    id:listInline
    width: listInlineItem.width
    height: listInlineItem.height
    RowLayout {
        id:listInlineItem
        Rectangle {
            radius: 100
            color: "#4dfd7e14"
            Layout.preferredHeight: 42
            Layout.preferredWidth: 42
            Layout.minimumHeight: 42
            Layout.minimumWidth: 42
            
            Image {
                id: image
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/qtquickplugin/images/template_image.png"
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit
                Layout.preferredHeight: 12
                Layout.preferredWidth: 12
                Layout.minimumHeight: 12
                Layout.minimumWidth: 12
            }
        }
        Label {
            id: instructorTitle
            color: "#000000"
            text: qsTr("List inline item metrics")
            font.styleName: "Regular"
            font.pointSize: 14
            font.family: "roboto"
        }
    }
}