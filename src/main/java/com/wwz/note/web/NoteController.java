package com.wwz.note.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wwz.note.pojo.Note;
import com.wwz.note.service.NoteService;

@Controller
public class NoteController {
	
	@Autowired
	NoteService noteService;
	
	static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	
	@RequestMapping("createNote")
	public String createNote()
	{
		return "createNote";
	}
	
	@RequestMapping("addNote")
	public String addNote(Note note)
	{
		note.setTime(dateFormat.format(new Date()));
		noteService.add(note);
		return "redirect:/listNote";
	}
	
	@RequestMapping("deleteNote")
	public String deleteNote(int id)
	{
		noteService.delete(id);
		return "redirect:/listNote";
	}
	
	@RequestMapping("editNote")
	public String editNote(int id,ModelMap model)
	{
		Note note=noteService.get(id);
		model.put("note", note);
		return "editNote";
	}
	
	@RequestMapping("updateNote")
	public String updateNote(Note note)
	{
		noteService.update(note);
		return "redirect:/listNote";
	}
	
	@RequestMapping("readNote")
	public String readNote(int id,ModelMap model)
	{
		Note note=noteService.get(id);
		model.put("note", note);
		return "readNote";
	}
	
	@RequestMapping("listNote")
	public String listNote(ModelMap model)
	{
		List<Note> notes=noteService.list();
		model.put("notes", notes);
		return "listNote";
	}
	
}
