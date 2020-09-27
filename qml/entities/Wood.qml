import QtQuick 2.0
import Felgo 3.0

PenguinEntityBaseDraggable {
    id: wood
    entityType: "wood"

    Row {
        Repeater {
            id: wood_plat
            model: size
            Image {
                id: image
                source: "../../assets/brick/wood.png"
                width: 160
                height: 32
            }
        }
    }

    BoxCollider {
        width: 160
        height: 32
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



