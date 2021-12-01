import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 800
    height: 600
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
            switch (swipeView.currentIndex) {
            case 0:
            {
                b64 = b64Page.textArea.text
                text = Qt.atob(b64)
                asciiPage.textArea.text = text
                break
            }
            case 1:
            {
                text = asciiPage.textArea.text
                b64 = Qt.btoa(text)
                b64Page.textArea.text = b64
                break
            }
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
