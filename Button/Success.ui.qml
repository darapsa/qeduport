import QtQuick 2.15
import QtQuick.Controls 2.15
import Bootstrap 5.3

Btn {
	id: button
	background: Rectangle {
		color: button.down ? Bootstrap.btnSuccessActiveBG
			: button.enabled
			? Bootstrap.btnSuccessBg
			: Bootstrap.btnSuccessDisabledBg
		border {
			width: Bootstrap.btnBorderWidth
			color: button.down
				? Bootstrap.btnSuccessActiveBorderColor
				: button.enabled
				? Bootstrap.btnSuccessBorderColor
				: Bootstrap.btnSuccessDisabledBorderColor
		}
		radius: Bootstrap.btnBorderRadius
	}
}
