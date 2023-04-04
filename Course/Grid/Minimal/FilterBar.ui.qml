import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
	id: bgLightBorder
	color: "#f5f7f9"
	height: filterBarControl.height
	width: filterBarControl.width
	Layout.maximumHeight: filterBarControl.height
	radius: 8
	border.color: "#33000000"
	GridLayout {
		id: filterBarControl
		anchors {
			left: parent.left
			right: parent.right
		}
		columns: parent.width < 1200 ? 1 : 6
		rowSpacing: 16
		columnSpacing: 16
		flow: GridLayout.LeftToRight
		Layout.fillWidth: true
		TextField {
			id: keywordInput
			Layout.fillWidth: true
			font.family: "Roboto"
			font.pointSize: 16
			Layout.bottomMargin: 24
			Layout.topMargin: 24
			Layout.leftMargin: 24
			placeholderText: "Enter keyword"
		}

		ComboBox {
			id: categories
			font.pointSize: 16
			font.family: "Roboto"
			displayText: "Categories"
		}
		ComboBox {
			id: priceLevel
			font.pointSize: 16
			font.family: "Roboto"
			displayText: "Price level"
		}
		ComboBox {
			id: skillLevel
			font.pointSize: 16
			font.family: "Roboto"
			displayText: "Skill level"
		}
		ComboBox {
			id: language
			font.pointSize: 16
			font.family: "Roboto"
			displayText: "Languange"
		}

		Button {
			id: searchButton
			icon.color: "#ffffff"
			icon.source: "../../../Font-Awesome/svgs/solid/magnifying-glass.svg"
			Layout.rightMargin: 24
			display: AbstractButton.IconOnly
		}
	}
}
