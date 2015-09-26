package ir.co.dpq.jayab;


/**
 * Created by hadi on 6/11/15.
 */
public class Place {

	// Key attributes of place
	long id;
	double latitude;
	double longitude;
	long reporter;
	String name;
	String description;
	boolean community;
	String creation_dtime;
	String modif_dtime;

	public Place(Double lat, Double lon, String type) {
		setLatitude(lat);
		setLongitude(lon);
	}

	public Place(Integer id, Double lat, Double lon, String name) {
		setId(id);
		setLatitude(lat);
		setLongitude(lon);
		setName(name);
	}

	public Place(Integer id, Double lat, Double lon, String name, String descr) {
		setId(id);
		setLatitude(lat);
		setLongitude(lon);
		setName(name);
		setDescription(descr);
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

	public String getCreation_dtime() {
		return creation_dtime;
	}

	public void setCreation_dtime(String creation_dtime) {
		this.creation_dtime = creation_dtime;
	}

	public String getModif_dtime() {
		return modif_dtime;
	}

	public void setModif_dtime(String modif_dtime) {
		this.modif_dtime = modif_dtime;
	}

}
