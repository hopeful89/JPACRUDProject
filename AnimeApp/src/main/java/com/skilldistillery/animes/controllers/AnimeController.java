package com.skilldistillery.animes.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.animes.data.AnimeDAO;
import com.skilldistillery.animes.entities.Anime;

@Controller
public class AnimeController {

	@Autowired
	AnimeDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		List<Anime> anime = dao.getAllAnime();
		model.addAttribute("anime", anime);
		return "index";
	}

	@RequestMapping(path = "animeform.do", params="type")
	public String animeForm(Integer animeId, String type, Model model) {
		Anime anime = null;
		if (animeId != null) {
			anime = dao.findById(animeId);
		}
		if (type.equals("new")) {
			model.addAttribute("type", " ");
		} else {
			model.addAttribute("type", "update.do");
		}
		model.addAttribute("anime", anime);

		return "animeForm";
	}

	@RequestMapping(path = "createAnime.do", method = RequestMethod.POST)
	public String create(Anime anime, Model model, String watchStatus, RedirectAttributes redir) {
		
		if(watchStatus == null) {
			anime.setNotStarted(true);
			watchStatus = "";
		}
		if(watchStatus.equals("currentlyWatching")) {
			anime.setCurrentlyWatching(true);
		}else if(watchStatus.equals("completed")){
			anime.setCompleted(true);
		}
		dao.createAnime(anime);
		return "redirect:home.do";
	}

	@RequestMapping(path = "result.do")
	public String result() {
		return "result";
	}

	@RequestMapping(path = "delete.do", params = "animeId")
	public String delete(int animeId) {
		dao.deleteAnime(animeId);
		return "redirect:home.do";
	}

	@RequestMapping(path = "update.do")
	public String showUpdateForm(Anime anime, String watchStatus, Model model, RedirectAttributes redir) {
		if(watchStatus == null) {
			anime.setNotStarted(true);
			watchStatus = "";
		}else if(watchStatus.equals("notStarted")) {
			anime.setNotStarted(true);
		}else if(watchStatus.equals("currentlyWatching")) {
			anime.setCurrentlyWatching(true);
		}else if(watchStatus.equals("completed")){
			anime.setCompleted(true);
		}
		
		Anime updatedAnime = dao.updateAnime(anime);
		return "redirect:detail.do?animeId=" + updatedAnime.getId();
	}
	
	@RequestMapping(path="keyword.do")
	public String searchByKeyword(String keyword, Model model) {
		List<Anime> animeList = dao.getAnimeByKeyword(keyword);
		model.addAttribute("animeList", animeList);
		return "result";
	}
	
	@RequestMapping(path="detail.do")
	public String showDetailsPage(int animeId, Model model) {
		Anime anime = dao.findById(animeId);
		model.addAttribute("anime", anime);
		return "animeDetails";
	}

}
