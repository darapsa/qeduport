import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "Instructor"

ColumnLayout {

	FontLoader {
		id: heebo
		source: "../../../../../../Heebo/Heebo-Bold.ttf"
	}

	GridLayout {
		rows: width < 671.612 ? 2 : 1
		columns: width < 671.612 ? 1 : 2
		rowSpacing: 0
		columnSpacing: 0

		Image {
			Layout.fillWidth: true
			Layout.maximumHeight: image.height
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
				font {
					family: heebo.name
					pointSize: 21
						+ .0075 * parent.parent.width
				}
			}

			Label {
				Layout.bottomMargin: 8
				color: "#66000000"
				text: qsTr("Instructor of Marketing")
				font.styleName: "Regular"
				font.pointSize: 15
				font.family: "roboto"
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
		font {
			family: heebo.name
			pointSize: 20.1 + .0075 * parent.width
		}
	}

	Label {
		Layout.fillWidth: true
		Layout.bottomMargin: 16
		color: "#66000000"
		text: qsTr("Fulfilled direction use continual set him propriety continued. Saw met applauded favorite deficient engrossed concealed and her. Concluded boy perpetual old supposing. Farther related bed and passage comfort civilly. Dashboard see frankness objection abilities. As hastened oh produced prospect formerly up am. Placing forming nay looking old married few has. Margaret disposed of add screened rendered six say his striking confined. As it so contrasted oh estimating instrument. Size like body someone had. Are conduct viewing boy minutes warrant the expense? Tolerably behavior may admit daughters offending her ask own. Praise effect wishes change way and any wanted.")
		wrapMode: Text.Wrap
		font.styleName: "Regular"
		font.pointSize: 14
		font.family: "roboto"
	}
}
