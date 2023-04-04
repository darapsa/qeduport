import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
	id: bgLightBorder
	color: "#f5f7f9"
	height: filterBarControl.height
	Layout.maximumHeight: filterBarControl.height
	radius: 8
	border.color: "#33000000"
	GridLayout {
		id: filterBarControl
		anchors {
			left: parent.left
			right: parent.right
		}
		columns: parent.width < 720 ? 1 : 6
		rowSpacing: 0
		columnSpacing: 0
		flow: GridLayout.LeftToRight
		TextField {
			id: keywordInput
			font.family: "Roboto"
			font.pointSize: 16
			Layout.bottomMargin: bgLightBorder.width < 720 ? 8:16
			Layout.topMargin: 16
			Layout.leftMargin: 16
			Layout.rightMargin: bgLightBorder.width < 720 ? 16:8
			placeholderText: "Enter keyword"
			Layout.fillWidth: true
		}

		ComboBox {
			id: categories
			font.pointSize: 16
			font.family: "Roboto"
			displayText: "Categories"
			Layout.fillWidth: true
			Layout.bottomMargin: bgLightBorder.width < 720 ? 16:8
			Layout.topMargin: bgLightBorder.width < 720 ? 8:16
			Layout.leftMargin: bgLightBorder.width < 720 ? 16:8
			Layout.rightMargin: bgLightBorder.width < 720 ? 16:8
		}
		ComboBox {
			id: priceLevel
			font.pointSize: 16
			font.family: "Roboto"
			displayText: "Price level"
			Layout.fillWidth: true
			Layout.bottomMargin: bgLightBorder.width < 720 ? 16:8
			Layout.topMargin: bgLightBorder.width < 720 ? 8:16
			Layout.leftMargin: bgLightBorder.width < 720 ? 16:8
			Layout.rightMargin: bgLightBorder.width < 720 ? 16:8
		}
		ComboBox {
			id: skillLevel
			font.pointSize: 16
			font.family: "Roboto"
			displayText: "Skill level"
			Layout.fillWidth: true
			Layout.bottomMargin: bgLightBorder.width < 720 ? 16:8
			Layout.topMargin: bgLightBorder.width < 720 ? 8:16
			Layout.leftMargin: bgLightBorder.width < 720 ? 16:8
			Layout.rightMargin: bgLightBorder.width < 720 ? 16:8
		}
		ComboBox {
			id: language
			font.pointSize: 16
			font.family: "Roboto"
			displayText: "Languange"
			Layout.fillWidth: true
			Layout.bottomMargin: bgLightBorder.width < 720 ? 16:8
			Layout.topMargin: bgLightBorder.width < 720 ? 8:16
			Layout.leftMargin: bgLightBorder.width < 720 ? 16:8
			Layout.rightMargin: bgLightBorder.width < 720 ? 16:8
		}

		Button {
			id: searchButton
			icon.color: "#ffffff"
			icon.source: "../../../Font-Awesome/svgs/solid/magnifying-glass.svg"
			display: AbstractButton.IconOnly
			Layout.fillWidth: true
			Layout.bottomMargin: bgLightBorder.width < 720 ? 16:8
			Layout.topMargin: bgLightBorder.width < 720 ? 8:16
			Layout.leftMargin: bgLightBorder.width < 720 ? 16:8
			Layout.rightMargin: 16
		}
	}
}
