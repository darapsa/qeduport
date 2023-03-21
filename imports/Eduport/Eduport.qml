pragma Singleton
import QtQuick 2.15

QtObject {
	readonly property real leadFontSize: 18.75
	readonly property real formControlFontSize: 16
	readonly property real h6FontSize: 15
	readonly property real formTextFontSize: 14

	readonly property FontLoader bold: FontLoader {
		source: "../../Heebo/Heebo-Bold.ttf"
	}
	readonly property FontLoader medium: FontLoader {
		source: "../../Heebo/Heebo-Medium.ttf"
	}
	readonly property font hFont: Qt.font({
		family: bold.name,
		weight: Font.Bold
	})
	readonly property font fwNormalFont: Qt.font({
		family: medium.name,
		weight: Font.Medium
	})
}
