import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
	width: coursecontent.width
	height: coursecontent.height
	color: "#fff"
	RowLayout {
		id: coursecontent
		spacing: 8
		Layout.margins: 8
		Button {
			id: play
			icon.source: "Font-Awesome/svgs/solid/circle-play.svg"
			icon.color: "#ffffff"
			Layout.margins: 8
			display: AbstractButton.IconOnly
			Layout.preferredHeight: 32
			Layout.preferredWidth: 32
			Layout.minimumHeight: 32
			Layout.minimumWidth: 32
			background: Rectangle {
				color: play.down ? "#ff2c2c": "#4dff2c2c"
				radius: 100
			}
		}
		Label {
			id: coursetitle
			Layout.margins: 8
			color: "#000000"
			text: "Course title"
			font.pointSize: 16
			font.family: "roboto"
			verticalAlignment: Text.AlignVCenter
		}
		Label {
			Layout.margins: 8
			id: premiumbadge
			color: "#ffffff"
			text: "Premium"
			font.pointSize: 12
			font.family: "roboto"
			verticalAlignment: Text.AlignVCenter
			rightPadding: 8
			leftPadding: 8
			padding: 4
			background: Rectangle {
				color: "#fd7e14"
				radius: 8
			}
		}
		Label {
			Layout.margins: 8
			id: courselength
			color: "#4d000000"
			text: "11m 12s"
			font.pointSize: 16
			font.family: "roboto"
			Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
		}
	}
}
