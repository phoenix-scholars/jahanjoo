package ir.co.dpq.jayab;

import com.google.gson.annotations.SerializedName;

/**
 * Created by hadi on 6/11/15.
 */
public class Location {

	// Key attributes of location
	long id;
	boolean community;
	String name;
	String description;
	long reporter;
	double latitude;
	double longitude;
	// TODO Hadi 1394-07-07: دو فیلد زیر به نوع DateTime جاوا تبدیل شوند
	@SerializedName("creation_dtime")
	String creationDateTime;
	@SerializedName("modif_dtime")
	String modificationDateTime;

	// For cloud base system
	/**
	 * مالک مکان که می‌تواند یک کاربر یا یک گروه یا یک tenant باشد.
	 */
	@SerializedName("owner_id")
	long ownerId;
	/**
	 * یکی از مقادیر user, group, tenant
	 */
	@SerializedName("owner_class")
	String ownerClass;

	public Location(Integer id, Double lat, Double lon) {
		setId(id);
		setLatitude(lat);
		setLongitude(lon);
		setName(name);
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public long getReporter() {
		return reporter;
	}

	public void setReporter(long reporter) {
		this.reporter = reporter;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isCommunity() {
		return community;
	}

	public void setCommunity(boolean community) {
		this.community = community;
	}

	public String getCreationDateTime() {
		return creationDateTime;
	}

	public void setCreationDateTime(String creationDateTime) {
		this.creationDateTime = creationDateTime;
	}

	public String getModificationDateTime() {
		return modificationDateTime;
	}

	public void setModificationDateTime(String modificationDateTime) {
		this.modificationDateTime = modificationDateTime;
	}

	public long getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(long ownerId) {
		this.ownerId = ownerId;
	}

	public String getOwnerClass() {
		return ownerClass;
	}

	public void setOwnerClass(String ownerClass) {
		this.ownerClass = ownerClass;
	}

}
