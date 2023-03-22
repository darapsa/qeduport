import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Eduport 1.4
import "../../Label" as Lbl

Item {
	Rectangle {
		color: bgColor
		radius: 8
		anchors {
			fill: parent
			topMargin: 25.6
			leftMargin: 12.8
			rightMargin: 12.8
		}

		Item {
			anchors {
				fill: parent
				margins: 25.6
			}

			Image {
				id: image
				source: icon
				sourceSize.height: column.height * 3 / 4
				fillMode: Image.PreserveAspectFit
				x: (parent.width - (width + column.width + 25.6)) / 2
				anchors.verticalCenter: parent.verticalCenter
			}

			ColumnLayout {
				id: column
				spacing: 0
				anchors {
					left: image.right
					leftMargin: 25.6
				}

				Lbl.Hx {
					text: count
					font.pointSize: 20.1
							+ .00075 * parent.width
					Layout.fillWidth: true
				}

				Label {
					text: title
					font {
						family: Eduport.fwNormalFont
									.family
						weight: Eduport.fwNormalFont
									.weight
						pointSize: h6FontSize
					}
					Layout.fillWidth: true
				}
			}
		}
	}
}
