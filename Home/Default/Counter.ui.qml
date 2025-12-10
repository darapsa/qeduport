import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Bootstrap
import Eduport

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

				Label {
					text: count
					wrapMode: Label.Wrap
					Bootstrap.heading: 5
					Layout.fillWidth: true
				}

				Label {
					text: title
					font {
						family: Eduport.fwNormalFont
									.family
						weight: Eduport.fwNormalFont
									.weight
						pointSize: Eduport.h6FontSize
					}
					Layout.fillWidth: true
				}
			}
		}
	}
}
