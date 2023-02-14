import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Flickable {
	property alias header: header
	property alias counter: counter
	property alias popular: popular
	contentHeight: body.height

	ColumnLayout {
		id: body
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		Header {
			id: header
			Layout.fillWidth: true
		}

		Item {
			implicitHeight: banner.height + counter.height
						+ popular.height
			Layout.fillWidth: true

			GridLayout {
				id: banner
				columns: width < 992 ? 1 : 2
				rows: width < 992 ? 2 : 1
				anchors {
					top: parent.top
					topMargin: 48
					left: parent.left
					leftMargin: 51.28
					right: parent.right
					rightMargin: 51.28
				}

				ColumnLayout {

					FontLoader {
						id: heebo
						source: "Heebo/Heebo-Bold.ttf"
					}

					Label {
						text: qsTr("Limitless learning at your fingertips")
						color: "#24292d"
						horizontalAlignment: Text.AlignHCenter
						wrapMode: Text.Wrap
						Layout.fillWidth: true
						font.family: heebo.name
						font.pointSize: 40
					}

					Label {
						text: qsTr("Online learning and teaching marketplace with 5K+ courses & 10M students. Taught by experts to help you acquire new skills.")
						color: "#747579"
						horizontalAlignment: Text.AlignHCenter
						wrapMode: Text.Wrap
						Layout.fillWidth: true
						font.family: "Roboto"
						font.pointSize: 22
					}
				}

				ColumnLayout {
					Layout.topMargin: 48
					Layout.leftMargin: 24
					Layout.rightMargin: 24

					Image {
						id: image
						source: "https://eduport.webestica.com/assets/images/element/07.png"
						fillMode: Image.PreserveAspectFit
						Layout.fillWidth: true
					}
				}
			}

			GridView {
				id: counter
				interactive: false
				cellWidth: width < 576 ? width
				: width < 1200 ? width / 2
				: width / 4
				cellHeight: 125.6
				height: width < 576 ? cellHeight * count
				: width < 1200 ? cellHeight * count / 2
				: cellHeight
				anchors {
					top: banner.bottom
					left: parent.left
					right: parent.right
				}

				model: ListModel {
					ListElement {
						icon: "Font-Awesome/svgs/solid/tv.svg"
						count: "10K"
						title: qsTr("Online Courses")
						bgColor: "#26f7c32e"
					}
					ListElement {
						icon: "Font-Awesome/svgs/solid/user-tie.svg"
						count: "200+"
						title: qsTr("Expert Tutors")
						bgColor: "#1a1d3b53"
					}
					ListElement {
						icon: "Font-Awesome/svgs/solid/user-graduate.svg"
						count: "60K+"
						title: qsTr("Online Students")
						bgColor: "#1a6f42c1"
					}
					ListElement {
						icon: "Bootstrap/icons/patch-check-fill.svg"
						count: "6K+"
						title: qsTr("Certified Courses")
						bgColor: "#1a17a2b8"
					}
				}
			}

			GridView {
				id: popular
				interactive: false
				cellWidth: width < 576 ? width
				: width < 768 ? width / 2
				: width < 992 ? width / 3
				: width / 4
				cellHeight: cellWidth * 1.3
				height: width < 576
				? cellHeight * count
				: width < 768
				? cellHeight * (count + count % 2) / 2
				: width < 992
				? cellHeight * (count + (count + 1) % 3) / 3
				: cellHeight * (count + (count + 2) % 4) / 4
				anchors {
					top: counter.bottom
					left: parent.left
					right: parent.right
				}
			}
		}
	}
}
