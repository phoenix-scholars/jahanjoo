package ir.co.dpq.tjayab;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;

import org.junit.Before;
import org.junit.Test;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import ir.co.dpq.jayab.ILocationService;
import ir.co.dpq.jayab.Location;
import ir.co.dpq.jayab.Tag;
import ir.co.dpq.pluf.DeserializerJson;
import ir.co.dpq.pluf.PErrorHandler;
import ir.co.dpq.pluf.PPaginatorPage;
import ir.co.dpq.pluf.user.IPUserService;
import ir.co.dpq.pluf.user.PUser;
import retrofit.RestAdapter;
import retrofit.converter.GsonConverter;

public class SearchTest {

	private ILocationService jayabService;
	private IPUserService userService;

	@Before
	public void createService() {
		CookieManager cookieManager = new CookieManager();
		cookieManager.setCookiePolicy(CookiePolicy.ACCEPT_ALL);
		CookieHandler.setDefault(cookieManager);
		
		GsonBuilder gsonBuilder = new GsonBuilder();
		gsonBuilder
			/*
			 * این تبدیل برای صفحه بندی به کار گرفته می‌شود.
			 */
			.registerTypeAdapter(PPaginatorPage.class, new DeserializerJson());
		Gson gson = gsonBuilder.create();

		RestAdapter restAdapter = new RestAdapter.Builder()
				// تعیین مبدل داده
				.setConverter(new GsonConverter(gson))
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
	public void findPlace00() {
		PUser user = userService.login("admin", "admin");
		assertNotNull(user);
		assertTrue(user.isActive());
		assertEquals("admin", user.getLogin());

		PPaginatorPage<Location> places = jayabService.findLocation(0.1, 0.1, 10, 1000.0, Tag.Key.AMENITY,
				Tag.Value.PARKING);

		assertNotNull(places);
		assertFalse(places.isEmpty());
		assertEquals(places.getCounts(), places.getItems().size());
	}
}
