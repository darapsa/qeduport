import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Eduport 1.4
import "DropShadow" as DrpShdw
import "Button" as Btn
import "Label" as Lbl

ToolBar {
	property alias logo: logo
	property alias profile: profile
	property string imageSource: "https://eduport.webestica.com/assets/images/avatar/01.jpg"
	property alias menu: menu
	property alias info: info
	property alias divider: divider
	property string fullNameText: "Lori Ferguson"
	property string emailText: "example@gmail.com"
	property alias editProfile: editProfile
	property alias accountSettings: accountSettings
	property alias help: help
	property alias log: log
	property alias light: light
	property alias dark: dark

	background: Rectangle {
		implicitHeight: 70
	}

	Item {
		anchors {
			fill: parent
			leftMargin: 15
			rightMargin: 15
		}

		ToolButton {
			id: logo
			anchors {
				left: parent.left
				verticalCenter: parent.verticalCenter
			}
			icon {
				source: "https://eduport.webestica.com/assets/images/logo.svg"
				width: 115
			}
			background: Rectangle {
				color: "transparent"
			}
		}

		Component {
			id: image
			Image {
				source: imageSource
				sourceSize {
					width: size
					height: size
				}
				layer {
					enabled: true
					effect: OpacityMask {
						maskSource: Rectangle {
							width: size
							height: size
							radius: size
						}
					}
				}
			}
		}

		Component {
			id: menuSeparator
			MenuSeparator {
				contentItem: Rectangle {
					implicitWidth: menu.width
					implicitHeight: 1
					color: Eduport.mode
						? Eduport.bsGray300
						: Eduport.bsGray500
				}
			}
		}

		ToolButton {
			id: profile
			padding: 0
			anchors {
				right: parent.right
				verticalCenter: parent.verticalCenter
			}
			contentItem: Loader {
				property real size: 40
				sourceComponent: image
			}
			background: Rectangle {
				color: "transparent"
			}

			Menu {
				id: menu
				y: parent.height
				horizontalPadding: 10
				verticalPadding: 16
				delegate: MenuItem {
					id: menuItem
					font: Eduport.bsBtnFont
					horizontalPadding: 16
					verticalPadding: 6.4
					spacing: 8
					contentItem: RowLayout {

						Image {
							source: menuItem.icon
								.source
							sourceSize {
								width:
								menuItem.icon
									.width
								height:
								menuItem.icon
								.height
							}

							ColorOverlay {
								color:
								highlighted
								? Eduport
								.bsDropdownLinkHoverColor
								: Eduport
								.bsDropdownLinkColor
								source: parent
								anchors.fill:
									parent
							}
						}

						Text {
							text: menuItem.text
							font: menuItem.font
							color: highlighted
								? Eduport
								.bsDropdownLinkHoverColor
								: Eduport
								.bsDropdownLinkColor
							Layout.fillWidth: true
						}
					}
					background: Rectangle {
						color: highlighted
							? Eduport
							.bsDropdownLinkHoverBg
							: Eduport.mode
							? Eduport.bsDark
							: Eduport.bsBodyBg
						radius: 5.2
					}
				}
				background: Item {
					implicitWidth: 260.734
					implicitHeight: 295.406

					Rectangle {
						id: rectangle
						anchors.fill: parent
						radius: 5.2
						color: Eduport.mode
							? Eduport.bsDark
							: Eduport.bsBodyBg
					}

					DrpShdw.Box {
						source: rectangle
						anchors.fill: rectangle
					}
				}

				Item {
					id: info
					implicitHeight: layout.height + 16

					RowLayout {
						id: layout
						spacing: 16
						anchors {
							top: parent.top
							topMargin: 0
							left: parent.left
							leftMargin: 16
							right: parent.right
							rightMargin: 16
						}

						Loader {
							property real size: 48
							sourceComponent: image
						}

						ColumnLayout {
							spacing: 0

							Lbl.H6 {
								text:
								fullNameText
							}

							Lbl.Body {
								text: emailText
								font.pointSize:
									14
								color: Eduport
								.bsDropdownColor
							}
						}
					}
				}

				Loader {
					id: divider
					sourceComponent: menuSeparator
				}

				Action {
					id: editProfile
					icon {
						source:
						"Bootstrap/icons/person.svg"
						width: 19
						height: 22
					}
					text: qsTr("Edit Profile")
				}

				Action {
					id: accountSettings
					icon {
						source:
						"Bootstrap/icons/gear.svg"
						width: 19
						height: 22
					}
					text: qsTr("Account Settings")
				}

				Action {
					id: help
					icon {
						source:
						"Bootstrap/icons/info-circle.svg"
						width: 19
						height: 22
					}
					text: qsTr("Help")
				}

				Action {
					id: log
					icon {
						source:
						"Bootstrap/icons/power.svg"
						width: 19
						height: 22
					}
					text: qsTr("Sign Out")
				}

				Loader {
					sourceComponent: menuSeparator
				}

				Item {
					implicitHeight: mode.height + 16

					Rectangle {
						implicitHeight: mode.height
									+ 8
						color: Eduport.bsLight
						radius: Eduport.bsBorderRadius
						anchors {
							left: parent.left
							right: parent.right
							bottom: parent.bottom
						}

						RowLayout {
							id: mode
							spacing: 0
							anchors {
								left: parent
									.left
								leftMargin: 4
								right: parent
									.right
								rightMargin: 4
								verticalCenter
								: parent
								.verticalCenter
							}

							Btn.Sm {
								id: light
								icon {
									source:
									"Bootstrap/icons/sun.svg"
									width:
									16
									height:
									16
								}
								text:
								qsTr("Light")
								checked: Eduport
								.mode == Eduport
								.Mode.Light
								enabled: !checked
								Layout
								.fillWidth:
									true
							}

							Btn.Sm {
								id: dark
								icon {
									source:
									"Bootstrap/icons/moon-stars.svg"
									width:
									16
									height:
									16
								}
								text:
								qsTr("Dark")
								checked: Eduport
								.mode == Eduport
								.Mode.Dark
								enabled: !checked
								Layout
								.fillWidth:
									true
							}
						}
					}
				}
			}
		}
	}
}
