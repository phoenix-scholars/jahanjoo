package ir.co.dpq.tjayab;

import ir.co.dpq.jayab.Location;
import ir.co.dpq.jayab.Tag;

public class TestSettings extends ir.co.dpq.pluf.tuser.TestSettings{

	public Location place;
	
	public TestSettings() {
		super();
		place = new Location(0, 0.0, 0.0);
		place.setName("پارکینگ نادری");
		
	}
	
}
