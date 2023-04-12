pragma Singleton
import QtQuick 2.15
import Bootstrap 5.3

QtObject {
	property int mode: Bootstrap.mode
	onModeChanged: Bootstrap.mode = mode

	property font bodyFont: Qt.font({
		family: Bootstrap.bodyFont.family === "Roboto"
			? (haveRoboto ? "Roboto" : robotoRegular.name)
			: Bootstrap.bodyFont.family,
		pointSize: Bootstrap.bodyFont.pointSize,
		weight: Bootstrap.bodyFont.weight
	})
	property color bsBodyColor: Bootstrap.bodyColor
	property color bsBodyBg: Bootstrap.bodyBg
	property color bsBorderColor: Bootstrap.borderColor

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

	property color bsAccordionBg: bsBodyBg

	readonly property real bsBadgeFontSize: 13.6

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
	readonly property color bsBtnBorderColor: bsBtnBg
	readonly property real bsBtnBorderWidth: 1
	readonly property real bsBtnBorderRadius: 5.2
	readonly property real bsBtnLgFontSize: 16
	readonly property real bsBtnLgBorderRadius: 8

	property color bsPrimary: "#066ac9"
	property color bsSecondary: "#9a9ea4"
	property color bsSuccess: "#0cbc87"
	property color bsDanger: "#d6293e"
	property color bsLight: mode ? "#2a2c31" : "#f5f7f9"
	property color bsDark: mode ? "#0f0f10" : "#24292d"
	property color bsTertiaryBg: mode ? "#2b3035" : "#f8f9fa"

	property color bsBtnPrimaryColor: "#ffffff"
	property color bsBtnPrimaryBg: bsPrimary
	property color bsBtnPrimaryBorderColor: bsPrimary
	property color bsBtnPrimaryActiveColor: bsBtnPrimaryColor
	property color bsBtnPrimaryActiveBg: "#0555a1"
	property color bsBtnPrimaryActiveBorderColor: "#055097"
	property color bsBtnPrimaryDisabledColor: "#a6ffffff"
	property color bsBtnPrimaryDisabledBg: "#a6066ac9"
	property color bsBtnPrimaryDisabledBorderColor: bsBtnPrimaryDisabledBg

	property color bsBtnOutlinePrimaryColor: bsPrimary
	property color bsBtnOutlinePrimaryBg: bsBtnBg
	property color bsBtnOutlinePrimaryBorderColor: bsPrimary
	property color bsBtnOutlinePrimaryActiveColor: bsBtnPrimaryColor
	property color bsBtnOutlinePrimaryActiveBg: bsPrimary
	property color bsBtnOutlinePrimaryActiveBorderColor: bsPrimary
	property color bsBtnOutlinePrimaryDisabledColor:
						bsBtnPrimaryDisabledColor
	property color bsBtnOutlinePrimaryDisabledBg: bsBtnBg
	property color bsBtnOutlinePrimaryDisabledBorderColor:
						bsBtnPrimaryDisabledColor

	property color bsBtnSuccessColor: bsBtnPrimaryColor
	property color bsBtnSuccessBg: bsSuccess
	property color bsBtnSuccessBorderColor: bsSuccess
	property color bsBtnSuccessActiveColor: bsBtnSuccessColor
	property color bsBtnSuccessActiveBg: "#0a966c"
	property color bsBtnSuccessActiveBorderColor: "#098d65"
	property color bsBtnSuccessDisabledColor: bsBtnPrimaryDisabledColor
	property color bsBtnSuccessDisabledBg: "#a60cbc87"
	property color bsBtnSuccessDisabledBorderColor: bsBtnSuccessDisabledBg

	property color bsBtnLightColor: "#000000"
	property color bsBtnLightBg: "#f5f7f9"
	property color bsBtnLightBorderColor: bsBtnLightBg
	property color bsBtnLightActiveColor: bsBtnLightColor
	property color bsBtnLightActiveBg: "#c4c6c7"
	property color bsBtnLightActiveBorderColor: "#b8b9bb"
	property color bsBtnLightDisabledColor: "#a6000000"
	property color bsBtnLightDisabledBg: "#a6f5f7f9"
	property color bsBtnLightDisabledBorderColor: bsBtnLightDisabledBg

	property color bsCardBg: mode ? "#1b1e21" : "#ffffff"
	property color bsCardTitleColor: mode ? "#f7f5f5" : "#24292d"

	property color bsDropdownColor: "#747579"
	property color bsDropdownLinkColor: mode ? "#c5c6cc" : "#747579"
	property color bsDropdownLinkHoverColor: "#066ac9"
	property color bsDropdownLinkHoverBg: "#1a066ac9"

	property color bsHeadingColor: mode ? "#ffffff" : "#24292d"

	property color bsGray200: mode ? "#464950" : "#eff1f2"
	property color bsGray300: mode ? "#3e3e40" : "#dde0e3"
	property color bsGray500: mode ? "#bfc0c9" : "#9a9ea4"
	property color bsGray600: mode ? "#c5c6cc" : "#747579"
	property color bsGray700: mode ? "#f3f1f1" : "#404448"
	property color bsGray800: mode ? "#f7f5f5" : "#24292d"
	property color bsGray900: mode ? "#ffffff" : "#0b0f13"

	readonly property bool haveRoboto: Qt.platform.os === "android"
					|| Qt.platform.os === "linux"
					|| Qt.platform.os === "osx"
					|| Qt.platform.os === "unix"
					|| Qt.platform.os === "windows"
	readonly property FontLoader robotoBold: FontLoader {
		source: haveRoboto ? "" : "Roboto-Bold.ttf"
	}
	readonly property FontLoader robotoMedium: FontLoader {
		source: haveRoboto ? "" : "Roboto-Medium.ttf"
	}
	readonly property FontLoader robotoRegular: FontLoader {
		source: haveRoboto ? "" : "Roboto-Regular.ttf"
	}
	readonly property FontLoader heeboBold: FontLoader {
		source: "Heebo-Bold.ttf"
	}
	readonly property FontLoader heeboMedium: FontLoader {
		source: "Heebo-Medium.ttf"
	}
	readonly property FontLoader heeboRegular: FontLoader {
		source: "Heebo-Regular.ttf"
	}
}
