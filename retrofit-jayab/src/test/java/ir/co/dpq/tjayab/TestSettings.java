package ir.co.dpq.tjayab;

import ir.co.dpq.jayab.Place;
import ir.co.dpq.jayab.Tag;

public class TestSettings extends ir.co.dpq.pluf.tuser.TestSettings{

	public Place place;
	
	public TestSettings() {
		super();
		place = new Place(0, 0.0, 0.0);
		place.setName("پارکینگ نادری");
		
	}
	
}
