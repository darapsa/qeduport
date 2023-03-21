pragma Singleton
import QtQuick 2.15

QtObject {
	readonly property real fontSizeLead: 18.75
	readonly property real fontSizeFormControl: 16
	readonly property real h6FontSize: 15
	readonly property real fontSizeFormText: 14

	readonly property FontLoader bold: FontLoader {
		source: "../../Heebo/Heebo-Bold.ttf"
	}
	readonly property FontLoader medium: FontLoader {
		source: "../../Heebo/Heebo-Medium.ttf"
	}
	readonly property font hFont: Qt.font({
		family: bold.name
	})
	readonly property font normalFont: Qt.font({
		family: medium.name
	})
}
