import QtQuick 2.0
import Felgo 3.0

PenguinEntityBaseDraggable {
    id: ground_dirt
    entityType: "ground_dirt"

    Row {
        Repeater {
            id: ground_ice
            model: size
            Image {
                source: "../../assets/ground/inside.png"
                width: 64
                height: 64
            }
        }
    }

    BoxCollider {
        anchors.fill: parent
        bodyType: Body.Static
        // Category5: solids
        categories: Box.Category5
        fixture.onBeginContact: {
            var otherEntity = other.getBody().target
            if(otherEntity.entityType === "penguin") {
                penguin.contacts++
                if(penguin.verticalVelocity >= 0)
                    penguin.doubleJumpEnabled = true
            }
        }
        fixture.onEndContact: {
            var otherEntity = other.getBody().target
            if(otherEntity.entityType === "penguin") penguin.contacts--
        }
    }
}

