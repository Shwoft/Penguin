import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import Felgo 3.0
import "../common"


SceneBase {
    id: menuScene
    width: 960
    height: 640

    // signal indicating that the creditsScene should be displayed
    signal creditsPressed

    ParallaxScrollingBackground {
        sourceImage: "../../assets/background/2.png"
        anchors.fill: parent.gameWindowAnchorItem
        movementVelocity: Qt.point(-20,0)
        // the speed then gets multiplied by this ratio to create the parallax effect
        ratio: Qt.point(0.3,0)
    }
    // background
    Item{
        id:background
        anchors.fill: parent.gameWindowAnchorItem

        Image{
            anchors.fill: parent
            source: "../../assets/background/vignette.png"
        }

        Image{
            id:logo
            anchors.top: parent.top
            anchors.topMargin: 24
            anchors.horizontalCenter: parent.horizontalCenter
            source: "../../assets/background/logo.png"
            width: 280
            height: 180
        }
    }

    // menu
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 230
        color: "#5F9F9F"
        opacity: 0.9
        width: 160
        height: 210
        radius: 20

        MenuButton {
            id:begin
            text: "Play"
            width: 150
            height: 50
            onClicked: {
                gameWindow.state = "level"
            }
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 20

        }
        MenuButton {
            id:explain
            text: "Help"
            width: 150
            height: 50
            onClicked: {
                gameWindow.state="explain"
            }
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 80            

        }
        MenuButton {
            id:exit
            text: "Exit"
            width: 150
            height: 50
            onClicked: {
                Qt.quit()
            }
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 140

        }

    }

    Image {
        x: 220
        id: image1
        source: "../../assets/penguin/sprite/walk.png"
        visible: false
    }

    Item {
        anchors.left: parent.gameWindowAnchorItem.left
        anchors.bottom: parent.gameWindowAnchorItem.bottom
        anchors.leftMargin: 180
        anchors.bottomMargin: 200
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
