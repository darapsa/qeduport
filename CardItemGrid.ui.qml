import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

Item {
	id: item1
	DropShadow {
		color: "#4d000000"
		source: cardItem
		verticalOffset: 4
		radius: 40
		samples: 81
		anchors.fill: cardItem
	}
	Rectangle {
		id: cardItem
		anchors.fill: parent
		Layout.minimumWidth: 300
		Layout.minimumHeight: 475
		radius: 8
		ColumnLayout {
			id: columnLayout
			anchors.fill: parent
			spacing: 0
			Rectangle {
				id: cardItemImage
				radius: 8
				Layout.fillHeight: true
				Layout.preferredHeight: 255
				Layout.fillWidth: true
				Layout.preferredWidth: 300
				Image {
					id: cardItemImageSource
					source: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
					fillMode: Image.PreserveAspectCrop
					width: parent.width
					height: parent.height
					visible: false
				}
				OpacityMask {
					id: cardItemImageMask
					anchors.fill: cardItemImage
					source: cardItemImageSource
					maskSource: cardItemImage
				}

				Rectangle {
					id: rectangle
					width: cardItemImageMask.width
					height: 5
					color: "#ffffff"
					anchors.bottom: cardItemImageMask.bottom
					anchors.bottomMargin: 0
				}
			}
			ColumnLayout {
				id: cardItemBody
				Layout.rightMargin: 20
				Layout.leftMargin: 20
				Layout.bottomMargin: 16
				Layout.topMargin: 16
				Layout.fillHeight: true
				Layout.fillWidth: true
				Item {
					id: badgeAndFavorite
					height: favorite.height
					Layout.fillWidth: true
					Label {
						id: badge
						color: "#0cbc87"
						text: "All level"
						anchors.left: parent.left
						verticalAlignment: Text.AlignVCenter
						Layout.fillWidth: false
						rightPadding: 6
						leftPadding: 6
						bottomPadding: 4
						topPadding: 4
						font.pointSize: 12
						font.family: "Roboto"
						background: Rectangle {
							color: "#4d0cbc87"
							radius: 8
						}
					}

					Button {
						id: favorite
						width: 24
						height: 24
						text: qsTr("Button")
						anchors.right: parent.right
						checkable: true
						anchors.rightMargin: 0
						padding: 0
						rightPadding: 0
						leftPadding: 0
						bottomPadding: 0
						topPadding: 0
						icon.source: "Material/svg/outlined/heart.svg"
						display: AbstractButton.IconOnly
						flat: true

						Connections {
							target: favorite
							onStateChanged: favorite.state = "favorite checked"
						}
					}
				}
			}

			Label {
				id: cardTitle
				color: "#000000"
				text: qsTr("Course title")
				wrapMode: Text.Wrap
				Layout.fillWidth: true
				Layout.bottomMargin: 20
				font.styleName: "Medium"
				font.pointSize: 21
				font.family: "Roboto"
				Layout.rightMargin: 20
				Layout.leftMargin: 20
			}

			RowLayout {
				id: ratingStar
				Layout.topMargin: 0
				spacing: 8
				Layout.fillWidth: false
				Layout.margins: 20
				Layout.rightMargin: 20
				Layout.leftMargin: 20

				Button {
					id: star
					padding: 0
					rightPadding: 0
					leftPadding: 0
					bottomPadding: 0
					topPadding: 0
					icon.color: "#80000000"
					flat: true
					icon.source: "Material/svg/outlined/star.svg"
					autoRepeat: false
					checkable: true
					display: AbstractButton.IconOnly
					Layout.maximumHeight: 20
					Layout.maximumWidth: 20
					Layout.minimumHeight: 20
					Layout.minimumWidth: 20
					Layout.preferredHeight: 20
					Layout.preferredWidth: 20

					Connections {
						target: star
						onStateChanged: star.state = "star checked"
					}
				}
				Label {
					id: listInlineItemRating
					color: "#000000"
					text: "4.0/5/0"
					font.pointSize: 14
					font.family: "Roboto"
					Layout.fillWidth: false
				}
			}

			ColumnLayout {
				id: cardFooter
				spacing: 8
				Rectangle {
					id: cardFooterBorder
					color: "#dde0e3"
					border.color: "#dde0e3"
					border.width: 0
					Layout.rightMargin: 20
					Layout.leftMargin: 20
					Layout.preferredHeight: 1
					Layout.minimumHeight: 1
					Layout.fillWidth: true
				}

				RowLayout {
					id: cardFooterContent
					spacing: 8
					Layout.margins: 20
					Layout.rightMargin: 20
					Layout.leftMargin: 20

					RowLayout {
						id: cardFooterTimer
						Layout.fillWidth: true
						spacing: 8
						Image {
							id: timerIcon
							source: "Material/svg/outlined/schedule.svg"
							sourceSize.height: 16
							sourceSize.width: 16
							ColorOverlay {
								anchors.fill: timerIcon
								source: timerIcon
								color: "#d6293e"
							}
						}

						Label {
							color: "#000000"
							text: "12h 56m"
							font.family: "Roboto"
							font.pointSize: 14
							font.styleName: "Regular"
						}
					}

					RowLayout {
						id: cardFooterLecturers
						Layout.fillWidth: true
						spacing: 8
						Image {
							id: lecturersIcon
							source: "Material/svg/outlined/table.svg"
							sourceSize.height: 16
							sourceSize.width: 16
							ColorOverlay {
								anchors.fill: lecturersIcon
								source: lecturersIcon
								color: "#fd7e14"
							}
						}

						Label {
							color: "#000000"
							text: "12h 56m"
							font.family: "Roboto"
							font.pointSize: 14
							font.styleName: "Regular"
						}
					}
				}
			}
		}
	}
	states: [
		State {
			name: "favorite checked"
			when: favorite.checked

			PropertyChanges {
				target: favorite
				icon.color: "#d6293e"
				icon.source: "Material/svg/filled/heart.svg"
			}
		},
		State {
			name: "rating checked"
			when: star.checked

			PropertyChanges {
				target: star
				icon.color: "#f7c32e"
				icon.source: "Material/svg/filled/star.svg"
			}
		}
	]
}
