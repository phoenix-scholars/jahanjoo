package ir.co.dpq.tjayab;

import ir.co.dpq.jayab.ILocationService;
import ir.co.dpq.jayab.Location;
import ir.co.dpq.jayab.Tag;
import ir.co.dpq.pluf.PErrorHandler;
import ir.co.dpq.pluf.PPaginatorPage;
import ir.co.dpq.pluf.user.IPUserService;
import ir.co.dpq.pluf.user.PUser;

import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;

import static org.junit.Assert.*;
import org.junit.Before;
import org.junit.Test;

import retrofit.RestAdapter;

public class SearchTest {

	private ILocationService jayabService;
	private IPUserService userService;

	@Before
	public void createService() {
		CookieManager cookieManager = new CookieManager();
		cookieManager.setCookiePolicy(CookiePolicy.ACCEPT_ALL);
		CookieHandler.setDefault(cookieManager);

		RestAdapter restAdapter = new RestAdapter.Builder()
				// تعیین کنترل کننده خطا
				.setErrorHandler(new PErrorHandler())
				// تعیین آدرس سایت مورد نظر
				.setEndpoint(TestSettings.API_ADDRESS)
				// ایجاد یک نمونه
				.build();
		this.userService = restAdapter.create(IPUserService.class);
		this.jayabService = restAdapter.create(ILocationService.class);
	}

	@Test
	public void findPlace() {
//		PUser user = userService.login("test", "test");
//		assertNotNull(user);
//		assertTrue(user.isActive());
//		assertEquals("test", user.getLogin());
//
//		PPaginatorPage<Location> places = jayabService.findLocation(0.0, 0.0, 10, 1000.0, Tag.Key.AMENITY,
//				Tag.Value.PARKING);
//
//		assertNotNull(places);
//		assertFalse(places.isEmpty());
	}
}
