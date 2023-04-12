import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Bootstrap 5.3
import Eduport 1.4
import "../../../TextField"
import "../../../Button"

GridLayout {
    rows: width < 990 ? 2 : 1
    columns: width < 990 ? 1 : 2
    rowSpacing: 8
    columnSpacing: 8
    Rectangle {
        id: courseItemImage
        width: 100
        height: 75
        Layout.maximumWidth: width
        Layout.maximumHeight: height
        radius: 8
        Layout.rightMargin: 8
        Layout.bottomMargin: 16
        Layout.topMargin: 16
        Layout.leftMargin: 8
        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        Image {
            id: courseItemImageSource
            anchors.fill: parent
            visible: false
            source: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
        }
        OpacityMask {
            id: coursetemImageMask
            anchors.fill: courseItemImage
            source: courseItemImageSource
            maskSource: courseItemImage
        }
    }

    Label {
        id: courseItemTitle
        text: "Course Item Title"
	wrapMode: Label.Wrap
	Bootstrap.heading: 6
    Layout.maximumHeight: courseItemImage.height
        Layout.alignment: parent.width < 990 ? Qt.AlignTop | Qt.AlignHCenter : Qt.AlignLeft
                                               | Qt.AlignVCenter
        Layout.fillWidth: true
        Layout.fillHeight: parent.width < 990 ? true : false
    }
}
