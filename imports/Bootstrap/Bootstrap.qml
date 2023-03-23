pragma Singleton
import QtQuick 2.15

QtObject {
	readonly property real badgeFontSize: 13.6

	readonly property color btnColor: "#ffffff"
	readonly property color btnBg: "#066ac9"
	readonly property color btnBorderColor: "#066ac9"
	readonly property color btnActiveBg: "#0555a1"
	readonly property color btnActiveBorderColor: "#055097"
	readonly property color btnDisabledBg: "#a6066ac9"
	readonly property color btnDisabledBorderColor: "#a6066ac9"

	readonly property bool haveRoboto: Qt.platform.os === "android"
					|| Qt.platform.os === "linux"
					|| Qt.platform.os === "osx"
					|| Qt.platform.os === "unix"
					|| Qt.platform.os === "windows"
	readonly property FontLoader medium: FontLoader {
		source: haveRoboto ? "" : "../../Roboto/Roboto-Medium.ttf"
	}
	readonly property FontLoader regular: FontLoader {
		source: haveRoboto ? "" : "../../Roboto/Roboto-Regular.ttf"
	}
	readonly property font bodyFont: Qt.font({
		family: haveRoboto ? "Roboto" : regular.name,
		weight: Font.Normal,
		pointSize: 15
	})
	readonly property font btnFont: Qt.font({
		family: haveRoboto ? "Roboto" : medium.name,
		weight: Font.Medium,
		pointSize: 15
	})
}
