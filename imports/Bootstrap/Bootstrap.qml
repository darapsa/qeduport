pragma Singleton
import QtQuick 2.15

QtObject {
	readonly property real badgeFontSize: 13.6

	readonly property real btnPaddingX: 16
	readonly property real btnPaddingY: 8
	readonly property font btnFont: Qt.font({
		family: haveRoboto ? "Roboto" : medium.name,
		weight: Font.Medium,
		pointSize: 15
	})
	readonly property color btnColor: "#ffffff"
	readonly property color btnBg: "transparent"
	readonly property real btnBorderWidth: 1
	readonly property color btnBorderColor: btnBg
	readonly property real btnBorderRadius: 5.2
	readonly property real btnLgFontSize: 16
	readonly property real btnLgBorderRadius: 8
	readonly property color btnPrimaryBg: "#066ac9"
	readonly property color btnPrimaryBorderColor: btnPrimaryBg
	readonly property color btnPrimaryActiveBg: "#0555a1"
	readonly property color btnPrimaryActiveBorderColor: "#055097"
	readonly property color btnPrimaryDisabledBg: "#a6066ac9"
	readonly property color btnPrimaryDisabledBorderColor
							: btnPrimaryDisabledBg
	readonly property color btnSuccessBg: "#0cbc87"
	readonly property color btnSuccessBorderColor: btnSuccessBg
	readonly property color btnSuccessActiveBg: "#0a966c"
	readonly property color btnSuccessActiveBorderColor: "#098d65"
	readonly property color btnSuccessDisabledBg: "#a60cbc87"
	readonly property color btnSuccessDisabledBorderColor
							: btnSuccessDisabledBg

	readonly property font bodyFont: Qt.font({
		family: haveRoboto ? "Roboto" : regular.name,
		weight: Font.Normal,
		pointSize: 15
	})

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
}
