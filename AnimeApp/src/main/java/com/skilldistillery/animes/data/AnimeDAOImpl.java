package com.skilldistillery.animes.data;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import com.skilldistillery.animes.entities.Anime;

@Service
@Transactional
public class AnimeDAOImpl implements AnimeDAO {
	private final String DEFAULTIMG = "https://images.unsplash.com/photo-1536566482680-fca31930a0bd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80";
	private final String DEFAULTVIDEO = "https://player.vimeo.com/external/311236486.sd.mp4?s=bb1fa26011a5ba893cbfe8bc38fdf91af820c4b5&profile_id=164&oauth2_token_id=57447761";
	
	
	@PersistenceContext
	EntityManager em;

	@Override
	public Anime findById(int id) {
		return em.find(Anime.class, id);
	}

	@Override
	public Anime createAnime(Anime anime) {
		if(anime.getVideoUrl() == "") {
			anime.setVideoUrl(DEFAULTVIDEO);
		}
		if(anime.getImgUrl() == "") {
			anime.setImgUrl(DEFAULTIMG);
		}
		em.persist(anime);
		em.flush();
		return anime;
	}

	@Override
	public boolean deleteAnime(int id) {
		Anime removeAnime = em.find(Anime.class, id);
		em.remove(removeAnime);
		return false;
	}

	@Override
	public List<Anime> getAllAnime() {
		String jpql = "SELECT a FROM Anime a";
		List<Anime> animes = em.createQuery(jpql, Anime.class).getResultList();
		em.flush();
		return new ArrayList(animes);
	}

	@Override
	public Anime updateAnime(Anime anime) {
		Anime managedAnime = em.find(Anime.class, anime.getId());
		managedAnime.setTitle(anime.getTitle());
		managedAnime.setDescription(anime.getDescription());
		managedAnime.setNotStarted(anime.isNotStarted());
		managedAnime.setCurrentlyWatching(anime.isCurrentlyWatching());
		managedAnime.setCompleted(anime.isCompleted());
		managedAnime.setFavorite(anime.isFavorite());
		managedAnime.setImgUrl(anime.getImgUrl());
		managedAnime.setVideoUrl(anime.getVideoUrl());
		managedAnime.setRating(anime.getRating());
		return managedAnime;
	}

	@Override
	public List<Anime> getAnimeByKeyword(String keyword) {
		String jpql = "Select a From Anime a WHERE a.title LIKE :keyword";
		List<Anime> animes = em.createQuery(jpql, Anime.class)
				               .setParameter("keyword", "%" + keyword + "%")
							   .getResultList();
		em.flush();
		return animes;
	}

}
