import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Eduport 1.4

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
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: Text.AlignVCenter
		}
	}
	background: Rectangle {
		color: checked ? Eduport.bsBodyBg : Eduport.bsBtnBg
		radius: 3.2
	}
}
