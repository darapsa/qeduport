pragma Singleton
import QtQuick 2.15

QtObject {
	readonly property real leadFontSize: 18.75
	readonly property real formControlFontSize: 16
	readonly property real h6FontSize: 15
	readonly property real formTextFontSize: 14

	readonly property bool haveRoboto: Qt.platform.os === "android"
					|| Qt.platform.os === "linux"
					|| Qt.platform.os === "osx"
					|| Qt.platform.os === "unix"
					|| Qt.platform.os === "windows"
	readonly property FontLoader roboto: FontLoader {
		source: haveRoboto ? "" : "../../Roboto/Roboto-Bold.ttf"
	}
	readonly property FontLoader bold: FontLoader {
		source: "../../Heebo/Heebo-Bold.ttf"
	}
	readonly property FontLoader medium: FontLoader {
		source: "../../Heebo/Heebo-Medium.ttf"
	}
	readonly property FontLoader regular: FontLoader {
		source: "../../Heebo/Heebo-Regular.ttf"
	}
	readonly property font baseFont: Qt.font({
		family: haveRoboto ? "Roboto" : roboto.name,
		weight: Font.Bold
	})
	readonly property font hFont: Qt.font({
		family: bold.name,
		weight: Font.Bold
	})
	readonly property font fwNormalFont: Qt.font({
		family: medium.name,
		weight: Font.Medium
	})
	readonly property font fwLightFont: Qt.font({
		family: regular.name,
		weight: Font.Normal
	})
}
