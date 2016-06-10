public class Game {
    public Unit fight(Unit unit1, Unit unit2) {

        while (unit1.getHealthPoint() > 0 && unit2.getHealthPoint() > 0) {
            if (Math.random() > 0.5) {    // randomizing players turn
                round(unit1, unit2);
            } else {
                round(unit2, unit1);
            }
        }
        if (unit1.getHealthPoint() > 0) {
            return unit1;
        } else {
            return unit2;
        }

    }

    private void round(Unit unit1, Unit unit2) {
        Integer leftHp = unit1.getHealthPoint() - randomKick(unit2);
        if (leftHp > 0) {
            system.debug(unit1.getName() + ' left ' + leftHp + ' health points.');
            unit1.setHealthPoint(leftHp);
        } else {
            system.debug(unit1.getName() + ' is dead.');
            unit1.setHealthPoint(0);
        }
    }

    private Integer randomKick(Unit unit) {
        Double damageDouble = (Math.floor(Math.random() * (unit.getDamageMax() - unit.getDamageMin() + 1) + unit.getDamageMin()));
        Integer damage = damageDouble.intValue();
        system.debug(unit.getName() + ' kick with ' + damage + ' damages.');
        return damage;
    }
}