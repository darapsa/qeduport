import QtQuick 2.15
import QtQuick.Controls 2.15
import Bootstrap 5.3

Btn {
	id: button
	background: Rectangle {
		color: button.down ? Bootstrap.btnPrimaryActiveBG
			: button.enabled
			? Bootstrap.btnPrimaryBg
			: Bootstrap.btnPrimaryDisabledBg
		border {
			color: button.down
				? Bootstrap.btnPrimaryActiveBorderColor
				: button.enabled
				? Bootstrap.btnPrimaryBorderColor
				: Bootstrap.btnPrimaryDisabledBorderColor
			width: Bootstrap.btnBorderWidth
		}
		radius: Bootstrap.btnBorderRadius
	}
}
