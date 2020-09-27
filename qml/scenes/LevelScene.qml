import Felgo 3.0
import QtQuick 2.0
import "../common"

SceneBase {
    id: levelScene

    // signal indicating that a level has been selected
    signal levelPressed(string selectedLevel)

    // background
    Rectangle {
        anchors.fill: parent.gameWindowAnchorItem
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        Image {
            id: levelground
            source: "../../assets/background/1.png"
        }
        MenuButton {
            text: "level one"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 90
            width: 180
            height: 45
            onClicked: {
                levelPressed("Level1.qml")
                gameWindow.state="load"
            }

        }
        MenuButton {
            text: "level two"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 140
            width: 180
            height: 45
            onClicked: {
                levelPressed("Level2.qml")
                gameWindow.state="load"
            }
        }
        MenuButton {
            text: "level three"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 190
            width: 180
            height: 45
            onClicked: {
                levelPressed("Level3.qml")
                gameWindow.state="load"
            }
        }
        // back button to leave scene
        MenuButton {
            text: "Back to menu"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 240
            width: 180
            height: 45
            onClicked:
            {
                loadScene.opacity = 0
                backButtonPressed()
            }
        }
    }Image {
        x: 220
        id: image1
        source: "../../assets/penguin/sprite/walk.png"
        visible: false
    }

    Item {
        anchors.left: parent.gameWindowAnchorItem.left
        anchors.bottom: parent.gameWindowAnchorItem.bottom
        anchors.leftMargin: 180
        anchors.bottomMargin: 250
        id: sequence;
        width: 90;
        height: 70;


        SpriteSequence {
            id:spritetest
            anchors.fill: parent

            sprites: [
                Sprite {
                    name: "first"
                    source: image1.source
                    frameCount: 8;
                    frameWidth: image1.width/8;
                    frameHeight: image1.height;
                    frameRate: 9;
                }
            ]
        }
    }
}
