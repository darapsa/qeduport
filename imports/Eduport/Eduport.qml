pragma Singleton
import QtQuick 2.15

QtObject {
	enum Mode {
		Light = 0,
		Dark
	}
	property int mode: Eduport.Mode.Light

	readonly property real leadFontSize: 18.75
	readonly property real formControlFontSize: 16
	readonly property real h6FontSize: 15
	readonly property real formTextFontSize: 14

	readonly property real navPillsBorderRadius: bsBtnBorderRadius
	readonly property color navPillsLinkActiveColor: "#ffffff"
	readonly property color navPillsLinkActiveBg: bsPrimary

	readonly property font baseFont: Qt.font({
		family: haveRoboto ? "Roboto" : robotoBold.name,
		weight: Font.Bold
	})
	readonly property font bodyFont: Qt.font({
		family: haveRoboto ? "Roboto" : robotoRegular.name,
		weight: Font.Normal,
		pointSize: 15
	})
	readonly property font hxFont: Qt.font({
		family: heeboBold.name,
		weight: Font.Bold,
		pointSize: h6FontSize
	})
	readonly property font fwNormalFont: Qt.font({
		family: heeboMedium.name,
		weight: Font.Medium
	})
	readonly property font fwLightFont: Qt.font({
		family: heeboRegular.name,
		weight: Font.Normal
	})

	readonly property color bsPrimary: "#066ac9"
	property color bsLight: mode ? "#2a2c31" : "#f5f7f9"
	property color bsDark: mode ? "#0f0f10" : "#24292d"

	readonly property real bsBadgeFontSize: 13.6

	property color bsBodyColor: mode ? "#a1a1a8" : "#747579"
	property color bsBodyBg: mode ? "#222529" : "#ffffff"

	property real bsBorderRadius: 5.2

	property real bsBoxShadowOffsetX: 0
	property real bsBoxShadowOffsetY: 0
	property int bsBoxShadowBlurRadius: 40
	property color bsBoxShadowColor: "#261d3a53"

	readonly property real bsBtnPaddingX: 16
	readonly property real bsBtnPaddingY: 8
	readonly property font bsBtnFont: Qt.font({
		family: haveRoboto ? "Roboto" : robotoMedium.name,
		weight: Font.Medium,
		pointSize: 15
	})
	readonly property color bsBtnColor: "#747579"
	readonly property color bsBtnBg: "transparent"
	readonly property real bsBtnBorderWidth: 1
	readonly property color bsBtnBorderColor: bsBtnBg
	readonly property real bsBtnBorderRadius: 5.2
	readonly property real bsBtnLgFontSize: 16
	readonly property real bsBtnLgBorderRadius: 8
	property color bsBtnPrimaryColor: "#ffffff"
	readonly property color bsBtnPrimaryBg: bsPrimary
	readonly property color bsBtnPrimaryBorderColor: bsPrimary
	readonly property color bsBtnPrimaryActiveBg: "#0555a1"
	readonly property color bsBtnPrimaryActiveBorderColor: "#055097"
	readonly property color bsBtnPrimaryDisabledBg: "#a6066ac9"
	readonly property color bsBtnPrimaryDisabledBorderColor:
							bsBtnPrimaryDisabledBg
	readonly property color bsBtnSuccessBg: "#0cbc87"
	readonly property color bsBtnSuccessBorderColor: bsBtnSuccessBg
	readonly property color bsBtnSuccessActiveBg: "#0a966c"
	readonly property color bsBtnSuccessActiveBorderColor: "#098d65"
	readonly property color bsBtnSuccessDisabledBg: "#a60cbc87"
	readonly property color bsBtnSuccessDisabledBorderColor:
							bsBtnSuccessDisabledBg

	property color bsCardBg: mode ? "#1b1e21" : "#ffffff"
	property color bsCardTitleColor: mode ? "#f7f5f5" : "#24292d"

	property color bsDropdownColor: "#747579"
	property color bsDropdownLinkColor: mode ? "#c5c6cc" : "#747579"
	property color bsDropdownLinkHoverColor: "#066ac9"
	property color bsDropdownLinkHoverBg: "#1a066ac9"

	property color bsHeadingColor: mode ? "#ffffff" : "#24292d"

	property color bsGray300: mode ? "#3e3e40" : "#dde0e3"
	property color bsGray500: mode ? "#bfc0c9" : "#9a9ea4"
	property color bsGray800: mode ? "#f7f5f5" : "#24292d"

	readonly property bool haveRoboto: Qt.platform.os === "android"
					|| Qt.platform.os === "linux"
					|| Qt.platform.os === "osx"
					|| Qt.platform.os === "unix"
					|| Qt.platform.os === "windows"
	readonly property FontLoader robotoBold: FontLoader {
		source: haveRoboto ? "" : "../../Roboto/Roboto-Bold.ttf"
	}
	readonly property FontLoader robotoMedium: FontLoader {
		source: haveRoboto ? "" : "../../Roboto/Roboto-Medium.ttf"
	}
	readonly property FontLoader robotoRegular: FontLoader {
		source: haveRoboto ? "" : "../../Roboto/Roboto-Regular.ttf"
	}
	readonly property FontLoader heeboBold: FontLoader {
		source: "../../Heebo/Heebo-Bold.ttf"
	}
	readonly property FontLoader heeboMedium: FontLoader {
		source: "../../Heebo/Heebo-Medium.ttf"
	}
	readonly property FontLoader heeboRegular: FontLoader {
		source: "../../Heebo/Heebo-Regular.ttf"
	}
}
