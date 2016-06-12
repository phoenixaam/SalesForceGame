public class SortingListOfGameUnits {
	public static void main() {
        List<Unit> unitList = new List<Unit>();
        Unit drogo = new Unit('Drogo', 100, 20, 30);
        Unit tirion = new Unit('Tirion', 100, 20, 30);
        Unit snow = new Unit('Snow', 100, 20, 30);
        Unit drogo2 = new Unit('Drogo', 90, 20, 30);
        Unit tirion2 = new Unit('Tirion', 110, 20, 30);
        Unit snow2 = new Unit('Snow', 120, 20, 30);
        unitList.add(drogo);
        unitList.add(drogo2);
        unitList.add(tirion);
        unitList.add(tirion2);
        unitList.add(snow);
        unitList.add(snow2);
        system.debug(unitList);
        unitList.sort();
        system.debug(unitList);
    }
}