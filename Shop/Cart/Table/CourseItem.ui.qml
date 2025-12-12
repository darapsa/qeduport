import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects
import Bootstrap
import Eduport
import "../../../TextField"
import "../../../Button"

GridLayout {
	rows: width < 990 ? 2 : 1
	columns: width < 990 ? 1 : 2
	rowSpacing: 8
	columnSpacing: 8

	Image {
		id: courseItemImage
		Layout.rightMargin: 8
		Layout.bottomMargin: 16
		Layout.topMargin: 16
		Layout.leftMargin: 8
		Layout.alignment: Qt.AlignLeft | Qt.AlignTop
		source: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
		sourceSize {
			width: 100
			height: 75
		}
		layer {
			enabled: true
			effect: MultiEffect {
				maskEnabled: true
				maskSource: maskRectangle
			}
		}
		Rectangle {
			id: maskRectangle
			width: courseItemImage.sourceSize.width
			height: courseItemImage.sourceSize.height
			radius: 8
			layer.enabled: true
			visible: false
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
