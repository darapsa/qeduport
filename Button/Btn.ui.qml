import QtQuick 2.15
import QtQuick.Controls 2.15
import Bootstrap 5.3

Button {
	id: button
	horizontalPadding: Bootstrap.btnPaddingX
	verticalPadding: Bootstrap.btnPaddingY
	font: Bootstrap.btnFont
	contentItem: Text {
		text: button.text
		font: button.font
		color: Bootstrap.btnColor
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
	}
	background: Rectangle {
		color: Bootstrap.btnBg
		border {
			width: Bootstrap.btnBorderWidth
			color: Bootstrap.btnBorderColor
		}
		radius: Bootstrap.btnBorderRadius
	}
}
