package ir.co.dpq.jayab;

public class Vote {

	long id;
	long voter; // user id
	long location; // location id
	boolean like;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getVoter() {
		return voter;
	}

	public void setVoter(long voter) {
		this.voter = voter;
	}

	public long getLocation() {
		return location;
	}

	public void setLocation(long location) {
		this.location = location;
	}

	public boolean isLike() {
		return like;
	}

	public void setLike(boolean like) {
		this.like = like;
	}

}
