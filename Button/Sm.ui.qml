import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects
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
			layer {
				enabled:true
				effect: MultiEffect {
					brightness: 1.0
					colorization: 1.0
					colorizationColor: checked ? Eduport.bsGray800 : Eduport.bsBtnColor
				}
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
