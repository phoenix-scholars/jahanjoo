package ir.co.dpq.tjayab;

import ir.co.dpq.jayab.IJayabService;
import ir.co.dpq.jayab.Place;
import ir.co.dpq.jayab.Tag;
import ir.co.dpq.pluf.PErrorHandler;
import ir.co.dpq.pluf.user.IPUserService;
import ir.co.dpq.pluf.user.PUser;

import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.util.List;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import retrofit.RestAdapter;

public class JayabServiceUnitTest {

	private IJayabService jayabService;
	private IPUserService userService;
	private TestSettings testSettings = new TestSettings();

	@Before
	public void createService() {
		CookieManager cookieManager = new CookieManager();
		cookieManager.setCookiePolicy(CookiePolicy.ACCEPT_ALL);
		CookieHandler.setDefault(cookieManager);

		RestAdapter restAdapter = new RestAdapter.Builder()
		// تعیین کنترل کننده خطا
				.setErrorHandler(new PErrorHandler())
				// تعیین آدرس سایت مورد نظر
				.setEndpoint(testSettings.apiUrl)
				// ایجاد یک نمونه
				.build();
		this.userService = restAdapter.create(IPUserService.class);
		this.jayabService = restAdapter.create(IJayabService.class);
	}

	@Test
	public void findPlace() {
		PUser user = userService.login(testSettings.user.getLogin(),
				testSettings.password);

		List<Place> places = jayabService.findPlace(testSettings.place.getLatitude(),
				testSettings.place.getLongitude(), 10, 1000, Tag.Key.AMENITY,
				Tag.Value.PARKING);
		
		Assert.assertNotNull(places);
		Assert.assertFalse(places.isEmpty());
	}
}
