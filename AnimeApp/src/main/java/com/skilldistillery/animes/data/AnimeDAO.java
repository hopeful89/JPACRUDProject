package com.skilldistillery.animes.data;

import java.util.List;

import com.skilldistillery.animes.entities.Anime;

public interface AnimeDAO {
	public Anime findById(int id);
	public Anime createAnime(Anime anime);
	public List<Anime> getAllAnime();
	public boolean deleteAnime(int id);
	public Anime updateAnime(Anime anime);
	public List<Anime> getAnimeByKeyword(String keyword);
}
