import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Eduport 1.4
import "../../Button"
import "../../DropShadow"
import "../../Label"

Item {
    Column {
        id: mainContent
        anchors.fill: parent
        spacing: 16
        H1 {
            id: title
            text: "HTML and CSS: Design and Build Websites (Paperback)"
            anchors.left: parent.left
            anchors.right: parent.right
            wrapMode: Text.Wrap
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            Layout.fillWidth: true
            Layout.maximumWidth: parent.width
        }
        RowLayout {
            id: rating
            anchors.left: parent.left
            anchors.right: parent.right
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            spacing: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            H2 {
                id: ratingScore
                text: "4.5"
                Layout.fillWidth: false
            }
            ColumnLayout {
                Layout.leftMargin: 16
                Layout.fillWidth: true
                Image {
                    source: "../../Font-Awesome/svgs/solid/star.svg"
                    sourceSize.height: 14
                    sourceSize.width: 14
                    fillMode: Image.PreserveAspectFit
                }

                Body {
                    text: "Reviews from our buyers"
                    Layout.fillWidth: true
                }
            }
        }
        RowLayout {
            Label {
                text: "checkable radio will be here"
            }
        }
        H4 {
            text: "Description"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
        Body {
            text: "Satisfied conveying a dependent contented he gentleman agreeable do be. Warrant private blushes removed an in equally totally if. Delivered dejection necessary objection do Mr prevailed. Mr feeling does chiefly cordial in do. <br><br>We focus a great deal on the understanding of behavioral psychology and influence triggers which are crucial for becoming a well-rounded Digital Marketer. We understand that theory is important to build a solid foundation, we understand that theory alone isn't going to get the job done so that's why this course is packed with practical hands-on examples that you can follow step by step."
            anchors.left: parent.left
            anchors.right: parent.right
            wrapMode: Text.Wrap
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
        RowLayout {
            Label {
                text: "Additional info with list group will be here"
            }
        }
        Body {
            text: "Crucial for becoming a well-rounded Digital Marketer. We understand that theory is important to build a solid foundation, we understand that theory alone isn't going to get the job done so that's why this course is packed with practical hands-on examples that you can follow step by step."
            anchors.left: parent.left
            anchors.right: parent.right
            wrapMode: Text.Wrap
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
    }
}
