package com.wwz.note.service;

import java.util.List;

import com.wwz.note.pojo.Note;

public interface NoteService {
	public int add(Note note);
	public void delete(int id);
	public int update(Note note);
	public Note get(int id);
	public List<Note> list();
}
