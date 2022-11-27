public class Room {

	protected String roomName, img, description;
	protected int rating, price;
	
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public Room(String roomName, String img, String description, int rating, int price) {
		super();
		this.roomName = roomName;
		this.img = img;
		this.description = description;
		this.rating = rating;
		this.price = price;
	}
	
}