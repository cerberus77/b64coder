import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("b64 encoder/decoder")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        AsciiPageForm {
            id: asciiPage
        }

        B64PageForm {
            id: b64Page
        }

        onCurrentIndexChanged: {
            console.log(swipeView.currentIndex)
            var text
            var b64
            if( 0 == swipeView.currentIndex ) {
                b64 = b64Page.textArea.text
                text = Qt.atob(b64)
                asciiPage.textArea.text = text
            }
            else

            if( 1 == swipeView.currentIndex ) {
                text = asciiPage.textArea.text;
                b64 = Qt.btoa(text);
                b64Page.textArea.text = b64;
            }


        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("ASCII")
        }
        TabButton {
            // text: qsTr("base64")
            text: "base64"
        }
    }
}
