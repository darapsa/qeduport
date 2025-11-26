import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import Eduport

Button {
	id: button
	horizontalPadding: 12.8
	verticalPadding: 6.4
	font {
		family: Eduport.haveRoboto
				? "Roboto" : Eduport.robotoMedium.name
		weight: Font.Medium
		pointSize: 13
	}
	contentItem: RowLayout {

		Image {
			source: button.icon.source
			sourceSize {
				width: button.icon.width
				height: button.icon.height
			}

			ColorOverlay {
				color: checked
					? Eduport.bsGray800 : Eduport.bsBtnColor
				source: parent
				anchors.fill: parent
			}
		}

		Text {
			text: button.text
			font: button.font
			color: checked ? Eduport.bsGray800 : Eduport.bsBtnColor
			Layout.fillWidth: true
		}
	}
	background: Rectangle {
		color: checked ? Eduport.bsBodyBg : Eduport.bsBtnBg
		radius: 3.2
	}
}
