import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Bootstrap
import "Instructor"

ColumnLayout {

	GridLayout {
		rows: width < 671.612 ? 2 : 1
		columns: width < 671.612 ? 1 : 2
		rowSpacing: 0
		columnSpacing: 0

		Image {
			Layout.fillWidth: true
			Layout.maximumHeight: width * 600 / 598
			source: "https://eduport.webestica.com/assets/images/instructor/01.jpg"
			fillMode: Image.PreserveAspectFit
		}

		ColumnLayout {
			Layout.topMargin: 16
			Layout.leftMargin: 20
			Layout.rightMargin: 20
			Layout.bottomMargin: 16
			spacing: 0

			Label {
				text: qsTr("Louis Ferguson")
				wrapMode: Label.Wrap
				Bootstrap.heading: 3
			}

			Label {
				Layout.bottomMargin: 8
				text: qsTr("Instructor of Marketing")
				wrapMode: Label.Wrap
			}
/*
			GridLayout {
				Layout.bottomMargin: 16

				ListInlineItem {
				}
				
				ListInlineItem {
				}
				
				ListInlineItem {
				}
				
				ListInlineItem {
				}
			}
*/
		}
	}

	Label {
		Layout.bottomMargin: 16
		text: qsTr("About Instructor")
		wrapMode: Label.Wrap
		Bootstrap.heading: 5
	}

	Label {
		Layout.fillWidth: true
		Layout.bottomMargin: 16
		text: qsTr("Fulfilled direction use continual set him propriety continued. Saw met applauded favorite deficient engrossed concealed and her. Concluded boy perpetual old supposing. Farther related bed and passage comfort civilly. Dashboard see frankness objection abilities. As hastened oh produced prospect formerly up am. Placing forming nay looking old married few has. Margaret disposed of add screened rendered six say his striking confined. As it so contrasted oh estimating instrument. Size like body someone had. Are conduct viewing boy minutes warrant the expense? Tolerably behavior may admit daughters offending her ask own. Praise effect wishes change way and any wanted.")
		wrapMode: Label.Wrap
	}
}
