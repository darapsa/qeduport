import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Bootstrap
import Eduport
import "../../Button"
import "../../DropShadow"

ColumnLayout {
    id: mainContent
    spacing: 16
    Label {
        id: title
        text: "HTML and CSS: Design and Build Websites (Paperback)"
        wrapMode: Label.Wrap
	Bootstrap.heading: 1
        Layout.maximumWidth: parent.width
    }
    RowLayout {
        id: rating
        spacing: 0
        Label {
            id: ratingScore
            text: "4.5"
	    Bootstrap.heading: 2
        }
        ColumnLayout {
            id: ratingInformation
            Layout.leftMargin: 16
            Image {
                source: "../../Font-Awesome/svgs/solid/star.svg"
                sourceSize.height: 14
                sourceSize.width: 14
                fillMode: Image.PreserveAspectFit
            }

            Label {
                text: "Reviews from our buyers"
		wrapMode: Label.Wrap
            }
        }
    }
    RowLayout {
        Label {
            text: "checkable radio will be here"
        }
    }
    Label {
        text: "Description"
	Bootstrap.heading: 4
    }
    Label {
        text: "Satisfied conveying a dependent contented he gentleman agreeable do be. Warrant private blushes removed an in equally totally if. Delivered dejection necessary objection do Mr prevailed. Mr feeling does chiefly cordial in do. <br><br>We focus a great deal on the understanding of behavioral psychology and influence triggers which are crucial for becoming a well-rounded Digital Marketer. We understand that theory is important to build a solid foundation, we understand that theory alone isn't going to get the job done so that's why this course is packed with practical hands-on examples that you can follow step by step."
        wrapMode: Label.Wrap
        Layout.maximumWidth: parent.width
    }
    RowLayout {
        Label {
            text: "Additional info with list group will be here"
        }
    }
    Label {
        text: "Crucial for becoming a well-rounded Digital Marketer. We understand that theory is important to build a solid foundation, we understand that theory alone isn't going to get the job done so that's why this course is packed with practical hands-on examples that you can follow step by step."
        wrapMode: Label.Wrap
        Layout.maximumWidth: parent.width
    }
}
