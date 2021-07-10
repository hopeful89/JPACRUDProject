package com.skilldistillery.animes.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Anime {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	private String description;
	@Column(name="not_started")
	private boolean notStarted;
	@Column(name="currently_watching")
	private boolean currentlyWatching;
	private boolean completed;
	private boolean favorite;
	@Column(name="img_url")
	private String imgUrl;
	@Column(name="video_url")
	private String videoUrl;
	double rating;
	
	public Anime() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isNotStarted() {
		return notStarted;
	}

	public void setNotStarted(boolean notStarted) {
		this.notStarted = notStarted;
	}

	public boolean isCompleted() {
		return completed;
	}

	public void setCompleted(boolean completed) {
		this.completed = completed;
	}

	public boolean isFavorite() {
		return favorite;
	}

	public void setFavorite(boolean favorite) {
		this.favorite = favorite;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getVideoUrl() {
		return videoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public boolean isCurrentlyWatching() {
		return currentlyWatching;
	}

	public void setCurrentlyWatching(boolean currentlyWatching) {
		this.currentlyWatching = currentlyWatching;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Anime [id=").append(id).append(", title=").append(title).append(", description=")
				.append(description).append(", notStarted=").append(notStarted).append(", currentlyWatching=")
				.append(currentlyWatching).append(", completed=").append(completed).append(", favorite=")
				.append(favorite).append(", imgUrl=").append(imgUrl).append(", videoUrl=").append(videoUrl)
				.append(", rating=").append(rating).append("]");
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (completed ? 1231 : 1237);
		result = prime * result + (currentlyWatching ? 1231 : 1237);
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + (favorite ? 1231 : 1237);
		result = prime * result + id;
		result = prime * result + ((imgUrl == null) ? 0 : imgUrl.hashCode());
		result = prime * result + (notStarted ? 1231 : 1237);
		long temp;
		temp = Double.doubleToLongBits(rating);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + ((videoUrl == null) ? 0 : videoUrl.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Anime other = (Anime) obj;
		if (completed != other.completed)
			return false;
		if (currentlyWatching != other.currentlyWatching)
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (favorite != other.favorite)
			return false;
		if (id != other.id)
			return false;
		if (imgUrl == null) {
			if (other.imgUrl != null)
				return false;
		} else if (!imgUrl.equals(other.imgUrl))
			return false;
		if (notStarted != other.notStarted)
			return false;
		if (Double.doubleToLongBits(rating) != Double.doubleToLongBits(other.rating))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (videoUrl == null) {
			if (other.videoUrl != null)
				return false;
		} else if (!videoUrl.equals(other.videoUrl))
			return false;
		return true;
	}



}
