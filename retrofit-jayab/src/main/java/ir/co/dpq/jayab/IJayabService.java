package ir.co.dpq.jayab;

import java.util.List;
import java.util.Map;

import retrofit.Callback;
import retrofit.http.DELETE;
import retrofit.http.Field;
import retrofit.http.FormUrlEncoded;
import retrofit.http.GET;
import retrofit.http.POST;
import retrofit.http.Path;
import retrofit.http.Query;
import retrofit.http.QueryMap;

public interface IJayabService {

	// *************************************************************************
	// Place Management
	// *************************************************************************

	@GET("/api/jayab/location/find")
	void findPlace(@Query("latitude") Double latitude,
			@Query("longitude") Double longitude,
			@Query("count") Integer count, @Query("radius") Integer radius,
			@Query("tag_key") String tagKey,
			@Query("tag_value") String tagValue, Callback<List<Place>> callBack);

	@GET("/api/jayab/location/find")
	List<Place> findPlace(@Query("latitude") Double latitude,
			@Query("longitude") Double longitude,
			@Query("count") Integer count, @Query("radius") Integer radius,
			@Query("tag_key") String tagKey, @Query("tag_value") String tagValue);

	@FormUrlEncoded
	@POST("/api/jayab/location/create")
	void defineNewLocation(@Field("latitude") double latitude,
			@Field("longitude") double longitude, @Field("name") String name,
			@Field("description") String desc, Callback<Place> callBack);

	@FormUrlEncoded
	@POST("/api/jayab/location/create")
	Place defineNewLocation(@Field("latitude") double latitude,
			@Field("longitude") double longitude, @Field("name") String name,
			@Field("description") String desc);

	// TODO: Hadi 1394-07-05: write interface for edit, getinfo, remove.

	// *************************************************************************
	// Tag Management
	// *************************************************************************

	@FormUrlEncoded
	@POST("/api/jayab/location/{placeId}/tag")
	void addTagToLocatoin(@Path("placeId") int placeId,
			@Field("tag_key") String tagKey,
			@Field("tag_value") String tagValue, Callback<Place> callBack);

	@FormUrlEncoded
	@POST("/api/jayab/location/{placeId}/tag")
	Place addTagToLocatoin(@Path("placeId") int placeId,
			@Field("tag_key") String tagKey, @Field("tag_value") String tagValue);

	// TODO: Hadi 1394-07-05: write interface for edit, remove.
	
	// *************************************************************************
	// Vote Management
	// *************************************************************************

	// TODO:  Hadi 1394-07-05: This section should be edited and completed.
	
	@GET("/api/jayab/location/{placeId}/votes")
	public void checkVotes(@Path("placeId") int placeId,
			Callback<String> callBack);

	@GET("/api/jayab/location/{placeId}/vote")
	public void checkVote(@Path("placeId") int placeId,
			Callback<String> callBack);

	@DELETE("/api/jayab/location/{placeId}/vote")
	public void removeVote(@Path("placeId") int placeId,
			Callback<String> callBack);

	@FormUrlEncoded
	@POST("/api/jayab/location/{placeId}/vote")
	public void votePlace(@Path("placeId") int placeId,
			@Field("like") Boolean vote, Callback<String> callBack);

}
